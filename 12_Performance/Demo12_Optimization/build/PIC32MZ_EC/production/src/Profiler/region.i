# 1 "src/Profiler/region.c"
# 1 "E:\\待办事项\\完成石老师大学计划任务\\CML\\The-Connected-MCU-Lab--v1.5-12Oct2016-CHN\\Release\\Modules\\12_Performance\\Demo12_Optimization//"
# 1 "<command-line>"
# 1 "src/Profiler/region.c"


# 1 "src/Profiler/region.h" 1



typedef struct {
 unsigned int Start;
 unsigned int End;
 char Name[24];
} REGION_T;

extern const REGION_T RegionTable[];
extern const unsigned NumProfileRegions;
extern volatile unsigned RegionCount[];
extern unsigned SortedRegions[ ];
# 4 "src/Profiler/region.c" 2
const REGION_T RegionTable[] = {
  { 0x80000000, 0x7fffffff, "_persist_begin"},
  { 0x80000000, 0x9d00000f, "_persist_end"},
  { 0x9d000010, 0x9d00010f, "_general_exception_cont"},
  { 0x9d000110, 0x9d00018f, "_sprintf_cdnopsuxX"},
  { 0x9d000190, 0x9d00018f, "__floatsisf"},
  { 0x9d000190, 0x9d00018f, "litofp"},
  { 0x9d000190, 0x9d0001ff, "sitofp"},
  { 0x9d000200, 0x9d000ed3, "__vector_dispatch_9"},
  { 0x9d000ed4, 0x9d000f47, "OledMoveTo"},
  { 0x9d000f48, 0x9d000f5b, "OledGetPos"},
  { 0x9d000f5c, 0x9d000f67, "OledSetDrawColor"},
  { 0x9d000f68, 0x9d000f7b, "OledGetStdPattern"},
  { 0x9d000f7c, 0x9d000f83, "OledSetFillPattern"},
  { 0x9d000f84, 0x9d00100b, "OledSetDrawMode"},
  { 0x9d00100c, 0x9d001013, "OledGetDrawMode"},
  { 0x9d001014, 0x9d00105f, "OledDrawPixel"},
  { 0x9d001060, 0x9d001077, "OledGetPixel"},
  { 0x9d001078, 0x9d0011db, "OledLineTo"},
  { 0x9d0011dc, 0x9d00125f, "OledDrawRect"},
  { 0x9d001260, 0x9d0013fb, "OledFillRect"},
  { 0x9d0013fc, 0x9d001563, "OledGetBmp"},
  { 0x9d001564, 0x9d0017d3, "OledPutBmp"},
  { 0x9d0017d4, 0x9d001837, "OledDrawChar"},
  { 0x9d001838, 0x9d001873, "OledDrawString"},
  { 0x9d001874, 0x9d00188f, "OledRopSet"},
  { 0x9d001890, 0x9d0018a3, "OledRopOr"},
  { 0x9d0018a4, 0x9d0018b3, "OledRopAnd"},
  { 0x9d0018b4, 0x9d0018c7, "OledRopXor"},
  { 0x9d0018c8, 0x9d001907, "OledMoveUp"},
  { 0x9d001908, 0x9d001947, "OledMoveDown"},
  { 0x9d001948, 0x9d00196f, "OledMoveLeft"},
  { 0x9d001970, 0x9d00199b, "OledMoveRight"},
  { 0x9d00199c, 0x9d0019b3, "OledClampXco"},
  { 0x9d0019b4, 0x9d0019cb, "OledClampYco"},
  { 0x9d0019cc, 0x9d00249b, "_vfprintf_cdnopsuxX"},
  { 0x9d00249c, 0x9d0025cf, "DrawCircle1"},
  { 0x9d0025d0, 0x9d00272f, "DrawCircle2"},
  { 0x9d002730, 0x9d0028af, "DrawCircle3"},
  { 0x9d0028b0, 0x9d002a2f, "DrawCircle4"},
  { 0x9d002a30, 0x9d002b57, "DrawCircle5"},
  { 0x9d002b58, 0x9d002c7f, "DrawCircle6"},
  { 0x9d002c80, 0x9d002d7f, "Animate"},
  { 0x9d002d80, 0x9d002dc7, "DelayMs"},
  { 0x9d002dc8, 0x9d002f13, "InitGPIO"},
  { 0x9d002f14, 0x9d002ffb, "InitBIOS"},
  { 0x9d002ffc, 0x9d00327b, "AwaitBIOSButtonPress"},
  { 0x9d00327c, 0x9d0032eb, "InitTimer2"},
  { 0x9d0032ec, 0x9d0033ef, "ISR_Timer_2"},
  { 0x9d0033f0, 0x9d0038eb, "InitApp"},
  { 0x9d0038ec, 0x9d003d4f, "__umoddi3"},
  { 0x9d003d50, 0x9d0041a7, "__udivdi3"},
  { 0x9d0041a8, 0x9d00424f, "OledHostInit"},
  { 0x9d004250, 0x9d00430b, "OledDspInit"},
  { 0x9d00430c, 0x9d00439b, "OledDvrInit"},
  { 0x9d00439c, 0x9d00443b, "OledUpdate"},
  { 0x9d00443c, 0x9d00445f, "OledClear"},
  { 0x9d004460, 0x9d004483, "OledClearBuffer"},
  { 0x9d004484, 0x9d00448b, "OledHostTerm"},
  { 0x9d00448c, 0x9d0044a7, "OledDevTerm"},
  { 0x9d0044a8, 0x9d0044d3, "OledInit"},
  { 0x9d0044d4, 0x9d00450f, "Init_Profiling"},
  { 0x9d004510, 0x9d004517, "Disable_Profiling"},
  { 0x9d004518, 0x9d004523, "Enable_Profiling"},
  { 0x9d004524, 0x9d0045cb, "Handle_Profile_Sample"},
  { 0x9d0045cc, 0x9d004667, "Sort_Profile"},
  { 0x9d004668, 0x9d004aeb, "Display_Profile"},
  { 0x9d004aec, 0x9d004aeb, "__subsf3"},
  { 0x9d004aec, 0x9d004af3, "fpsub"},
  { 0x9d004af4, 0x9d004af3, "__addsf3"},
  { 0x9d004af4, 0x9d004d63, "fpadd"},
  { 0x9d004d64, 0x9d004db3, "OledSetCursor"},
  { 0x9d004db4, 0x9d004dc7, "OledGetCursor"},
  { 0x9d004dc8, 0x9d004e07, "OledDefUserChar"},
  { 0x9d004e08, 0x9d004e13, "OledSetCharUpdate"},
  { 0x9d004e14, 0x9d004e1b, "OledGetCharUpdate"},
  { 0x9d004e1c, 0x9d004e53, "OledPutChar"},
  { 0x9d004e54, 0x9d004eab, "OledPutString"},
  { 0x9d004eac, 0x9d004f17, "OledDrawGlyph"},
  { 0x9d004f18, 0x9d004f77, "OledAdvanceCursor"},
  { 0x9d004f78, 0x9d004f77, "__mulsf3"},
  { 0x9d004f78, 0x9d0053a3, "fpmul"},
  { 0x9d0053a4, 0x9d0053a3, "fpsin"},
  { 0x9d0053a4, 0x9d0054bf, "sinf"},
  { 0x9d0054c0, 0x9d0054bf, "cosf"},
  { 0x9d0054c0, 0x9d0055d7, "fpcos"},
  { 0x9d0055d8, 0x9d0057e7, "fpreduct"},
  { 0x9d0057e8, 0x9d0058bf, "_cache_err_exception_co"},
  { 0x9d0058c0, 0x9d005b3f, "_simple_tlb_refill_exce"},
  { 0x9d005b40, 0x9d005c97, "__pic32_tlb_init_ebi_sq"},
  { 0x9d005c98, 0x9d005d27, "main"},
  { 0x9d005d28, 0x9d005d77, "OledPutBuffer"},
  { 0x9d005d78, 0x9d005db3, "Spi2PutByte"},
  { 0x9d005db4, 0x9d005db3, "__fixsfsi"},
  { 0x9d005db4, 0x9d005db3, "fptoli"},
  { 0x9d005db4, 0x9d005e67, "fptosi"},
  { 0x9d005e68, 0x9d005fa7, "__crt0_exit"},
  { 0x9d005fa8, 0xbfbfffff, "__pic32_software_reset"},
  { 0xbfc00000, 0xbfc0047f, "_reset"},
  { 0xbfc00480, 0xbfc0056f, "__DbgExecReturn"},
  { 0xbfc00570, 0xbfc005c7, "__pic32_size_cache"},
};
const unsigned NumProfileRegions = 100 ;
unsigned SortedRegions[ 100 ];
volatile unsigned RegionCount[ 100 ];
