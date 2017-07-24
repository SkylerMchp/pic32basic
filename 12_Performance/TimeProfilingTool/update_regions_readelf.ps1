Write-Host "// File generated: " (Get-Date)
Write-Host "// Automatically generated file. Do not edit if you plan to regenerate it.";
Write-Host "#include ""region.h""";
Write-Host "const REGION_T RegionTable[] = {";

# xc32-readelf -s ..\dist\PIC32MZ_EC\production\*.elf | findstr /L "FUNC" | 
xc32-readelf -s ..\dist\PIC32MZ_EC\debug\*.elf | findstr /L "FUNC" | 
%{ $a=$_.Split(" +", [StringSplitOptions]'RemoveEmptyEntries')[1,2,7]; 
    [int]$line+=1; 
#    Write-Host "`t{ 0x"$a[0]", "$a[1]",`t """$a[2]"""}, `t//"($line-1) -Separator "";    
    Write-Host "`t{ 0x"$a[0]", 0x" ([String]::Format("{0:x8}", (([Convert]::ToUInt32($a[0], 16))+$a[1]))) ", """$a[2]"""}, `t//"($line-1) -Separator "";    
}
Write-Host "};"; 
Write-Host "const unsigned NumProfileRegions ="$line";";
Write-Host "volatile unsigned RegionCount["$line" ];";
