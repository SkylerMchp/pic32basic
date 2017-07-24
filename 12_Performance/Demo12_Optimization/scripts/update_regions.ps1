Write-Host "// File generated: " (Get-Date)
Write-Host "// Automatically generated file. Do not edit if you plan to regenerate it.";
Write-Host "#include ""region.h""";
Write-Host "const REGION_T RegionTable[] = {";

# xc32-readelf -s ..\dist\PIC32MZ_EC\production\*.elf | findstr /L "FUNC" | 
# xc32-readelf -s ..\dist\PIC32MZ_EC\debug\*.elf | findstr /L "FUNC" | 
# xc32-nm -g -n ..\dist\PIC32MZ_EC\debug\*.elf | find " T " |
xc32-nm -g -n ..\dist\PIC32MZ_EC\production\*.elf | find " T " |
%{ $a=$_.Split(" +", [StringSplitOptions]'RemoveEmptyEntries'); 
    [UInt32]$adx = [Convert]::ToUInt32($a[0], 16);
    if ($adx -ge [Convert]::ToUint32("80000000", 16)) {
        if ($line -gt 0) {
            [UInt32]$end = ([Convert]::ToUInt32($a[0], 16)-1);
            Write-Host "`t { 0x"$start", 0x"([String]::Format("{0:x8}",$end))", """ ($name[0..22] -join "") """}, `t//"($line-1) -Separator "";
        }
        [int]$line+=1; 
    #    Write-Host "`t{ 0x"$a[0]", "$a[1]",`t """$a[2]"""}, `t//"($line-1) -Separator "";    
    #    Write-Host "`t{ 0x"$a[0]", 0x" ([String]::Format("{0:x8}", (([Convert]::ToUInt32($a[0], 16))+$a[1]))) ", """$a[2]"""}, `t//"($line-1) -Separator "";    
        $start =  $a[0]; # [Convert]::ToUInt32($a[0], 16);
        $name = $a[2];
    }    
}
Write-Host "};"; 
Write-Host "const unsigned NumProfileRegions ="($line-1)";";
Write-Host "unsigned SortedRegions["($line-1)"];";
Write-Host "volatile unsigned RegionCount["($line-1)"];";
