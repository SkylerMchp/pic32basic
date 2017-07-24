#include "region.h"
#include "profile.h"
#include "stdio.h"


volatile unsigned int adx_lost = 0, num_lost = 0;
volatile unsigned long profile_ticks = 0;
unsigned char profiling_enabled = 0;

void Init_Profiling(void) {
    unsigned i;

    // Clear region counts
    for (i = 0; i < NumProfileRegions; i++) {
        RegionCount[i] = 0;
    }

    // Initialize and start timer
}

void Disable_Profiling(void) {
    profiling_enabled = 0;
}

void Enable_Profiling(void) {
    profiling_enabled = 1;
}

void Handle_Profile_Sample(unsigned int PC_val) {
    int i;
    unsigned s, e;

    if (profiling_enabled) {
        profile_ticks++;
        /* look up function in table and increment counter  */
        for (i = 0; i < NumProfileRegions; i++) {
            s = RegionTable[i].Start;
            e = RegionTable[i].End;
            if ((PC_val >= s) && (PC_val <= e)) {
                RegionCount[i]++;
                break; // break out of the for loop
            }
        }
        if (i == NumProfileRegions) {
            adx_lost = PC_val;
            num_lost++;
        }
    }
}

void Sort_Profile(void) {
    unsigned int i, j, temp;

    // Copy unsorted region numbers into table
    for (i = 0; i < NumProfileRegions; i++) {
        SortedRegions[i] = i;
    }
    // Sort those region numbers
    for (i = 0; i < NumProfileRegions; ++i) {
        for (j = i + 1; j < NumProfileRegions; ++j) {
            if (RegionCount[SortedRegions[i]] < RegionCount[SortedRegions[j]]) {
                temp = SortedRegions[i];
                SortedRegions[i] = SortedRegions[j];
                SortedRegions[j] = temp;
            }
        }
    }
}

void Display_Profile(void) {
    int region_num, line_num;
    ;
    char text[16];

    sprintf(text, "%d Samples", profile_ticks);
    OledSetCursor(0, 0);
    OledPutString(text);

    sprintf(text, "%d Lost", num_lost);
    OledSetCursor(0, 1);
    OledPutString(text);

    sprintf(text, "%d Regions", NumProfileRegions);
    OledSetCursor(0, 2);
    OledPutString(text);

    AwaitBIOSButtonPress(4);
    OledClear();

    line_num = 0;
    for (region_num = 0; region_num < NumProfileRegions; region_num++) {
        if (RegionCount[SortedRegions[region_num]] > 0) {
            sprintf(text, "%3d %.12s", RegionCount[SortedRegions[region_num]], RegionTable[SortedRegions[region_num]].Name);
            OledSetCursor(0, line_num++);
            OledPutString(text);
            if (line_num == 4) {
                line_num = 0;
                AwaitBIOSButtonPress(4);
                OledClear();
            }
        }
    }

}
