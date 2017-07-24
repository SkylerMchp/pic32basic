#ifndef PROFILE_H
#define PROFILE_H

extern void Init_Profiling(void);
extern void Disable_Profiling(void);
extern void Enable_Profiling(void);
extern void Display_Profile(void);
extern void Sort_Profile(void);

extern void Handle_Profile_Sample(unsigned int);

#endif
