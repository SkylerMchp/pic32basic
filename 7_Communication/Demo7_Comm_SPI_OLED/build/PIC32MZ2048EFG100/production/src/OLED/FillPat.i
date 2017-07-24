# 1 "src/OLED/FillPat.c"
# 1 "E:\\Modules\\7_Communication\\Demo7_Comm_SPI_OLED//"
# 1 "<command-line>"
# 1 "src/OLED/FillPat.c"
# 49 "src/OLED/FillPat.c"
# 1 "c:\\program files (x86)\\microchip\\xc32\\v1.42\\pic32mx\\include\\xc.h" 1 3
# 38 "c:\\program files (x86)\\microchip\\xc32\\v1.42\\pic32mx\\include\\xc.h" 3
       
# 552 "c:\\program files (x86)\\microchip\\xc32\\v1.42\\pic32mx\\include\\xc.h" 3
# 1 "c:\\program files (x86)\\microchip\\xc32\\v1.42\\pic32mx\\include\\proc\\p32mz2048efg100.h" 1 3
# 38 "c:\\program files (x86)\\microchip\\xc32\\v1.42\\pic32mx\\include\\proc\\p32mz2048efg100.h" 3
       
# 49 "c:\\program files (x86)\\microchip\\xc32\\v1.42\\pic32mx\\include\\proc\\p32mz2048efg100.h" 3
extern volatile unsigned int CFGCON __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned TDOEN:1;
    unsigned :1;
    unsigned TROEN:1;
    unsigned JTAGEN:1;
    unsigned ECCCON:2;
    unsigned :1;
    unsigned IOANCPN:1;
    unsigned USBSSEN:1;
    unsigned :2;
    unsigned PGLOCK:1;
    unsigned PMDLOCK:1;
    unsigned IOLOCK:1;
    unsigned :2;
    unsigned OCACLK:1;
    unsigned ICACLK:1;
    unsigned :6;
    unsigned CPUPRI:1;
    unsigned DMAPRI:1;
  };
  struct {
    unsigned :7;
    unsigned IOANCPEN:1;
  };
} __CFGCONbits_t;
extern volatile __CFGCONbits_t CFGCONbits __asm__ ("CFGCON") __attribute__((section("sfrs")));

extern volatile unsigned int DEVID __attribute__((section("sfrs")));
typedef struct {
  unsigned DEVID:28;
  unsigned VER:4;
} __DEVIDbits_t;
extern volatile __DEVIDbits_t DEVIDbits __asm__ ("DEVID") __attribute__((section("sfrs")));

extern volatile unsigned int SYSKEY __attribute__((section("sfrs")));
typedef struct {
  unsigned SYSKEY:32;
} __SYSKEYbits_t;
extern volatile __SYSKEYbits_t SYSKEYbits __asm__ ("SYSKEY") __attribute__((section("sfrs")));

extern volatile unsigned int PMD1 __attribute__((section("sfrs")));
typedef struct {
  unsigned ADCMD:1;
  unsigned :11;
  unsigned CVRMD:1;
} __PMD1bits_t;
extern volatile __PMD1bits_t PMD1bits __asm__ ("PMD1") __attribute__((section("sfrs")));
extern volatile unsigned int PMD1CLR __attribute__((section("sfrs")));
extern volatile unsigned int PMD1SET __attribute__((section("sfrs")));
extern volatile unsigned int PMD1INV __attribute__((section("sfrs")));

extern volatile unsigned int PMD2 __attribute__((section("sfrs")));
typedef struct {
  unsigned CMP1MD:1;
  unsigned CMP2MD:1;
} __PMD2bits_t;
extern volatile __PMD2bits_t PMD2bits __asm__ ("PMD2") __attribute__((section("sfrs")));
extern volatile unsigned int PMD2CLR __attribute__((section("sfrs")));
extern volatile unsigned int PMD2SET __attribute__((section("sfrs")));
extern volatile unsigned int PMD2INV __attribute__((section("sfrs")));

extern volatile unsigned int PMD3 __attribute__((section("sfrs")));
typedef struct {
  unsigned IC1MD:1;
  unsigned IC2MD:1;
  unsigned IC3MD:1;
  unsigned IC4MD:1;
  unsigned IC5MD:1;
  unsigned IC6MD:1;
  unsigned IC7MD:1;
  unsigned IC8MD:1;
  unsigned IC9MD:1;
  unsigned :7;
  unsigned OC1MD:1;
  unsigned OC2MD:1;
  unsigned OC3MD:1;
  unsigned OC4MD:1;
  unsigned OC5MD:1;
  unsigned OC6MD:1;
  unsigned OC7MD:1;
  unsigned OC8MD:1;
  unsigned OC9MD:1;
} __PMD3bits_t;
extern volatile __PMD3bits_t PMD3bits __asm__ ("PMD3") __attribute__((section("sfrs")));
extern volatile unsigned int PMD3CLR __attribute__((section("sfrs")));
extern volatile unsigned int PMD3SET __attribute__((section("sfrs")));
extern volatile unsigned int PMD3INV __attribute__((section("sfrs")));

extern volatile unsigned int PMD4 __attribute__((section("sfrs")));
typedef struct {
  unsigned T1MD:1;
  unsigned T2MD:1;
  unsigned T3MD:1;
  unsigned T4MD:1;
  unsigned T5MD:1;
  unsigned T6MD:1;
  unsigned T7MD:1;
  unsigned T8MD:1;
  unsigned T9MD:1;
} __PMD4bits_t;
extern volatile __PMD4bits_t PMD4bits __asm__ ("PMD4") __attribute__((section("sfrs")));
extern volatile unsigned int PMD4CLR __attribute__((section("sfrs")));
extern volatile unsigned int PMD4SET __attribute__((section("sfrs")));
extern volatile unsigned int PMD4INV __attribute__((section("sfrs")));

extern volatile unsigned int PMD5 __attribute__((section("sfrs")));
typedef struct {
  unsigned U1MD:1;
  unsigned U2MD:1;
  unsigned U3MD:1;
  unsigned U4MD:1;
  unsigned U5MD:1;
  unsigned U6MD:1;
  unsigned :2;
  unsigned SPI1MD:1;
  unsigned SPI2MD:1;
  unsigned SPI3MD:1;
  unsigned SPI4MD:1;
  unsigned SPI5MD:1;
  unsigned SPI6MD:1;
  unsigned :2;
  unsigned I2C1MD:1;
  unsigned I2C2MD:1;
  unsigned I2C3MD:1;
  unsigned I2C4MD:1;
  unsigned I2C5MD:1;
  unsigned :3;
  unsigned USBMD:1;
} __PMD5bits_t;
extern volatile __PMD5bits_t PMD5bits __asm__ ("PMD5") __attribute__((section("sfrs")));
extern volatile unsigned int PMD5CLR __attribute__((section("sfrs")));
extern volatile unsigned int PMD5SET __attribute__((section("sfrs")));
extern volatile unsigned int PMD5INV __attribute__((section("sfrs")));

extern volatile unsigned int PMD6 __attribute__((section("sfrs")));
typedef struct {
  unsigned RTCCMD:1;
  unsigned :7;
  unsigned REFO1MD:1;
  unsigned REFO2MD:1;
  unsigned REFO3MD:1;
  unsigned REFO4MD:1;
  unsigned :4;
  unsigned PMPMD:1;
  unsigned EBIMD:1;
  unsigned :5;
  unsigned SQI1MD:1;
  unsigned :4;
  unsigned ETHMD:1;
} __PMD6bits_t;
extern volatile __PMD6bits_t PMD6bits __asm__ ("PMD6") __attribute__((section("sfrs")));
extern volatile unsigned int PMD6CLR __attribute__((section("sfrs")));
extern volatile unsigned int PMD6SET __attribute__((section("sfrs")));
extern volatile unsigned int PMD6INV __attribute__((section("sfrs")));

extern volatile unsigned int PMD7 __attribute__((section("sfrs")));
typedef struct {
  unsigned :4;
  unsigned DMAMD:1;
  unsigned :15;
  unsigned RNGMD:1;
} __PMD7bits_t;
extern volatile __PMD7bits_t PMD7bits __asm__ ("PMD7") __attribute__((section("sfrs")));
extern volatile unsigned int PMD7CLR __attribute__((section("sfrs")));
extern volatile unsigned int PMD7SET __attribute__((section("sfrs")));
extern volatile unsigned int PMD7INV __attribute__((section("sfrs")));

extern volatile unsigned int CFGEBIA __attribute__((section("sfrs")));
typedef struct {
  unsigned EBIA0EN:1;
  unsigned EBIA1EN:1;
  unsigned EBIA2EN:1;
  unsigned EBIA3EN:1;
  unsigned EBIA4EN:1;
  unsigned EBIA5EN:1;
  unsigned EBIA6EN:1;
  unsigned EBIA7EN:1;
  unsigned EBIA8EN:1;
  unsigned EBIA9EN:1;
  unsigned EBIA10EN:1;
  unsigned EBIA11EN:1;
  unsigned EBIA12EN:1;
  unsigned EBIA13EN:1;
  unsigned EBIA14EN:1;
  unsigned EBIA15EN:1;
  unsigned EBIA16EN:1;
  unsigned EBIA17EN:1;
  unsigned EBIA18EN:1;
  unsigned EBIA19EN:1;
  unsigned :11;
  unsigned EBIPINEN:1;
} __CFGEBIAbits_t;
extern volatile __CFGEBIAbits_t CFGEBIAbits __asm__ ("CFGEBIA") __attribute__((section("sfrs")));
extern volatile unsigned int CFGEBIACLR __attribute__((section("sfrs")));
extern volatile unsigned int CFGEBIASET __attribute__((section("sfrs")));
extern volatile unsigned int CFGEBIAINV __attribute__((section("sfrs")));

extern volatile unsigned int CFGEBIC __attribute__((section("sfrs")));
typedef struct {
  unsigned EBIDEN0:1;
  unsigned EBIDEN1:1;
  unsigned :2;
  unsigned EBICSEN0:1;
  unsigned :7;
  unsigned EBIOEEN:1;
  unsigned EBIWEEN:1;
  unsigned :3;
  unsigned EBIRDYLVL:1;
  unsigned :7;
  unsigned EBIRDYEN1:1;
  unsigned EBIRDYEN2:1;
  unsigned EBIRDYEN3:1;
  unsigned :1;
  unsigned EBIRDYINV1:1;
  unsigned EBIRDYINV2:1;
  unsigned EBIRDYINV3:1;
} __CFGEBICbits_t;
extern volatile __CFGEBICbits_t CFGEBICbits __asm__ ("CFGEBIC") __attribute__((section("sfrs")));
extern volatile unsigned int CFGEBICCLR __attribute__((section("sfrs")));
extern volatile unsigned int CFGEBICSET __attribute__((section("sfrs")));
extern volatile unsigned int CFGEBICINV __attribute__((section("sfrs")));

extern volatile unsigned int CFGPG __attribute__((section("sfrs")));
typedef struct {
  unsigned CPUPG:2;
  unsigned :2;
  unsigned DMAPG:2;
  unsigned :2;
  unsigned USBPG:2;
  unsigned :6;
  unsigned ETHPG:2;
  unsigned :2;
  unsigned SQI1PG:2;
  unsigned FCPG:2;
  unsigned :6;
  unsigned ICD1PG:2;
} __CFGPGbits_t;
extern volatile __CFGPGbits_t CFGPGbits __asm__ ("CFGPG") __attribute__((section("sfrs")));

extern volatile unsigned int NVMCON __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned NVMOP:4;
    unsigned :2;
    unsigned BFSWAP:1;
    unsigned PFSWAP:1;
    unsigned :4;
    unsigned LVDERR:1;
    unsigned WRERR:1;
    unsigned WREN:1;
    unsigned WR:1;
  };
  struct {
    unsigned NVMOP0:1;
    unsigned NVMOP1:1;
    unsigned NVMOP2:1;
    unsigned NVMOP3:1;
    unsigned :3;
    unsigned SWAP:1;
  };
  struct {
    unsigned PROGOP:4;
  };
  struct {
    unsigned PROGOP0:1;
    unsigned PROGOP1:1;
    unsigned PROGOP2:1;
    unsigned PROGOP3:1;
  };
  struct {
    unsigned w:32;
  };
} __NVMCONbits_t;
extern volatile __NVMCONbits_t NVMCONbits __asm__ ("NVMCON") __attribute__((section("sfrs")));
extern volatile unsigned int NVMCONCLR __attribute__((section("sfrs")));
extern volatile unsigned int NVMCONSET __attribute__((section("sfrs")));
extern volatile unsigned int NVMCONINV __attribute__((section("sfrs")));

extern volatile unsigned int NVMKEY __attribute__((section("sfrs")));

extern volatile unsigned int NVMADDR __attribute__((section("sfrs")));
extern volatile unsigned int NVMADDRCLR __attribute__((section("sfrs")));
extern volatile unsigned int NVMADDRSET __attribute__((section("sfrs")));
extern volatile unsigned int NVMADDRINV __attribute__((section("sfrs")));

extern volatile unsigned int NVMDATA0 __attribute__((section("sfrs")));
extern volatile unsigned int NVMDATA0CLR __attribute__((section("sfrs")));
extern volatile unsigned int NVMDATA0SET __attribute__((section("sfrs")));
extern volatile unsigned int NVMDATA0INV __attribute__((section("sfrs")));

extern volatile unsigned int NVMDATA1 __attribute__((section("sfrs")));
extern volatile unsigned int NVMDATA1CLR __attribute__((section("sfrs")));
extern volatile unsigned int NVMDATA1SET __attribute__((section("sfrs")));
extern volatile unsigned int NVMDATA1INV __attribute__((section("sfrs")));

extern volatile unsigned int NVMDATA2 __attribute__((section("sfrs")));
extern volatile unsigned int NVMDATA2CLR __attribute__((section("sfrs")));
extern volatile unsigned int NVMDATA2SET __attribute__((section("sfrs")));
extern volatile unsigned int NVMDATA2INV __attribute__((section("sfrs")));

extern volatile unsigned int NVMDATA3 __attribute__((section("sfrs")));
extern volatile unsigned int NVMDATA3CLR __attribute__((section("sfrs")));
extern volatile unsigned int NVMDATA3SET __attribute__((section("sfrs")));
extern volatile unsigned int NVMDATA3INV __attribute__((section("sfrs")));

extern volatile unsigned int NVMSRCADDR __attribute__((section("sfrs")));
extern volatile unsigned int NVMSRCADDRCLR __attribute__((section("sfrs")));
extern volatile unsigned int NVMSRCADDRSET __attribute__((section("sfrs")));
extern volatile unsigned int NVMSRCADDRINV __attribute__((section("sfrs")));

extern volatile unsigned int NVMPWP __attribute__((section("sfrs")));
typedef struct {
  unsigned PWP:24;
  unsigned :7;
  unsigned PWPULOCK:1;
} __NVMPWPbits_t;
extern volatile __NVMPWPbits_t NVMPWPbits __asm__ ("NVMPWP") __attribute__((section("sfrs")));
extern volatile unsigned int NVMPWPCLR __attribute__((section("sfrs")));
extern volatile unsigned int NVMPWPSET __attribute__((section("sfrs")));
extern volatile unsigned int NVMPWPINV __attribute__((section("sfrs")));

extern volatile unsigned int NVMBWP __attribute__((section("sfrs")));
typedef struct {
  unsigned UBWP0:1;
  unsigned UBWP1:1;
  unsigned UBWP2:1;
  unsigned UBWP3:1;
  unsigned UBWP4:1;
  unsigned :2;
  unsigned UBWPULOCK:1;
  unsigned LBWP0:1;
  unsigned LBWP1:1;
  unsigned LBWP2:1;
  unsigned LBWP3:1;
  unsigned LBWP4:1;
  unsigned :2;
  unsigned LBWPULOCK:1;
} __NVMBWPbits_t;
extern volatile __NVMBWPbits_t NVMBWPbits __asm__ ("NVMBWP") __attribute__((section("sfrs")));
extern volatile unsigned int NVMBWPCLR __attribute__((section("sfrs")));
extern volatile unsigned int NVMBWPSET __attribute__((section("sfrs")));
extern volatile unsigned int NVMBWPINV __attribute__((section("sfrs")));

extern volatile unsigned int NVMCON2 __attribute__((section("sfrs")));
typedef struct {
  unsigned :6;
  unsigned SWAPLOCK:2;
} __NVMCON2bits_t;
extern volatile __NVMCON2bits_t NVMCON2bits __asm__ ("NVMCON2") __attribute__((section("sfrs")));
extern volatile unsigned int NVMCON2CLR __attribute__((section("sfrs")));
extern volatile unsigned int NVMCON2SET __attribute__((section("sfrs")));
extern volatile unsigned int NVMCON2INV __attribute__((section("sfrs")));

extern volatile unsigned int WDTCON __attribute__((section("sfrs")));
typedef struct {
  unsigned WDTWINEN:1;
  unsigned :7;
  unsigned RUNDIV:5;
  unsigned :2;
  unsigned ON:1;
  unsigned WDTCLRKEY:16;
} __WDTCONbits_t;
extern volatile __WDTCONbits_t WDTCONbits __asm__ ("WDTCON") __attribute__((section("sfrs")));
extern volatile unsigned int WDTCONCLR __attribute__((section("sfrs")));
extern volatile unsigned int WDTCONSET __attribute__((section("sfrs")));
extern volatile unsigned int WDTCONINV __attribute__((section("sfrs")));

extern volatile unsigned int DMTCON __attribute__((section("sfrs")));
typedef struct {
  unsigned :15;
  unsigned ON:1;
} __DMTCONbits_t;
extern volatile __DMTCONbits_t DMTCONbits __asm__ ("DMTCON") __attribute__((section("sfrs")));

extern volatile unsigned int DMTPRECLR __attribute__((section("sfrs")));
typedef struct {
  unsigned :8;
  unsigned STEP1:8;
} __DMTPRECLRbits_t;
extern volatile __DMTPRECLRbits_t DMTPRECLRbits __asm__ ("DMTPRECLR") __attribute__((section("sfrs")));

extern volatile unsigned int DMTCLR __attribute__((section("sfrs")));
typedef struct {
  unsigned STEP2:8;
} __DMTCLRbits_t;
extern volatile __DMTCLRbits_t DMTCLRbits __asm__ ("DMTCLR") __attribute__((section("sfrs")));

extern volatile unsigned int DMTSTAT __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned WINOPN:1;
    unsigned :4;
    unsigned DMTEVENT:1;
    unsigned BAD:2;
  };
  struct {
    unsigned :6;
    unsigned BAD2:1;
    unsigned BAD1:1;
  };
  struct {
    unsigned w:32;
  };
} __DMTSTATbits_t;
extern volatile __DMTSTATbits_t DMTSTATbits __asm__ ("DMTSTAT") __attribute__((section("sfrs")));

extern volatile unsigned int DMTCNT __attribute__((section("sfrs")));
typedef struct {
  unsigned COUNTER:32;
} __DMTCNTbits_t;
extern volatile __DMTCNTbits_t DMTCNTbits __asm__ ("DMTCNT") __attribute__((section("sfrs")));

extern volatile unsigned int DMTPSCNT __attribute__((section("sfrs")));
typedef struct {
  unsigned PSCNT:32;
} __DMTPSCNTbits_t;
extern volatile __DMTPSCNTbits_t DMTPSCNTbits __asm__ ("DMTPSCNT") __attribute__((section("sfrs")));

extern volatile unsigned int DMTPSINTV __attribute__((section("sfrs")));
typedef struct {
  unsigned PSINTV:32;
} __DMTPSINTVbits_t;
extern volatile __DMTPSINTVbits_t DMTPSINTVbits __asm__ ("DMTPSINTV") __attribute__((section("sfrs")));

extern volatile unsigned int RTCCON __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned RTCOE:1;
    unsigned HALFSEC:1;
    unsigned RTCSYNC:1;
    unsigned RTCWREN:1;
    unsigned :2;
    unsigned RTCCLKON:1;
    unsigned RTCOUTSEL:2;
    unsigned RTCCLKSEL:2;
    unsigned :2;
    unsigned SIDL:1;
    unsigned :1;
    unsigned ON:1;
    unsigned CAL:10;
  };
  struct {
    unsigned w:32;
  };
} __RTCCONbits_t;
extern volatile __RTCCONbits_t RTCCONbits __asm__ ("RTCCON") __attribute__((section("sfrs")));
extern volatile unsigned int RTCCONCLR __attribute__((section("sfrs")));
extern volatile unsigned int RTCCONSET __attribute__((section("sfrs")));
extern volatile unsigned int RTCCONINV __attribute__((section("sfrs")));

extern volatile unsigned int RTCALRM __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned ARPT:8;
    unsigned AMASK:4;
    unsigned ALRMSYNC:1;
    unsigned PIV:1;
    unsigned CHIME:1;
    unsigned ALRMEN:1;
  };
  struct {
    unsigned w:32;
  };
} __RTCALRMbits_t;
extern volatile __RTCALRMbits_t RTCALRMbits __asm__ ("RTCALRM") __attribute__((section("sfrs")));
extern volatile unsigned int RTCALRMCLR __attribute__((section("sfrs")));
extern volatile unsigned int RTCALRMSET __attribute__((section("sfrs")));
extern volatile unsigned int RTCALRMINV __attribute__((section("sfrs")));

extern volatile unsigned int RTCTIME __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned :8;
    unsigned SEC01:4;
    unsigned SEC10:4;
    unsigned MIN01:4;
    unsigned MIN10:4;
    unsigned HR01:4;
    unsigned HR10:4;
  };
  struct {
    unsigned w:32;
  };
} __RTCTIMEbits_t;
extern volatile __RTCTIMEbits_t RTCTIMEbits __asm__ ("RTCTIME") __attribute__((section("sfrs")));
extern volatile unsigned int RTCTIMECLR __attribute__((section("sfrs")));
extern volatile unsigned int RTCTIMESET __attribute__((section("sfrs")));
extern volatile unsigned int RTCTIMEINV __attribute__((section("sfrs")));

extern volatile unsigned int RTCDATE __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned WDAY01:4;
    unsigned :4;
    unsigned DAY01:4;
    unsigned DAY10:4;
    unsigned MONTH01:4;
    unsigned MONTH10:4;
    unsigned YEAR01:4;
    unsigned YEAR10:4;
  };
  struct {
    unsigned w:32;
  };
} __RTCDATEbits_t;
extern volatile __RTCDATEbits_t RTCDATEbits __asm__ ("RTCDATE") __attribute__((section("sfrs")));
extern volatile unsigned int RTCDATECLR __attribute__((section("sfrs")));
extern volatile unsigned int RTCDATESET __attribute__((section("sfrs")));
extern volatile unsigned int RTCDATEINV __attribute__((section("sfrs")));

extern volatile unsigned int ALRMTIME __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned :8;
    unsigned SEC01:4;
    unsigned SEC10:4;
    unsigned MIN01:4;
    unsigned MIN10:4;
    unsigned HR01:4;
    unsigned HR10:4;
  };
  struct {
    unsigned w:32;
  };
} __ALRMTIMEbits_t;
extern volatile __ALRMTIMEbits_t ALRMTIMEbits __asm__ ("ALRMTIME") __attribute__((section("sfrs")));
extern volatile unsigned int ALRMTIMECLR __attribute__((section("sfrs")));
extern volatile unsigned int ALRMTIMESET __attribute__((section("sfrs")));
extern volatile unsigned int ALRMTIMEINV __attribute__((section("sfrs")));

extern volatile unsigned int ALRMDATE __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned WDAY01:4;
    unsigned :4;
    unsigned DAY01:4;
    unsigned DAY10:4;
    unsigned MONTH01:4;
    unsigned MONTH10:4;
  };
  struct {
    unsigned w:32;
  };
} __ALRMDATEbits_t;
extern volatile __ALRMDATEbits_t ALRMDATEbits __asm__ ("ALRMDATE") __attribute__((section("sfrs")));
extern volatile unsigned int ALRMDATECLR __attribute__((section("sfrs")));
extern volatile unsigned int ALRMDATESET __attribute__((section("sfrs")));
extern volatile unsigned int ALRMDATEINV __attribute__((section("sfrs")));

extern volatile unsigned int CVRCON __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned CVR:4;
    unsigned CVRSS:1;
    unsigned CVRR:1;
    unsigned CVROE:1;
    unsigned :8;
    unsigned ON:1;
  };
  struct {
    unsigned CVR0:1;
    unsigned CVR1:1;
    unsigned CVR2:1;
    unsigned CVR3:1;
  };
  struct {
    unsigned w:32;
  };
} __CVRCONbits_t;
extern volatile __CVRCONbits_t CVRCONbits __asm__ ("CVRCON") __attribute__((section("sfrs")));
extern volatile unsigned int CVRCONCLR __attribute__((section("sfrs")));
extern volatile unsigned int CVRCONSET __attribute__((section("sfrs")));
extern volatile unsigned int CVRCONINV __attribute__((section("sfrs")));

extern volatile unsigned int _ICDCON __attribute__((section("sfrs")));
typedef struct {
  unsigned CKSWBKEN:1;
  unsigned SLPBKEN:1;
  unsigned WDTBKEN:1;
  unsigned WDTEN:1;
  unsigned RSTBUG:1;
  unsigned DMTBKEN:1;
  unsigned DMTEN:1;
  unsigned :7;
  unsigned FRZ:1;
} ___ICDCONbits_t;
extern volatile ___ICDCONbits_t _ICDCONbits __asm__ ("_ICDCON") __attribute__((section("sfrs")));

extern volatile unsigned int _ICDSTAT __attribute__((section("sfrs")));
typedef struct {
  unsigned CKSWBF:1;
  unsigned SLPBF:1;
  unsigned WDTBF:1;
  unsigned DMTBF:1;
} ___ICDSTATbits_t;
extern volatile ___ICDSTATbits_t _ICDSTATbits __asm__ ("_ICDSTAT") __attribute__((section("sfrs")));

extern volatile unsigned int OSCCON __attribute__((section("sfrs")));
typedef struct {
  unsigned OSWEN:1;
  unsigned SOSCEN:1;
  unsigned :1;
  unsigned CF:1;
  unsigned SLPEN:1;
  unsigned :2;
  unsigned CLKLOCK:1;
  unsigned NOSC:3;
  unsigned :1;
  unsigned COSC:3;
  unsigned :6;
  unsigned SLP2SPD:1;
  unsigned :1;
  unsigned DRMEN:1;
  unsigned FRCDIV:3;
} __OSCCONbits_t;
extern volatile __OSCCONbits_t OSCCONbits __asm__ ("OSCCON") __attribute__((section("sfrs")));
extern volatile unsigned int OSCCONCLR __attribute__((section("sfrs")));
extern volatile unsigned int OSCCONSET __attribute__((section("sfrs")));
extern volatile unsigned int OSCCONINV __attribute__((section("sfrs")));

extern volatile unsigned int OSCTUN __attribute__((section("sfrs")));
typedef struct {
  unsigned TUN:6;
} __OSCTUNbits_t;
extern volatile __OSCTUNbits_t OSCTUNbits __asm__ ("OSCTUN") __attribute__((section("sfrs")));
extern volatile unsigned int OSCTUNCLR __attribute__((section("sfrs")));
extern volatile unsigned int OSCTUNSET __attribute__((section("sfrs")));
extern volatile unsigned int OSCTUNINV __attribute__((section("sfrs")));

extern volatile unsigned int SPLLCON __attribute__((section("sfrs")));
typedef struct {
  unsigned PLLRANGE:3;
  unsigned :4;
  unsigned PLLICLK:1;
  unsigned PLLIDIV:3;
  unsigned :5;
  unsigned PLLMULT:7;
  unsigned :1;
  unsigned PLLODIV:3;
} __SPLLCONbits_t;
extern volatile __SPLLCONbits_t SPLLCONbits __asm__ ("SPLLCON") __attribute__((section("sfrs")));
extern volatile unsigned int SPLLCONCLR __attribute__((section("sfrs")));
extern volatile unsigned int SPLLCONSET __attribute__((section("sfrs")));
extern volatile unsigned int SPLLCONINV __attribute__((section("sfrs")));

extern volatile unsigned int RCON __attribute__((section("sfrs")));
typedef struct {
  unsigned POR:1;
  unsigned BOR:1;
  unsigned IDLE:1;
  unsigned SLEEP:1;
  unsigned WDTO:1;
  unsigned DMTO:1;
  unsigned SWR:1;
  unsigned EXTR:1;
  unsigned :1;
  unsigned CMR:1;
  unsigned :16;
  unsigned BCFGFAIL:1;
  unsigned BCFGERR:1;
} __RCONbits_t;
extern volatile __RCONbits_t RCONbits __asm__ ("RCON") __attribute__((section("sfrs")));
extern volatile unsigned int RCONCLR __attribute__((section("sfrs")));
extern volatile unsigned int RCONSET __attribute__((section("sfrs")));
extern volatile unsigned int RCONINV __attribute__((section("sfrs")));

extern volatile unsigned int RSWRST __attribute__((section("sfrs")));
typedef struct {
  unsigned SWRST:1;
} __RSWRSTbits_t;
extern volatile __RSWRSTbits_t RSWRSTbits __asm__ ("RSWRST") __attribute__((section("sfrs")));
extern volatile unsigned int RSWRSTCLR __attribute__((section("sfrs")));
extern volatile unsigned int RSWRSTSET __attribute__((section("sfrs")));
extern volatile unsigned int RSWRSTINV __attribute__((section("sfrs")));

extern volatile unsigned int RNMICON __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned NMICNT:16;
    unsigned WDTS:1;
    unsigned CF:1;
    unsigned :1;
    unsigned GNMI:1;
    unsigned :3;
    unsigned SWNMI:1;
    unsigned WDTO:1;
    unsigned DMTO:1;
  };
  struct {
    unsigned :24;
    unsigned WDTR:1;
  };
} __RNMICONbits_t;
extern volatile __RNMICONbits_t RNMICONbits __asm__ ("RNMICON") __attribute__((section("sfrs")));
extern volatile unsigned int RNMICONCLR __attribute__((section("sfrs")));
extern volatile unsigned int RNMICONSET __attribute__((section("sfrs")));
extern volatile unsigned int RNMICONINV __attribute__((section("sfrs")));

extern volatile unsigned int PWRCON __attribute__((section("sfrs")));
typedef struct {
  unsigned VREGS:1;
} __PWRCONbits_t;
extern volatile __PWRCONbits_t PWRCONbits __asm__ ("PWRCON") __attribute__((section("sfrs")));
extern volatile unsigned int PWRCONCLR __attribute__((section("sfrs")));
extern volatile unsigned int PWRCONSET __attribute__((section("sfrs")));
extern volatile unsigned int PWRCONINV __attribute__((section("sfrs")));

extern volatile unsigned int REFO1CON __attribute__((section("sfrs")));
typedef struct {
  unsigned ROSEL:4;
  unsigned :4;
  unsigned ACTIVE:1;
  unsigned DIVSWEN:1;
  unsigned :1;
  unsigned RSLP:1;
  unsigned OE:1;
  unsigned SIDL:1;
  unsigned :1;
  unsigned ON:1;
  unsigned RODIV:15;
} __REFO1CONbits_t;
extern volatile __REFO1CONbits_t REFO1CONbits __asm__ ("REFO1CON") __attribute__((section("sfrs")));
extern volatile unsigned int REFO1CONCLR __attribute__((section("sfrs")));
extern volatile unsigned int REFO1CONSET __attribute__((section("sfrs")));
extern volatile unsigned int REFO1CONINV __attribute__((section("sfrs")));

extern volatile unsigned int REFO1TRIM __attribute__((section("sfrs")));
typedef struct {
  unsigned :23;
  unsigned ROTRIM:9;
} __REFO1TRIMbits_t;
extern volatile __REFO1TRIMbits_t REFO1TRIMbits __asm__ ("REFO1TRIM") __attribute__((section("sfrs")));
extern volatile unsigned int REFO1TRIMCLR __attribute__((section("sfrs")));
extern volatile unsigned int REFO1TRIMSET __attribute__((section("sfrs")));
extern volatile unsigned int REFO1TRIMINV __attribute__((section("sfrs")));

extern volatile unsigned int REFO2CON __attribute__((section("sfrs")));
typedef struct {
  unsigned ROSEL:4;
  unsigned :4;
  unsigned ACTIVE:1;
  unsigned DIVSWEN:1;
  unsigned :1;
  unsigned RSLP:1;
  unsigned OE:1;
  unsigned SIDL:1;
  unsigned :1;
  unsigned ON:1;
  unsigned RODIV:15;
} __REFO2CONbits_t;
extern volatile __REFO2CONbits_t REFO2CONbits __asm__ ("REFO2CON") __attribute__((section("sfrs")));
extern volatile unsigned int REFO2CONCLR __attribute__((section("sfrs")));
extern volatile unsigned int REFO2CONSET __attribute__((section("sfrs")));
extern volatile unsigned int REFO2CONINV __attribute__((section("sfrs")));

extern volatile unsigned int REFO2TRIM __attribute__((section("sfrs")));
typedef struct {
  unsigned :23;
  unsigned ROTRIM:9;
} __REFO2TRIMbits_t;
extern volatile __REFO2TRIMbits_t REFO2TRIMbits __asm__ ("REFO2TRIM") __attribute__((section("sfrs")));
extern volatile unsigned int REFO2TRIMCLR __attribute__((section("sfrs")));
extern volatile unsigned int REFO2TRIMSET __attribute__((section("sfrs")));
extern volatile unsigned int REFO2TRIMINV __attribute__((section("sfrs")));

extern volatile unsigned int REFO3CON __attribute__((section("sfrs")));
typedef struct {
  unsigned ROSEL:4;
  unsigned :4;
  unsigned ACTIVE:1;
  unsigned DIVSWEN:1;
  unsigned :1;
  unsigned RSLP:1;
  unsigned OE:1;
  unsigned SIDL:1;
  unsigned :1;
  unsigned ON:1;
  unsigned RODIV:15;
} __REFO3CONbits_t;
extern volatile __REFO3CONbits_t REFO3CONbits __asm__ ("REFO3CON") __attribute__((section("sfrs")));
extern volatile unsigned int REFO3CONCLR __attribute__((section("sfrs")));
extern volatile unsigned int REFO3CONSET __attribute__((section("sfrs")));
extern volatile unsigned int REFO3CONINV __attribute__((section("sfrs")));

extern volatile unsigned int REFO3TRIM __attribute__((section("sfrs")));
typedef struct {
  unsigned :23;
  unsigned ROTRIM:9;
} __REFO3TRIMbits_t;
extern volatile __REFO3TRIMbits_t REFO3TRIMbits __asm__ ("REFO3TRIM") __attribute__((section("sfrs")));
extern volatile unsigned int REFO3TRIMCLR __attribute__((section("sfrs")));
extern volatile unsigned int REFO3TRIMSET __attribute__((section("sfrs")));
extern volatile unsigned int REFO3TRIMINV __attribute__((section("sfrs")));

extern volatile unsigned int REFO4CON __attribute__((section("sfrs")));
typedef struct {
  unsigned ROSEL:4;
  unsigned :4;
  unsigned ACTIVE:1;
  unsigned DIVSWEN:1;
  unsigned :1;
  unsigned RSLP:1;
  unsigned OE:1;
  unsigned SIDL:1;
  unsigned :1;
  unsigned ON:1;
  unsigned RODIV:15;
} __REFO4CONbits_t;
extern volatile __REFO4CONbits_t REFO4CONbits __asm__ ("REFO4CON") __attribute__((section("sfrs")));
extern volatile unsigned int REFO4CONCLR __attribute__((section("sfrs")));
extern volatile unsigned int REFO4CONSET __attribute__((section("sfrs")));
extern volatile unsigned int REFO4CONINV __attribute__((section("sfrs")));

extern volatile unsigned int REFO4TRIM __attribute__((section("sfrs")));
typedef struct {
  unsigned :23;
  unsigned ROTRIM:9;
} __REFO4TRIMbits_t;
extern volatile __REFO4TRIMbits_t REFO4TRIMbits __asm__ ("REFO4TRIM") __attribute__((section("sfrs")));
extern volatile unsigned int REFO4TRIMCLR __attribute__((section("sfrs")));
extern volatile unsigned int REFO4TRIMSET __attribute__((section("sfrs")));
extern volatile unsigned int REFO4TRIMINV __attribute__((section("sfrs")));

extern volatile unsigned int PB1DIV __attribute__((section("sfrs")));
typedef struct {
  unsigned PBDIV:7;
  unsigned :4;
  unsigned PBDIVRDY:1;
} __PB1DIVbits_t;
extern volatile __PB1DIVbits_t PB1DIVbits __asm__ ("PB1DIV") __attribute__((section("sfrs")));
extern volatile unsigned int PB1DIVCLR __attribute__((section("sfrs")));
extern volatile unsigned int PB1DIVSET __attribute__((section("sfrs")));
extern volatile unsigned int PB1DIVINV __attribute__((section("sfrs")));

extern volatile unsigned int PB2DIV __attribute__((section("sfrs")));
typedef struct {
  unsigned PBDIV:7;
  unsigned :4;
  unsigned PBDIVRDY:1;
  unsigned :3;
  unsigned ON:1;
} __PB2DIVbits_t;
extern volatile __PB2DIVbits_t PB2DIVbits __asm__ ("PB2DIV") __attribute__((section("sfrs")));
extern volatile unsigned int PB2DIVCLR __attribute__((section("sfrs")));
extern volatile unsigned int PB2DIVSET __attribute__((section("sfrs")));
extern volatile unsigned int PB2DIVINV __attribute__((section("sfrs")));

extern volatile unsigned int PB3DIV __attribute__((section("sfrs")));
typedef struct {
  unsigned PBDIV:7;
  unsigned :4;
  unsigned PBDIVRDY:1;
  unsigned :3;
  unsigned ON:1;
} __PB3DIVbits_t;
extern volatile __PB3DIVbits_t PB3DIVbits __asm__ ("PB3DIV") __attribute__((section("sfrs")));
extern volatile unsigned int PB3DIVCLR __attribute__((section("sfrs")));
extern volatile unsigned int PB3DIVSET __attribute__((section("sfrs")));
extern volatile unsigned int PB3DIVINV __attribute__((section("sfrs")));

extern volatile unsigned int PB4DIV __attribute__((section("sfrs")));
typedef struct {
  unsigned PBDIV:7;
  unsigned :4;
  unsigned PBDIVRDY:1;
  unsigned :3;
  unsigned ON:1;
} __PB4DIVbits_t;
extern volatile __PB4DIVbits_t PB4DIVbits __asm__ ("PB4DIV") __attribute__((section("sfrs")));
extern volatile unsigned int PB4DIVCLR __attribute__((section("sfrs")));
extern volatile unsigned int PB4DIVSET __attribute__((section("sfrs")));
extern volatile unsigned int PB4DIVINV __attribute__((section("sfrs")));

extern volatile unsigned int PB5DIV __attribute__((section("sfrs")));
typedef struct {
  unsigned PBDIV:7;
  unsigned :4;
  unsigned PBDIVRDY:1;
  unsigned :3;
  unsigned ON:1;
} __PB5DIVbits_t;
extern volatile __PB5DIVbits_t PB5DIVbits __asm__ ("PB5DIV") __attribute__((section("sfrs")));
extern volatile unsigned int PB5DIVCLR __attribute__((section("sfrs")));
extern volatile unsigned int PB5DIVSET __attribute__((section("sfrs")));
extern volatile unsigned int PB5DIVINV __attribute__((section("sfrs")));

extern volatile unsigned int PB7DIV __attribute__((section("sfrs")));
typedef struct {
  unsigned PBDIV:7;
  unsigned :4;
  unsigned PBDIVRDY:1;
  unsigned :3;
  unsigned ON:1;
} __PB7DIVbits_t;
extern volatile __PB7DIVbits_t PB7DIVbits __asm__ ("PB7DIV") __attribute__((section("sfrs")));
extern volatile unsigned int PB7DIVCLR __attribute__((section("sfrs")));
extern volatile unsigned int PB7DIVSET __attribute__((section("sfrs")));
extern volatile unsigned int PB7DIVINV __attribute__((section("sfrs")));

extern volatile unsigned int PB8DIV __attribute__((section("sfrs")));
typedef struct {
  unsigned PBDIV:7;
  unsigned :4;
  unsigned PBDIVRDY:1;
  unsigned :3;
  unsigned ON:1;
} __PB8DIVbits_t;
extern volatile __PB8DIVbits_t PB8DIVbits __asm__ ("PB8DIV") __attribute__((section("sfrs")));
extern volatile unsigned int PB8DIVCLR __attribute__((section("sfrs")));
extern volatile unsigned int PB8DIVSET __attribute__((section("sfrs")));
extern volatile unsigned int PB8DIVINV __attribute__((section("sfrs")));

extern volatile unsigned int SLEWCON __attribute__((section("sfrs")));
typedef struct {
  unsigned BUSY:1;
  unsigned DNEN:1;
  unsigned UPEN:1;
  unsigned :5;
  unsigned SLWDIV:3;
  unsigned :5;
  unsigned SYSDIV:4;
} __SLEWCONbits_t;
extern volatile __SLEWCONbits_t SLEWCONbits __asm__ ("SLEWCON") __attribute__((section("sfrs")));
extern volatile unsigned int SLEWCONCLR __attribute__((section("sfrs")));
extern volatile unsigned int SLEWCONSET __attribute__((section("sfrs")));
extern volatile unsigned int SLEWCONINV __attribute__((section("sfrs")));

extern volatile unsigned int CLKSTAT __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned FRCRDY:1;
    unsigned SPDIVRDY:1;
    unsigned POSCRDY:1;
    unsigned :1;
    unsigned SOSCRDY:1;
    unsigned LPRCRDY:1;
  };
  struct {
    unsigned :1;
    unsigned DIVSPLLRDY:1;
  };
} __CLKSTATbits_t;
extern volatile __CLKSTATbits_t CLKSTATbits __asm__ ("CLKSTAT") __attribute__((section("sfrs")));
extern volatile unsigned int CLKSTATCLR __attribute__((section("sfrs")));
extern volatile unsigned int CLKSTATSET __attribute__((section("sfrs")));
extern volatile unsigned int CLKSTATINV __attribute__((section("sfrs")));

extern volatile unsigned int INT1R __attribute__((section("sfrs")));
typedef struct {
  unsigned INT1R:4;
} __INT1Rbits_t;
extern volatile __INT1Rbits_t INT1Rbits __asm__ ("INT1R") __attribute__((section("sfrs")));

extern volatile unsigned int INT2R __attribute__((section("sfrs")));
typedef struct {
  unsigned INT2R:4;
} __INT2Rbits_t;
extern volatile __INT2Rbits_t INT2Rbits __asm__ ("INT2R") __attribute__((section("sfrs")));

extern volatile unsigned int INT3R __attribute__((section("sfrs")));
typedef struct {
  unsigned INT3R:4;
} __INT3Rbits_t;
extern volatile __INT3Rbits_t INT3Rbits __asm__ ("INT3R") __attribute__((section("sfrs")));

extern volatile unsigned int INT4R __attribute__((section("sfrs")));
typedef struct {
  unsigned INT4R:4;
} __INT4Rbits_t;
extern volatile __INT4Rbits_t INT4Rbits __asm__ ("INT4R") __attribute__((section("sfrs")));

extern volatile unsigned int T2CKR __attribute__((section("sfrs")));
typedef struct {
  unsigned T2CKR:4;
} __T2CKRbits_t;
extern volatile __T2CKRbits_t T2CKRbits __asm__ ("T2CKR") __attribute__((section("sfrs")));

extern volatile unsigned int T3CKR __attribute__((section("sfrs")));
typedef struct {
  unsigned T3CKR:4;
} __T3CKRbits_t;
extern volatile __T3CKRbits_t T3CKRbits __asm__ ("T3CKR") __attribute__((section("sfrs")));

extern volatile unsigned int T4CKR __attribute__((section("sfrs")));
typedef struct {
  unsigned T4CKR:4;
} __T4CKRbits_t;
extern volatile __T4CKRbits_t T4CKRbits __asm__ ("T4CKR") __attribute__((section("sfrs")));

extern volatile unsigned int T5CKR __attribute__((section("sfrs")));
typedef struct {
  unsigned T5CKR:4;
} __T5CKRbits_t;
extern volatile __T5CKRbits_t T5CKRbits __asm__ ("T5CKR") __attribute__((section("sfrs")));

extern volatile unsigned int T6CKR __attribute__((section("sfrs")));
typedef struct {
  unsigned T6CKR:4;
} __T6CKRbits_t;
extern volatile __T6CKRbits_t T6CKRbits __asm__ ("T6CKR") __attribute__((section("sfrs")));

extern volatile unsigned int T7CKR __attribute__((section("sfrs")));
typedef struct {
  unsigned T7CKR:4;
} __T7CKRbits_t;
extern volatile __T7CKRbits_t T7CKRbits __asm__ ("T7CKR") __attribute__((section("sfrs")));

extern volatile unsigned int T8CKR __attribute__((section("sfrs")));
typedef struct {
  unsigned T8CKR:4;
} __T8CKRbits_t;
extern volatile __T8CKRbits_t T8CKRbits __asm__ ("T8CKR") __attribute__((section("sfrs")));

extern volatile unsigned int T9CKR __attribute__((section("sfrs")));
typedef struct {
  unsigned T9CKR:4;
} __T9CKRbits_t;
extern volatile __T9CKRbits_t T9CKRbits __asm__ ("T9CKR") __attribute__((section("sfrs")));

extern volatile unsigned int IC1R __attribute__((section("sfrs")));
typedef struct {
  unsigned IC1R:4;
} __IC1Rbits_t;
extern volatile __IC1Rbits_t IC1Rbits __asm__ ("IC1R") __attribute__((section("sfrs")));

extern volatile unsigned int IC2R __attribute__((section("sfrs")));
typedef struct {
  unsigned IC2R:4;
} __IC2Rbits_t;
extern volatile __IC2Rbits_t IC2Rbits __asm__ ("IC2R") __attribute__((section("sfrs")));

extern volatile unsigned int IC3R __attribute__((section("sfrs")));
typedef struct {
  unsigned IC3R:4;
} __IC3Rbits_t;
extern volatile __IC3Rbits_t IC3Rbits __asm__ ("IC3R") __attribute__((section("sfrs")));

extern volatile unsigned int IC4R __attribute__((section("sfrs")));
typedef struct {
  unsigned IC4R:4;
} __IC4Rbits_t;
extern volatile __IC4Rbits_t IC4Rbits __asm__ ("IC4R") __attribute__((section("sfrs")));

extern volatile unsigned int IC5R __attribute__((section("sfrs")));
typedef struct {
  unsigned IC5R:4;
} __IC5Rbits_t;
extern volatile __IC5Rbits_t IC5Rbits __asm__ ("IC5R") __attribute__((section("sfrs")));

extern volatile unsigned int IC6R __attribute__((section("sfrs")));
typedef struct {
  unsigned IC6R:4;
} __IC6Rbits_t;
extern volatile __IC6Rbits_t IC6Rbits __asm__ ("IC6R") __attribute__((section("sfrs")));

extern volatile unsigned int IC7R __attribute__((section("sfrs")));
typedef struct {
  unsigned IC7R:4;
} __IC7Rbits_t;
extern volatile __IC7Rbits_t IC7Rbits __asm__ ("IC7R") __attribute__((section("sfrs")));

extern volatile unsigned int IC8R __attribute__((section("sfrs")));
typedef struct {
  unsigned IC8R:4;
} __IC8Rbits_t;
extern volatile __IC8Rbits_t IC8Rbits __asm__ ("IC8R") __attribute__((section("sfrs")));

extern volatile unsigned int IC9R __attribute__((section("sfrs")));
typedef struct {
  unsigned IC9R:4;
} __IC9Rbits_t;
extern volatile __IC9Rbits_t IC9Rbits __asm__ ("IC9R") __attribute__((section("sfrs")));

extern volatile unsigned int OCFAR __attribute__((section("sfrs")));
typedef struct {
  unsigned OCFAR:4;
} __OCFARbits_t;
extern volatile __OCFARbits_t OCFARbits __asm__ ("OCFAR") __attribute__((section("sfrs")));

extern volatile unsigned int U1RXR __attribute__((section("sfrs")));
typedef struct {
  unsigned U1RXR:4;
} __U1RXRbits_t;
extern volatile __U1RXRbits_t U1RXRbits __asm__ ("U1RXR") __attribute__((section("sfrs")));

extern volatile unsigned int U1CTSR __attribute__((section("sfrs")));
typedef struct {
  unsigned U1CTSR:4;
} __U1CTSRbits_t;
extern volatile __U1CTSRbits_t U1CTSRbits __asm__ ("U1CTSR") __attribute__((section("sfrs")));

extern volatile unsigned int U2RXR __attribute__((section("sfrs")));
typedef struct {
  unsigned U2RXR:4;
} __U2RXRbits_t;
extern volatile __U2RXRbits_t U2RXRbits __asm__ ("U2RXR") __attribute__((section("sfrs")));

extern volatile unsigned int U2CTSR __attribute__((section("sfrs")));
typedef struct {
  unsigned U2CTSR:4;
} __U2CTSRbits_t;
extern volatile __U2CTSRbits_t U2CTSRbits __asm__ ("U2CTSR") __attribute__((section("sfrs")));

extern volatile unsigned int U3RXR __attribute__((section("sfrs")));
typedef struct {
  unsigned U3RXR:4;
} __U3RXRbits_t;
extern volatile __U3RXRbits_t U3RXRbits __asm__ ("U3RXR") __attribute__((section("sfrs")));

extern volatile unsigned int U3CTSR __attribute__((section("sfrs")));
typedef struct {
  unsigned U3CTSR:4;
} __U3CTSRbits_t;
extern volatile __U3CTSRbits_t U3CTSRbits __asm__ ("U3CTSR") __attribute__((section("sfrs")));

extern volatile unsigned int U4RXR __attribute__((section("sfrs")));
typedef struct {
  unsigned U4RXR:4;
} __U4RXRbits_t;
extern volatile __U4RXRbits_t U4RXRbits __asm__ ("U4RXR") __attribute__((section("sfrs")));

extern volatile unsigned int U4CTSR __attribute__((section("sfrs")));
typedef struct {
  unsigned U4CTSR:4;
} __U4CTSRbits_t;
extern volatile __U4CTSRbits_t U4CTSRbits __asm__ ("U4CTSR") __attribute__((section("sfrs")));

extern volatile unsigned int U5RXR __attribute__((section("sfrs")));
typedef struct {
  unsigned U5RXR:4;
} __U5RXRbits_t;
extern volatile __U5RXRbits_t U5RXRbits __asm__ ("U5RXR") __attribute__((section("sfrs")));

extern volatile unsigned int U5CTSR __attribute__((section("sfrs")));
typedef struct {
  unsigned U5CTSR:4;
} __U5CTSRbits_t;
extern volatile __U5CTSRbits_t U5CTSRbits __asm__ ("U5CTSR") __attribute__((section("sfrs")));

extern volatile unsigned int U6RXR __attribute__((section("sfrs")));
typedef struct {
  unsigned U6RXR:4;
} __U6RXRbits_t;
extern volatile __U6RXRbits_t U6RXRbits __asm__ ("U6RXR") __attribute__((section("sfrs")));

extern volatile unsigned int U6CTSR __attribute__((section("sfrs")));
typedef struct {
  unsigned U6CTSR:4;
} __U6CTSRbits_t;
extern volatile __U6CTSRbits_t U6CTSRbits __asm__ ("U6CTSR") __attribute__((section("sfrs")));

extern volatile unsigned int SDI1R __attribute__((section("sfrs")));
typedef struct {
  unsigned SDI1R:4;
} __SDI1Rbits_t;
extern volatile __SDI1Rbits_t SDI1Rbits __asm__ ("SDI1R") __attribute__((section("sfrs")));

extern volatile unsigned int SS1R __attribute__((section("sfrs")));
typedef struct {
  unsigned SS1R:4;
} __SS1Rbits_t;
extern volatile __SS1Rbits_t SS1Rbits __asm__ ("SS1R") __attribute__((section("sfrs")));

extern volatile unsigned int SDI2R __attribute__((section("sfrs")));
typedef struct {
  unsigned SDI2R:4;
} __SDI2Rbits_t;
extern volatile __SDI2Rbits_t SDI2Rbits __asm__ ("SDI2R") __attribute__((section("sfrs")));

extern volatile unsigned int SS2R __attribute__((section("sfrs")));
typedef struct {
  unsigned SS2R:4;
} __SS2Rbits_t;
extern volatile __SS2Rbits_t SS2Rbits __asm__ ("SS2R") __attribute__((section("sfrs")));

extern volatile unsigned int SDI3R __attribute__((section("sfrs")));
typedef struct {
  unsigned SDI3R:4;
} __SDI3Rbits_t;
extern volatile __SDI3Rbits_t SDI3Rbits __asm__ ("SDI3R") __attribute__((section("sfrs")));

extern volatile unsigned int SS3R __attribute__((section("sfrs")));
typedef struct {
  unsigned SS3R:4;
} __SS3Rbits_t;
extern volatile __SS3Rbits_t SS3Rbits __asm__ ("SS3R") __attribute__((section("sfrs")));

extern volatile unsigned int SDI4R __attribute__((section("sfrs")));
typedef struct {
  unsigned SDI4R:4;
} __SDI4Rbits_t;
extern volatile __SDI4Rbits_t SDI4Rbits __asm__ ("SDI4R") __attribute__((section("sfrs")));

extern volatile unsigned int SS4R __attribute__((section("sfrs")));
typedef struct {
  unsigned SS4R:4;
} __SS4Rbits_t;
extern volatile __SS4Rbits_t SS4Rbits __asm__ ("SS4R") __attribute__((section("sfrs")));

extern volatile unsigned int SDI5R __attribute__((section("sfrs")));
typedef struct {
  unsigned SDI5R:4;
} __SDI5Rbits_t;
extern volatile __SDI5Rbits_t SDI5Rbits __asm__ ("SDI5R") __attribute__((section("sfrs")));

extern volatile unsigned int SS5R __attribute__((section("sfrs")));
typedef struct {
  unsigned SS5R:4;
} __SS5Rbits_t;
extern volatile __SS5Rbits_t SS5Rbits __asm__ ("SS5R") __attribute__((section("sfrs")));

extern volatile unsigned int SDI6R __attribute__((section("sfrs")));
typedef struct {
  unsigned SDI6R:4;
} __SDI6Rbits_t;
extern volatile __SDI6Rbits_t SDI6Rbits __asm__ ("SDI6R") __attribute__((section("sfrs")));

extern volatile unsigned int SS6R __attribute__((section("sfrs")));
typedef struct {
  unsigned SS6R:4;
} __SS6Rbits_t;
extern volatile __SS6Rbits_t SS6Rbits __asm__ ("SS6R") __attribute__((section("sfrs")));

extern volatile unsigned int REFCLKI1R __attribute__((section("sfrs")));
typedef struct {
  unsigned REFCLKI1R:4;
} __REFCLKI1Rbits_t;
extern volatile __REFCLKI1Rbits_t REFCLKI1Rbits __asm__ ("REFCLKI1R") __attribute__((section("sfrs")));

extern volatile unsigned int REFCLKI3R __attribute__((section("sfrs")));
typedef struct {
  unsigned REFCLKI3R:4;
} __REFCLKI3Rbits_t;
extern volatile __REFCLKI3Rbits_t REFCLKI3Rbits __asm__ ("REFCLKI3R") __attribute__((section("sfrs")));

extern volatile unsigned int REFCLKI4R __attribute__((section("sfrs")));
typedef struct {
  unsigned REFCLKI4R:4;
} __REFCLKI4Rbits_t;
extern volatile __REFCLKI4Rbits_t REFCLKI4Rbits __asm__ ("REFCLKI4R") __attribute__((section("sfrs")));

extern volatile unsigned int RPA14R __attribute__((section("sfrs")));
typedef struct {
  unsigned RPA14R:4;
} __RPA14Rbits_t;
extern volatile __RPA14Rbits_t RPA14Rbits __asm__ ("RPA14R") __attribute__((section("sfrs")));

extern volatile unsigned int RPA15R __attribute__((section("sfrs")));
typedef struct {
  unsigned RPA15R:4;
} __RPA15Rbits_t;
extern volatile __RPA15Rbits_t RPA15Rbits __asm__ ("RPA15R") __attribute__((section("sfrs")));

extern volatile unsigned int RPB0R __attribute__((section("sfrs")));
typedef struct {
  unsigned RPB0R:4;
} __RPB0Rbits_t;
extern volatile __RPB0Rbits_t RPB0Rbits __asm__ ("RPB0R") __attribute__((section("sfrs")));

extern volatile unsigned int RPB1R __attribute__((section("sfrs")));
typedef struct {
  unsigned RPB1R:4;
} __RPB1Rbits_t;
extern volatile __RPB1Rbits_t RPB1Rbits __asm__ ("RPB1R") __attribute__((section("sfrs")));

extern volatile unsigned int RPB2R __attribute__((section("sfrs")));
typedef struct {
  unsigned RPB2R:4;
} __RPB2Rbits_t;
extern volatile __RPB2Rbits_t RPB2Rbits __asm__ ("RPB2R") __attribute__((section("sfrs")));

extern volatile unsigned int RPB3R __attribute__((section("sfrs")));
typedef struct {
  unsigned RPB3R:4;
} __RPB3Rbits_t;
extern volatile __RPB3Rbits_t RPB3Rbits __asm__ ("RPB3R") __attribute__((section("sfrs")));

extern volatile unsigned int RPB5R __attribute__((section("sfrs")));
typedef struct {
  unsigned RPB5R:4;
} __RPB5Rbits_t;
extern volatile __RPB5Rbits_t RPB5Rbits __asm__ ("RPB5R") __attribute__((section("sfrs")));

extern volatile unsigned int RPB6R __attribute__((section("sfrs")));
typedef struct {
  unsigned RPB6R:4;
} __RPB6Rbits_t;
extern volatile __RPB6Rbits_t RPB6Rbits __asm__ ("RPB6R") __attribute__((section("sfrs")));

extern volatile unsigned int RPB7R __attribute__((section("sfrs")));
typedef struct {
  unsigned RPB7R:4;
} __RPB7Rbits_t;
extern volatile __RPB7Rbits_t RPB7Rbits __asm__ ("RPB7R") __attribute__((section("sfrs")));

extern volatile unsigned int RPB8R __attribute__((section("sfrs")));
typedef struct {
  unsigned RPB8R:4;
} __RPB8Rbits_t;
extern volatile __RPB8Rbits_t RPB8Rbits __asm__ ("RPB8R") __attribute__((section("sfrs")));

extern volatile unsigned int RPB9R __attribute__((section("sfrs")));
typedef struct {
  unsigned RPB9R:4;
} __RPB9Rbits_t;
extern volatile __RPB9Rbits_t RPB9Rbits __asm__ ("RPB9R") __attribute__((section("sfrs")));

extern volatile unsigned int RPB10R __attribute__((section("sfrs")));
typedef struct {
  unsigned RPB10R:4;
} __RPB10Rbits_t;
extern volatile __RPB10Rbits_t RPB10Rbits __asm__ ("RPB10R") __attribute__((section("sfrs")));

extern volatile unsigned int RPB14R __attribute__((section("sfrs")));
typedef struct {
  unsigned RPB14R:4;
} __RPB14Rbits_t;
extern volatile __RPB14Rbits_t RPB14Rbits __asm__ ("RPB14R") __attribute__((section("sfrs")));

extern volatile unsigned int RPB15R __attribute__((section("sfrs")));
typedef struct {
  unsigned RPB15R:4;
} __RPB15Rbits_t;
extern volatile __RPB15Rbits_t RPB15Rbits __asm__ ("RPB15R") __attribute__((section("sfrs")));

extern volatile unsigned int RPC1R __attribute__((section("sfrs")));
typedef struct {
  unsigned RPC1R:4;
} __RPC1Rbits_t;
extern volatile __RPC1Rbits_t RPC1Rbits __asm__ ("RPC1R") __attribute__((section("sfrs")));

extern volatile unsigned int RPC2R __attribute__((section("sfrs")));
typedef struct {
  unsigned RPC2R:4;
} __RPC2Rbits_t;
extern volatile __RPC2Rbits_t RPC2Rbits __asm__ ("RPC2R") __attribute__((section("sfrs")));

extern volatile unsigned int RPC3R __attribute__((section("sfrs")));
typedef struct {
  unsigned RPC3R:4;
} __RPC3Rbits_t;
extern volatile __RPC3Rbits_t RPC3Rbits __asm__ ("RPC3R") __attribute__((section("sfrs")));

extern volatile unsigned int RPC4R __attribute__((section("sfrs")));
typedef struct {
  unsigned RPC4R:4;
} __RPC4Rbits_t;
extern volatile __RPC4Rbits_t RPC4Rbits __asm__ ("RPC4R") __attribute__((section("sfrs")));

extern volatile unsigned int RPC13R __attribute__((section("sfrs")));
typedef struct {
  unsigned RPC13R:4;
} __RPC13Rbits_t;
extern volatile __RPC13Rbits_t RPC13Rbits __asm__ ("RPC13R") __attribute__((section("sfrs")));

extern volatile unsigned int RPC14R __attribute__((section("sfrs")));
typedef struct {
  unsigned RPC14R:4;
} __RPC14Rbits_t;
extern volatile __RPC14Rbits_t RPC14Rbits __asm__ ("RPC14R") __attribute__((section("sfrs")));

extern volatile unsigned int RPD0R __attribute__((section("sfrs")));
typedef struct {
  unsigned RPD0R:4;
} __RPD0Rbits_t;
extern volatile __RPD0Rbits_t RPD0Rbits __asm__ ("RPD0R") __attribute__((section("sfrs")));

extern volatile unsigned int RPD1R __attribute__((section("sfrs")));
typedef struct {
  unsigned RPD1R:4;
} __RPD1Rbits_t;
extern volatile __RPD1Rbits_t RPD1Rbits __asm__ ("RPD1R") __attribute__((section("sfrs")));

extern volatile unsigned int RPD2R __attribute__((section("sfrs")));
typedef struct {
  unsigned RPD2R:4;
} __RPD2Rbits_t;
extern volatile __RPD2Rbits_t RPD2Rbits __asm__ ("RPD2R") __attribute__((section("sfrs")));

extern volatile unsigned int RPD3R __attribute__((section("sfrs")));
typedef struct {
  unsigned RPD3R:4;
} __RPD3Rbits_t;
extern volatile __RPD3Rbits_t RPD3Rbits __asm__ ("RPD3R") __attribute__((section("sfrs")));

extern volatile unsigned int RPD4R __attribute__((section("sfrs")));
typedef struct {
  unsigned RPD4R:4;
} __RPD4Rbits_t;
extern volatile __RPD4Rbits_t RPD4Rbits __asm__ ("RPD4R") __attribute__((section("sfrs")));

extern volatile unsigned int RPD5R __attribute__((section("sfrs")));
typedef struct {
  unsigned RPD5R:4;
} __RPD5Rbits_t;
extern volatile __RPD5Rbits_t RPD5Rbits __asm__ ("RPD5R") __attribute__((section("sfrs")));

extern volatile unsigned int RPD9R __attribute__((section("sfrs")));
typedef struct {
  unsigned RPD9R:4;
} __RPD9Rbits_t;
extern volatile __RPD9Rbits_t RPD9Rbits __asm__ ("RPD9R") __attribute__((section("sfrs")));

extern volatile unsigned int RPD10R __attribute__((section("sfrs")));
typedef struct {
  unsigned RPD10R:4;
} __RPD10Rbits_t;
extern volatile __RPD10Rbits_t RPD10Rbits __asm__ ("RPD10R") __attribute__((section("sfrs")));

extern volatile unsigned int RPD11R __attribute__((section("sfrs")));
typedef struct {
  unsigned RPD11R:4;
} __RPD11Rbits_t;
extern volatile __RPD11Rbits_t RPD11Rbits __asm__ ("RPD11R") __attribute__((section("sfrs")));

extern volatile unsigned int RPD12R __attribute__((section("sfrs")));
typedef struct {
  unsigned RPD12R:4;
} __RPD12Rbits_t;
extern volatile __RPD12Rbits_t RPD12Rbits __asm__ ("RPD12R") __attribute__((section("sfrs")));

extern volatile unsigned int RPD14R __attribute__((section("sfrs")));
typedef struct {
  unsigned RPD14R:4;
} __RPD14Rbits_t;
extern volatile __RPD14Rbits_t RPD14Rbits __asm__ ("RPD14R") __attribute__((section("sfrs")));

extern volatile unsigned int RPD15R __attribute__((section("sfrs")));
typedef struct {
  unsigned RPD15R:4;
} __RPD15Rbits_t;
extern volatile __RPD15Rbits_t RPD15Rbits __asm__ ("RPD15R") __attribute__((section("sfrs")));

extern volatile unsigned int RPE3R __attribute__((section("sfrs")));
typedef struct {
  unsigned RPE3R:4;
} __RPE3Rbits_t;
extern volatile __RPE3Rbits_t RPE3Rbits __asm__ ("RPE3R") __attribute__((section("sfrs")));

extern volatile unsigned int RPE5R __attribute__((section("sfrs")));
typedef struct {
  unsigned RPE5R:4;
} __RPE5Rbits_t;
extern volatile __RPE5Rbits_t RPE5Rbits __asm__ ("RPE5R") __attribute__((section("sfrs")));

extern volatile unsigned int RPE8R __attribute__((section("sfrs")));
typedef struct {
  unsigned RPE8R:4;
} __RPE8Rbits_t;
extern volatile __RPE8Rbits_t RPE8Rbits __asm__ ("RPE8R") __attribute__((section("sfrs")));

extern volatile unsigned int RPE9R __attribute__((section("sfrs")));
typedef struct {
  unsigned RPE9R:4;
} __RPE9Rbits_t;
extern volatile __RPE9Rbits_t RPE9Rbits __asm__ ("RPE9R") __attribute__((section("sfrs")));

extern volatile unsigned int RPF0R __attribute__((section("sfrs")));
typedef struct {
  unsigned RPF0R:4;
} __RPF0Rbits_t;
extern volatile __RPF0Rbits_t RPF0Rbits __asm__ ("RPF0R") __attribute__((section("sfrs")));

extern volatile unsigned int RPF1R __attribute__((section("sfrs")));
typedef struct {
  unsigned RPF1R:4;
} __RPF1Rbits_t;
extern volatile __RPF1Rbits_t RPF1Rbits __asm__ ("RPF1R") __attribute__((section("sfrs")));

extern volatile unsigned int RPF2R __attribute__((section("sfrs")));
typedef struct {
  unsigned RPF2R:4;
} __RPF2Rbits_t;
extern volatile __RPF2Rbits_t RPF2Rbits __asm__ ("RPF2R") __attribute__((section("sfrs")));

extern volatile unsigned int RPF3R __attribute__((section("sfrs")));
typedef struct {
  unsigned RPF3R:4;
} __RPF3Rbits_t;
extern volatile __RPF3Rbits_t RPF3Rbits __asm__ ("RPF3R") __attribute__((section("sfrs")));

extern volatile unsigned int RPF4R __attribute__((section("sfrs")));
typedef struct {
  unsigned RPF4R:4;
} __RPF4Rbits_t;
extern volatile __RPF4Rbits_t RPF4Rbits __asm__ ("RPF4R") __attribute__((section("sfrs")));

extern volatile unsigned int RPF5R __attribute__((section("sfrs")));
typedef struct {
  unsigned RPF5R:4;
} __RPF5Rbits_t;
extern volatile __RPF5Rbits_t RPF5Rbits __asm__ ("RPF5R") __attribute__((section("sfrs")));

extern volatile unsigned int RPF8R __attribute__((section("sfrs")));
typedef struct {
  unsigned RPF8R:4;
} __RPF8Rbits_t;
extern volatile __RPF8Rbits_t RPF8Rbits __asm__ ("RPF8R") __attribute__((section("sfrs")));

extern volatile unsigned int RPF12R __attribute__((section("sfrs")));
typedef struct {
  unsigned RPF12R:4;
} __RPF12Rbits_t;
extern volatile __RPF12Rbits_t RPF12Rbits __asm__ ("RPF12R") __attribute__((section("sfrs")));

extern volatile unsigned int RPF13R __attribute__((section("sfrs")));
typedef struct {
  unsigned RPF13R:4;
} __RPF13Rbits_t;
extern volatile __RPF13Rbits_t RPF13Rbits __asm__ ("RPF13R") __attribute__((section("sfrs")));

extern volatile unsigned int RPG0R __attribute__((section("sfrs")));
typedef struct {
  unsigned RPG0R:4;
} __RPG0Rbits_t;
extern volatile __RPG0Rbits_t RPG0Rbits __asm__ ("RPG0R") __attribute__((section("sfrs")));

extern volatile unsigned int RPG1R __attribute__((section("sfrs")));
typedef struct {
  unsigned RPG1R:4;
} __RPG1Rbits_t;
extern volatile __RPG1Rbits_t RPG1Rbits __asm__ ("RPG1R") __attribute__((section("sfrs")));

extern volatile unsigned int RPG6R __attribute__((section("sfrs")));
typedef struct {
  unsigned RPG6R:4;
} __RPG6Rbits_t;
extern volatile __RPG6Rbits_t RPG6Rbits __asm__ ("RPG6R") __attribute__((section("sfrs")));

extern volatile unsigned int RPG7R __attribute__((section("sfrs")));
typedef struct {
  unsigned RPG7R:4;
} __RPG7Rbits_t;
extern volatile __RPG7Rbits_t RPG7Rbits __asm__ ("RPG7R") __attribute__((section("sfrs")));

extern volatile unsigned int RPG8R __attribute__((section("sfrs")));
typedef struct {
  unsigned RPG8R:4;
} __RPG8Rbits_t;
extern volatile __RPG8Rbits_t RPG8Rbits __asm__ ("RPG8R") __attribute__((section("sfrs")));

extern volatile unsigned int RPG9R __attribute__((section("sfrs")));
typedef struct {
  unsigned RPG9R:4;
} __RPG9Rbits_t;
extern volatile __RPG9Rbits_t RPG9Rbits __asm__ ("RPG9R") __attribute__((section("sfrs")));

extern volatile unsigned int INTCON __attribute__((section("sfrs")));
typedef struct {
  unsigned INT0EP:1;
  unsigned INT1EP:1;
  unsigned INT2EP:1;
  unsigned INT3EP:1;
  unsigned INT4EP:1;
  unsigned :3;
  unsigned TPC:3;
  unsigned :1;
  unsigned MVEC:1;
  unsigned :11;
  unsigned NMIKEY:8;
} __INTCONbits_t;
extern volatile __INTCONbits_t INTCONbits __asm__ ("INTCON") __attribute__((section("sfrs")));
extern volatile unsigned int INTCONCLR __attribute__((section("sfrs")));
extern volatile unsigned int INTCONSET __attribute__((section("sfrs")));
extern volatile unsigned int INTCONINV __attribute__((section("sfrs")));

extern volatile unsigned int PRISS __attribute__((section("sfrs")));
typedef struct {
  unsigned SS0:1;
  unsigned :3;
  unsigned PRI1SS:4;
  unsigned PRI2SS:4;
  unsigned PRI3SS:4;
  unsigned PRI4SS:4;
  unsigned PRI5SS:4;
  unsigned PRI6SS:4;
  unsigned PRI7SS:4;
} __PRISSbits_t;
extern volatile __PRISSbits_t PRISSbits __asm__ ("PRISS") __attribute__((section("sfrs")));
extern volatile unsigned int PRISSCLR __attribute__((section("sfrs")));
extern volatile unsigned int PRISSSET __attribute__((section("sfrs")));
extern volatile unsigned int PRISSINV __attribute__((section("sfrs")));

extern volatile unsigned int INTSTAT __attribute__((section("sfrs")));
typedef struct {
  unsigned SIRQ:8;
  unsigned SRIPL:3;
} __INTSTATbits_t;
extern volatile __INTSTATbits_t INTSTATbits __asm__ ("INTSTAT") __attribute__((section("sfrs")));
extern volatile unsigned int INTSTATCLR __attribute__((section("sfrs")));
extern volatile unsigned int INTSTATSET __attribute__((section("sfrs")));
extern volatile unsigned int INTSTATINV __attribute__((section("sfrs")));

extern volatile unsigned int IPTMR __attribute__((section("sfrs")));
typedef struct {
  unsigned IPTMR:32;
} __IPTMRbits_t;
extern volatile __IPTMRbits_t IPTMRbits __asm__ ("IPTMR") __attribute__((section("sfrs")));
extern volatile unsigned int IPTMRCLR __attribute__((section("sfrs")));
extern volatile unsigned int IPTMRSET __attribute__((section("sfrs")));
extern volatile unsigned int IPTMRINV __attribute__((section("sfrs")));

extern volatile unsigned int IFS0 __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned CTIF:1;
    unsigned CS0IF:1;
    unsigned CS1IF:1;
    unsigned INT0IF:1;
    unsigned T1IF:1;
    unsigned IC1EIF:1;
    unsigned IC1IF:1;
    unsigned OC1IF:1;
    unsigned INT1IF:1;
    unsigned T2IF:1;
    unsigned IC2EIF:1;
    unsigned IC2IF:1;
    unsigned OC2IF:1;
    unsigned INT2IF:1;
    unsigned T3IF:1;
    unsigned IC3EIF:1;
    unsigned IC3IF:1;
    unsigned OC3IF:1;
    unsigned INT3IF:1;
    unsigned T4IF:1;
    unsigned IC4EIF:1;
    unsigned IC4IF:1;
    unsigned OC4IF:1;
    unsigned INT4IF:1;
    unsigned T5IF:1;
    unsigned IC5EIF:1;
    unsigned IC5IF:1;
    unsigned OC5IF:1;
    unsigned T6IF:1;
    unsigned IC6EIF:1;
    unsigned IC6IF:1;
    unsigned OC6IF:1;
  };
  struct {
    unsigned w:32;
  };
} __IFS0bits_t;
extern volatile __IFS0bits_t IFS0bits __asm__ ("IFS0") __attribute__((section("sfrs")));
extern volatile unsigned int IFS0CLR __attribute__((section("sfrs")));
extern volatile unsigned int IFS0SET __attribute__((section("sfrs")));
extern volatile unsigned int IFS0INV __attribute__((section("sfrs")));

extern volatile unsigned int IFS1 __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned T7IF:1;
    unsigned IC7EIF:1;
    unsigned IC7IF:1;
    unsigned OC7IF:1;
    unsigned T8IF:1;
    unsigned IC8EIF:1;
    unsigned IC8IF:1;
    unsigned OC8IF:1;
    unsigned T9IF:1;
    unsigned IC9EIF:1;
    unsigned IC9IF:1;
    unsigned OC9IF:1;
    unsigned ADCIF:1;
    unsigned ADCFIFOIF:1;
    unsigned ADCDC1IF:1;
    unsigned ADCDC2IF:1;
    unsigned ADCDC3IF:1;
    unsigned ADCDC4IF:1;
    unsigned ADCDC5IF:1;
    unsigned ADCDC6IF:1;
    unsigned ADCDF1IF:1;
    unsigned ADCDF2IF:1;
    unsigned ADCDF3IF:1;
    unsigned ADCDF4IF:1;
    unsigned ADCDF5IF:1;
    unsigned ADCDF6IF:1;
    unsigned ADCFLTIF:1;
    unsigned ADCD0IF:1;
    unsigned ADCD1IF:1;
    unsigned ADCD2IF:1;
    unsigned ADCD3IF:1;
    unsigned ADCD4IF:1;
  };
  struct {
    unsigned w:32;
  };
} __IFS1bits_t;
extern volatile __IFS1bits_t IFS1bits __asm__ ("IFS1") __attribute__((section("sfrs")));
extern volatile unsigned int IFS1CLR __attribute__((section("sfrs")));
extern volatile unsigned int IFS1SET __attribute__((section("sfrs")));
extern volatile unsigned int IFS1INV __attribute__((section("sfrs")));

extern volatile unsigned int IFS2 __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned ADCD5IF:1;
    unsigned ADCD6IF:1;
    unsigned ADCD7IF:1;
    unsigned ADCD8IF:1;
    unsigned ADCD9IF:1;
    unsigned ADCD10IF:1;
    unsigned ADCD11IF:1;
    unsigned ADCD12IF:1;
    unsigned ADCD13IF:1;
    unsigned ADCD14IF:1;
    unsigned ADCD15IF:1;
    unsigned ADCD16IF:1;
    unsigned ADCD17IF:1;
    unsigned ADCD18IF:1;
    unsigned ADCD19IF:1;
    unsigned ADCD20IF:1;
    unsigned ADCD21IF:1;
    unsigned ADCD22IF:1;
    unsigned ADCD23IF:1;
    unsigned ADCD24IF:1;
    unsigned ADCD25IF:1;
    unsigned ADCD26IF:1;
    unsigned ADCD27IF:1;
    unsigned ADCD28IF:1;
    unsigned ADCD29IF:1;
    unsigned ADCD30IF:1;
    unsigned ADCD31IF:1;
    unsigned ADCD32IF:1;
    unsigned ADCD33IF:1;
    unsigned ADCD34IF:1;
  };
  struct {
    unsigned w:32;
  };
} __IFS2bits_t;
extern volatile __IFS2bits_t IFS2bits __asm__ ("IFS2") __attribute__((section("sfrs")));
extern volatile unsigned int IFS2CLR __attribute__((section("sfrs")));
extern volatile unsigned int IFS2SET __attribute__((section("sfrs")));
extern volatile unsigned int IFS2INV __attribute__((section("sfrs")));

extern volatile unsigned int IFS3 __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned :6;
    unsigned ADCD43IF:1;
    unsigned ADCD44IF:1;
    unsigned CPCIF:1;
    unsigned CFDCIF:1;
    unsigned SBIF:1;
    unsigned :2;
    unsigned SPI1EIF:1;
    unsigned SPI1RXIF:1;
    unsigned SPI1TXIF:1;
    unsigned U1EIF:1;
    unsigned U1RXIF:1;
    unsigned U1TXIF:1;
    unsigned I2C1BIF:1;
    unsigned I2C1SIF:1;
    unsigned I2C1MIF:1;
    unsigned CNAIF:1;
    unsigned CNBIF:1;
    unsigned CNCIF:1;
    unsigned CNDIF:1;
    unsigned CNEIF:1;
    unsigned CNFIF:1;
    unsigned CNGIF:1;
  };
  struct {
    unsigned w:32;
  };
} __IFS3bits_t;
extern volatile __IFS3bits_t IFS3bits __asm__ ("IFS3") __attribute__((section("sfrs")));
extern volatile unsigned int IFS3CLR __attribute__((section("sfrs")));
extern volatile unsigned int IFS3SET __attribute__((section("sfrs")));
extern volatile unsigned int IFS3INV __attribute__((section("sfrs")));

extern volatile unsigned int IFS4 __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned PMPIF:1;
    unsigned PMPEIF:1;
    unsigned CMP1IF:1;
    unsigned CMP2IF:1;
    unsigned USBIF:1;
    unsigned USBDMAIF:1;
    unsigned DMA0IF:1;
    unsigned DMA1IF:1;
    unsigned DMA2IF:1;
    unsigned DMA3IF:1;
    unsigned DMA4IF:1;
    unsigned DMA5IF:1;
    unsigned DMA6IF:1;
    unsigned DMA7IF:1;
    unsigned SPI2EIF:1;
    unsigned SPI2RXIF:1;
    unsigned SPI2TXIF:1;
    unsigned U2EIF:1;
    unsigned U2RXIF:1;
    unsigned U2TXIF:1;
    unsigned I2C2BIF:1;
    unsigned I2C2SIF:1;
    unsigned I2C2MIF:1;
    unsigned :2;
    unsigned ETHIF:1;
    unsigned SPI3EIF:1;
    unsigned SPI3RXIF:1;
    unsigned SPI3TXIF:1;
    unsigned U3EIF:1;
    unsigned U3RXIF:1;
    unsigned U3TXIF:1;
  };
  struct {
    unsigned w:32;
  };
} __IFS4bits_t;
extern volatile __IFS4bits_t IFS4bits __asm__ ("IFS4") __attribute__((section("sfrs")));
extern volatile unsigned int IFS4CLR __attribute__((section("sfrs")));
extern volatile unsigned int IFS4SET __attribute__((section("sfrs")));
extern volatile unsigned int IFS4INV __attribute__((section("sfrs")));

extern volatile unsigned int IFS5 __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned I2C3BIF:1;
    unsigned I2C3SIF:1;
    unsigned I2C3MIF:1;
    unsigned SPI4EIF:1;
    unsigned SPI4RXIF:1;
    unsigned SPI4TXIF:1;
    unsigned RTCCIF:1;
    unsigned FCEIF:1;
    unsigned PREIF:1;
    unsigned SQI1IF:1;
    unsigned U4EIF:1;
    unsigned U4RXIF:1;
    unsigned U4TXIF:1;
    unsigned I2C4BIF:1;
    unsigned I2C4SIF:1;
    unsigned I2C4MIF:1;
    unsigned SPI5EIF:1;
    unsigned SPI5RXIF:1;
    unsigned SPI5TXIF:1;
    unsigned U5EIF:1;
    unsigned U5RXIF:1;
    unsigned U5TXIF:1;
    unsigned I2C5BIF:1;
    unsigned I2C5SIF:1;
    unsigned I2C5MIF:1;
    unsigned SPI6IF:1;
    unsigned SPI6RXIF:1;
    unsigned SPI6TX:1;
    unsigned U6EIF:1;
    unsigned U6RXIF:1;
    unsigned U6TXIF:1;
  };
  struct {
    unsigned w:32;
  };
} __IFS5bits_t;
extern volatile __IFS5bits_t IFS5bits __asm__ ("IFS5") __attribute__((section("sfrs")));
extern volatile unsigned int IFS5CLR __attribute__((section("sfrs")));
extern volatile unsigned int IFS5SET __attribute__((section("sfrs")));
extern volatile unsigned int IFS5INV __attribute__((section("sfrs")));

extern volatile unsigned int IFS6 __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned ADCEOSIF:1;
    unsigned ADCARDYIF:1;
    unsigned ADCURDYIF:1;
    unsigned :1;
    unsigned ADCGRPIF:1;
    unsigned :1;
    unsigned ADC0EIF:1;
    unsigned ADC1EIF:1;
    unsigned ADC2EIF:1;
    unsigned ADC3EIF:1;
    unsigned ADC4EIF:1;
    unsigned :2;
    unsigned ADC7EIF:1;
    unsigned ADC0WIF:1;
    unsigned ADC1WIF:1;
    unsigned ADC2WIF:1;
    unsigned ADC3WIF:1;
    unsigned ADC4WIF:1;
    unsigned :2;
    unsigned ADC7WIF:1;
  };
  struct {
    unsigned w:32;
  };
} __IFS6bits_t;
extern volatile __IFS6bits_t IFS6bits __asm__ ("IFS6") __attribute__((section("sfrs")));
extern volatile unsigned int IFS6CLR __attribute__((section("sfrs")));
extern volatile unsigned int IFS6SET __attribute__((section("sfrs")));
extern volatile unsigned int IFS6INV __attribute__((section("sfrs")));

extern volatile unsigned int IEC0 __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned CTIE:1;
    unsigned CS0IE:1;
    unsigned CS1IE:1;
    unsigned INT0IE:1;
    unsigned T1IE:1;
    unsigned IC1EIE:1;
    unsigned IC1IE:1;
    unsigned OC1IE:1;
    unsigned INT1IE:1;
    unsigned T2IE:1;
    unsigned IC2EIE:1;
    unsigned IC2IE:1;
    unsigned OC2IE:1;
    unsigned INT2IE:1;
    unsigned T3IE:1;
    unsigned IC3EIE:1;
    unsigned IC3IE:1;
    unsigned OC3IE:1;
    unsigned INT3IE:1;
    unsigned T4IE:1;
    unsigned IC4EIE:1;
    unsigned IC4IE:1;
    unsigned OC4IE:1;
    unsigned INT4IE:1;
    unsigned T5IE:1;
    unsigned IC5EIE:1;
    unsigned IC5IE:1;
    unsigned OC5IE:1;
    unsigned T6IE:1;
    unsigned IC6EIE:1;
    unsigned IC6IE:1;
    unsigned OC6IE:1;
  };
  struct {
    unsigned w:32;
  };
} __IEC0bits_t;
extern volatile __IEC0bits_t IEC0bits __asm__ ("IEC0") __attribute__((section("sfrs")));
extern volatile unsigned int IEC0CLR __attribute__((section("sfrs")));
extern volatile unsigned int IEC0SET __attribute__((section("sfrs")));
extern volatile unsigned int IEC0INV __attribute__((section("sfrs")));

extern volatile unsigned int IEC1 __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned T7IE:1;
    unsigned IC7EIE:1;
    unsigned IC7IE:1;
    unsigned OC7IE:1;
    unsigned T8IE:1;
    unsigned IC8EIE:1;
    unsigned IC8IE:1;
    unsigned OC8IE:1;
    unsigned T9IE:1;
    unsigned IC9EIE:1;
    unsigned IC9IE:1;
    unsigned OC9IE:1;
    unsigned ADCIE:1;
    unsigned ADCFIFOIE:1;
    unsigned ADCDC1IE:1;
    unsigned ADCDC2IE:1;
    unsigned ADCDC3IE:1;
    unsigned ADCDC4IE:1;
    unsigned ADCDC5IE:1;
    unsigned ADCDC6IE:1;
    unsigned ADCDF1IE:1;
    unsigned ADCDF2IE:1;
    unsigned ADCDF3IE:1;
    unsigned ADCDF4IE:1;
    unsigned ADCDF5IE:1;
    unsigned ADCDF6IE:1;
    unsigned ADCFLTIE:1;
    unsigned ADCD0IE:1;
    unsigned ADCD1IE:1;
    unsigned ADCD2IE:1;
    unsigned ADCD3IE:1;
    unsigned ADCD4IE:1;
  };
  struct {
    unsigned w:32;
  };
} __IEC1bits_t;
extern volatile __IEC1bits_t IEC1bits __asm__ ("IEC1") __attribute__((section("sfrs")));
extern volatile unsigned int IEC1CLR __attribute__((section("sfrs")));
extern volatile unsigned int IEC1SET __attribute__((section("sfrs")));
extern volatile unsigned int IEC1INV __attribute__((section("sfrs")));

extern volatile unsigned int IEC2 __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned ADCD5IE:1;
    unsigned ADCD6IE:1;
    unsigned ADCD7IE:1;
    unsigned ADCD8IE:1;
    unsigned ADCD9IE:1;
    unsigned ADCD10IE:1;
    unsigned ADCD11IE:1;
    unsigned ADCD12IE:1;
    unsigned ADCD13IE:1;
    unsigned ADCD14IE:1;
    unsigned ADCD15IE:1;
    unsigned ADCD16IE:1;
    unsigned ADCD17IE:1;
    unsigned ADCD18IE:1;
    unsigned ADCD19IE:1;
    unsigned ADCD20IE:1;
    unsigned ADCD21IE:1;
    unsigned ADCD22IE:1;
    unsigned ADCD23IE:1;
    unsigned ADCD24IE:1;
    unsigned ADCD25IE:1;
    unsigned ADCD26IE:1;
    unsigned ADCD27IE:1;
    unsigned ADCD28IE:1;
    unsigned ADCD29IE:1;
    unsigned ADCD30IE:1;
    unsigned ADCD31IE:1;
    unsigned ADCD32IE:1;
    unsigned ADCD33IE:1;
    unsigned ADCD34IE:1;
  };
  struct {
    unsigned w:32;
  };
} __IEC2bits_t;
extern volatile __IEC2bits_t IEC2bits __asm__ ("IEC2") __attribute__((section("sfrs")));
extern volatile unsigned int IEC2CLR __attribute__((section("sfrs")));
extern volatile unsigned int IEC2SET __attribute__((section("sfrs")));
extern volatile unsigned int IEC2INV __attribute__((section("sfrs")));

extern volatile unsigned int IEC3 __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned :6;
    unsigned ADCD43IE:1;
    unsigned ADCD44IE:1;
    unsigned CPCIE:1;
    unsigned CFDCIE:1;
    unsigned SBIE:1;
    unsigned :2;
    unsigned SPI1EIE:1;
    unsigned SPI1RXIE:1;
    unsigned SPI1TXIE:1;
    unsigned U1EIE:1;
    unsigned U1RXIE:1;
    unsigned U1TXIE:1;
    unsigned I2C1BIE:1;
    unsigned I2C1SIE:1;
    unsigned I2C1MIE:1;
    unsigned CNAIE:1;
    unsigned CNBIE:1;
    unsigned CNCIE:1;
    unsigned CNDIE:1;
    unsigned CNEIE:1;
    unsigned CNFIE:1;
    unsigned CNGIE:1;
  };
  struct {
    unsigned w:32;
  };
} __IEC3bits_t;
extern volatile __IEC3bits_t IEC3bits __asm__ ("IEC3") __attribute__((section("sfrs")));
extern volatile unsigned int IEC3CLR __attribute__((section("sfrs")));
extern volatile unsigned int IEC3SET __attribute__((section("sfrs")));
extern volatile unsigned int IEC3INV __attribute__((section("sfrs")));

extern volatile unsigned int IEC4 __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned PMPIE:1;
    unsigned PMPEIE:1;
    unsigned CMP1IE:1;
    unsigned CMP2IE:1;
    unsigned USBIE:1;
    unsigned USBDMAIE:1;
    unsigned DMA0IE:1;
    unsigned DMA1IE:1;
    unsigned DMA2IE:1;
    unsigned DMA3IE:1;
    unsigned DMA4IE:1;
    unsigned DMA5IE:1;
    unsigned DMA6IE:1;
    unsigned DMA7IE:1;
    unsigned SPI2EIE:1;
    unsigned SPI2RXIE:1;
    unsigned SPI2TXIE:1;
    unsigned U2EIE:1;
    unsigned U2RXIE:1;
    unsigned U2TXIE:1;
    unsigned I2C2BIE:1;
    unsigned I2C2SIE:1;
    unsigned I2C2MIE:1;
    unsigned :2;
    unsigned ETHIE:1;
    unsigned SPI3EIE:1;
    unsigned SPI3RXIE:1;
    unsigned SPI3TXIE:1;
    unsigned U3EIE:1;
    unsigned U3RXIE:1;
    unsigned U3TXIE:1;
  };
  struct {
    unsigned w:32;
  };
} __IEC4bits_t;
extern volatile __IEC4bits_t IEC4bits __asm__ ("IEC4") __attribute__((section("sfrs")));
extern volatile unsigned int IEC4CLR __attribute__((section("sfrs")));
extern volatile unsigned int IEC4SET __attribute__((section("sfrs")));
extern volatile unsigned int IEC4INV __attribute__((section("sfrs")));

extern volatile unsigned int IEC5 __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned I2C3BIE:1;
    unsigned I2C3SIE:1;
    unsigned I2C3MIE:1;
    unsigned SPI4EIE:1;
    unsigned SPI4RXIE:1;
    unsigned SPI4TXIE:1;
    unsigned RTCCIE:1;
    unsigned FCEIE:1;
    unsigned PREIE:1;
    unsigned SQI1IE:1;
    unsigned U4EIE:1;
    unsigned U4RXIE:1;
    unsigned U4TXIE:1;
    unsigned I2C4BIE:1;
    unsigned I2C4SIE:1;
    unsigned I2C4MIE:1;
    unsigned SPI5EIE:1;
    unsigned SPI5RXIE:1;
    unsigned SPI5TXIE:1;
    unsigned U5EIE:1;
    unsigned U5RXIE:1;
    unsigned U5TXIE:1;
    unsigned I2C5BIE:1;
    unsigned I2C5SIE:1;
    unsigned I2C5MIE:1;
    unsigned SPI6IE:1;
    unsigned SPI6RXIE:1;
    unsigned SPI6TXIE:1;
    unsigned U6EIE:1;
    unsigned U6RXIE:1;
    unsigned U6TXIE:1;
  };
  struct {
    unsigned w:32;
  };
} __IEC5bits_t;
extern volatile __IEC5bits_t IEC5bits __asm__ ("IEC5") __attribute__((section("sfrs")));
extern volatile unsigned int IEC5CLR __attribute__((section("sfrs")));
extern volatile unsigned int IEC5SET __attribute__((section("sfrs")));
extern volatile unsigned int IEC5INV __attribute__((section("sfrs")));

extern volatile unsigned int IEC6 __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned ADCEOSIE:1;
    unsigned ADCARDYIE:1;
    unsigned ADCURDYIE:1;
    unsigned :1;
    unsigned ADCGRPIE:1;
    unsigned :1;
    unsigned ADC0EIE:1;
    unsigned ADC1EIE:1;
    unsigned ADC2EIE:1;
    unsigned ADC3EIE:1;
    unsigned ADC4EIE:1;
    unsigned :2;
    unsigned ADC7EIE:1;
    unsigned ADC0WIE:1;
    unsigned ADC1WIE:1;
    unsigned ADC2WIE:1;
    unsigned ADC3WIE:1;
    unsigned ADC4WIE:1;
    unsigned :2;
    unsigned ADC7WIE:1;
  };
  struct {
    unsigned w:32;
  };
} __IEC6bits_t;
extern volatile __IEC6bits_t IEC6bits __asm__ ("IEC6") __attribute__((section("sfrs")));
extern volatile unsigned int IEC6CLR __attribute__((section("sfrs")));
extern volatile unsigned int IEC6SET __attribute__((section("sfrs")));
extern volatile unsigned int IEC6INV __attribute__((section("sfrs")));

extern volatile unsigned int IPC0 __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned CTIS:2;
    unsigned CTIP:3;
    unsigned :3;
    unsigned CS0IS:2;
    unsigned CS0IP:3;
    unsigned :3;
    unsigned CS1IS:2;
    unsigned CS1IP:3;
    unsigned :3;
    unsigned INT0IS:2;
    unsigned INT0IP:3;
  };
  struct {
    unsigned w:32;
  };
} __IPC0bits_t;
extern volatile __IPC0bits_t IPC0bits __asm__ ("IPC0") __attribute__((section("sfrs")));
extern volatile unsigned int IPC0CLR __attribute__((section("sfrs")));
extern volatile unsigned int IPC0SET __attribute__((section("sfrs")));
extern volatile unsigned int IPC0INV __attribute__((section("sfrs")));

extern volatile unsigned int IPC1 __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned T1IS:2;
    unsigned T1IP:3;
    unsigned :3;
    unsigned IC1EIS:2;
    unsigned IC1EIP:3;
    unsigned :3;
    unsigned IC1IS:2;
    unsigned IC1IP:3;
    unsigned :3;
    unsigned OC1IS:2;
    unsigned OC1IP:3;
  };
  struct {
    unsigned w:32;
  };
} __IPC1bits_t;
extern volatile __IPC1bits_t IPC1bits __asm__ ("IPC1") __attribute__((section("sfrs")));
extern volatile unsigned int IPC1CLR __attribute__((section("sfrs")));
extern volatile unsigned int IPC1SET __attribute__((section("sfrs")));
extern volatile unsigned int IPC1INV __attribute__((section("sfrs")));

extern volatile unsigned int IPC2 __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned INT1IS:2;
    unsigned INT1IP:3;
    unsigned :3;
    unsigned T2IS:2;
    unsigned T2IP:3;
    unsigned :3;
    unsigned IC2EIS:2;
    unsigned IC2EIP:3;
    unsigned :3;
    unsigned IC2IS:2;
    unsigned IC2IP:3;
  };
  struct {
    unsigned w:32;
  };
} __IPC2bits_t;
extern volatile __IPC2bits_t IPC2bits __asm__ ("IPC2") __attribute__((section("sfrs")));
extern volatile unsigned int IPC2CLR __attribute__((section("sfrs")));
extern volatile unsigned int IPC2SET __attribute__((section("sfrs")));
extern volatile unsigned int IPC2INV __attribute__((section("sfrs")));

extern volatile unsigned int IPC3 __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned OC2IS:2;
    unsigned OC2IP:3;
    unsigned :3;
    unsigned INT2IS:2;
    unsigned INT2IP:3;
    unsigned :3;
    unsigned T3IS:2;
    unsigned T3IP:3;
    unsigned :3;
    unsigned IC3EIS:2;
    unsigned IC3EIP:3;
  };
  struct {
    unsigned w:32;
  };
} __IPC3bits_t;
extern volatile __IPC3bits_t IPC3bits __asm__ ("IPC3") __attribute__((section("sfrs")));
extern volatile unsigned int IPC3CLR __attribute__((section("sfrs")));
extern volatile unsigned int IPC3SET __attribute__((section("sfrs")));
extern volatile unsigned int IPC3INV __attribute__((section("sfrs")));

extern volatile unsigned int IPC4 __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned IC3IS:2;
    unsigned IC3IP:3;
    unsigned :3;
    unsigned OC3IS:2;
    unsigned OC3IP:3;
    unsigned :3;
    unsigned INT3IS:2;
    unsigned INT3IP:3;
    unsigned :3;
    unsigned T4IS:2;
    unsigned T4IP:3;
  };
  struct {
    unsigned w:32;
  };
} __IPC4bits_t;
extern volatile __IPC4bits_t IPC4bits __asm__ ("IPC4") __attribute__((section("sfrs")));
extern volatile unsigned int IPC4CLR __attribute__((section("sfrs")));
extern volatile unsigned int IPC4SET __attribute__((section("sfrs")));
extern volatile unsigned int IPC4INV __attribute__((section("sfrs")));

extern volatile unsigned int IPC5 __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned IC4EIS:2;
    unsigned IC4EIP:3;
    unsigned :3;
    unsigned IC4IS:2;
    unsigned IC4IP:3;
    unsigned :3;
    unsigned OC4IS:2;
    unsigned OC4IP:3;
    unsigned :3;
    unsigned INT4IS:2;
    unsigned INT4IP:3;
  };
  struct {
    unsigned w:32;
  };
} __IPC5bits_t;
extern volatile __IPC5bits_t IPC5bits __asm__ ("IPC5") __attribute__((section("sfrs")));
extern volatile unsigned int IPC5CLR __attribute__((section("sfrs")));
extern volatile unsigned int IPC5SET __attribute__((section("sfrs")));
extern volatile unsigned int IPC5INV __attribute__((section("sfrs")));

extern volatile unsigned int IPC6 __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned T5IS:2;
    unsigned T5IP:3;
    unsigned :3;
    unsigned IC5EIS:2;
    unsigned IC5EIP:3;
    unsigned :3;
    unsigned IC5IS:2;
    unsigned IC5IP:3;
    unsigned :3;
    unsigned OC5IS:2;
    unsigned OC5IP:3;
  };
  struct {
    unsigned w:32;
  };
} __IPC6bits_t;
extern volatile __IPC6bits_t IPC6bits __asm__ ("IPC6") __attribute__((section("sfrs")));
extern volatile unsigned int IPC6CLR __attribute__((section("sfrs")));
extern volatile unsigned int IPC6SET __attribute__((section("sfrs")));
extern volatile unsigned int IPC6INV __attribute__((section("sfrs")));

extern volatile unsigned int IPC7 __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned T6IS:2;
    unsigned T6IP:3;
    unsigned :3;
    unsigned IC6EIS:2;
    unsigned IC6EIP:3;
    unsigned :3;
    unsigned IC6IS:2;
    unsigned IC6IP:3;
    unsigned :3;
    unsigned OC6IS:2;
    unsigned OC6IP:3;
  };
  struct {
    unsigned w:32;
  };
} __IPC7bits_t;
extern volatile __IPC7bits_t IPC7bits __asm__ ("IPC7") __attribute__((section("sfrs")));
extern volatile unsigned int IPC7CLR __attribute__((section("sfrs")));
extern volatile unsigned int IPC7SET __attribute__((section("sfrs")));
extern volatile unsigned int IPC7INV __attribute__((section("sfrs")));

extern volatile unsigned int IPC8 __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned T7IS:2;
    unsigned T7IP:3;
    unsigned :3;
    unsigned IC7EIS:2;
    unsigned IC7EIP:3;
    unsigned :3;
    unsigned IC7IS:2;
    unsigned IC7IP:3;
    unsigned :3;
    unsigned OC7IS:2;
    unsigned OC7IP:3;
  };
  struct {
    unsigned w:32;
  };
} __IPC8bits_t;
extern volatile __IPC8bits_t IPC8bits __asm__ ("IPC8") __attribute__((section("sfrs")));
extern volatile unsigned int IPC8CLR __attribute__((section("sfrs")));
extern volatile unsigned int IPC8SET __attribute__((section("sfrs")));
extern volatile unsigned int IPC8INV __attribute__((section("sfrs")));

extern volatile unsigned int IPC9 __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned T8IS:2;
    unsigned T8IP:3;
    unsigned :3;
    unsigned IC8EIS:2;
    unsigned IC8EIP:3;
    unsigned :3;
    unsigned IC8IS:2;
    unsigned IC8IP:3;
    unsigned :3;
    unsigned OC8IS:2;
    unsigned OC8IP:3;
  };
  struct {
    unsigned w:32;
  };
} __IPC9bits_t;
extern volatile __IPC9bits_t IPC9bits __asm__ ("IPC9") __attribute__((section("sfrs")));
extern volatile unsigned int IPC9CLR __attribute__((section("sfrs")));
extern volatile unsigned int IPC9SET __attribute__((section("sfrs")));
extern volatile unsigned int IPC9INV __attribute__((section("sfrs")));

extern volatile unsigned int IPC10 __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned T9IS:2;
    unsigned T9IP:3;
    unsigned :3;
    unsigned IC9EIS:2;
    unsigned IC9EIP:3;
    unsigned :3;
    unsigned IC9IS:2;
    unsigned IC9IP:3;
    unsigned :3;
    unsigned OC9IS:2;
    unsigned OC9IP:3;
  };
  struct {
    unsigned w:32;
  };
} __IPC10bits_t;
extern volatile __IPC10bits_t IPC10bits __asm__ ("IPC10") __attribute__((section("sfrs")));
extern volatile unsigned int IPC10CLR __attribute__((section("sfrs")));
extern volatile unsigned int IPC10SET __attribute__((section("sfrs")));
extern volatile unsigned int IPC10INV __attribute__((section("sfrs")));

extern volatile unsigned int IPC11 __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned ADCIS:2;
    unsigned ADCIP:3;
    unsigned :3;
    unsigned ADCFIFOIS:2;
    unsigned ADCFIFOIP:3;
    unsigned :3;
    unsigned ADCDC1IS:2;
    unsigned ADCDC1IP:3;
    unsigned :3;
    unsigned ADCDC2IS:2;
    unsigned ADCDC2IP:3;
  };
  struct {
    unsigned w:32;
  };
} __IPC11bits_t;
extern volatile __IPC11bits_t IPC11bits __asm__ ("IPC11") __attribute__((section("sfrs")));
extern volatile unsigned int IPC11CLR __attribute__((section("sfrs")));
extern volatile unsigned int IPC11SET __attribute__((section("sfrs")));
extern volatile unsigned int IPC11INV __attribute__((section("sfrs")));

extern volatile unsigned int IPC12 __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned ADCDC3IS:2;
    unsigned ADCDC3IP:3;
    unsigned :3;
    unsigned ADCDC4IS:2;
    unsigned ADCDC4IP:3;
    unsigned :3;
    unsigned ADCDC5IS:2;
    unsigned ADCDC5IP:3;
    unsigned :3;
    unsigned ADCDC6IS:2;
    unsigned ADCDC6IP:3;
  };
  struct {
    unsigned w:32;
  };
} __IPC12bits_t;
extern volatile __IPC12bits_t IPC12bits __asm__ ("IPC12") __attribute__((section("sfrs")));
extern volatile unsigned int IPC12CLR __attribute__((section("sfrs")));
extern volatile unsigned int IPC12SET __attribute__((section("sfrs")));
extern volatile unsigned int IPC12INV __attribute__((section("sfrs")));

extern volatile unsigned int IPC13 __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned ADCDF1IS:2;
    unsigned ADCDF1IP:3;
    unsigned :3;
    unsigned ADCDF2IS:2;
    unsigned ADCDF2IP:3;
    unsigned :3;
    unsigned ADCDF3IS:2;
    unsigned ADCDF3IP:3;
    unsigned :3;
    unsigned ADCDF4IS:2;
    unsigned ADCDF4IP:3;
  };
  struct {
    unsigned w:32;
  };
} __IPC13bits_t;
extern volatile __IPC13bits_t IPC13bits __asm__ ("IPC13") __attribute__((section("sfrs")));
extern volatile unsigned int IPC13CLR __attribute__((section("sfrs")));
extern volatile unsigned int IPC13SET __attribute__((section("sfrs")));
extern volatile unsigned int IPC13INV __attribute__((section("sfrs")));

extern volatile unsigned int IPC14 __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned ADCDF5IS:2;
    unsigned ADCDF5IP:3;
    unsigned :3;
    unsigned ADCDF6IS:2;
    unsigned ADCDF6IP:3;
    unsigned :3;
    unsigned ADCFLTIS:2;
    unsigned ADCFLTIP:3;
    unsigned :3;
    unsigned ADCD0IS:2;
    unsigned ADCD0IP:3;
  };
  struct {
    unsigned w:32;
  };
} __IPC14bits_t;
extern volatile __IPC14bits_t IPC14bits __asm__ ("IPC14") __attribute__((section("sfrs")));
extern volatile unsigned int IPC14CLR __attribute__((section("sfrs")));
extern volatile unsigned int IPC14SET __attribute__((section("sfrs")));
extern volatile unsigned int IPC14INV __attribute__((section("sfrs")));

extern volatile unsigned int IPC15 __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned ADCD1IS:2;
    unsigned ADCD1IP:3;
    unsigned :3;
    unsigned ADCD2IS:2;
    unsigned ADCD2IP:3;
    unsigned :3;
    unsigned ADCD3IS:2;
    unsigned ADCD3IP:3;
    unsigned :3;
    unsigned ADCD4IS:2;
    unsigned ADCD4IP:3;
  };
  struct {
    unsigned w:32;
  };
} __IPC15bits_t;
extern volatile __IPC15bits_t IPC15bits __asm__ ("IPC15") __attribute__((section("sfrs")));
extern volatile unsigned int IPC15CLR __attribute__((section("sfrs")));
extern volatile unsigned int IPC15SET __attribute__((section("sfrs")));
extern volatile unsigned int IPC15INV __attribute__((section("sfrs")));

extern volatile unsigned int IPC16 __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned ADCD5IS:2;
    unsigned ADCD5IP:3;
    unsigned :3;
    unsigned ADCD6IS:2;
    unsigned ADCD6IP:3;
    unsigned :3;
    unsigned ADCD7IS:2;
    unsigned ADCD7IP:3;
    unsigned :3;
    unsigned ADCD8IS:2;
    unsigned ADCD8IP:3;
  };
  struct {
    unsigned w:32;
  };
} __IPC16bits_t;
extern volatile __IPC16bits_t IPC16bits __asm__ ("IPC16") __attribute__((section("sfrs")));
extern volatile unsigned int IPC16CLR __attribute__((section("sfrs")));
extern volatile unsigned int IPC16SET __attribute__((section("sfrs")));
extern volatile unsigned int IPC16INV __attribute__((section("sfrs")));

extern volatile unsigned int IPC17 __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned ADCD9IS:2;
    unsigned ADCD9IP:3;
    unsigned :3;
    unsigned ADCD10IS:2;
    unsigned ADCD10IP:3;
    unsigned :3;
    unsigned ADCD11IS:2;
    unsigned ADCD11IP:3;
    unsigned :3;
    unsigned ADCD12IS:2;
    unsigned ADCD12IP:3;
  };
  struct {
    unsigned w:32;
  };
} __IPC17bits_t;
extern volatile __IPC17bits_t IPC17bits __asm__ ("IPC17") __attribute__((section("sfrs")));
extern volatile unsigned int IPC17CLR __attribute__((section("sfrs")));
extern volatile unsigned int IPC17SET __attribute__((section("sfrs")));
extern volatile unsigned int IPC17INV __attribute__((section("sfrs")));

extern volatile unsigned int IPC18 __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned ADCD13IS:2;
    unsigned ADCD13IP:3;
    unsigned :3;
    unsigned ADCD14IS:2;
    unsigned ADCD14IP:3;
    unsigned :3;
    unsigned ADCD15IS:2;
    unsigned ADCD15IP:3;
    unsigned :3;
    unsigned ADCD16IS:2;
    unsigned ADCD16IP:3;
  };
  struct {
    unsigned w:32;
  };
} __IPC18bits_t;
extern volatile __IPC18bits_t IPC18bits __asm__ ("IPC18") __attribute__((section("sfrs")));
extern volatile unsigned int IPC18CLR __attribute__((section("sfrs")));
extern volatile unsigned int IPC18SET __attribute__((section("sfrs")));
extern volatile unsigned int IPC18INV __attribute__((section("sfrs")));

extern volatile unsigned int IPC19 __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned ADCD17IS:2;
    unsigned ADCD17IP:3;
    unsigned :3;
    unsigned ADCD18IS:2;
    unsigned ADCD18IP:3;
    unsigned :3;
    unsigned ADCD19IS:2;
    unsigned ADCD19IP:3;
    unsigned :3;
    unsigned ADCD20IS:2;
    unsigned ADCD20IP:3;
  };
  struct {
    unsigned w:32;
  };
} __IPC19bits_t;
extern volatile __IPC19bits_t IPC19bits __asm__ ("IPC19") __attribute__((section("sfrs")));
extern volatile unsigned int IPC19CLR __attribute__((section("sfrs")));
extern volatile unsigned int IPC19SET __attribute__((section("sfrs")));
extern volatile unsigned int IPC19INV __attribute__((section("sfrs")));

extern volatile unsigned int IPC20 __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned ADCD21IS:2;
    unsigned ADCD21IP:3;
    unsigned :3;
    unsigned ADCD22IS:2;
    unsigned ADCD22IP:3;
    unsigned :3;
    unsigned ADCD23IS:2;
    unsigned ADCD23IP:3;
    unsigned :3;
    unsigned ADCD24IS:2;
    unsigned ADCD24IP:3;
  };
  struct {
    unsigned w:32;
  };
} __IPC20bits_t;
extern volatile __IPC20bits_t IPC20bits __asm__ ("IPC20") __attribute__((section("sfrs")));
extern volatile unsigned int IPC20CLR __attribute__((section("sfrs")));
extern volatile unsigned int IPC20SET __attribute__((section("sfrs")));
extern volatile unsigned int IPC20INV __attribute__((section("sfrs")));

extern volatile unsigned int IPC21 __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned ADCD25IS:2;
    unsigned ADCD25IP:3;
    unsigned :3;
    unsigned ADCD26IS:2;
    unsigned ADCD26IP:3;
    unsigned :3;
    unsigned ADCD27IS:2;
    unsigned ADCD27IP:3;
    unsigned :3;
    unsigned ADCD28IS:2;
    unsigned ADCD28IP:3;
  };
  struct {
    unsigned w:32;
  };
} __IPC21bits_t;
extern volatile __IPC21bits_t IPC21bits __asm__ ("IPC21") __attribute__((section("sfrs")));
extern volatile unsigned int IPC21CLR __attribute__((section("sfrs")));
extern volatile unsigned int IPC21SET __attribute__((section("sfrs")));
extern volatile unsigned int IPC21INV __attribute__((section("sfrs")));

extern volatile unsigned int IPC22 __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned ADCD29IS:2;
    unsigned ADCD29IP:3;
    unsigned :3;
    unsigned ADCD30IS:2;
    unsigned ADCD30IP:3;
    unsigned :3;
    unsigned ADCD31IS:2;
    unsigned ADCD31IP:3;
    unsigned :3;
    unsigned ADCD32IS:2;
    unsigned ADCD32IP:3;
  };
  struct {
    unsigned w:32;
  };
} __IPC22bits_t;
extern volatile __IPC22bits_t IPC22bits __asm__ ("IPC22") __attribute__((section("sfrs")));
extern volatile unsigned int IPC22CLR __attribute__((section("sfrs")));
extern volatile unsigned int IPC22SET __attribute__((section("sfrs")));
extern volatile unsigned int IPC22INV __attribute__((section("sfrs")));

extern volatile unsigned int IPC23 __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned ADCD33IS:2;
    unsigned ADCD33IP:3;
    unsigned :3;
    unsigned ADCD34IS:2;
    unsigned ADCD34IP:3;
  };
  struct {
    unsigned w:32;
  };
} __IPC23bits_t;
extern volatile __IPC23bits_t IPC23bits __asm__ ("IPC23") __attribute__((section("sfrs")));
extern volatile unsigned int IPC23CLR __attribute__((section("sfrs")));
extern volatile unsigned int IPC23SET __attribute__((section("sfrs")));
extern volatile unsigned int IPC23INV __attribute__((section("sfrs")));

extern volatile unsigned int IPC25 __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned :16;
    unsigned ADCD43IS:2;
    unsigned ADCD43IP:3;
    unsigned :3;
    unsigned ADCD44IS:2;
    unsigned ADCD44IP:3;
  };
  struct {
    unsigned w:32;
  };
} __IPC25bits_t;
extern volatile __IPC25bits_t IPC25bits __asm__ ("IPC25") __attribute__((section("sfrs")));
extern volatile unsigned int IPC25CLR __attribute__((section("sfrs")));
extern volatile unsigned int IPC25SET __attribute__((section("sfrs")));
extern volatile unsigned int IPC25INV __attribute__((section("sfrs")));

extern volatile unsigned int IPC26 __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned CPCIS:2;
    unsigned CPCIP:3;
    unsigned :3;
    unsigned CFDCIS:2;
    unsigned CFDCIP:3;
    unsigned :3;
    unsigned SBIS:2;
    unsigned SBIP:3;
  };
  struct {
    unsigned w:32;
  };
} __IPC26bits_t;
extern volatile __IPC26bits_t IPC26bits __asm__ ("IPC26") __attribute__((section("sfrs")));
extern volatile unsigned int IPC26CLR __attribute__((section("sfrs")));
extern volatile unsigned int IPC26SET __attribute__((section("sfrs")));
extern volatile unsigned int IPC26INV __attribute__((section("sfrs")));

extern volatile unsigned int IPC27 __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned :8;
    unsigned SPI1EIS:2;
    unsigned SPI1EIP:3;
    unsigned :3;
    unsigned SPI1RXIS:2;
    unsigned SPI1RXIP:3;
    unsigned :3;
    unsigned SPI1TXIS:2;
    unsigned SPI1TXIP:3;
  };
  struct {
    unsigned w:32;
  };
} __IPC27bits_t;
extern volatile __IPC27bits_t IPC27bits __asm__ ("IPC27") __attribute__((section("sfrs")));
extern volatile unsigned int IPC27CLR __attribute__((section("sfrs")));
extern volatile unsigned int IPC27SET __attribute__((section("sfrs")));
extern volatile unsigned int IPC27INV __attribute__((section("sfrs")));

extern volatile unsigned int IPC28 __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned U1EIS:2;
    unsigned U1EIP:3;
    unsigned :3;
    unsigned U1RXIS:2;
    unsigned U1RXIP:3;
    unsigned :3;
    unsigned U1TXIS:2;
    unsigned U1TXIP:3;
    unsigned :3;
    unsigned I2C1BIS:2;
    unsigned I2C1BIP:3;
  };
  struct {
    unsigned w:32;
  };
} __IPC28bits_t;
extern volatile __IPC28bits_t IPC28bits __asm__ ("IPC28") __attribute__((section("sfrs")));
extern volatile unsigned int IPC28CLR __attribute__((section("sfrs")));
extern volatile unsigned int IPC28SET __attribute__((section("sfrs")));
extern volatile unsigned int IPC28INV __attribute__((section("sfrs")));

extern volatile unsigned int IPC29 __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned I2C1SIS:2;
    unsigned I2C1SIP:3;
    unsigned :3;
    unsigned I2C1MIS:2;
    unsigned I2C1MIP:3;
    unsigned :3;
    unsigned CNAIS:2;
    unsigned CNAIP:3;
    unsigned :3;
    unsigned CNBIS:2;
    unsigned CNBIP:3;
  };
  struct {
    unsigned w:32;
  };
} __IPC29bits_t;
extern volatile __IPC29bits_t IPC29bits __asm__ ("IPC29") __attribute__((section("sfrs")));
extern volatile unsigned int IPC29CLR __attribute__((section("sfrs")));
extern volatile unsigned int IPC29SET __attribute__((section("sfrs")));
extern volatile unsigned int IPC29INV __attribute__((section("sfrs")));

extern volatile unsigned int IPC30 __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned CNCIS:2;
    unsigned CNCIP:3;
    unsigned :3;
    unsigned CNDIS:2;
    unsigned CNDIP:3;
    unsigned :3;
    unsigned CNEIS:2;
    unsigned CNEIP:3;
    unsigned :3;
    unsigned CNFIS:2;
    unsigned CNFIP:3;
  };
  struct {
    unsigned w:32;
  };
} __IPC30bits_t;
extern volatile __IPC30bits_t IPC30bits __asm__ ("IPC30") __attribute__((section("sfrs")));
extern volatile unsigned int IPC30CLR __attribute__((section("sfrs")));
extern volatile unsigned int IPC30SET __attribute__((section("sfrs")));
extern volatile unsigned int IPC30INV __attribute__((section("sfrs")));

extern volatile unsigned int IPC31 __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned CNGIS:2;
    unsigned CNGIP:3;
  };
  struct {
    unsigned w:32;
  };
} __IPC31bits_t;
extern volatile __IPC31bits_t IPC31bits __asm__ ("IPC31") __attribute__((section("sfrs")));
extern volatile unsigned int IPC31CLR __attribute__((section("sfrs")));
extern volatile unsigned int IPC31SET __attribute__((section("sfrs")));
extern volatile unsigned int IPC31INV __attribute__((section("sfrs")));

extern volatile unsigned int IPC32 __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned PMPIS:2;
    unsigned PMPIP:3;
    unsigned :3;
    unsigned PMPEIS:2;
    unsigned PMPEIP:3;
    unsigned :3;
    unsigned CMP1IS:2;
    unsigned CMP1IP:3;
    unsigned :3;
    unsigned CMP2IS:2;
    unsigned CMP2IP:3;
  };
  struct {
    unsigned w:32;
  };
} __IPC32bits_t;
extern volatile __IPC32bits_t IPC32bits __asm__ ("IPC32") __attribute__((section("sfrs")));
extern volatile unsigned int IPC32CLR __attribute__((section("sfrs")));
extern volatile unsigned int IPC32SET __attribute__((section("sfrs")));
extern volatile unsigned int IPC32INV __attribute__((section("sfrs")));

extern volatile unsigned int IPC33 __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned USBIS:2;
    unsigned USBIP:3;
    unsigned :3;
    unsigned USBDMAIS:2;
    unsigned USBDMAIP:3;
    unsigned :3;
    unsigned DMA0IS:2;
    unsigned DMA0IP:3;
    unsigned :3;
    unsigned DMA1IS:2;
    unsigned DMA1IP:3;
  };
  struct {
    unsigned w:32;
  };
} __IPC33bits_t;
extern volatile __IPC33bits_t IPC33bits __asm__ ("IPC33") __attribute__((section("sfrs")));
extern volatile unsigned int IPC33CLR __attribute__((section("sfrs")));
extern volatile unsigned int IPC33SET __attribute__((section("sfrs")));
extern volatile unsigned int IPC33INV __attribute__((section("sfrs")));

extern volatile unsigned int IPC34 __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned DMA2IS:2;
    unsigned DMA2IP:3;
    unsigned :3;
    unsigned DMA3IS:2;
    unsigned DMA3IP:3;
    unsigned :3;
    unsigned DMA4IS:2;
    unsigned DMA4IP:3;
    unsigned :3;
    unsigned DMA5IS:2;
    unsigned DMA5IP:3;
  };
  struct {
    unsigned w:32;
  };
} __IPC34bits_t;
extern volatile __IPC34bits_t IPC34bits __asm__ ("IPC34") __attribute__((section("sfrs")));
extern volatile unsigned int IPC34CLR __attribute__((section("sfrs")));
extern volatile unsigned int IPC34SET __attribute__((section("sfrs")));
extern volatile unsigned int IPC34INV __attribute__((section("sfrs")));

extern volatile unsigned int IPC35 __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned DMA6IS:2;
    unsigned DMA6IP:3;
    unsigned :3;
    unsigned DMA7IS:2;
    unsigned DMA7IP:3;
    unsigned :3;
    unsigned SPI2EIS:2;
    unsigned SPI2EIP:3;
    unsigned :3;
    unsigned SPI2RXIS:2;
    unsigned SPI2RXIP:3;
  };
  struct {
    unsigned w:32;
  };
} __IPC35bits_t;
extern volatile __IPC35bits_t IPC35bits __asm__ ("IPC35") __attribute__((section("sfrs")));
extern volatile unsigned int IPC35CLR __attribute__((section("sfrs")));
extern volatile unsigned int IPC35SET __attribute__((section("sfrs")));
extern volatile unsigned int IPC35INV __attribute__((section("sfrs")));

extern volatile unsigned int IPC36 __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned SPI2TXIS:2;
    unsigned SPI2TXIP:3;
    unsigned :3;
    unsigned U2EIS:2;
    unsigned U2EIP:3;
    unsigned :3;
    unsigned U2RXIS:2;
    unsigned U2RXIP:3;
    unsigned :3;
    unsigned U2TXIS:2;
    unsigned U2TXIP:3;
  };
  struct {
    unsigned w:32;
  };
} __IPC36bits_t;
extern volatile __IPC36bits_t IPC36bits __asm__ ("IPC36") __attribute__((section("sfrs")));
extern volatile unsigned int IPC36CLR __attribute__((section("sfrs")));
extern volatile unsigned int IPC36SET __attribute__((section("sfrs")));
extern volatile unsigned int IPC36INV __attribute__((section("sfrs")));

extern volatile unsigned int IPC37 __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned I2C2BIS:2;
    unsigned I2C2BIP:3;
    unsigned :3;
    unsigned I2C2SIS:2;
    unsigned I2C2SIP:3;
    unsigned :3;
    unsigned I2C2MIS:2;
    unsigned I2C2MIP:3;
  };
  struct {
    unsigned w:32;
  };
} __IPC37bits_t;
extern volatile __IPC37bits_t IPC37bits __asm__ ("IPC37") __attribute__((section("sfrs")));
extern volatile unsigned int IPC37CLR __attribute__((section("sfrs")));
extern volatile unsigned int IPC37SET __attribute__((section("sfrs")));
extern volatile unsigned int IPC37INV __attribute__((section("sfrs")));

extern volatile unsigned int IPC38 __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned :8;
    unsigned ETHIS:2;
    unsigned ETHIP:3;
    unsigned :3;
    unsigned SPI3EIS:2;
    unsigned SPI3EIP:3;
    unsigned :3;
    unsigned SPI3RXIS:2;
    unsigned SPI3RXIP:3;
  };
  struct {
    unsigned w:32;
  };
} __IPC38bits_t;
extern volatile __IPC38bits_t IPC38bits __asm__ ("IPC38") __attribute__((section("sfrs")));
extern volatile unsigned int IPC38CLR __attribute__((section("sfrs")));
extern volatile unsigned int IPC38SET __attribute__((section("sfrs")));
extern volatile unsigned int IPC38INV __attribute__((section("sfrs")));

extern volatile unsigned int IPC39 __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned SPI3TXIS:2;
    unsigned SPI3TXIP:3;
    unsigned :3;
    unsigned U3EIS:2;
    unsigned U3EIP:3;
    unsigned :3;
    unsigned U3RXIS:2;
    unsigned U3RXIP:3;
    unsigned :3;
    unsigned U3TXIS:2;
    unsigned U3TXIP:3;
  };
  struct {
    unsigned w:32;
  };
} __IPC39bits_t;
extern volatile __IPC39bits_t IPC39bits __asm__ ("IPC39") __attribute__((section("sfrs")));
extern volatile unsigned int IPC39CLR __attribute__((section("sfrs")));
extern volatile unsigned int IPC39SET __attribute__((section("sfrs")));
extern volatile unsigned int IPC39INV __attribute__((section("sfrs")));

extern volatile unsigned int IPC40 __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned I2C3BIS:2;
    unsigned I2C3BIP:3;
    unsigned :3;
    unsigned I2C3SIS:2;
    unsigned I2C3SIP:3;
    unsigned :3;
    unsigned I2C3MIS:2;
    unsigned I2C3MIP:3;
    unsigned :3;
    unsigned SPI4EIS:2;
    unsigned SPI4EIP:3;
  };
  struct {
    unsigned w:32;
  };
} __IPC40bits_t;
extern volatile __IPC40bits_t IPC40bits __asm__ ("IPC40") __attribute__((section("sfrs")));
extern volatile unsigned int IPC40CLR __attribute__((section("sfrs")));
extern volatile unsigned int IPC40SET __attribute__((section("sfrs")));
extern volatile unsigned int IPC40INV __attribute__((section("sfrs")));

extern volatile unsigned int IPC41 __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned SPI4RXIS:2;
    unsigned SPI4RXIP:3;
    unsigned :3;
    unsigned SPI4TXIS:2;
    unsigned SPI4TXIP:3;
    unsigned :3;
    unsigned RTCCIS:2;
    unsigned RTCCIP:3;
    unsigned :3;
    unsigned FCEIS:2;
    unsigned FCEIP:3;
  };
  struct {
    unsigned w:32;
  };
} __IPC41bits_t;
extern volatile __IPC41bits_t IPC41bits __asm__ ("IPC41") __attribute__((section("sfrs")));
extern volatile unsigned int IPC41CLR __attribute__((section("sfrs")));
extern volatile unsigned int IPC41SET __attribute__((section("sfrs")));
extern volatile unsigned int IPC41INV __attribute__((section("sfrs")));

extern volatile unsigned int IPC42 __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned PREIS:2;
    unsigned PREIP:3;
    unsigned :3;
    unsigned SQI1IS:2;
    unsigned SQI1IP:3;
    unsigned :3;
    unsigned U4EIS:2;
    unsigned U4EIP:3;
    unsigned :3;
    unsigned U4RXIS:2;
    unsigned U4RXIP:3;
  };
  struct {
    unsigned w:32;
  };
} __IPC42bits_t;
extern volatile __IPC42bits_t IPC42bits __asm__ ("IPC42") __attribute__((section("sfrs")));
extern volatile unsigned int IPC42CLR __attribute__((section("sfrs")));
extern volatile unsigned int IPC42SET __attribute__((section("sfrs")));
extern volatile unsigned int IPC42INV __attribute__((section("sfrs")));

extern volatile unsigned int IPC43 __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned U4TXIS:2;
    unsigned U4TXIP:3;
    unsigned :3;
    unsigned I2C4BIS:2;
    unsigned I2C4BIP:3;
    unsigned :3;
    unsigned I2C4SIS:2;
    unsigned I2C4SIP:3;
    unsigned :3;
    unsigned I2C4MIS:2;
    unsigned I2C4MIP:3;
  };
  struct {
    unsigned w:32;
  };
} __IPC43bits_t;
extern volatile __IPC43bits_t IPC43bits __asm__ ("IPC43") __attribute__((section("sfrs")));
extern volatile unsigned int IPC43CLR __attribute__((section("sfrs")));
extern volatile unsigned int IPC43SET __attribute__((section("sfrs")));
extern volatile unsigned int IPC43INV __attribute__((section("sfrs")));

extern volatile unsigned int IPC44 __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned SPI5EIS:2;
    unsigned SPI5EIP:3;
    unsigned :3;
    unsigned SPI5RXIS:2;
    unsigned SPI5RXIP:3;
    unsigned :3;
    unsigned SPI5TXIS:2;
    unsigned SPI5TXIP:3;
    unsigned :3;
    unsigned U5EIS:2;
    unsigned U5EIP:3;
  };
  struct {
    unsigned w:32;
  };
} __IPC44bits_t;
extern volatile __IPC44bits_t IPC44bits __asm__ ("IPC44") __attribute__((section("sfrs")));
extern volatile unsigned int IPC44CLR __attribute__((section("sfrs")));
extern volatile unsigned int IPC44SET __attribute__((section("sfrs")));
extern volatile unsigned int IPC44INV __attribute__((section("sfrs")));

extern volatile unsigned int IPC45 __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned U5RXIS:2;
    unsigned U5RXIP:3;
    unsigned :3;
    unsigned U5TXIS:2;
    unsigned U5TXIP:3;
    unsigned :3;
    unsigned I2C5BIS:2;
    unsigned I2C5BIP:3;
    unsigned :3;
    unsigned I2C5SIS:2;
    unsigned I2C5SIP:3;
  };
  struct {
    unsigned w:32;
  };
} __IPC45bits_t;
extern volatile __IPC45bits_t IPC45bits __asm__ ("IPC45") __attribute__((section("sfrs")));
extern volatile unsigned int IPC45CLR __attribute__((section("sfrs")));
extern volatile unsigned int IPC45SET __attribute__((section("sfrs")));
extern volatile unsigned int IPC45INV __attribute__((section("sfrs")));

extern volatile unsigned int IPC46 __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned I2C5MIS:2;
    unsigned I2C5MIP:3;
    unsigned :3;
    unsigned SPI6EIS:2;
    unsigned SPI6EIP:3;
    unsigned :3;
    unsigned SPI6RXIS:2;
    unsigned SPI6RXIP:3;
    unsigned :3;
    unsigned SPI6TXIS:2;
    unsigned SPI6TXIP:3;
  };
  struct {
    unsigned w:32;
  };
} __IPC46bits_t;
extern volatile __IPC46bits_t IPC46bits __asm__ ("IPC46") __attribute__((section("sfrs")));
extern volatile unsigned int IPC46CLR __attribute__((section("sfrs")));
extern volatile unsigned int IPC46SET __attribute__((section("sfrs")));
extern volatile unsigned int IPC46INV __attribute__((section("sfrs")));

extern volatile unsigned int IPC47 __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned U6EIS:2;
    unsigned U6EIP:3;
    unsigned :3;
    unsigned U6RXIS:2;
    unsigned U6RXIP:3;
    unsigned :3;
    unsigned U6TXIS:2;
    unsigned U6TXIP:3;
  };
  struct {
    unsigned w:32;
  };
} __IPC47bits_t;
extern volatile __IPC47bits_t IPC47bits __asm__ ("IPC47") __attribute__((section("sfrs")));
extern volatile unsigned int IPC47CLR __attribute__((section("sfrs")));
extern volatile unsigned int IPC47SET __attribute__((section("sfrs")));
extern volatile unsigned int IPC47INV __attribute__((section("sfrs")));

extern volatile unsigned int IPC48 __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned ADCEOSIS:2;
    unsigned ADCEOSIP:3;
    unsigned :3;
    unsigned ADCARDYIS:2;
    unsigned ADCARDYIP:3;
    unsigned :3;
    unsigned ADCURDYIS:2;
    unsigned ADCURDYIP:3;
  };
  struct {
    unsigned w:32;
  };
} __IPC48bits_t;
extern volatile __IPC48bits_t IPC48bits __asm__ ("IPC48") __attribute__((section("sfrs")));
extern volatile unsigned int IPC48CLR __attribute__((section("sfrs")));
extern volatile unsigned int IPC48SET __attribute__((section("sfrs")));
extern volatile unsigned int IPC48INV __attribute__((section("sfrs")));

extern volatile unsigned int IPC49 __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned ADCGRPIS:2;
    unsigned ADCGRPIP:3;
    unsigned :11;
    unsigned ADC0EIS:2;
    unsigned ADC0EIP:3;
    unsigned :3;
    unsigned ADC1EIS:2;
    unsigned ADC1EIP:3;
  };
  struct {
    unsigned w:32;
  };
} __IPC49bits_t;
extern volatile __IPC49bits_t IPC49bits __asm__ ("IPC49") __attribute__((section("sfrs")));
extern volatile unsigned int IPC49CLR __attribute__((section("sfrs")));
extern volatile unsigned int IPC49SET __attribute__((section("sfrs")));
extern volatile unsigned int IPC49INV __attribute__((section("sfrs")));

extern volatile unsigned int IPC50 __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned ADC2EIS:2;
    unsigned ADC2EIP:3;
    unsigned :3;
    unsigned ADC3EIS:2;
    unsigned ADC3EIP:3;
    unsigned :3;
    unsigned ADC4EIS:2;
    unsigned ADC4EIP:3;
  };
  struct {
    unsigned w:32;
  };
} __IPC50bits_t;
extern volatile __IPC50bits_t IPC50bits __asm__ ("IPC50") __attribute__((section("sfrs")));
extern volatile unsigned int IPC50CLR __attribute__((section("sfrs")));
extern volatile unsigned int IPC50SET __attribute__((section("sfrs")));
extern volatile unsigned int IPC50INV __attribute__((section("sfrs")));

extern volatile unsigned int IPC51 __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned :8;
    unsigned ADC7EIS:2;
    unsigned ADC7EIP:3;
    unsigned :3;
    unsigned ADC0WIS:2;
    unsigned ADC0WIP:3;
    unsigned :3;
    unsigned ADC1WIS:2;
    unsigned ADC1WIP:3;
  };
  struct {
    unsigned w:32;
  };
} __IPC51bits_t;
extern volatile __IPC51bits_t IPC51bits __asm__ ("IPC51") __attribute__((section("sfrs")));
extern volatile unsigned int IPC51CLR __attribute__((section("sfrs")));
extern volatile unsigned int IPC51SET __attribute__((section("sfrs")));
extern volatile unsigned int IPC51INV __attribute__((section("sfrs")));

extern volatile unsigned int IPC52 __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned ADC2WIS:2;
    unsigned ADC2WIP:3;
    unsigned :3;
    unsigned ADC3WIS:2;
    unsigned ADC3WIP:3;
    unsigned :3;
    unsigned ADC4WIS:2;
    unsigned ADC4WIP:3;
  };
  struct {
    unsigned w:32;
  };
} __IPC52bits_t;
extern volatile __IPC52bits_t IPC52bits __asm__ ("IPC52") __attribute__((section("sfrs")));
extern volatile unsigned int IPC52CLR __attribute__((section("sfrs")));
extern volatile unsigned int IPC52SET __attribute__((section("sfrs")));
extern volatile unsigned int IPC52INV __attribute__((section("sfrs")));

extern volatile unsigned int IPC53 __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned :8;
    unsigned ADC7WIS:2;
    unsigned ADC7WIP:3;
  };
  struct {
    unsigned w:32;
  };
} __IPC53bits_t;
extern volatile __IPC53bits_t IPC53bits __asm__ ("IPC53") __attribute__((section("sfrs")));
extern volatile unsigned int IPC53CLR __attribute__((section("sfrs")));
extern volatile unsigned int IPC53SET __attribute__((section("sfrs")));
extern volatile unsigned int IPC53INV __attribute__((section("sfrs")));

extern volatile unsigned int OFF000 __attribute__((section("sfrs")));
typedef struct {
  unsigned :1;
  unsigned VOFF:17;
} __OFF000bits_t;
extern volatile __OFF000bits_t OFF000bits __asm__ ("OFF000") __attribute__((section("sfrs")));

extern volatile unsigned int OFF001 __attribute__((section("sfrs")));
typedef struct {
  unsigned :1;
  unsigned VOFF:17;
} __OFF001bits_t;
extern volatile __OFF001bits_t OFF001bits __asm__ ("OFF001") __attribute__((section("sfrs")));

extern volatile unsigned int OFF002 __attribute__((section("sfrs")));
typedef struct {
  unsigned :1;
  unsigned VOFF:17;
} __OFF002bits_t;
extern volatile __OFF002bits_t OFF002bits __asm__ ("OFF002") __attribute__((section("sfrs")));

extern volatile unsigned int OFF003 __attribute__((section("sfrs")));
typedef struct {
  unsigned :1;
  unsigned VOFF:17;
} __OFF003bits_t;
extern volatile __OFF003bits_t OFF003bits __asm__ ("OFF003") __attribute__((section("sfrs")));

extern volatile unsigned int OFF004 __attribute__((section("sfrs")));
typedef struct {
  unsigned :1;
  unsigned VOFF:17;
} __OFF004bits_t;
extern volatile __OFF004bits_t OFF004bits __asm__ ("OFF004") __attribute__((section("sfrs")));

extern volatile unsigned int OFF005 __attribute__((section("sfrs")));
typedef struct {
  unsigned :1;
  unsigned VOFF:17;
} __OFF005bits_t;
extern volatile __OFF005bits_t OFF005bits __asm__ ("OFF005") __attribute__((section("sfrs")));

extern volatile unsigned int OFF006 __attribute__((section("sfrs")));
typedef struct {
  unsigned :1;
  unsigned VOFF:17;
} __OFF006bits_t;
extern volatile __OFF006bits_t OFF006bits __asm__ ("OFF006") __attribute__((section("sfrs")));

extern volatile unsigned int OFF007 __attribute__((section("sfrs")));
typedef struct {
  unsigned :1;
  unsigned VOFF:17;
} __OFF007bits_t;
extern volatile __OFF007bits_t OFF007bits __asm__ ("OFF007") __attribute__((section("sfrs")));

extern volatile unsigned int OFF008 __attribute__((section("sfrs")));
typedef struct {
  unsigned :1;
  unsigned VOFF:17;
} __OFF008bits_t;
extern volatile __OFF008bits_t OFF008bits __asm__ ("OFF008") __attribute__((section("sfrs")));

extern volatile unsigned int OFF009 __attribute__((section("sfrs")));
typedef struct {
  unsigned :1;
  unsigned VOFF:17;
} __OFF009bits_t;
extern volatile __OFF009bits_t OFF009bits __asm__ ("OFF009") __attribute__((section("sfrs")));

extern volatile unsigned int OFF010 __attribute__((section("sfrs")));
typedef struct {
  unsigned :1;
  unsigned VOFF:17;
} __OFF010bits_t;
extern volatile __OFF010bits_t OFF010bits __asm__ ("OFF010") __attribute__((section("sfrs")));

extern volatile unsigned int OFF011 __attribute__((section("sfrs")));
typedef struct {
  unsigned :1;
  unsigned VOFF:17;
} __OFF011bits_t;
extern volatile __OFF011bits_t OFF011bits __asm__ ("OFF011") __attribute__((section("sfrs")));

extern volatile unsigned int OFF012 __attribute__((section("sfrs")));
typedef struct {
  unsigned :1;
  unsigned VOFF:17;
} __OFF012bits_t;
extern volatile __OFF012bits_t OFF012bits __asm__ ("OFF012") __attribute__((section("sfrs")));

extern volatile unsigned int OFF013 __attribute__((section("sfrs")));
typedef struct {
  unsigned :1;
  unsigned VOFF:17;
} __OFF013bits_t;
extern volatile __OFF013bits_t OFF013bits __asm__ ("OFF013") __attribute__((section("sfrs")));

extern volatile unsigned int OFF014 __attribute__((section("sfrs")));
typedef struct {
  unsigned :1;
  unsigned VOFF:17;
} __OFF014bits_t;
extern volatile __OFF014bits_t OFF014bits __asm__ ("OFF014") __attribute__((section("sfrs")));

extern volatile unsigned int OFF015 __attribute__((section("sfrs")));
typedef struct {
  unsigned :1;
  unsigned VOFF:17;
} __OFF015bits_t;
extern volatile __OFF015bits_t OFF015bits __asm__ ("OFF015") __attribute__((section("sfrs")));

extern volatile unsigned int OFF016 __attribute__((section("sfrs")));
typedef struct {
  unsigned :1;
  unsigned VOFF:17;
} __OFF016bits_t;
extern volatile __OFF016bits_t OFF016bits __asm__ ("OFF016") __attribute__((section("sfrs")));

extern volatile unsigned int OFF017 __attribute__((section("sfrs")));
typedef struct {
  unsigned :1;
  unsigned VOFF:17;
} __OFF017bits_t;
extern volatile __OFF017bits_t OFF017bits __asm__ ("OFF017") __attribute__((section("sfrs")));

extern volatile unsigned int OFF018 __attribute__((section("sfrs")));
typedef struct {
  unsigned :1;
  unsigned VOFF:17;
} __OFF018bits_t;
extern volatile __OFF018bits_t OFF018bits __asm__ ("OFF018") __attribute__((section("sfrs")));

extern volatile unsigned int OFF019 __attribute__((section("sfrs")));
typedef struct {
  unsigned :1;
  unsigned VOFF:17;
} __OFF019bits_t;
extern volatile __OFF019bits_t OFF019bits __asm__ ("OFF019") __attribute__((section("sfrs")));

extern volatile unsigned int OFF020 __attribute__((section("sfrs")));
typedef struct {
  unsigned :1;
  unsigned VOFF:17;
} __OFF020bits_t;
extern volatile __OFF020bits_t OFF020bits __asm__ ("OFF020") __attribute__((section("sfrs")));

extern volatile unsigned int OFF021 __attribute__((section("sfrs")));
typedef struct {
  unsigned :1;
  unsigned VOFF:17;
} __OFF021bits_t;
extern volatile __OFF021bits_t OFF021bits __asm__ ("OFF021") __attribute__((section("sfrs")));

extern volatile unsigned int OFF022 __attribute__((section("sfrs")));
typedef struct {
  unsigned :1;
  unsigned VOFF:17;
} __OFF022bits_t;
extern volatile __OFF022bits_t OFF022bits __asm__ ("OFF022") __attribute__((section("sfrs")));

extern volatile unsigned int OFF023 __attribute__((section("sfrs")));
typedef struct {
  unsigned :1;
  unsigned VOFF:17;
} __OFF023bits_t;
extern volatile __OFF023bits_t OFF023bits __asm__ ("OFF023") __attribute__((section("sfrs")));

extern volatile unsigned int OFF024 __attribute__((section("sfrs")));
typedef struct {
  unsigned :1;
  unsigned VOFF:17;
} __OFF024bits_t;
extern volatile __OFF024bits_t OFF024bits __asm__ ("OFF024") __attribute__((section("sfrs")));

extern volatile unsigned int OFF025 __attribute__((section("sfrs")));
typedef struct {
  unsigned :1;
  unsigned VOFF:17;
} __OFF025bits_t;
extern volatile __OFF025bits_t OFF025bits __asm__ ("OFF025") __attribute__((section("sfrs")));

extern volatile unsigned int OFF026 __attribute__((section("sfrs")));
typedef struct {
  unsigned :1;
  unsigned VOFF:17;
} __OFF026bits_t;
extern volatile __OFF026bits_t OFF026bits __asm__ ("OFF026") __attribute__((section("sfrs")));

extern volatile unsigned int OFF027 __attribute__((section("sfrs")));
typedef struct {
  unsigned :1;
  unsigned VOFF:17;
} __OFF027bits_t;
extern volatile __OFF027bits_t OFF027bits __asm__ ("OFF027") __attribute__((section("sfrs")));

extern volatile unsigned int OFF028 __attribute__((section("sfrs")));
typedef struct {
  unsigned :1;
  unsigned VOFF:17;
} __OFF028bits_t;
extern volatile __OFF028bits_t OFF028bits __asm__ ("OFF028") __attribute__((section("sfrs")));

extern volatile unsigned int OFF029 __attribute__((section("sfrs")));
typedef struct {
  unsigned :1;
  unsigned VOFF:17;
} __OFF029bits_t;
extern volatile __OFF029bits_t OFF029bits __asm__ ("OFF029") __attribute__((section("sfrs")));

extern volatile unsigned int OFF030 __attribute__((section("sfrs")));
typedef struct {
  unsigned :1;
  unsigned VOFF:17;
} __OFF030bits_t;
extern volatile __OFF030bits_t OFF030bits __asm__ ("OFF030") __attribute__((section("sfrs")));

extern volatile unsigned int OFF031 __attribute__((section("sfrs")));
typedef struct {
  unsigned :1;
  unsigned VOFF:17;
} __OFF031bits_t;
extern volatile __OFF031bits_t OFF031bits __asm__ ("OFF031") __attribute__((section("sfrs")));

extern volatile unsigned int OFF032 __attribute__((section("sfrs")));
typedef struct {
  unsigned :1;
  unsigned VOFF:17;
} __OFF032bits_t;
extern volatile __OFF032bits_t OFF032bits __asm__ ("OFF032") __attribute__((section("sfrs")));

extern volatile unsigned int OFF033 __attribute__((section("sfrs")));
typedef struct {
  unsigned :1;
  unsigned VOFF:17;
} __OFF033bits_t;
extern volatile __OFF033bits_t OFF033bits __asm__ ("OFF033") __attribute__((section("sfrs")));

extern volatile unsigned int OFF034 __attribute__((section("sfrs")));
typedef struct {
  unsigned :1;
  unsigned VOFF:17;
} __OFF034bits_t;
extern volatile __OFF034bits_t OFF034bits __asm__ ("OFF034") __attribute__((section("sfrs")));

extern volatile unsigned int OFF035 __attribute__((section("sfrs")));
typedef struct {
  unsigned :1;
  unsigned VOFF:17;
} __OFF035bits_t;
extern volatile __OFF035bits_t OFF035bits __asm__ ("OFF035") __attribute__((section("sfrs")));

extern volatile unsigned int OFF036 __attribute__((section("sfrs")));
typedef struct {
  unsigned :1;
  unsigned VOFF:17;
} __OFF036bits_t;
extern volatile __OFF036bits_t OFF036bits __asm__ ("OFF036") __attribute__((section("sfrs")));

extern volatile unsigned int OFF037 __attribute__((section("sfrs")));
typedef struct {
  unsigned :1;
  unsigned VOFF:17;
} __OFF037bits_t;
extern volatile __OFF037bits_t OFF037bits __asm__ ("OFF037") __attribute__((section("sfrs")));

extern volatile unsigned int OFF038 __attribute__((section("sfrs")));
typedef struct {
  unsigned :1;
  unsigned VOFF:17;
} __OFF038bits_t;
extern volatile __OFF038bits_t OFF038bits __asm__ ("OFF038") __attribute__((section("sfrs")));

extern volatile unsigned int OFF039 __attribute__((section("sfrs")));
typedef struct {
  unsigned :1;
  unsigned VOFF:17;
} __OFF039bits_t;
extern volatile __OFF039bits_t OFF039bits __asm__ ("OFF039") __attribute__((section("sfrs")));

extern volatile unsigned int OFF040 __attribute__((section("sfrs")));
typedef struct {
  unsigned :1;
  unsigned VOFF:17;
} __OFF040bits_t;
extern volatile __OFF040bits_t OFF040bits __asm__ ("OFF040") __attribute__((section("sfrs")));

extern volatile unsigned int OFF041 __attribute__((section("sfrs")));
typedef struct {
  unsigned :1;
  unsigned VOFF:17;
} __OFF041bits_t;
extern volatile __OFF041bits_t OFF041bits __asm__ ("OFF041") __attribute__((section("sfrs")));

extern volatile unsigned int OFF042 __attribute__((section("sfrs")));
typedef struct {
  unsigned :1;
  unsigned VOFF:17;
} __OFF042bits_t;
extern volatile __OFF042bits_t OFF042bits __asm__ ("OFF042") __attribute__((section("sfrs")));

extern volatile unsigned int OFF043 __attribute__((section("sfrs")));
typedef struct {
  unsigned :1;
  unsigned VOFF:17;
} __OFF043bits_t;
extern volatile __OFF043bits_t OFF043bits __asm__ ("OFF043") __attribute__((section("sfrs")));

extern volatile unsigned int OFF044 __attribute__((section("sfrs")));
typedef struct {
  unsigned :1;
  unsigned VOFF:17;
} __OFF044bits_t;
extern volatile __OFF044bits_t OFF044bits __asm__ ("OFF044") __attribute__((section("sfrs")));

extern volatile unsigned int OFF045 __attribute__((section("sfrs")));
typedef struct {
  unsigned :1;
  unsigned VOFF:17;
} __OFF045bits_t;
extern volatile __OFF045bits_t OFF045bits __asm__ ("OFF045") __attribute__((section("sfrs")));

extern volatile unsigned int OFF046 __attribute__((section("sfrs")));
typedef struct {
  unsigned :1;
  unsigned VOFF:17;
} __OFF046bits_t;
extern volatile __OFF046bits_t OFF046bits __asm__ ("OFF046") __attribute__((section("sfrs")));

extern volatile unsigned int OFF047 __attribute__((section("sfrs")));
typedef struct {
  unsigned :1;
  unsigned VOFF:17;
} __OFF047bits_t;
extern volatile __OFF047bits_t OFF047bits __asm__ ("OFF047") __attribute__((section("sfrs")));

extern volatile unsigned int OFF048 __attribute__((section("sfrs")));
typedef struct {
  unsigned :1;
  unsigned VOFF:17;
} __OFF048bits_t;
extern volatile __OFF048bits_t OFF048bits __asm__ ("OFF048") __attribute__((section("sfrs")));

extern volatile unsigned int OFF049 __attribute__((section("sfrs")));
typedef struct {
  unsigned :1;
  unsigned VOFF:17;
} __OFF049bits_t;
extern volatile __OFF049bits_t OFF049bits __asm__ ("OFF049") __attribute__((section("sfrs")));

extern volatile unsigned int OFF050 __attribute__((section("sfrs")));
typedef struct {
  unsigned :1;
  unsigned VOFF:17;
} __OFF050bits_t;
extern volatile __OFF050bits_t OFF050bits __asm__ ("OFF050") __attribute__((section("sfrs")));

extern volatile unsigned int OFF051 __attribute__((section("sfrs")));
typedef struct {
  unsigned :1;
  unsigned VOFF:17;
} __OFF051bits_t;
extern volatile __OFF051bits_t OFF051bits __asm__ ("OFF051") __attribute__((section("sfrs")));

extern volatile unsigned int OFF052 __attribute__((section("sfrs")));
typedef struct {
  unsigned :1;
  unsigned VOFF:17;
} __OFF052bits_t;
extern volatile __OFF052bits_t OFF052bits __asm__ ("OFF052") __attribute__((section("sfrs")));

extern volatile unsigned int OFF053 __attribute__((section("sfrs")));
typedef struct {
  unsigned :1;
  unsigned VOFF:17;
} __OFF053bits_t;
extern volatile __OFF053bits_t OFF053bits __asm__ ("OFF053") __attribute__((section("sfrs")));

extern volatile unsigned int OFF054 __attribute__((section("sfrs")));
typedef struct {
  unsigned :1;
  unsigned VOFF:17;
} __OFF054bits_t;
extern volatile __OFF054bits_t OFF054bits __asm__ ("OFF054") __attribute__((section("sfrs")));

extern volatile unsigned int OFF055 __attribute__((section("sfrs")));
typedef struct {
  unsigned :1;
  unsigned VOFF:17;
} __OFF055bits_t;
extern volatile __OFF055bits_t OFF055bits __asm__ ("OFF055") __attribute__((section("sfrs")));

extern volatile unsigned int OFF056 __attribute__((section("sfrs")));
typedef struct {
  unsigned :1;
  unsigned VOFF:17;
} __OFF056bits_t;
extern volatile __OFF056bits_t OFF056bits __asm__ ("OFF056") __attribute__((section("sfrs")));

extern volatile unsigned int OFF057 __attribute__((section("sfrs")));
typedef struct {
  unsigned :1;
  unsigned VOFF:17;
} __OFF057bits_t;
extern volatile __OFF057bits_t OFF057bits __asm__ ("OFF057") __attribute__((section("sfrs")));

extern volatile unsigned int OFF058 __attribute__((section("sfrs")));
typedef struct {
  unsigned :1;
  unsigned VOFF:17;
} __OFF058bits_t;
extern volatile __OFF058bits_t OFF058bits __asm__ ("OFF058") __attribute__((section("sfrs")));

extern volatile unsigned int OFF059 __attribute__((section("sfrs")));
typedef struct {
  unsigned :1;
  unsigned VOFF:17;
} __OFF059bits_t;
extern volatile __OFF059bits_t OFF059bits __asm__ ("OFF059") __attribute__((section("sfrs")));

extern volatile unsigned int OFF060 __attribute__((section("sfrs")));
typedef struct {
  unsigned :1;
  unsigned VOFF:17;
} __OFF060bits_t;
extern volatile __OFF060bits_t OFF060bits __asm__ ("OFF060") __attribute__((section("sfrs")));

extern volatile unsigned int OFF061 __attribute__((section("sfrs")));
typedef struct {
  unsigned :1;
  unsigned VOFF:17;
} __OFF061bits_t;
extern volatile __OFF061bits_t OFF061bits __asm__ ("OFF061") __attribute__((section("sfrs")));

extern volatile unsigned int OFF062 __attribute__((section("sfrs")));
typedef struct {
  unsigned :1;
  unsigned VOFF:17;
} __OFF062bits_t;
extern volatile __OFF062bits_t OFF062bits __asm__ ("OFF062") __attribute__((section("sfrs")));

extern volatile unsigned int OFF063 __attribute__((section("sfrs")));
typedef struct {
  unsigned :1;
  unsigned VOFF:17;
} __OFF063bits_t;
extern volatile __OFF063bits_t OFF063bits __asm__ ("OFF063") __attribute__((section("sfrs")));

extern volatile unsigned int OFF064 __attribute__((section("sfrs")));
typedef struct {
  unsigned :1;
  unsigned VOFF:17;
} __OFF064bits_t;
extern volatile __OFF064bits_t OFF064bits __asm__ ("OFF064") __attribute__((section("sfrs")));

extern volatile unsigned int OFF065 __attribute__((section("sfrs")));
typedef struct {
  unsigned :1;
  unsigned VOFF:17;
} __OFF065bits_t;
extern volatile __OFF065bits_t OFF065bits __asm__ ("OFF065") __attribute__((section("sfrs")));

extern volatile unsigned int OFF066 __attribute__((section("sfrs")));
typedef struct {
  unsigned :1;
  unsigned VOFF:17;
} __OFF066bits_t;
extern volatile __OFF066bits_t OFF066bits __asm__ ("OFF066") __attribute__((section("sfrs")));

extern volatile unsigned int OFF067 __attribute__((section("sfrs")));
typedef struct {
  unsigned :1;
  unsigned VOFF:17;
} __OFF067bits_t;
extern volatile __OFF067bits_t OFF067bits __asm__ ("OFF067") __attribute__((section("sfrs")));

extern volatile unsigned int OFF068 __attribute__((section("sfrs")));
typedef struct {
  unsigned :1;
  unsigned VOFF:17;
} __OFF068bits_t;
extern volatile __OFF068bits_t OFF068bits __asm__ ("OFF068") __attribute__((section("sfrs")));

extern volatile unsigned int OFF069 __attribute__((section("sfrs")));
typedef struct {
  unsigned :1;
  unsigned VOFF:17;
} __OFF069bits_t;
extern volatile __OFF069bits_t OFF069bits __asm__ ("OFF069") __attribute__((section("sfrs")));

extern volatile unsigned int OFF070 __attribute__((section("sfrs")));
typedef struct {
  unsigned :1;
  unsigned VOFF:17;
} __OFF070bits_t;
extern volatile __OFF070bits_t OFF070bits __asm__ ("OFF070") __attribute__((section("sfrs")));

extern volatile unsigned int OFF071 __attribute__((section("sfrs")));
typedef struct {
  unsigned :1;
  unsigned VOFF:17;
} __OFF071bits_t;
extern volatile __OFF071bits_t OFF071bits __asm__ ("OFF071") __attribute__((section("sfrs")));

extern volatile unsigned int OFF072 __attribute__((section("sfrs")));
typedef struct {
  unsigned :1;
  unsigned VOFF:17;
} __OFF072bits_t;
extern volatile __OFF072bits_t OFF072bits __asm__ ("OFF072") __attribute__((section("sfrs")));

extern volatile unsigned int OFF073 __attribute__((section("sfrs")));
typedef struct {
  unsigned :1;
  unsigned VOFF:17;
} __OFF073bits_t;
extern volatile __OFF073bits_t OFF073bits __asm__ ("OFF073") __attribute__((section("sfrs")));

extern volatile unsigned int OFF074 __attribute__((section("sfrs")));
typedef struct {
  unsigned :1;
  unsigned VOFF:17;
} __OFF074bits_t;
extern volatile __OFF074bits_t OFF074bits __asm__ ("OFF074") __attribute__((section("sfrs")));

extern volatile unsigned int OFF075 __attribute__((section("sfrs")));
typedef struct {
  unsigned :1;
  unsigned VOFF:17;
} __OFF075bits_t;
extern volatile __OFF075bits_t OFF075bits __asm__ ("OFF075") __attribute__((section("sfrs")));

extern volatile unsigned int OFF076 __attribute__((section("sfrs")));
typedef struct {
  unsigned :1;
  unsigned VOFF:17;
} __OFF076bits_t;
extern volatile __OFF076bits_t OFF076bits __asm__ ("OFF076") __attribute__((section("sfrs")));

extern volatile unsigned int OFF077 __attribute__((section("sfrs")));
typedef struct {
  unsigned :1;
  unsigned VOFF:17;
} __OFF077bits_t;
extern volatile __OFF077bits_t OFF077bits __asm__ ("OFF077") __attribute__((section("sfrs")));

extern volatile unsigned int OFF078 __attribute__((section("sfrs")));
typedef struct {
  unsigned :1;
  unsigned VOFF:17;
} __OFF078bits_t;
extern volatile __OFF078bits_t OFF078bits __asm__ ("OFF078") __attribute__((section("sfrs")));

extern volatile unsigned int OFF079 __attribute__((section("sfrs")));
typedef struct {
  unsigned :1;
  unsigned VOFF:17;
} __OFF079bits_t;
extern volatile __OFF079bits_t OFF079bits __asm__ ("OFF079") __attribute__((section("sfrs")));

extern volatile unsigned int OFF080 __attribute__((section("sfrs")));
typedef struct {
  unsigned :1;
  unsigned VOFF:17;
} __OFF080bits_t;
extern volatile __OFF080bits_t OFF080bits __asm__ ("OFF080") __attribute__((section("sfrs")));

extern volatile unsigned int OFF081 __attribute__((section("sfrs")));
typedef struct {
  unsigned :1;
  unsigned VOFF:17;
} __OFF081bits_t;
extern volatile __OFF081bits_t OFF081bits __asm__ ("OFF081") __attribute__((section("sfrs")));

extern volatile unsigned int OFF082 __attribute__((section("sfrs")));
typedef struct {
  unsigned :1;
  unsigned VOFF:17;
} __OFF082bits_t;
extern volatile __OFF082bits_t OFF082bits __asm__ ("OFF082") __attribute__((section("sfrs")));

extern volatile unsigned int OFF083 __attribute__((section("sfrs")));
typedef struct {
  unsigned :1;
  unsigned VOFF:17;
} __OFF083bits_t;
extern volatile __OFF083bits_t OFF083bits __asm__ ("OFF083") __attribute__((section("sfrs")));

extern volatile unsigned int OFF084 __attribute__((section("sfrs")));
typedef struct {
  unsigned :1;
  unsigned VOFF:17;
} __OFF084bits_t;
extern volatile __OFF084bits_t OFF084bits __asm__ ("OFF084") __attribute__((section("sfrs")));

extern volatile unsigned int OFF085 __attribute__((section("sfrs")));
typedef struct {
  unsigned :1;
  unsigned VOFF:17;
} __OFF085bits_t;
extern volatile __OFF085bits_t OFF085bits __asm__ ("OFF085") __attribute__((section("sfrs")));

extern volatile unsigned int OFF086 __attribute__((section("sfrs")));
typedef struct {
  unsigned :1;
  unsigned VOFF:17;
} __OFF086bits_t;
extern volatile __OFF086bits_t OFF086bits __asm__ ("OFF086") __attribute__((section("sfrs")));

extern volatile unsigned int OFF087 __attribute__((section("sfrs")));
typedef struct {
  unsigned :1;
  unsigned VOFF:17;
} __OFF087bits_t;
extern volatile __OFF087bits_t OFF087bits __asm__ ("OFF087") __attribute__((section("sfrs")));

extern volatile unsigned int OFF088 __attribute__((section("sfrs")));
typedef struct {
  unsigned :1;
  unsigned VOFF:17;
} __OFF088bits_t;
extern volatile __OFF088bits_t OFF088bits __asm__ ("OFF088") __attribute__((section("sfrs")));

extern volatile unsigned int OFF089 __attribute__((section("sfrs")));
typedef struct {
  unsigned :1;
  unsigned VOFF:17;
} __OFF089bits_t;
extern volatile __OFF089bits_t OFF089bits __asm__ ("OFF089") __attribute__((section("sfrs")));

extern volatile unsigned int OFF090 __attribute__((section("sfrs")));
typedef struct {
  unsigned :1;
  unsigned VOFF:17;
} __OFF090bits_t;
extern volatile __OFF090bits_t OFF090bits __asm__ ("OFF090") __attribute__((section("sfrs")));

extern volatile unsigned int OFF091 __attribute__((section("sfrs")));
typedef struct {
  unsigned :1;
  unsigned VOFF:17;
} __OFF091bits_t;
extern volatile __OFF091bits_t OFF091bits __asm__ ("OFF091") __attribute__((section("sfrs")));

extern volatile unsigned int OFF092 __attribute__((section("sfrs")));
typedef struct {
  unsigned :1;
  unsigned VOFF:17;
} __OFF092bits_t;
extern volatile __OFF092bits_t OFF092bits __asm__ ("OFF092") __attribute__((section("sfrs")));

extern volatile unsigned int OFF093 __attribute__((section("sfrs")));
typedef struct {
  unsigned :1;
  unsigned VOFF:17;
} __OFF093bits_t;
extern volatile __OFF093bits_t OFF093bits __asm__ ("OFF093") __attribute__((section("sfrs")));

extern volatile unsigned int OFF102 __attribute__((section("sfrs")));
typedef struct {
  unsigned :1;
  unsigned VOFF:17;
} __OFF102bits_t;
extern volatile __OFF102bits_t OFF102bits __asm__ ("OFF102") __attribute__((section("sfrs")));

extern volatile unsigned int OFF103 __attribute__((section("sfrs")));
typedef struct {
  unsigned :1;
  unsigned VOFF:17;
} __OFF103bits_t;
extern volatile __OFF103bits_t OFF103bits __asm__ ("OFF103") __attribute__((section("sfrs")));

extern volatile unsigned int OFF104 __attribute__((section("sfrs")));
typedef struct {
  unsigned :1;
  unsigned VOFF:17;
} __OFF104bits_t;
extern volatile __OFF104bits_t OFF104bits __asm__ ("OFF104") __attribute__((section("sfrs")));

extern volatile unsigned int OFF105 __attribute__((section("sfrs")));
typedef struct {
  unsigned :1;
  unsigned VOFF:17;
} __OFF105bits_t;
extern volatile __OFF105bits_t OFF105bits __asm__ ("OFF105") __attribute__((section("sfrs")));

extern volatile unsigned int OFF106 __attribute__((section("sfrs")));
typedef struct {
  unsigned :1;
  unsigned VOFF:17;
} __OFF106bits_t;
extern volatile __OFF106bits_t OFF106bits __asm__ ("OFF106") __attribute__((section("sfrs")));

extern volatile unsigned int OFF109 __attribute__((section("sfrs")));
typedef struct {
  unsigned :1;
  unsigned VOFF:17;
} __OFF109bits_t;
extern volatile __OFF109bits_t OFF109bits __asm__ ("OFF109") __attribute__((section("sfrs")));

extern volatile unsigned int OFF110 __attribute__((section("sfrs")));
typedef struct {
  unsigned :1;
  unsigned VOFF:17;
} __OFF110bits_t;
extern volatile __OFF110bits_t OFF110bits __asm__ ("OFF110") __attribute__((section("sfrs")));

extern volatile unsigned int OFF111 __attribute__((section("sfrs")));
typedef struct {
  unsigned :1;
  unsigned VOFF:17;
} __OFF111bits_t;
extern volatile __OFF111bits_t OFF111bits __asm__ ("OFF111") __attribute__((section("sfrs")));

extern volatile unsigned int OFF112 __attribute__((section("sfrs")));
typedef struct {
  unsigned :1;
  unsigned VOFF:17;
} __OFF112bits_t;
extern volatile __OFF112bits_t OFF112bits __asm__ ("OFF112") __attribute__((section("sfrs")));

extern volatile unsigned int OFF113 __attribute__((section("sfrs")));
typedef struct {
  unsigned :1;
  unsigned VOFF:17;
} __OFF113bits_t;
extern volatile __OFF113bits_t OFF113bits __asm__ ("OFF113") __attribute__((section("sfrs")));

extern volatile unsigned int OFF114 __attribute__((section("sfrs")));
typedef struct {
  unsigned :1;
  unsigned VOFF:17;
} __OFF114bits_t;
extern volatile __OFF114bits_t OFF114bits __asm__ ("OFF114") __attribute__((section("sfrs")));

extern volatile unsigned int OFF115 __attribute__((section("sfrs")));
typedef struct {
  unsigned :1;
  unsigned VOFF:17;
} __OFF115bits_t;
extern volatile __OFF115bits_t OFF115bits __asm__ ("OFF115") __attribute__((section("sfrs")));

extern volatile unsigned int OFF116 __attribute__((section("sfrs")));
typedef struct {
  unsigned :1;
  unsigned VOFF:17;
} __OFF116bits_t;
extern volatile __OFF116bits_t OFF116bits __asm__ ("OFF116") __attribute__((section("sfrs")));

extern volatile unsigned int OFF117 __attribute__((section("sfrs")));
typedef struct {
  unsigned :1;
  unsigned VOFF:17;
} __OFF117bits_t;
extern volatile __OFF117bits_t OFF117bits __asm__ ("OFF117") __attribute__((section("sfrs")));

extern volatile unsigned int OFF118 __attribute__((section("sfrs")));
typedef struct {
  unsigned :1;
  unsigned VOFF:17;
} __OFF118bits_t;
extern volatile __OFF118bits_t OFF118bits __asm__ ("OFF118") __attribute__((section("sfrs")));

extern volatile unsigned int OFF119 __attribute__((section("sfrs")));
typedef struct {
  unsigned :1;
  unsigned VOFF:17;
} __OFF119bits_t;
extern volatile __OFF119bits_t OFF119bits __asm__ ("OFF119") __attribute__((section("sfrs")));

extern volatile unsigned int OFF120 __attribute__((section("sfrs")));
typedef struct {
  unsigned :1;
  unsigned VOFF:17;
} __OFF120bits_t;
extern volatile __OFF120bits_t OFF120bits __asm__ ("OFF120") __attribute__((section("sfrs")));

extern volatile unsigned int OFF121 __attribute__((section("sfrs")));
typedef struct {
  unsigned :1;
  unsigned VOFF:17;
} __OFF121bits_t;
extern volatile __OFF121bits_t OFF121bits __asm__ ("OFF121") __attribute__((section("sfrs")));

extern volatile unsigned int OFF122 __attribute__((section("sfrs")));
typedef struct {
  unsigned :1;
  unsigned VOFF:17;
} __OFF122bits_t;
extern volatile __OFF122bits_t OFF122bits __asm__ ("OFF122") __attribute__((section("sfrs")));

extern volatile unsigned int OFF123 __attribute__((section("sfrs")));
typedef struct {
  unsigned :1;
  unsigned VOFF:17;
} __OFF123bits_t;
extern volatile __OFF123bits_t OFF123bits __asm__ ("OFF123") __attribute__((section("sfrs")));

extern volatile unsigned int OFF124 __attribute__((section("sfrs")));
typedef struct {
  unsigned :1;
  unsigned VOFF:17;
} __OFF124bits_t;
extern volatile __OFF124bits_t OFF124bits __asm__ ("OFF124") __attribute__((section("sfrs")));

extern volatile unsigned int OFF128 __attribute__((section("sfrs")));
typedef struct {
  unsigned :1;
  unsigned VOFF:17;
} __OFF128bits_t;
extern volatile __OFF128bits_t OFF128bits __asm__ ("OFF128") __attribute__((section("sfrs")));

extern volatile unsigned int OFF129 __attribute__((section("sfrs")));
typedef struct {
  unsigned :1;
  unsigned VOFF:17;
} __OFF129bits_t;
extern volatile __OFF129bits_t OFF129bits __asm__ ("OFF129") __attribute__((section("sfrs")));

extern volatile unsigned int OFF130 __attribute__((section("sfrs")));
typedef struct {
  unsigned :1;
  unsigned VOFF:17;
} __OFF130bits_t;
extern volatile __OFF130bits_t OFF130bits __asm__ ("OFF130") __attribute__((section("sfrs")));

extern volatile unsigned int OFF131 __attribute__((section("sfrs")));
typedef struct {
  unsigned :1;
  unsigned VOFF:17;
} __OFF131bits_t;
extern volatile __OFF131bits_t OFF131bits __asm__ ("OFF131") __attribute__((section("sfrs")));

extern volatile unsigned int OFF132 __attribute__((section("sfrs")));
typedef struct {
  unsigned :1;
  unsigned VOFF:17;
} __OFF132bits_t;
extern volatile __OFF132bits_t OFF132bits __asm__ ("OFF132") __attribute__((section("sfrs")));

extern volatile unsigned int OFF133 __attribute__((section("sfrs")));
typedef struct {
  unsigned :1;
  unsigned VOFF:17;
} __OFF133bits_t;
extern volatile __OFF133bits_t OFF133bits __asm__ ("OFF133") __attribute__((section("sfrs")));

extern volatile unsigned int OFF134 __attribute__((section("sfrs")));
typedef struct {
  unsigned :1;
  unsigned VOFF:17;
} __OFF134bits_t;
extern volatile __OFF134bits_t OFF134bits __asm__ ("OFF134") __attribute__((section("sfrs")));

extern volatile unsigned int OFF135 __attribute__((section("sfrs")));
typedef struct {
  unsigned :1;
  unsigned VOFF:17;
} __OFF135bits_t;
extern volatile __OFF135bits_t OFF135bits __asm__ ("OFF135") __attribute__((section("sfrs")));

extern volatile unsigned int OFF136 __attribute__((section("sfrs")));
typedef struct {
  unsigned :1;
  unsigned VOFF:17;
} __OFF136bits_t;
extern volatile __OFF136bits_t OFF136bits __asm__ ("OFF136") __attribute__((section("sfrs")));

extern volatile unsigned int OFF137 __attribute__((section("sfrs")));
typedef struct {
  unsigned :1;
  unsigned VOFF:17;
} __OFF137bits_t;
extern volatile __OFF137bits_t OFF137bits __asm__ ("OFF137") __attribute__((section("sfrs")));

extern volatile unsigned int OFF138 __attribute__((section("sfrs")));
typedef struct {
  unsigned :1;
  unsigned VOFF:17;
} __OFF138bits_t;
extern volatile __OFF138bits_t OFF138bits __asm__ ("OFF138") __attribute__((section("sfrs")));

extern volatile unsigned int OFF139 __attribute__((section("sfrs")));
typedef struct {
  unsigned :1;
  unsigned VOFF:17;
} __OFF139bits_t;
extern volatile __OFF139bits_t OFF139bits __asm__ ("OFF139") __attribute__((section("sfrs")));

extern volatile unsigned int OFF140 __attribute__((section("sfrs")));
typedef struct {
  unsigned :1;
  unsigned VOFF:17;
} __OFF140bits_t;
extern volatile __OFF140bits_t OFF140bits __asm__ ("OFF140") __attribute__((section("sfrs")));

extern volatile unsigned int OFF141 __attribute__((section("sfrs")));
typedef struct {
  unsigned :1;
  unsigned VOFF:17;
} __OFF141bits_t;
extern volatile __OFF141bits_t OFF141bits __asm__ ("OFF141") __attribute__((section("sfrs")));

extern volatile unsigned int OFF142 __attribute__((section("sfrs")));
typedef struct {
  unsigned :1;
  unsigned VOFF:17;
} __OFF142bits_t;
extern volatile __OFF142bits_t OFF142bits __asm__ ("OFF142") __attribute__((section("sfrs")));

extern volatile unsigned int OFF143 __attribute__((section("sfrs")));
typedef struct {
  unsigned :1;
  unsigned VOFF:17;
} __OFF143bits_t;
extern volatile __OFF143bits_t OFF143bits __asm__ ("OFF143") __attribute__((section("sfrs")));

extern volatile unsigned int OFF144 __attribute__((section("sfrs")));
typedef struct {
  unsigned :1;
  unsigned VOFF:17;
} __OFF144bits_t;
extern volatile __OFF144bits_t OFF144bits __asm__ ("OFF144") __attribute__((section("sfrs")));

extern volatile unsigned int OFF145 __attribute__((section("sfrs")));
typedef struct {
  unsigned :1;
  unsigned VOFF:17;
} __OFF145bits_t;
extern volatile __OFF145bits_t OFF145bits __asm__ ("OFF145") __attribute__((section("sfrs")));

extern volatile unsigned int OFF146 __attribute__((section("sfrs")));
typedef struct {
  unsigned :1;
  unsigned VOFF:17;
} __OFF146bits_t;
extern volatile __OFF146bits_t OFF146bits __asm__ ("OFF146") __attribute__((section("sfrs")));

extern volatile unsigned int OFF147 __attribute__((section("sfrs")));
typedef struct {
  unsigned :1;
  unsigned VOFF:17;
} __OFF147bits_t;
extern volatile __OFF147bits_t OFF147bits __asm__ ("OFF147") __attribute__((section("sfrs")));

extern volatile unsigned int OFF148 __attribute__((section("sfrs")));
typedef struct {
  unsigned :1;
  unsigned VOFF:17;
} __OFF148bits_t;
extern volatile __OFF148bits_t OFF148bits __asm__ ("OFF148") __attribute__((section("sfrs")));

extern volatile unsigned int OFF149 __attribute__((section("sfrs")));
typedef struct {
  unsigned :1;
  unsigned VOFF:17;
} __OFF149bits_t;
extern volatile __OFF149bits_t OFF149bits __asm__ ("OFF149") __attribute__((section("sfrs")));

extern volatile unsigned int OFF150 __attribute__((section("sfrs")));
typedef struct {
  unsigned :1;
  unsigned VOFF:17;
} __OFF150bits_t;
extern volatile __OFF150bits_t OFF150bits __asm__ ("OFF150") __attribute__((section("sfrs")));

extern volatile unsigned int OFF153 __attribute__((section("sfrs")));
typedef struct {
  unsigned :1;
  unsigned VOFF:17;
} __OFF153bits_t;
extern volatile __OFF153bits_t OFF153bits __asm__ ("OFF153") __attribute__((section("sfrs")));

extern volatile unsigned int OFF154 __attribute__((section("sfrs")));
typedef struct {
  unsigned :1;
  unsigned VOFF:17;
} __OFF154bits_t;
extern volatile __OFF154bits_t OFF154bits __asm__ ("OFF154") __attribute__((section("sfrs")));

extern volatile unsigned int OFF155 __attribute__((section("sfrs")));
typedef struct {
  unsigned :1;
  unsigned VOFF:17;
} __OFF155bits_t;
extern volatile __OFF155bits_t OFF155bits __asm__ ("OFF155") __attribute__((section("sfrs")));

extern volatile unsigned int OFF156 __attribute__((section("sfrs")));
typedef struct {
  unsigned :1;
  unsigned VOFF:17;
} __OFF156bits_t;
extern volatile __OFF156bits_t OFF156bits __asm__ ("OFF156") __attribute__((section("sfrs")));

extern volatile unsigned int OFF157 __attribute__((section("sfrs")));
typedef struct {
  unsigned :1;
  unsigned VOFF:17;
} __OFF157bits_t;
extern volatile __OFF157bits_t OFF157bits __asm__ ("OFF157") __attribute__((section("sfrs")));

extern volatile unsigned int OFF158 __attribute__((section("sfrs")));
typedef struct {
  unsigned :1;
  unsigned VOFF:17;
} __OFF158bits_t;
extern volatile __OFF158bits_t OFF158bits __asm__ ("OFF158") __attribute__((section("sfrs")));

extern volatile unsigned int OFF159 __attribute__((section("sfrs")));
typedef struct {
  unsigned :1;
  unsigned VOFF:17;
} __OFF159bits_t;
extern volatile __OFF159bits_t OFF159bits __asm__ ("OFF159") __attribute__((section("sfrs")));

extern volatile unsigned int OFF160 __attribute__((section("sfrs")));
typedef struct {
  unsigned :1;
  unsigned VOFF:17;
} __OFF160bits_t;
extern volatile __OFF160bits_t OFF160bits __asm__ ("OFF160") __attribute__((section("sfrs")));

extern volatile unsigned int OFF161 __attribute__((section("sfrs")));
typedef struct {
  unsigned :1;
  unsigned VOFF:17;
} __OFF161bits_t;
extern volatile __OFF161bits_t OFF161bits __asm__ ("OFF161") __attribute__((section("sfrs")));

extern volatile unsigned int OFF162 __attribute__((section("sfrs")));
typedef struct {
  unsigned :1;
  unsigned VOFF:17;
} __OFF162bits_t;
extern volatile __OFF162bits_t OFF162bits __asm__ ("OFF162") __attribute__((section("sfrs")));

extern volatile unsigned int OFF163 __attribute__((section("sfrs")));
typedef struct {
  unsigned :1;
  unsigned VOFF:17;
} __OFF163bits_t;
extern volatile __OFF163bits_t OFF163bits __asm__ ("OFF163") __attribute__((section("sfrs")));

extern volatile unsigned int OFF164 __attribute__((section("sfrs")));
typedef struct {
  unsigned :1;
  unsigned VOFF:17;
} __OFF164bits_t;
extern volatile __OFF164bits_t OFF164bits __asm__ ("OFF164") __attribute__((section("sfrs")));

extern volatile unsigned int OFF165 __attribute__((section("sfrs")));
typedef struct {
  unsigned :1;
  unsigned VOFF:17;
} __OFF165bits_t;
extern volatile __OFF165bits_t OFF165bits __asm__ ("OFF165") __attribute__((section("sfrs")));

extern volatile unsigned int OFF166 __attribute__((section("sfrs")));
typedef struct {
  unsigned :1;
  unsigned VOFF:17;
} __OFF166bits_t;
extern volatile __OFF166bits_t OFF166bits __asm__ ("OFF166") __attribute__((section("sfrs")));

extern volatile unsigned int OFF167 __attribute__((section("sfrs")));
typedef struct {
  unsigned :1;
  unsigned VOFF:17;
} __OFF167bits_t;
extern volatile __OFF167bits_t OFF167bits __asm__ ("OFF167") __attribute__((section("sfrs")));

extern volatile unsigned int OFF168 __attribute__((section("sfrs")));
typedef struct {
  unsigned :1;
  unsigned VOFF:17;
} __OFF168bits_t;
extern volatile __OFF168bits_t OFF168bits __asm__ ("OFF168") __attribute__((section("sfrs")));

extern volatile unsigned int OFF169 __attribute__((section("sfrs")));
typedef struct {
  unsigned :1;
  unsigned VOFF:17;
} __OFF169bits_t;
extern volatile __OFF169bits_t OFF169bits __asm__ ("OFF169") __attribute__((section("sfrs")));

extern volatile unsigned int OFF170 __attribute__((section("sfrs")));
typedef struct {
  unsigned :1;
  unsigned VOFF:17;
} __OFF170bits_t;
extern volatile __OFF170bits_t OFF170bits __asm__ ("OFF170") __attribute__((section("sfrs")));

extern volatile unsigned int OFF171 __attribute__((section("sfrs")));
typedef struct {
  unsigned :1;
  unsigned VOFF:17;
} __OFF171bits_t;
extern volatile __OFF171bits_t OFF171bits __asm__ ("OFF171") __attribute__((section("sfrs")));

extern volatile unsigned int OFF172 __attribute__((section("sfrs")));
typedef struct {
  unsigned :1;
  unsigned VOFF:17;
} __OFF172bits_t;
extern volatile __OFF172bits_t OFF172bits __asm__ ("OFF172") __attribute__((section("sfrs")));

extern volatile unsigned int OFF173 __attribute__((section("sfrs")));
typedef struct {
  unsigned :1;
  unsigned VOFF:17;
} __OFF173bits_t;
extern volatile __OFF173bits_t OFF173bits __asm__ ("OFF173") __attribute__((section("sfrs")));

extern volatile unsigned int OFF174 __attribute__((section("sfrs")));
typedef struct {
  unsigned :1;
  unsigned VOFF:17;
} __OFF174bits_t;
extern volatile __OFF174bits_t OFF174bits __asm__ ("OFF174") __attribute__((section("sfrs")));

extern volatile unsigned int OFF175 __attribute__((section("sfrs")));
typedef struct {
  unsigned :1;
  unsigned VOFF:17;
} __OFF175bits_t;
extern volatile __OFF175bits_t OFF175bits __asm__ ("OFF175") __attribute__((section("sfrs")));

extern volatile unsigned int OFF176 __attribute__((section("sfrs")));
typedef struct {
  unsigned :1;
  unsigned VOFF:17;
} __OFF176bits_t;
extern volatile __OFF176bits_t OFF176bits __asm__ ("OFF176") __attribute__((section("sfrs")));

extern volatile unsigned int OFF177 __attribute__((section("sfrs")));
typedef struct {
  unsigned :1;
  unsigned VOFF:17;
} __OFF177bits_t;
extern volatile __OFF177bits_t OFF177bits __asm__ ("OFF177") __attribute__((section("sfrs")));

extern volatile unsigned int OFF178 __attribute__((section("sfrs")));
typedef struct {
  unsigned :1;
  unsigned VOFF:17;
} __OFF178bits_t;
extern volatile __OFF178bits_t OFF178bits __asm__ ("OFF178") __attribute__((section("sfrs")));

extern volatile unsigned int OFF179 __attribute__((section("sfrs")));
typedef struct {
  unsigned :1;
  unsigned VOFF:17;
} __OFF179bits_t;
extern volatile __OFF179bits_t OFF179bits __asm__ ("OFF179") __attribute__((section("sfrs")));

extern volatile unsigned int OFF180 __attribute__((section("sfrs")));
typedef struct {
  unsigned :1;
  unsigned VOFF:17;
} __OFF180bits_t;
extern volatile __OFF180bits_t OFF180bits __asm__ ("OFF180") __attribute__((section("sfrs")));

extern volatile unsigned int OFF181 __attribute__((section("sfrs")));
typedef struct {
  unsigned :1;
  unsigned VOFF:17;
} __OFF181bits_t;
extern volatile __OFF181bits_t OFF181bits __asm__ ("OFF181") __attribute__((section("sfrs")));

extern volatile unsigned int OFF182 __attribute__((section("sfrs")));
typedef struct {
  unsigned :1;
  unsigned VOFF:17;
} __OFF182bits_t;
extern volatile __OFF182bits_t OFF182bits __asm__ ("OFF182") __attribute__((section("sfrs")));

extern volatile unsigned int OFF183 __attribute__((section("sfrs")));
typedef struct {
  unsigned :1;
  unsigned VOFF:17;
} __OFF183bits_t;
extern volatile __OFF183bits_t OFF183bits __asm__ ("OFF183") __attribute__((section("sfrs")));

extern volatile unsigned int OFF184 __attribute__((section("sfrs")));
typedef struct {
  unsigned :1;
  unsigned VOFF:17;
} __OFF184bits_t;
extern volatile __OFF184bits_t OFF184bits __asm__ ("OFF184") __attribute__((section("sfrs")));

extern volatile unsigned int OFF185 __attribute__((section("sfrs")));
typedef struct {
  unsigned :1;
  unsigned VOFF:17;
} __OFF185bits_t;
extern volatile __OFF185bits_t OFF185bits __asm__ ("OFF185") __attribute__((section("sfrs")));

extern volatile unsigned int OFF186 __attribute__((section("sfrs")));
typedef struct {
  unsigned :1;
  unsigned VOFF:17;
} __OFF186bits_t;
extern volatile __OFF186bits_t OFF186bits __asm__ ("OFF186") __attribute__((section("sfrs")));

extern volatile unsigned int OFF187 __attribute__((section("sfrs")));
typedef struct {
  unsigned :1;
  unsigned VOFF:17;
} __OFF187bits_t;
extern volatile __OFF187bits_t OFF187bits __asm__ ("OFF187") __attribute__((section("sfrs")));

extern volatile unsigned int OFF188 __attribute__((section("sfrs")));
typedef struct {
  unsigned :1;
  unsigned VOFF:17;
} __OFF188bits_t;
extern volatile __OFF188bits_t OFF188bits __asm__ ("OFF188") __attribute__((section("sfrs")));

extern volatile unsigned int OFF189 __attribute__((section("sfrs")));
typedef struct {
  unsigned :1;
  unsigned VOFF:17;
} __OFF189bits_t;
extern volatile __OFF189bits_t OFF189bits __asm__ ("OFF189") __attribute__((section("sfrs")));

extern volatile unsigned int OFF190 __attribute__((section("sfrs")));
typedef struct {
  unsigned :1;
  unsigned VOFF:17;
} __OFF190bits_t;
extern volatile __OFF190bits_t OFF190bits __asm__ ("OFF190") __attribute__((section("sfrs")));

extern volatile unsigned int OFF192 __attribute__((section("sfrs")));
typedef struct {
  unsigned :1;
  unsigned VOFF:17;
} __OFF192bits_t;
extern volatile __OFF192bits_t OFF192bits __asm__ ("OFF192") __attribute__((section("sfrs")));

extern volatile unsigned int OFF193 __attribute__((section("sfrs")));
typedef struct {
  unsigned :1;
  unsigned VOFF:17;
} __OFF193bits_t;
extern volatile __OFF193bits_t OFF193bits __asm__ ("OFF193") __attribute__((section("sfrs")));

extern volatile unsigned int OFF194 __attribute__((section("sfrs")));
typedef struct {
  unsigned :1;
  unsigned VOFF:17;
} __OFF194bits_t;
extern volatile __OFF194bits_t OFF194bits __asm__ ("OFF194") __attribute__((section("sfrs")));

extern volatile unsigned int OFF196 __attribute__((section("sfrs")));
typedef struct {
  unsigned :1;
  unsigned VOFF:17;
} __OFF196bits_t;
extern volatile __OFF196bits_t OFF196bits __asm__ ("OFF196") __attribute__((section("sfrs")));

extern volatile unsigned int OFF198 __attribute__((section("sfrs")));
typedef struct {
  unsigned :1;
  unsigned VOFF:17;
} __OFF198bits_t;
extern volatile __OFF198bits_t OFF198bits __asm__ ("OFF198") __attribute__((section("sfrs")));

extern volatile unsigned int OFF199 __attribute__((section("sfrs")));
typedef struct {
  unsigned :1;
  unsigned VOFF:17;
} __OFF199bits_t;
extern volatile __OFF199bits_t OFF199bits __asm__ ("OFF199") __attribute__((section("sfrs")));

extern volatile unsigned int OFF200 __attribute__((section("sfrs")));
typedef struct {
  unsigned :1;
  unsigned VOFF:17;
} __OFF200bits_t;
extern volatile __OFF200bits_t OFF200bits __asm__ ("OFF200") __attribute__((section("sfrs")));

extern volatile unsigned int OFF201 __attribute__((section("sfrs")));
typedef struct {
  unsigned :1;
  unsigned VOFF:17;
} __OFF201bits_t;
extern volatile __OFF201bits_t OFF201bits __asm__ ("OFF201") __attribute__((section("sfrs")));

extern volatile unsigned int OFF202 __attribute__((section("sfrs")));
typedef struct {
  unsigned :1;
  unsigned VOFF:17;
} __OFF202bits_t;
extern volatile __OFF202bits_t OFF202bits __asm__ ("OFF202") __attribute__((section("sfrs")));

extern volatile unsigned int OFF205 __attribute__((section("sfrs")));
typedef struct {
  unsigned :1;
  unsigned VOFF:17;
} __OFF205bits_t;
extern volatile __OFF205bits_t OFF205bits __asm__ ("OFF205") __attribute__((section("sfrs")));

extern volatile unsigned int OFF206 __attribute__((section("sfrs")));
typedef struct {
  unsigned :1;
  unsigned VOFF:17;
} __OFF206bits_t;
extern volatile __OFF206bits_t OFF206bits __asm__ ("OFF206") __attribute__((section("sfrs")));

extern volatile unsigned int OFF207 __attribute__((section("sfrs")));
typedef struct {
  unsigned :1;
  unsigned VOFF:17;
} __OFF207bits_t;
extern volatile __OFF207bits_t OFF207bits __asm__ ("OFF207") __attribute__((section("sfrs")));

extern volatile unsigned int OFF208 __attribute__((section("sfrs")));
typedef struct {
  unsigned :1;
  unsigned VOFF:17;
} __OFF208bits_t;
extern volatile __OFF208bits_t OFF208bits __asm__ ("OFF208") __attribute__((section("sfrs")));

extern volatile unsigned int OFF209 __attribute__((section("sfrs")));
typedef struct {
  unsigned :1;
  unsigned VOFF:17;
} __OFF209bits_t;
extern volatile __OFF209bits_t OFF209bits __asm__ ("OFF209") __attribute__((section("sfrs")));

extern volatile unsigned int OFF210 __attribute__((section("sfrs")));
typedef struct {
  unsigned :1;
  unsigned VOFF:17;
} __OFF210bits_t;
extern volatile __OFF210bits_t OFF210bits __asm__ ("OFF210") __attribute__((section("sfrs")));

extern volatile unsigned int OFF213 __attribute__((section("sfrs")));
typedef struct {
  unsigned :1;
  unsigned VOFF:17;
} __OFF213bits_t;
extern volatile __OFF213bits_t OFF213bits __asm__ ("OFF213") __attribute__((section("sfrs")));

extern volatile unsigned int DMACON __attribute__((section("sfrs")));
typedef struct {
  unsigned :11;
  unsigned DMABUSY:1;
  unsigned SUSPEND:1;
  unsigned :2;
  unsigned ON:1;
} __DMACONbits_t;
extern volatile __DMACONbits_t DMACONbits __asm__ ("DMACON") __attribute__((section("sfrs")));
extern volatile unsigned int DMACONCLR __attribute__((section("sfrs")));
extern volatile unsigned int DMACONSET __attribute__((section("sfrs")));
extern volatile unsigned int DMACONINV __attribute__((section("sfrs")));

extern volatile unsigned int DMASTAT __attribute__((section("sfrs")));
typedef struct {
  unsigned DMACH:3;
  unsigned :28;
  unsigned RDWR:1;
} __DMASTATbits_t;
extern volatile __DMASTATbits_t DMASTATbits __asm__ ("DMASTAT") __attribute__((section("sfrs")));
extern volatile unsigned int DMASTATCLR __attribute__((section("sfrs")));
extern volatile unsigned int DMASTATSET __attribute__((section("sfrs")));
extern volatile unsigned int DMASTATINV __attribute__((section("sfrs")));

extern volatile unsigned int DMAADDR __attribute__((section("sfrs")));
typedef struct {
  unsigned DMAADDR:32;
} __DMAADDRbits_t;
extern volatile __DMAADDRbits_t DMAADDRbits __asm__ ("DMAADDR") __attribute__((section("sfrs")));
extern volatile unsigned int DMAADDRCLR __attribute__((section("sfrs")));
extern volatile unsigned int DMAADDRSET __attribute__((section("sfrs")));
extern volatile unsigned int DMAADDRINV __attribute__((section("sfrs")));

extern volatile unsigned int DCRCCON __attribute__((section("sfrs")));
typedef struct {
  unsigned CRCCH:3;
  unsigned :2;
  unsigned CRCTYP:1;
  unsigned CRCAPP:1;
  unsigned CRCEN:1;
  unsigned PLEN:5;
  unsigned :11;
  unsigned BITO:1;
  unsigned :2;
  unsigned WBO:1;
  unsigned BYTO:2;
} __DCRCCONbits_t;
extern volatile __DCRCCONbits_t DCRCCONbits __asm__ ("DCRCCON") __attribute__((section("sfrs")));
extern volatile unsigned int DCRCCONCLR __attribute__((section("sfrs")));
extern volatile unsigned int DCRCCONSET __attribute__((section("sfrs")));
extern volatile unsigned int DCRCCONINV __attribute__((section("sfrs")));

extern volatile unsigned int DCRCDATA __attribute__((section("sfrs")));
typedef struct {
  unsigned DCRCDATA:32;
} __DCRCDATAbits_t;
extern volatile __DCRCDATAbits_t DCRCDATAbits __asm__ ("DCRCDATA") __attribute__((section("sfrs")));
extern volatile unsigned int DCRCDATACLR __attribute__((section("sfrs")));
extern volatile unsigned int DCRCDATASET __attribute__((section("sfrs")));
extern volatile unsigned int DCRCDATAINV __attribute__((section("sfrs")));

extern volatile unsigned int DCRCXOR __attribute__((section("sfrs")));
typedef struct {
  unsigned DCRCXOR:32;
} __DCRCXORbits_t;
extern volatile __DCRCXORbits_t DCRCXORbits __asm__ ("DCRCXOR") __attribute__((section("sfrs")));
extern volatile unsigned int DCRCXORCLR __attribute__((section("sfrs")));
extern volatile unsigned int DCRCXORSET __attribute__((section("sfrs")));
extern volatile unsigned int DCRCXORINV __attribute__((section("sfrs")));

extern volatile unsigned int DCH0CON __attribute__((section("sfrs")));
typedef struct {
  unsigned CHPRI:2;
  unsigned CHEDET:1;
  unsigned :1;
  unsigned CHAEN:1;
  unsigned CHCHN:1;
  unsigned CHAED:1;
  unsigned CHEN:1;
  unsigned CHCHNS:1;
  unsigned :2;
  unsigned CHPATLEN:1;
  unsigned :1;
  unsigned CHPIGNEN:1;
  unsigned :1;
  unsigned CHBUSY:1;
  unsigned :8;
  unsigned CHPIGN:8;
} __DCH0CONbits_t;
extern volatile __DCH0CONbits_t DCH0CONbits __asm__ ("DCH0CON") __attribute__((section("sfrs")));
extern volatile unsigned int DCH0CONCLR __attribute__((section("sfrs")));
extern volatile unsigned int DCH0CONSET __attribute__((section("sfrs")));
extern volatile unsigned int DCH0CONINV __attribute__((section("sfrs")));

extern volatile unsigned int DCH0ECON __attribute__((section("sfrs")));
typedef struct {
  unsigned :3;
  unsigned AIRQEN:1;
  unsigned SIRQEN:1;
  unsigned PATEN:1;
  unsigned CABORT:1;
  unsigned CFORCE:1;
  unsigned CHSIRQ:8;
  unsigned CHAIRQ:8;
} __DCH0ECONbits_t;
extern volatile __DCH0ECONbits_t DCH0ECONbits __asm__ ("DCH0ECON") __attribute__((section("sfrs")));
extern volatile unsigned int DCH0ECONCLR __attribute__((section("sfrs")));
extern volatile unsigned int DCH0ECONSET __attribute__((section("sfrs")));
extern volatile unsigned int DCH0ECONINV __attribute__((section("sfrs")));

extern volatile unsigned int DCH0INT __attribute__((section("sfrs")));
typedef struct {
  unsigned CHERIF:1;
  unsigned CHTAIF:1;
  unsigned CHCCIF:1;
  unsigned CHBCIF:1;
  unsigned CHDHIF:1;
  unsigned CHDDIF:1;
  unsigned CHSHIF:1;
  unsigned CHSDIF:1;
  unsigned :8;
  unsigned CHERIE:1;
  unsigned CHTAIE:1;
  unsigned CHCCIE:1;
  unsigned CHBCIE:1;
  unsigned CHDHIE:1;
  unsigned CHDDIE:1;
  unsigned CHSHIE:1;
  unsigned CHSDIE:1;
} __DCH0INTbits_t;
extern volatile __DCH0INTbits_t DCH0INTbits __asm__ ("DCH0INT") __attribute__((section("sfrs")));
extern volatile unsigned int DCH0INTCLR __attribute__((section("sfrs")));
extern volatile unsigned int DCH0INTSET __attribute__((section("sfrs")));
extern volatile unsigned int DCH0INTINV __attribute__((section("sfrs")));

extern volatile unsigned int DCH0SSA __attribute__((section("sfrs")));
typedef struct {
  unsigned CHSSA:32;
} __DCH0SSAbits_t;
extern volatile __DCH0SSAbits_t DCH0SSAbits __asm__ ("DCH0SSA") __attribute__((section("sfrs")));
extern volatile unsigned int DCH0SSACLR __attribute__((section("sfrs")));
extern volatile unsigned int DCH0SSASET __attribute__((section("sfrs")));
extern volatile unsigned int DCH0SSAINV __attribute__((section("sfrs")));

extern volatile unsigned int DCH0DSA __attribute__((section("sfrs")));
typedef struct {
  unsigned CHDSA:32;
} __DCH0DSAbits_t;
extern volatile __DCH0DSAbits_t DCH0DSAbits __asm__ ("DCH0DSA") __attribute__((section("sfrs")));
extern volatile unsigned int DCH0DSACLR __attribute__((section("sfrs")));
extern volatile unsigned int DCH0DSASET __attribute__((section("sfrs")));
extern volatile unsigned int DCH0DSAINV __attribute__((section("sfrs")));

extern volatile unsigned int DCH0SSIZ __attribute__((section("sfrs")));
typedef struct {
  unsigned CHSSIZ:16;
} __DCH0SSIZbits_t;
extern volatile __DCH0SSIZbits_t DCH0SSIZbits __asm__ ("DCH0SSIZ") __attribute__((section("sfrs")));
extern volatile unsigned int DCH0SSIZCLR __attribute__((section("sfrs")));
extern volatile unsigned int DCH0SSIZSET __attribute__((section("sfrs")));
extern volatile unsigned int DCH0SSIZINV __attribute__((section("sfrs")));

extern volatile unsigned int DCH0DSIZ __attribute__((section("sfrs")));
typedef struct {
  unsigned CHDSIZ:16;
} __DCH0DSIZbits_t;
extern volatile __DCH0DSIZbits_t DCH0DSIZbits __asm__ ("DCH0DSIZ") __attribute__((section("sfrs")));
extern volatile unsigned int DCH0DSIZCLR __attribute__((section("sfrs")));
extern volatile unsigned int DCH0DSIZSET __attribute__((section("sfrs")));
extern volatile unsigned int DCH0DSIZINV __attribute__((section("sfrs")));

extern volatile unsigned int DCH0SPTR __attribute__((section("sfrs")));
typedef struct {
  unsigned CHSPTR:16;
} __DCH0SPTRbits_t;
extern volatile __DCH0SPTRbits_t DCH0SPTRbits __asm__ ("DCH0SPTR") __attribute__((section("sfrs")));
extern volatile unsigned int DCH0SPTRCLR __attribute__((section("sfrs")));
extern volatile unsigned int DCH0SPTRSET __attribute__((section("sfrs")));
extern volatile unsigned int DCH0SPTRINV __attribute__((section("sfrs")));

extern volatile unsigned int DCH0DPTR __attribute__((section("sfrs")));
typedef struct {
  unsigned CHDPTR:16;
} __DCH0DPTRbits_t;
extern volatile __DCH0DPTRbits_t DCH0DPTRbits __asm__ ("DCH0DPTR") __attribute__((section("sfrs")));
extern volatile unsigned int DCH0DPTRCLR __attribute__((section("sfrs")));
extern volatile unsigned int DCH0DPTRSET __attribute__((section("sfrs")));
extern volatile unsigned int DCH0DPTRINV __attribute__((section("sfrs")));

extern volatile unsigned int DCH0CSIZ __attribute__((section("sfrs")));
typedef struct {
  unsigned CHCSIZ:16;
} __DCH0CSIZbits_t;
extern volatile __DCH0CSIZbits_t DCH0CSIZbits __asm__ ("DCH0CSIZ") __attribute__((section("sfrs")));
extern volatile unsigned int DCH0CSIZCLR __attribute__((section("sfrs")));
extern volatile unsigned int DCH0CSIZSET __attribute__((section("sfrs")));
extern volatile unsigned int DCH0CSIZINV __attribute__((section("sfrs")));

extern volatile unsigned int DCH0CPTR __attribute__((section("sfrs")));
typedef struct {
  unsigned CHCPTR:16;
} __DCH0CPTRbits_t;
extern volatile __DCH0CPTRbits_t DCH0CPTRbits __asm__ ("DCH0CPTR") __attribute__((section("sfrs")));

extern volatile unsigned int DCS0CPTR __attribute__((section("sfrs")));
typedef struct {
  unsigned CHCPTR:16;
} __DCS0CPTRbits_t;
extern volatile __DCS0CPTRbits_t DCS0CPTRbits __asm__ ("DCS0CPTR") __attribute__((section("sfrs")));
extern volatile unsigned int DCH0CPTRCLR __attribute__((section("sfrs")));
extern volatile unsigned int DCS0CPTRCLR __attribute__((section("sfrs")));
extern volatile unsigned int DCH0CPTRSET __attribute__((section("sfrs")));
extern volatile unsigned int DCS0CPTRSET __attribute__((section("sfrs")));
extern volatile unsigned int DCH0CPTRINV __attribute__((section("sfrs")));
extern volatile unsigned int DCS0CPTRINV __attribute__((section("sfrs")));

extern volatile unsigned int DCH0DAT __attribute__((section("sfrs")));
typedef struct {
  unsigned CHPDAT:16;
} __DCH0DATbits_t;
extern volatile __DCH0DATbits_t DCH0DATbits __asm__ ("DCH0DAT") __attribute__((section("sfrs")));
extern volatile unsigned int DCH0DATCLR __attribute__((section("sfrs")));
extern volatile unsigned int DCH0DATSET __attribute__((section("sfrs")));
extern volatile unsigned int DCH0DATINV __attribute__((section("sfrs")));

extern volatile unsigned int DCH1CON __attribute__((section("sfrs")));
typedef struct {
  unsigned CHPRI:2;
  unsigned CHEDET:1;
  unsigned :1;
  unsigned CHAEN:1;
  unsigned CHCHN:1;
  unsigned CHAED:1;
  unsigned CHEN:1;
  unsigned CHCHNS:1;
  unsigned :2;
  unsigned CHPATLEN:1;
  unsigned :1;
  unsigned CHPIGNEN:1;
  unsigned :1;
  unsigned CHBUSY:1;
  unsigned :8;
  unsigned CHPIGN:8;
} __DCH1CONbits_t;
extern volatile __DCH1CONbits_t DCH1CONbits __asm__ ("DCH1CON") __attribute__((section("sfrs")));
extern volatile unsigned int DCH1CONCLR __attribute__((section("sfrs")));
extern volatile unsigned int DCH1CONSET __attribute__((section("sfrs")));
extern volatile unsigned int DCH1CONINV __attribute__((section("sfrs")));

extern volatile unsigned int DCH1ECON __attribute__((section("sfrs")));
typedef struct {
  unsigned :3;
  unsigned AIRQEN:1;
  unsigned SIRQEN:1;
  unsigned PATEN:1;
  unsigned CABORT:1;
  unsigned CFORCE:1;
  unsigned CHSIRQ:8;
  unsigned CHAIRQ:8;
} __DCH1ECONbits_t;
extern volatile __DCH1ECONbits_t DCH1ECONbits __asm__ ("DCH1ECON") __attribute__((section("sfrs")));
extern volatile unsigned int DCH1ECONCLR __attribute__((section("sfrs")));
extern volatile unsigned int DCH1ECONSET __attribute__((section("sfrs")));
extern volatile unsigned int DCH1ECONINV __attribute__((section("sfrs")));

extern volatile unsigned int DCH1INT __attribute__((section("sfrs")));
typedef struct {
  unsigned CHERIF:1;
  unsigned CHTAIF:1;
  unsigned CHCCIF:1;
  unsigned CHBCIF:1;
  unsigned CHDHIF:1;
  unsigned CHDDIF:1;
  unsigned CHSHIF:1;
  unsigned CHSDIF:1;
  unsigned :8;
  unsigned CHERIE:1;
  unsigned CHTAIE:1;
  unsigned CHCCIE:1;
  unsigned CHBCIE:1;
  unsigned CHDHIE:1;
  unsigned CHDDIE:1;
  unsigned CHSHIE:1;
  unsigned CHSDIE:1;
} __DCH1INTbits_t;
extern volatile __DCH1INTbits_t DCH1INTbits __asm__ ("DCH1INT") __attribute__((section("sfrs")));
extern volatile unsigned int DCH1INTCLR __attribute__((section("sfrs")));
extern volatile unsigned int DCH1INTSET __attribute__((section("sfrs")));
extern volatile unsigned int DCH1INTINV __attribute__((section("sfrs")));

extern volatile unsigned int DCH1SSA __attribute__((section("sfrs")));
typedef struct {
  unsigned CHSSA:32;
} __DCH1SSAbits_t;
extern volatile __DCH1SSAbits_t DCH1SSAbits __asm__ ("DCH1SSA") __attribute__((section("sfrs")));
extern volatile unsigned int DCH1SSACLR __attribute__((section("sfrs")));
extern volatile unsigned int DCH1SSASET __attribute__((section("sfrs")));
extern volatile unsigned int DCH1SSAINV __attribute__((section("sfrs")));

extern volatile unsigned int DCH1DSA __attribute__((section("sfrs")));
typedef struct {
  unsigned CHDSA:32;
} __DCH1DSAbits_t;
extern volatile __DCH1DSAbits_t DCH1DSAbits __asm__ ("DCH1DSA") __attribute__((section("sfrs")));
extern volatile unsigned int DCH1DSACLR __attribute__((section("sfrs")));
extern volatile unsigned int DCH1DSASET __attribute__((section("sfrs")));
extern volatile unsigned int DCH1DSAINV __attribute__((section("sfrs")));

extern volatile unsigned int DCH1SSIZ __attribute__((section("sfrs")));
typedef struct {
  unsigned CHSSIZ:16;
} __DCH1SSIZbits_t;
extern volatile __DCH1SSIZbits_t DCH1SSIZbits __asm__ ("DCH1SSIZ") __attribute__((section("sfrs")));
extern volatile unsigned int DCH1SSIZCLR __attribute__((section("sfrs")));
extern volatile unsigned int DCH1SSIZSET __attribute__((section("sfrs")));
extern volatile unsigned int DCH1SSIZINV __attribute__((section("sfrs")));

extern volatile unsigned int DCH1DSIZ __attribute__((section("sfrs")));
typedef struct {
  unsigned CHDSIZ:16;
} __DCH1DSIZbits_t;
extern volatile __DCH1DSIZbits_t DCH1DSIZbits __asm__ ("DCH1DSIZ") __attribute__((section("sfrs")));
extern volatile unsigned int DCH1DSIZCLR __attribute__((section("sfrs")));
extern volatile unsigned int DCH1DSIZSET __attribute__((section("sfrs")));
extern volatile unsigned int DCH1DSIZINV __attribute__((section("sfrs")));

extern volatile unsigned int DCH1SPTR __attribute__((section("sfrs")));
typedef struct {
  unsigned CHSPTR:16;
} __DCH1SPTRbits_t;
extern volatile __DCH1SPTRbits_t DCH1SPTRbits __asm__ ("DCH1SPTR") __attribute__((section("sfrs")));
extern volatile unsigned int DCH1SPTRCLR __attribute__((section("sfrs")));
extern volatile unsigned int DCH1SPTRSET __attribute__((section("sfrs")));
extern volatile unsigned int DCH1SPTRINV __attribute__((section("sfrs")));

extern volatile unsigned int DCH1DPTR __attribute__((section("sfrs")));
typedef struct {
  unsigned CHDPTR:16;
} __DCH1DPTRbits_t;
extern volatile __DCH1DPTRbits_t DCH1DPTRbits __asm__ ("DCH1DPTR") __attribute__((section("sfrs")));
extern volatile unsigned int DCH1DPTRCLR __attribute__((section("sfrs")));
extern volatile unsigned int DCH1DPTRSET __attribute__((section("sfrs")));
extern volatile unsigned int DCH1DPTRINV __attribute__((section("sfrs")));

extern volatile unsigned int DCH1CSIZ __attribute__((section("sfrs")));
typedef struct {
  unsigned CHCSIZ:16;
} __DCH1CSIZbits_t;
extern volatile __DCH1CSIZbits_t DCH1CSIZbits __asm__ ("DCH1CSIZ") __attribute__((section("sfrs")));
extern volatile unsigned int DCH1CSIZCLR __attribute__((section("sfrs")));
extern volatile unsigned int DCH1CSIZSET __attribute__((section("sfrs")));
extern volatile unsigned int DCH1CSIZINV __attribute__((section("sfrs")));

extern volatile unsigned int DCH1CPTR __attribute__((section("sfrs")));
typedef struct {
  unsigned CHCPTR:16;
} __DCH1CPTRbits_t;
extern volatile __DCH1CPTRbits_t DCH1CPTRbits __asm__ ("DCH1CPTR") __attribute__((section("sfrs")));

extern volatile unsigned int DCS1CPTR __attribute__((section("sfrs")));
typedef struct {
  unsigned CHCPTR:16;
} __DCS1CPTRbits_t;
extern volatile __DCS1CPTRbits_t DCS1CPTRbits __asm__ ("DCS1CPTR") __attribute__((section("sfrs")));
extern volatile unsigned int DCH1CPTRCLR __attribute__((section("sfrs")));
extern volatile unsigned int DCS1CPTRCLR __attribute__((section("sfrs")));
extern volatile unsigned int DCH1CPTRSET __attribute__((section("sfrs")));
extern volatile unsigned int DCS1CPTRSET __attribute__((section("sfrs")));
extern volatile unsigned int DCH1CPTRINV __attribute__((section("sfrs")));
extern volatile unsigned int DCS1CPTRINV __attribute__((section("sfrs")));

extern volatile unsigned int DCH1DAT __attribute__((section("sfrs")));
typedef struct {
  unsigned CHPDAT:16;
} __DCH1DATbits_t;
extern volatile __DCH1DATbits_t DCH1DATbits __asm__ ("DCH1DAT") __attribute__((section("sfrs")));
extern volatile unsigned int DCH1DATCLR __attribute__((section("sfrs")));
extern volatile unsigned int DCH1DATSET __attribute__((section("sfrs")));
extern volatile unsigned int DCH1DATINV __attribute__((section("sfrs")));

extern volatile unsigned int DCH2CON __attribute__((section("sfrs")));
typedef struct {
  unsigned CHPRI:2;
  unsigned CHEDET:1;
  unsigned :1;
  unsigned CHAEN:1;
  unsigned CHCHN:1;
  unsigned CHAED:1;
  unsigned CHEN:1;
  unsigned CHCHNS:1;
  unsigned :2;
  unsigned CHPATLEN:1;
  unsigned :1;
  unsigned CHPIGNEN:1;
  unsigned :1;
  unsigned CHBUSY:1;
  unsigned :8;
  unsigned CHPIGN:8;
} __DCH2CONbits_t;
extern volatile __DCH2CONbits_t DCH2CONbits __asm__ ("DCH2CON") __attribute__((section("sfrs")));
extern volatile unsigned int DCH2CONCLR __attribute__((section("sfrs")));
extern volatile unsigned int DCH2CONSET __attribute__((section("sfrs")));
extern volatile unsigned int DCH2CONINV __attribute__((section("sfrs")));

extern volatile unsigned int DCH2ECON __attribute__((section("sfrs")));
typedef struct {
  unsigned :3;
  unsigned AIRQEN:1;
  unsigned SIRQEN:1;
  unsigned PATEN:1;
  unsigned CABORT:1;
  unsigned CFORCE:1;
  unsigned CHSIRQ:8;
  unsigned CHAIRQ:8;
} __DCH2ECONbits_t;
extern volatile __DCH2ECONbits_t DCH2ECONbits __asm__ ("DCH2ECON") __attribute__((section("sfrs")));
extern volatile unsigned int DCH2ECONCLR __attribute__((section("sfrs")));
extern volatile unsigned int DCH2ECONSET __attribute__((section("sfrs")));
extern volatile unsigned int DCH2ECONINV __attribute__((section("sfrs")));

extern volatile unsigned int DCH2INT __attribute__((section("sfrs")));
typedef struct {
  unsigned CHERIF:1;
  unsigned CHTAIF:1;
  unsigned CHCCIF:1;
  unsigned CHBCIF:1;
  unsigned CHDHIF:1;
  unsigned CHDDIF:1;
  unsigned CHSHIF:1;
  unsigned CHSDIF:1;
  unsigned :8;
  unsigned CHERIE:1;
  unsigned CHTAIE:1;
  unsigned CHCCIE:1;
  unsigned CHBCIE:1;
  unsigned CHDHIE:1;
  unsigned CHDDIE:1;
  unsigned CHSHIE:1;
  unsigned CHSDIE:1;
} __DCH2INTbits_t;
extern volatile __DCH2INTbits_t DCH2INTbits __asm__ ("DCH2INT") __attribute__((section("sfrs")));
extern volatile unsigned int DCH2INTCLR __attribute__((section("sfrs")));
extern volatile unsigned int DCH2INTSET __attribute__((section("sfrs")));
extern volatile unsigned int DCH2INTINV __attribute__((section("sfrs")));

extern volatile unsigned int DCH2SSA __attribute__((section("sfrs")));
typedef struct {
  unsigned CHSSA:32;
} __DCH2SSAbits_t;
extern volatile __DCH2SSAbits_t DCH2SSAbits __asm__ ("DCH2SSA") __attribute__((section("sfrs")));
extern volatile unsigned int DCH2SSACLR __attribute__((section("sfrs")));
extern volatile unsigned int DCH2SSASET __attribute__((section("sfrs")));
extern volatile unsigned int DCH2SSAINV __attribute__((section("sfrs")));

extern volatile unsigned int DCH2DSA __attribute__((section("sfrs")));
typedef struct {
  unsigned CHDSA:32;
} __DCH2DSAbits_t;
extern volatile __DCH2DSAbits_t DCH2DSAbits __asm__ ("DCH2DSA") __attribute__((section("sfrs")));
extern volatile unsigned int DCH2DSACLR __attribute__((section("sfrs")));
extern volatile unsigned int DCH2DSASET __attribute__((section("sfrs")));
extern volatile unsigned int DCH2DSAINV __attribute__((section("sfrs")));

extern volatile unsigned int DCH2SSIZ __attribute__((section("sfrs")));
typedef struct {
  unsigned CHSSIZ:16;
} __DCH2SSIZbits_t;
extern volatile __DCH2SSIZbits_t DCH2SSIZbits __asm__ ("DCH2SSIZ") __attribute__((section("sfrs")));
extern volatile unsigned int DCH2SSIZCLR __attribute__((section("sfrs")));
extern volatile unsigned int DCH2SSIZSET __attribute__((section("sfrs")));
extern volatile unsigned int DCH2SSIZINV __attribute__((section("sfrs")));

extern volatile unsigned int DCH2DSIZ __attribute__((section("sfrs")));
typedef struct {
  unsigned CHDSIZ:16;
} __DCH2DSIZbits_t;
extern volatile __DCH2DSIZbits_t DCH2DSIZbits __asm__ ("DCH2DSIZ") __attribute__((section("sfrs")));
extern volatile unsigned int DCH2DSIZCLR __attribute__((section("sfrs")));
extern volatile unsigned int DCH2DSIZSET __attribute__((section("sfrs")));
extern volatile unsigned int DCH2DSIZINV __attribute__((section("sfrs")));

extern volatile unsigned int DCH2SPTR __attribute__((section("sfrs")));
typedef struct {
  unsigned CHSPTR:16;
} __DCH2SPTRbits_t;
extern volatile __DCH2SPTRbits_t DCH2SPTRbits __asm__ ("DCH2SPTR") __attribute__((section("sfrs")));
extern volatile unsigned int DCH2SPTRCLR __attribute__((section("sfrs")));
extern volatile unsigned int DCH2SPTRSET __attribute__((section("sfrs")));
extern volatile unsigned int DCH2SPTRINV __attribute__((section("sfrs")));

extern volatile unsigned int DCH2DPTR __attribute__((section("sfrs")));
typedef struct {
  unsigned CHDPTR:16;
} __DCH2DPTRbits_t;
extern volatile __DCH2DPTRbits_t DCH2DPTRbits __asm__ ("DCH2DPTR") __attribute__((section("sfrs")));
extern volatile unsigned int DCH2DPTRCLR __attribute__((section("sfrs")));
extern volatile unsigned int DCH2DPTRSET __attribute__((section("sfrs")));
extern volatile unsigned int DCH2DPTRINV __attribute__((section("sfrs")));

extern volatile unsigned int DCH2CSIZ __attribute__((section("sfrs")));
typedef struct {
  unsigned CHCSIZ:16;
} __DCH2CSIZbits_t;
extern volatile __DCH2CSIZbits_t DCH2CSIZbits __asm__ ("DCH2CSIZ") __attribute__((section("sfrs")));
extern volatile unsigned int DCH2CSIZCLR __attribute__((section("sfrs")));
extern volatile unsigned int DCH2CSIZSET __attribute__((section("sfrs")));
extern volatile unsigned int DCH2CSIZINV __attribute__((section("sfrs")));

extern volatile unsigned int DCH2CPTR __attribute__((section("sfrs")));
typedef struct {
  unsigned CHCPTR:16;
} __DCH2CPTRbits_t;
extern volatile __DCH2CPTRbits_t DCH2CPTRbits __asm__ ("DCH2CPTR") __attribute__((section("sfrs")));

extern volatile unsigned int DCS2CPTR __attribute__((section("sfrs")));
typedef struct {
  unsigned CHCPTR:16;
} __DCS2CPTRbits_t;
extern volatile __DCS2CPTRbits_t DCS2CPTRbits __asm__ ("DCS2CPTR") __attribute__((section("sfrs")));
extern volatile unsigned int DCH2CPTRCLR __attribute__((section("sfrs")));
extern volatile unsigned int DCS2CPTRCLR __attribute__((section("sfrs")));
extern volatile unsigned int DCH2CPTRSET __attribute__((section("sfrs")));
extern volatile unsigned int DCS2CPTRSET __attribute__((section("sfrs")));
extern volatile unsigned int DCH2CPTRINV __attribute__((section("sfrs")));
extern volatile unsigned int DCS2CPTRINV __attribute__((section("sfrs")));

extern volatile unsigned int DCH2DAT __attribute__((section("sfrs")));
typedef struct {
  unsigned CHPDAT:16;
} __DCH2DATbits_t;
extern volatile __DCH2DATbits_t DCH2DATbits __asm__ ("DCH2DAT") __attribute__((section("sfrs")));
extern volatile unsigned int DCH2DATCLR __attribute__((section("sfrs")));
extern volatile unsigned int DCH2DATSET __attribute__((section("sfrs")));
extern volatile unsigned int DCH2DATINV __attribute__((section("sfrs")));

extern volatile unsigned int DCH3CON __attribute__((section("sfrs")));
typedef struct {
  unsigned CHPRI:2;
  unsigned CHEDET:1;
  unsigned :1;
  unsigned CHAEN:1;
  unsigned CHCHN:1;
  unsigned CHAED:1;
  unsigned CHEN:1;
  unsigned CHCHNS:1;
  unsigned :2;
  unsigned CHPATLEN:1;
  unsigned :1;
  unsigned CHPIGNEN:1;
  unsigned :1;
  unsigned CHBUSY:1;
  unsigned :8;
  unsigned CHPIGN:8;
} __DCH3CONbits_t;
extern volatile __DCH3CONbits_t DCH3CONbits __asm__ ("DCH3CON") __attribute__((section("sfrs")));
extern volatile unsigned int DCH3CONCLR __attribute__((section("sfrs")));
extern volatile unsigned int DCH3CONSET __attribute__((section("sfrs")));
extern volatile unsigned int DCH3CONINV __attribute__((section("sfrs")));

extern volatile unsigned int DCH3ECON __attribute__((section("sfrs")));
typedef struct {
  unsigned :3;
  unsigned AIRQEN:1;
  unsigned SIRQEN:1;
  unsigned PATEN:1;
  unsigned CABORT:1;
  unsigned CFORCE:1;
  unsigned CHSIRQ:8;
  unsigned CHAIRQ:8;
} __DCH3ECONbits_t;
extern volatile __DCH3ECONbits_t DCH3ECONbits __asm__ ("DCH3ECON") __attribute__((section("sfrs")));
extern volatile unsigned int DCH3ECONCLR __attribute__((section("sfrs")));
extern volatile unsigned int DCH3ECONSET __attribute__((section("sfrs")));
extern volatile unsigned int DCH3ECONINV __attribute__((section("sfrs")));

extern volatile unsigned int DCH3INT __attribute__((section("sfrs")));
typedef struct {
  unsigned CHERIF:1;
  unsigned CHTAIF:1;
  unsigned CHCCIF:1;
  unsigned CHBCIF:1;
  unsigned CHDHIF:1;
  unsigned CHDDIF:1;
  unsigned CHSHIF:1;
  unsigned CHSDIF:1;
  unsigned :8;
  unsigned CHERIE:1;
  unsigned CHTAIE:1;
  unsigned CHCCIE:1;
  unsigned CHBCIE:1;
  unsigned CHDHIE:1;
  unsigned CHDDIE:1;
  unsigned CHSHIE:1;
  unsigned CHSDIE:1;
} __DCH3INTbits_t;
extern volatile __DCH3INTbits_t DCH3INTbits __asm__ ("DCH3INT") __attribute__((section("sfrs")));
extern volatile unsigned int DCH3INTCLR __attribute__((section("sfrs")));
extern volatile unsigned int DCH3INTSET __attribute__((section("sfrs")));
extern volatile unsigned int DCH3INTINV __attribute__((section("sfrs")));

extern volatile unsigned int DCH3SSA __attribute__((section("sfrs")));
typedef struct {
  unsigned CHSSA:32;
} __DCH3SSAbits_t;
extern volatile __DCH3SSAbits_t DCH3SSAbits __asm__ ("DCH3SSA") __attribute__((section("sfrs")));
extern volatile unsigned int DCH3SSACLR __attribute__((section("sfrs")));
extern volatile unsigned int DCH3SSASET __attribute__((section("sfrs")));
extern volatile unsigned int DCH3SSAINV __attribute__((section("sfrs")));

extern volatile unsigned int DCH3DSA __attribute__((section("sfrs")));
typedef struct {
  unsigned CHDSA:32;
} __DCH3DSAbits_t;
extern volatile __DCH3DSAbits_t DCH3DSAbits __asm__ ("DCH3DSA") __attribute__((section("sfrs")));
extern volatile unsigned int DCH3DSACLR __attribute__((section("sfrs")));
extern volatile unsigned int DCH3DSASET __attribute__((section("sfrs")));
extern volatile unsigned int DCH3DSAINV __attribute__((section("sfrs")));

extern volatile unsigned int DCH3SSIZ __attribute__((section("sfrs")));
typedef struct {
  unsigned CHSSIZ:16;
} __DCH3SSIZbits_t;
extern volatile __DCH3SSIZbits_t DCH3SSIZbits __asm__ ("DCH3SSIZ") __attribute__((section("sfrs")));
extern volatile unsigned int DCH3SSIZCLR __attribute__((section("sfrs")));
extern volatile unsigned int DCH3SSIZSET __attribute__((section("sfrs")));
extern volatile unsigned int DCH3SSIZINV __attribute__((section("sfrs")));

extern volatile unsigned int DCH3DSIZ __attribute__((section("sfrs")));
typedef struct {
  unsigned CHDSIZ:16;
} __DCH3DSIZbits_t;
extern volatile __DCH3DSIZbits_t DCH3DSIZbits __asm__ ("DCH3DSIZ") __attribute__((section("sfrs")));
extern volatile unsigned int DCH3DSIZCLR __attribute__((section("sfrs")));
extern volatile unsigned int DCH3DSIZSET __attribute__((section("sfrs")));
extern volatile unsigned int DCH3DSIZINV __attribute__((section("sfrs")));

extern volatile unsigned int DCH3SPTR __attribute__((section("sfrs")));
typedef struct {
  unsigned CHSPTR:16;
} __DCH3SPTRbits_t;
extern volatile __DCH3SPTRbits_t DCH3SPTRbits __asm__ ("DCH3SPTR") __attribute__((section("sfrs")));
extern volatile unsigned int DCH3SPTRCLR __attribute__((section("sfrs")));
extern volatile unsigned int DCH3SPTRSET __attribute__((section("sfrs")));
extern volatile unsigned int DCH3SPTRINV __attribute__((section("sfrs")));

extern volatile unsigned int DCH3DPTR __attribute__((section("sfrs")));
typedef struct {
  unsigned CHDPTR:16;
} __DCH3DPTRbits_t;
extern volatile __DCH3DPTRbits_t DCH3DPTRbits __asm__ ("DCH3DPTR") __attribute__((section("sfrs")));
extern volatile unsigned int DCH3DPTRCLR __attribute__((section("sfrs")));
extern volatile unsigned int DCH3DPTRSET __attribute__((section("sfrs")));
extern volatile unsigned int DCH3DPTRINV __attribute__((section("sfrs")));

extern volatile unsigned int DCH3CSIZ __attribute__((section("sfrs")));
typedef struct {
  unsigned CHCSIZ:16;
} __DCH3CSIZbits_t;
extern volatile __DCH3CSIZbits_t DCH3CSIZbits __asm__ ("DCH3CSIZ") __attribute__((section("sfrs")));
extern volatile unsigned int DCH3CSIZCLR __attribute__((section("sfrs")));
extern volatile unsigned int DCH3CSIZSET __attribute__((section("sfrs")));
extern volatile unsigned int DCH3CSIZINV __attribute__((section("sfrs")));

extern volatile unsigned int DCH3CPTR __attribute__((section("sfrs")));
typedef struct {
  unsigned CHCPTR:16;
} __DCH3CPTRbits_t;
extern volatile __DCH3CPTRbits_t DCH3CPTRbits __asm__ ("DCH3CPTR") __attribute__((section("sfrs")));

extern volatile unsigned int DCS3CPTR __attribute__((section("sfrs")));
typedef struct {
  unsigned CHCPTR:16;
} __DCS3CPTRbits_t;
extern volatile __DCS3CPTRbits_t DCS3CPTRbits __asm__ ("DCS3CPTR") __attribute__((section("sfrs")));
extern volatile unsigned int DCH3CPTRCLR __attribute__((section("sfrs")));
extern volatile unsigned int DCS3CPTRCLR __attribute__((section("sfrs")));
extern volatile unsigned int DCH3CPTRSET __attribute__((section("sfrs")));
extern volatile unsigned int DCS3CPTRSET __attribute__((section("sfrs")));
extern volatile unsigned int DCH3CPTRINV __attribute__((section("sfrs")));
extern volatile unsigned int DCS3CPTRINV __attribute__((section("sfrs")));

extern volatile unsigned int DCH3DAT __attribute__((section("sfrs")));
typedef struct {
  unsigned CHPDAT:16;
} __DCH3DATbits_t;
extern volatile __DCH3DATbits_t DCH3DATbits __asm__ ("DCH3DAT") __attribute__((section("sfrs")));
extern volatile unsigned int DCH3DATCLR __attribute__((section("sfrs")));
extern volatile unsigned int DCH3DATSET __attribute__((section("sfrs")));
extern volatile unsigned int DCH3DATINV __attribute__((section("sfrs")));

extern volatile unsigned int DCH4CON __attribute__((section("sfrs")));
typedef struct {
  unsigned CHPRI:2;
  unsigned CHEDET:1;
  unsigned :1;
  unsigned CHAEN:1;
  unsigned CHCHN:1;
  unsigned CHAED:1;
  unsigned CHEN:1;
  unsigned CHCHNS:1;
  unsigned :2;
  unsigned CHPATLEN:1;
  unsigned :1;
  unsigned CHPIGNEN:1;
  unsigned :1;
  unsigned CHBUSY:1;
  unsigned :8;
  unsigned CHPIGN:8;
} __DCH4CONbits_t;
extern volatile __DCH4CONbits_t DCH4CONbits __asm__ ("DCH4CON") __attribute__((section("sfrs")));
extern volatile unsigned int DCH4CONCLR __attribute__((section("sfrs")));
extern volatile unsigned int DCH4CONSET __attribute__((section("sfrs")));
extern volatile unsigned int DCH4CONINV __attribute__((section("sfrs")));

extern volatile unsigned int DCH4ECON __attribute__((section("sfrs")));
typedef struct {
  unsigned :3;
  unsigned AIRQEN:1;
  unsigned SIRQEN:1;
  unsigned PATEN:1;
  unsigned CABORT:1;
  unsigned CFORCE:1;
  unsigned CHSIRQ:8;
  unsigned CHAIRQ:8;
} __DCH4ECONbits_t;
extern volatile __DCH4ECONbits_t DCH4ECONbits __asm__ ("DCH4ECON") __attribute__((section("sfrs")));
extern volatile unsigned int DCH4ECONCLR __attribute__((section("sfrs")));
extern volatile unsigned int DCH4ECONSET __attribute__((section("sfrs")));
extern volatile unsigned int DCH4ECONINV __attribute__((section("sfrs")));

extern volatile unsigned int DCH4INT __attribute__((section("sfrs")));
typedef struct {
  unsigned CHERIF:1;
  unsigned CHTAIF:1;
  unsigned CHCCIF:1;
  unsigned CHBCIF:1;
  unsigned CHDHIF:1;
  unsigned CHDDIF:1;
  unsigned CHSHIF:1;
  unsigned CHSDIF:1;
  unsigned :8;
  unsigned CHERIE:1;
  unsigned CHTAIE:1;
  unsigned CHCCIE:1;
  unsigned CHBCIE:1;
  unsigned CHDHIE:1;
  unsigned CHDDIE:1;
  unsigned CHSHIE:1;
  unsigned CHSDIE:1;
} __DCH4INTbits_t;
extern volatile __DCH4INTbits_t DCH4INTbits __asm__ ("DCH4INT") __attribute__((section("sfrs")));
extern volatile unsigned int DCH4INTCLR __attribute__((section("sfrs")));
extern volatile unsigned int DCH4INTSET __attribute__((section("sfrs")));
extern volatile unsigned int DCH4INTINV __attribute__((section("sfrs")));

extern volatile unsigned int DCH4SSA __attribute__((section("sfrs")));
typedef struct {
  unsigned CHSSA:32;
} __DCH4SSAbits_t;
extern volatile __DCH4SSAbits_t DCH4SSAbits __asm__ ("DCH4SSA") __attribute__((section("sfrs")));
extern volatile unsigned int DCH4SSACLR __attribute__((section("sfrs")));
extern volatile unsigned int DCH4SSASET __attribute__((section("sfrs")));
extern volatile unsigned int DCH4SSAINV __attribute__((section("sfrs")));

extern volatile unsigned int DCH4DSA __attribute__((section("sfrs")));
typedef struct {
  unsigned CHDSA:32;
} __DCH4DSAbits_t;
extern volatile __DCH4DSAbits_t DCH4DSAbits __asm__ ("DCH4DSA") __attribute__((section("sfrs")));
extern volatile unsigned int DCH4DSACLR __attribute__((section("sfrs")));
extern volatile unsigned int DCH4DSASET __attribute__((section("sfrs")));
extern volatile unsigned int DCH4DSAINV __attribute__((section("sfrs")));

extern volatile unsigned int DCH4SSIZ __attribute__((section("sfrs")));
typedef struct {
  unsigned CHSSIZ:16;
} __DCH4SSIZbits_t;
extern volatile __DCH4SSIZbits_t DCH4SSIZbits __asm__ ("DCH4SSIZ") __attribute__((section("sfrs")));
extern volatile unsigned int DCH4SSIZCLR __attribute__((section("sfrs")));
extern volatile unsigned int DCH4SSIZSET __attribute__((section("sfrs")));
extern volatile unsigned int DCH4SSIZINV __attribute__((section("sfrs")));

extern volatile unsigned int DCH4DSIZ __attribute__((section("sfrs")));
typedef struct {
  unsigned CHDSIZ:16;
} __DCH4DSIZbits_t;
extern volatile __DCH4DSIZbits_t DCH4DSIZbits __asm__ ("DCH4DSIZ") __attribute__((section("sfrs")));
extern volatile unsigned int DCH4DSIZCLR __attribute__((section("sfrs")));
extern volatile unsigned int DCH4DSIZSET __attribute__((section("sfrs")));
extern volatile unsigned int DCH4DSIZINV __attribute__((section("sfrs")));

extern volatile unsigned int DCH4SPTR __attribute__((section("sfrs")));
typedef struct {
  unsigned CHSPTR:16;
} __DCH4SPTRbits_t;
extern volatile __DCH4SPTRbits_t DCH4SPTRbits __asm__ ("DCH4SPTR") __attribute__((section("sfrs")));
extern volatile unsigned int DCH4SPTRCLR __attribute__((section("sfrs")));
extern volatile unsigned int DCH4SPTRSET __attribute__((section("sfrs")));
extern volatile unsigned int DCH4SPTRINV __attribute__((section("sfrs")));

extern volatile unsigned int DCH4DPTR __attribute__((section("sfrs")));
typedef struct {
  unsigned CHDPTR:16;
} __DCH4DPTRbits_t;
extern volatile __DCH4DPTRbits_t DCH4DPTRbits __asm__ ("DCH4DPTR") __attribute__((section("sfrs")));
extern volatile unsigned int DCH4DPTRCLR __attribute__((section("sfrs")));
extern volatile unsigned int DCH4DPTRSET __attribute__((section("sfrs")));
extern volatile unsigned int DCH4DPTRINV __attribute__((section("sfrs")));

extern volatile unsigned int DCH4CSIZ __attribute__((section("sfrs")));
typedef struct {
  unsigned CHCSIZ:16;
} __DCH4CSIZbits_t;
extern volatile __DCH4CSIZbits_t DCH4CSIZbits __asm__ ("DCH4CSIZ") __attribute__((section("sfrs")));
extern volatile unsigned int DCH4CSIZCLR __attribute__((section("sfrs")));
extern volatile unsigned int DCH4CSIZSET __attribute__((section("sfrs")));
extern volatile unsigned int DCH4CSIZINV __attribute__((section("sfrs")));

extern volatile unsigned int DCH4CPTR __attribute__((section("sfrs")));
typedef struct {
  unsigned CHCPTR:16;
} __DCH4CPTRbits_t;
extern volatile __DCH4CPTRbits_t DCH4CPTRbits __asm__ ("DCH4CPTR") __attribute__((section("sfrs")));

extern volatile unsigned int DCS4CPTR __attribute__((section("sfrs")));
typedef struct {
  unsigned CHCPTR:16;
} __DCS4CPTRbits_t;
extern volatile __DCS4CPTRbits_t DCS4CPTRbits __asm__ ("DCS4CPTR") __attribute__((section("sfrs")));
extern volatile unsigned int DCH4CPTRCLR __attribute__((section("sfrs")));
extern volatile unsigned int DCS4CPTRCLR __attribute__((section("sfrs")));
extern volatile unsigned int DCH4CPTRSET __attribute__((section("sfrs")));
extern volatile unsigned int DCS4CPTRSET __attribute__((section("sfrs")));
extern volatile unsigned int DCH4CPTRINV __attribute__((section("sfrs")));
extern volatile unsigned int DCS4CPTRINV __attribute__((section("sfrs")));

extern volatile unsigned int DCH4DAT __attribute__((section("sfrs")));
typedef struct {
  unsigned CHPDAT:16;
} __DCH4DATbits_t;
extern volatile __DCH4DATbits_t DCH4DATbits __asm__ ("DCH4DAT") __attribute__((section("sfrs")));
extern volatile unsigned int DCH4DATCLR __attribute__((section("sfrs")));
extern volatile unsigned int DCH4DATSET __attribute__((section("sfrs")));
extern volatile unsigned int DCH4DATINV __attribute__((section("sfrs")));

extern volatile unsigned int DCH5CON __attribute__((section("sfrs")));
typedef struct {
  unsigned CHPRI:2;
  unsigned CHEDET:1;
  unsigned :1;
  unsigned CHAEN:1;
  unsigned CHCHN:1;
  unsigned CHAED:1;
  unsigned CHEN:1;
  unsigned CHCHNS:1;
  unsigned :2;
  unsigned CHPATLEN:1;
  unsigned :1;
  unsigned CHPIGNEN:1;
  unsigned :1;
  unsigned CHBUSY:1;
  unsigned :8;
  unsigned CHPIGN:8;
} __DCH5CONbits_t;
extern volatile __DCH5CONbits_t DCH5CONbits __asm__ ("DCH5CON") __attribute__((section("sfrs")));
extern volatile unsigned int DCH5CONCLR __attribute__((section("sfrs")));
extern volatile unsigned int DCH5CONSET __attribute__((section("sfrs")));
extern volatile unsigned int DCH5CONINV __attribute__((section("sfrs")));

extern volatile unsigned int DCH5ECON __attribute__((section("sfrs")));
typedef struct {
  unsigned :3;
  unsigned AIRQEN:1;
  unsigned SIRQEN:1;
  unsigned PATEN:1;
  unsigned CABORT:1;
  unsigned CFORCE:1;
  unsigned CHSIRQ:8;
  unsigned CHAIRQ:8;
} __DCH5ECONbits_t;
extern volatile __DCH5ECONbits_t DCH5ECONbits __asm__ ("DCH5ECON") __attribute__((section("sfrs")));
extern volatile unsigned int DCH5ECONCLR __attribute__((section("sfrs")));
extern volatile unsigned int DCH5ECONSET __attribute__((section("sfrs")));
extern volatile unsigned int DCH5ECONINV __attribute__((section("sfrs")));

extern volatile unsigned int DCH5INT __attribute__((section("sfrs")));
typedef struct {
  unsigned CHERIF:1;
  unsigned CHTAIF:1;
  unsigned CHCCIF:1;
  unsigned CHBCIF:1;
  unsigned CHDHIF:1;
  unsigned CHDDIF:1;
  unsigned CHSHIF:1;
  unsigned CHSDIF:1;
  unsigned :8;
  unsigned CHERIE:1;
  unsigned CHTAIE:1;
  unsigned CHCCIE:1;
  unsigned CHBCIE:1;
  unsigned CHDHIE:1;
  unsigned CHDDIE:1;
  unsigned CHSHIE:1;
  unsigned CHSDIE:1;
} __DCH5INTbits_t;
extern volatile __DCH5INTbits_t DCH5INTbits __asm__ ("DCH5INT") __attribute__((section("sfrs")));
extern volatile unsigned int DCH5INTCLR __attribute__((section("sfrs")));
extern volatile unsigned int DCH5INTSET __attribute__((section("sfrs")));
extern volatile unsigned int DCH5INTINV __attribute__((section("sfrs")));

extern volatile unsigned int DCH5SSA __attribute__((section("sfrs")));
typedef struct {
  unsigned CHSSA:32;
} __DCH5SSAbits_t;
extern volatile __DCH5SSAbits_t DCH5SSAbits __asm__ ("DCH5SSA") __attribute__((section("sfrs")));
extern volatile unsigned int DCH5SSACLR __attribute__((section("sfrs")));
extern volatile unsigned int DCH5SSASET __attribute__((section("sfrs")));
extern volatile unsigned int DCH5SSAINV __attribute__((section("sfrs")));

extern volatile unsigned int DCH5DSA __attribute__((section("sfrs")));
typedef struct {
  unsigned CHDSA:32;
} __DCH5DSAbits_t;
extern volatile __DCH5DSAbits_t DCH5DSAbits __asm__ ("DCH5DSA") __attribute__((section("sfrs")));
extern volatile unsigned int DCH5DSACLR __attribute__((section("sfrs")));
extern volatile unsigned int DCH5DSASET __attribute__((section("sfrs")));
extern volatile unsigned int DCH5DSAINV __attribute__((section("sfrs")));

extern volatile unsigned int DCH5SSIZ __attribute__((section("sfrs")));
typedef struct {
  unsigned CHSSIZ:16;
} __DCH5SSIZbits_t;
extern volatile __DCH5SSIZbits_t DCH5SSIZbits __asm__ ("DCH5SSIZ") __attribute__((section("sfrs")));
extern volatile unsigned int DCH5SSIZCLR __attribute__((section("sfrs")));
extern volatile unsigned int DCH5SSIZSET __attribute__((section("sfrs")));
extern volatile unsigned int DCH5SSIZINV __attribute__((section("sfrs")));

extern volatile unsigned int DCH5DSIZ __attribute__((section("sfrs")));
typedef struct {
  unsigned CHDSIZ:16;
} __DCH5DSIZbits_t;
extern volatile __DCH5DSIZbits_t DCH5DSIZbits __asm__ ("DCH5DSIZ") __attribute__((section("sfrs")));
extern volatile unsigned int DCH5DSIZCLR __attribute__((section("sfrs")));
extern volatile unsigned int DCH5DSIZSET __attribute__((section("sfrs")));
extern volatile unsigned int DCH5DSIZINV __attribute__((section("sfrs")));

extern volatile unsigned int DCH5SPTR __attribute__((section("sfrs")));
typedef struct {
  unsigned CHSPTR:16;
} __DCH5SPTRbits_t;
extern volatile __DCH5SPTRbits_t DCH5SPTRbits __asm__ ("DCH5SPTR") __attribute__((section("sfrs")));
extern volatile unsigned int DCH5SPTRCLR __attribute__((section("sfrs")));
extern volatile unsigned int DCH5SPTRSET __attribute__((section("sfrs")));
extern volatile unsigned int DCH5SPTRINV __attribute__((section("sfrs")));

extern volatile unsigned int DCH5DPTR __attribute__((section("sfrs")));
typedef struct {
  unsigned CHDPTR:16;
} __DCH5DPTRbits_t;
extern volatile __DCH5DPTRbits_t DCH5DPTRbits __asm__ ("DCH5DPTR") __attribute__((section("sfrs")));
extern volatile unsigned int DCH5DPTRCLR __attribute__((section("sfrs")));
extern volatile unsigned int DCH5DPTRSET __attribute__((section("sfrs")));
extern volatile unsigned int DCH5DPTRINV __attribute__((section("sfrs")));

extern volatile unsigned int DCH5CSIZ __attribute__((section("sfrs")));
typedef struct {
  unsigned CHCSIZ:16;
} __DCH5CSIZbits_t;
extern volatile __DCH5CSIZbits_t DCH5CSIZbits __asm__ ("DCH5CSIZ") __attribute__((section("sfrs")));
extern volatile unsigned int DCH5CSIZCLR __attribute__((section("sfrs")));
extern volatile unsigned int DCH5CSIZSET __attribute__((section("sfrs")));
extern volatile unsigned int DCH5CSIZINV __attribute__((section("sfrs")));

extern volatile unsigned int DCH5CPTR __attribute__((section("sfrs")));
typedef struct {
  unsigned CHCPTR:16;
} __DCH5CPTRbits_t;
extern volatile __DCH5CPTRbits_t DCH5CPTRbits __asm__ ("DCH5CPTR") __attribute__((section("sfrs")));

extern volatile unsigned int DCS5CPTR __attribute__((section("sfrs")));
typedef struct {
  unsigned CHCPTR:16;
} __DCS5CPTRbits_t;
extern volatile __DCS5CPTRbits_t DCS5CPTRbits __asm__ ("DCS5CPTR") __attribute__((section("sfrs")));
extern volatile unsigned int DCH5CPTRCLR __attribute__((section("sfrs")));
extern volatile unsigned int DCS5CPTRCLR __attribute__((section("sfrs")));
extern volatile unsigned int DCH5CPTRSET __attribute__((section("sfrs")));
extern volatile unsigned int DCS5CPTRSET __attribute__((section("sfrs")));
extern volatile unsigned int DCH5CPTRINV __attribute__((section("sfrs")));
extern volatile unsigned int DCS5CPTRINV __attribute__((section("sfrs")));

extern volatile unsigned int DCH5DAT __attribute__((section("sfrs")));
typedef struct {
  unsigned CHPDAT:16;
} __DCH5DATbits_t;
extern volatile __DCH5DATbits_t DCH5DATbits __asm__ ("DCH5DAT") __attribute__((section("sfrs")));
extern volatile unsigned int DCH5DATCLR __attribute__((section("sfrs")));
extern volatile unsigned int DCH5DATSET __attribute__((section("sfrs")));
extern volatile unsigned int DCH5DATINV __attribute__((section("sfrs")));

extern volatile unsigned int DCH6CON __attribute__((section("sfrs")));
typedef struct {
  unsigned CHPRI:2;
  unsigned CHEDET:1;
  unsigned :1;
  unsigned CHAEN:1;
  unsigned CHCHN:1;
  unsigned CHAED:1;
  unsigned CHEN:1;
  unsigned CHCHNS:1;
  unsigned :2;
  unsigned CHPATLEN:1;
  unsigned :1;
  unsigned CHPIGNEN:1;
  unsigned :1;
  unsigned CHBUSY:1;
  unsigned :8;
  unsigned CHPIGN:8;
} __DCH6CONbits_t;
extern volatile __DCH6CONbits_t DCH6CONbits __asm__ ("DCH6CON") __attribute__((section("sfrs")));
extern volatile unsigned int DCH6CONCLR __attribute__((section("sfrs")));
extern volatile unsigned int DCH6CONSET __attribute__((section("sfrs")));
extern volatile unsigned int DCH6CONINV __attribute__((section("sfrs")));

extern volatile unsigned int DCH6ECON __attribute__((section("sfrs")));
typedef struct {
  unsigned :3;
  unsigned AIRQEN:1;
  unsigned SIRQEN:1;
  unsigned PATEN:1;
  unsigned CABORT:1;
  unsigned CFORCE:1;
  unsigned CHSIRQ:8;
  unsigned CHAIRQ:8;
} __DCH6ECONbits_t;
extern volatile __DCH6ECONbits_t DCH6ECONbits __asm__ ("DCH6ECON") __attribute__((section("sfrs")));
extern volatile unsigned int DCH6ECONCLR __attribute__((section("sfrs")));
extern volatile unsigned int DCH6ECONSET __attribute__((section("sfrs")));
extern volatile unsigned int DCH6ECONINV __attribute__((section("sfrs")));

extern volatile unsigned int DCH6INT __attribute__((section("sfrs")));
typedef struct {
  unsigned CHERIF:1;
  unsigned CHTAIF:1;
  unsigned CHCCIF:1;
  unsigned CHBCIF:1;
  unsigned CHDHIF:1;
  unsigned CHDDIF:1;
  unsigned CHSHIF:1;
  unsigned CHSDIF:1;
  unsigned :8;
  unsigned CHERIE:1;
  unsigned CHTAIE:1;
  unsigned CHCCIE:1;
  unsigned CHBCIE:1;
  unsigned CHDHIE:1;
  unsigned CHDDIE:1;
  unsigned CHSHIE:1;
  unsigned CHSDIE:1;
} __DCH6INTbits_t;
extern volatile __DCH6INTbits_t DCH6INTbits __asm__ ("DCH6INT") __attribute__((section("sfrs")));
extern volatile unsigned int DCH6INTCLR __attribute__((section("sfrs")));
extern volatile unsigned int DCH6INTSET __attribute__((section("sfrs")));
extern volatile unsigned int DCH6INTINV __attribute__((section("sfrs")));

extern volatile unsigned int DCH6SSA __attribute__((section("sfrs")));
typedef struct {
  unsigned CHSSA:32;
} __DCH6SSAbits_t;
extern volatile __DCH6SSAbits_t DCH6SSAbits __asm__ ("DCH6SSA") __attribute__((section("sfrs")));
extern volatile unsigned int DCH6SSACLR __attribute__((section("sfrs")));
extern volatile unsigned int DCH6SSASET __attribute__((section("sfrs")));
extern volatile unsigned int DCH6SSAINV __attribute__((section("sfrs")));

extern volatile unsigned int DCH6DSA __attribute__((section("sfrs")));
typedef struct {
  unsigned CHDSA:32;
} __DCH6DSAbits_t;
extern volatile __DCH6DSAbits_t DCH6DSAbits __asm__ ("DCH6DSA") __attribute__((section("sfrs")));
extern volatile unsigned int DCH6DSACLR __attribute__((section("sfrs")));
extern volatile unsigned int DCH6DSASET __attribute__((section("sfrs")));
extern volatile unsigned int DCH6DSAINV __attribute__((section("sfrs")));

extern volatile unsigned int DCH6SSIZ __attribute__((section("sfrs")));
typedef struct {
  unsigned CHSSIZ:16;
} __DCH6SSIZbits_t;
extern volatile __DCH6SSIZbits_t DCH6SSIZbits __asm__ ("DCH6SSIZ") __attribute__((section("sfrs")));
extern volatile unsigned int DCH6SSIZCLR __attribute__((section("sfrs")));
extern volatile unsigned int DCH6SSIZSET __attribute__((section("sfrs")));
extern volatile unsigned int DCH6SSIZINV __attribute__((section("sfrs")));

extern volatile unsigned int DCH6DSIZ __attribute__((section("sfrs")));
typedef struct {
  unsigned CHDSIZ:16;
} __DCH6DSIZbits_t;
extern volatile __DCH6DSIZbits_t DCH6DSIZbits __asm__ ("DCH6DSIZ") __attribute__((section("sfrs")));
extern volatile unsigned int DCH6DSIZCLR __attribute__((section("sfrs")));
extern volatile unsigned int DCH6DSIZSET __attribute__((section("sfrs")));
extern volatile unsigned int DCH6DSIZINV __attribute__((section("sfrs")));

extern volatile unsigned int DCH6SPTR __attribute__((section("sfrs")));
typedef struct {
  unsigned CHSPTR:16;
} __DCH6SPTRbits_t;
extern volatile __DCH6SPTRbits_t DCH6SPTRbits __asm__ ("DCH6SPTR") __attribute__((section("sfrs")));
extern volatile unsigned int DCH6SPTRCLR __attribute__((section("sfrs")));
extern volatile unsigned int DCH6SPTRSET __attribute__((section("sfrs")));
extern volatile unsigned int DCH6SPTRINV __attribute__((section("sfrs")));

extern volatile unsigned int DCH6DPTR __attribute__((section("sfrs")));
typedef struct {
  unsigned CHDPTR:16;
} __DCH6DPTRbits_t;
extern volatile __DCH6DPTRbits_t DCH6DPTRbits __asm__ ("DCH6DPTR") __attribute__((section("sfrs")));
extern volatile unsigned int DCH6DPTRCLR __attribute__((section("sfrs")));
extern volatile unsigned int DCH6DPTRSET __attribute__((section("sfrs")));
extern volatile unsigned int DCH6DPTRINV __attribute__((section("sfrs")));

extern volatile unsigned int DCH6CSIZ __attribute__((section("sfrs")));
typedef struct {
  unsigned CHCSIZ:16;
} __DCH6CSIZbits_t;
extern volatile __DCH6CSIZbits_t DCH6CSIZbits __asm__ ("DCH6CSIZ") __attribute__((section("sfrs")));
extern volatile unsigned int DCH6CSIZCLR __attribute__((section("sfrs")));
extern volatile unsigned int DCH6CSIZSET __attribute__((section("sfrs")));
extern volatile unsigned int DCH6CSIZINV __attribute__((section("sfrs")));

extern volatile unsigned int DCH6CPTR __attribute__((section("sfrs")));
typedef struct {
  unsigned CHCPTR:16;
} __DCH6CPTRbits_t;
extern volatile __DCH6CPTRbits_t DCH6CPTRbits __asm__ ("DCH6CPTR") __attribute__((section("sfrs")));

extern volatile unsigned int DCS6CPTR __attribute__((section("sfrs")));
typedef struct {
  unsigned CHCPTR:16;
} __DCS6CPTRbits_t;
extern volatile __DCS6CPTRbits_t DCS6CPTRbits __asm__ ("DCS6CPTR") __attribute__((section("sfrs")));
extern volatile unsigned int DCH6CPTRCLR __attribute__((section("sfrs")));
extern volatile unsigned int DCS6CPTRCLR __attribute__((section("sfrs")));
extern volatile unsigned int DCH6CPTRSET __attribute__((section("sfrs")));
extern volatile unsigned int DCS6CPTRSET __attribute__((section("sfrs")));
extern volatile unsigned int DCH6CPTRINV __attribute__((section("sfrs")));
extern volatile unsigned int DCS6CPTRINV __attribute__((section("sfrs")));

extern volatile unsigned int DCH6DAT __attribute__((section("sfrs")));
typedef struct {
  unsigned CHPDAT:16;
} __DCH6DATbits_t;
extern volatile __DCH6DATbits_t DCH6DATbits __asm__ ("DCH6DAT") __attribute__((section("sfrs")));
extern volatile unsigned int DCH6DATCLR __attribute__((section("sfrs")));
extern volatile unsigned int DCH6DATSET __attribute__((section("sfrs")));
extern volatile unsigned int DCH6DATINV __attribute__((section("sfrs")));

extern volatile unsigned int DCH7CON __attribute__((section("sfrs")));
typedef struct {
  unsigned CHPRI:2;
  unsigned CHEDET:1;
  unsigned :1;
  unsigned CHAEN:1;
  unsigned CHCHN:1;
  unsigned CHAED:1;
  unsigned CHEN:1;
  unsigned CHCHNS:1;
  unsigned :2;
  unsigned CHPATLEN:1;
  unsigned :1;
  unsigned CHPIGNEN:1;
  unsigned :1;
  unsigned CHBUSY:1;
  unsigned :8;
  unsigned CHPIGN:8;
} __DCH7CONbits_t;
extern volatile __DCH7CONbits_t DCH7CONbits __asm__ ("DCH7CON") __attribute__((section("sfrs")));
extern volatile unsigned int DCH7CONCLR __attribute__((section("sfrs")));
extern volatile unsigned int DCH7CONSET __attribute__((section("sfrs")));
extern volatile unsigned int DCH7CONINV __attribute__((section("sfrs")));

extern volatile unsigned int DCH7ECON __attribute__((section("sfrs")));
typedef struct {
  unsigned :3;
  unsigned AIRQEN:1;
  unsigned SIRQEN:1;
  unsigned PATEN:1;
  unsigned CABORT:1;
  unsigned CFORCE:1;
  unsigned CHSIRQ:8;
  unsigned CHAIRQ:8;
} __DCH7ECONbits_t;
extern volatile __DCH7ECONbits_t DCH7ECONbits __asm__ ("DCH7ECON") __attribute__((section("sfrs")));
extern volatile unsigned int DCH7ECONCLR __attribute__((section("sfrs")));
extern volatile unsigned int DCH7ECONSET __attribute__((section("sfrs")));
extern volatile unsigned int DCH7ECONINV __attribute__((section("sfrs")));

extern volatile unsigned int DCH7INT __attribute__((section("sfrs")));
typedef struct {
  unsigned CHERIF:1;
  unsigned CHTAIF:1;
  unsigned CHCCIF:1;
  unsigned CHBCIF:1;
  unsigned CHDHIF:1;
  unsigned CHDDIF:1;
  unsigned CHSHIF:1;
  unsigned CHSDIF:1;
  unsigned :8;
  unsigned CHERIE:1;
  unsigned CHTAIE:1;
  unsigned CHCCIE:1;
  unsigned CHBCIE:1;
  unsigned CHDHIE:1;
  unsigned CHDDIE:1;
  unsigned CHSHIE:1;
  unsigned CHSDIE:1;
} __DCH7INTbits_t;
extern volatile __DCH7INTbits_t DCH7INTbits __asm__ ("DCH7INT") __attribute__((section("sfrs")));
extern volatile unsigned int DCH7INTCLR __attribute__((section("sfrs")));
extern volatile unsigned int DCH7INTSET __attribute__((section("sfrs")));
extern volatile unsigned int DCH7INTINV __attribute__((section("sfrs")));

extern volatile unsigned int DCH7SSA __attribute__((section("sfrs")));
typedef struct {
  unsigned CHSSA:32;
} __DCH7SSAbits_t;
extern volatile __DCH7SSAbits_t DCH7SSAbits __asm__ ("DCH7SSA") __attribute__((section("sfrs")));
extern volatile unsigned int DCH7SSACLR __attribute__((section("sfrs")));
extern volatile unsigned int DCH7SSASET __attribute__((section("sfrs")));
extern volatile unsigned int DCH7SSAINV __attribute__((section("sfrs")));

extern volatile unsigned int DCH7DSA __attribute__((section("sfrs")));
typedef struct {
  unsigned CHDSA:32;
} __DCH7DSAbits_t;
extern volatile __DCH7DSAbits_t DCH7DSAbits __asm__ ("DCH7DSA") __attribute__((section("sfrs")));
extern volatile unsigned int DCH7DSACLR __attribute__((section("sfrs")));
extern volatile unsigned int DCH7DSASET __attribute__((section("sfrs")));
extern volatile unsigned int DCH7DSAINV __attribute__((section("sfrs")));

extern volatile unsigned int DCH7SSIZ __attribute__((section("sfrs")));
typedef struct {
  unsigned CHSSIZ:16;
} __DCH7SSIZbits_t;
extern volatile __DCH7SSIZbits_t DCH7SSIZbits __asm__ ("DCH7SSIZ") __attribute__((section("sfrs")));
extern volatile unsigned int DCH7SSIZCLR __attribute__((section("sfrs")));
extern volatile unsigned int DCH7SSIZSET __attribute__((section("sfrs")));
extern volatile unsigned int DCH7SSIZINV __attribute__((section("sfrs")));

extern volatile unsigned int DCH7DSIZ __attribute__((section("sfrs")));
typedef struct {
  unsigned CHDSIZ:16;
} __DCH7DSIZbits_t;
extern volatile __DCH7DSIZbits_t DCH7DSIZbits __asm__ ("DCH7DSIZ") __attribute__((section("sfrs")));
extern volatile unsigned int DCH7DSIZCLR __attribute__((section("sfrs")));
extern volatile unsigned int DCH7DSIZSET __attribute__((section("sfrs")));
extern volatile unsigned int DCH7DSIZINV __attribute__((section("sfrs")));

extern volatile unsigned int DCH7SPTR __attribute__((section("sfrs")));
typedef struct {
  unsigned CHSPTR:16;
} __DCH7SPTRbits_t;
extern volatile __DCH7SPTRbits_t DCH7SPTRbits __asm__ ("DCH7SPTR") __attribute__((section("sfrs")));
extern volatile unsigned int DCH7SPTRCLR __attribute__((section("sfrs")));
extern volatile unsigned int DCH7SPTRSET __attribute__((section("sfrs")));
extern volatile unsigned int DCH7SPTRINV __attribute__((section("sfrs")));

extern volatile unsigned int DCH7DPTR __attribute__((section("sfrs")));
typedef struct {
  unsigned CHDPTR:16;
} __DCH7DPTRbits_t;
extern volatile __DCH7DPTRbits_t DCH7DPTRbits __asm__ ("DCH7DPTR") __attribute__((section("sfrs")));
extern volatile unsigned int DCH7DPTRCLR __attribute__((section("sfrs")));
extern volatile unsigned int DCH7DPTRSET __attribute__((section("sfrs")));
extern volatile unsigned int DCH7DPTRINV __attribute__((section("sfrs")));

extern volatile unsigned int DCH7CSIZ __attribute__((section("sfrs")));
typedef struct {
  unsigned CHCSIZ:16;
} __DCH7CSIZbits_t;
extern volatile __DCH7CSIZbits_t DCH7CSIZbits __asm__ ("DCH7CSIZ") __attribute__((section("sfrs")));
extern volatile unsigned int DCH7CSIZCLR __attribute__((section("sfrs")));
extern volatile unsigned int DCH7CSIZSET __attribute__((section("sfrs")));
extern volatile unsigned int DCH7CSIZINV __attribute__((section("sfrs")));

extern volatile unsigned int DCH7CPTR __attribute__((section("sfrs")));
typedef struct {
  unsigned CHCPTR:16;
} __DCH7CPTRbits_t;
extern volatile __DCH7CPTRbits_t DCH7CPTRbits __asm__ ("DCH7CPTR") __attribute__((section("sfrs")));

extern volatile unsigned int DCS7CPTR __attribute__((section("sfrs")));
typedef struct {
  unsigned CHCPTR:16;
} __DCS7CPTRbits_t;
extern volatile __DCS7CPTRbits_t DCS7CPTRbits __asm__ ("DCS7CPTR") __attribute__((section("sfrs")));
extern volatile unsigned int DCH7CPTRCLR __attribute__((section("sfrs")));
extern volatile unsigned int DCS7CPTRCLR __attribute__((section("sfrs")));
extern volatile unsigned int DCH7CPTRSET __attribute__((section("sfrs")));
extern volatile unsigned int DCS7CPTRSET __attribute__((section("sfrs")));
extern volatile unsigned int DCH7CPTRINV __attribute__((section("sfrs")));
extern volatile unsigned int DCS7CPTRINV __attribute__((section("sfrs")));

extern volatile unsigned int DCH7DAT __attribute__((section("sfrs")));
typedef struct {
  unsigned CHPDAT:16;
} __DCH7DATbits_t;
extern volatile __DCH7DATbits_t DCH7DATbits __asm__ ("DCH7DAT") __attribute__((section("sfrs")));
extern volatile unsigned int DCH7DATCLR __attribute__((section("sfrs")));
extern volatile unsigned int DCH7DATSET __attribute__((section("sfrs")));
extern volatile unsigned int DCH7DATINV __attribute__((section("sfrs")));

extern volatile unsigned int I2C1CON __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned SEN:1;
    unsigned RSEN:1;
    unsigned PEN:1;
    unsigned RCEN:1;
    unsigned ACKEN:1;
    unsigned ACKDT:1;
    unsigned STREN:1;
    unsigned GCEN:1;
    unsigned SMEN:1;
    unsigned DISSLW:1;
    unsigned A10M:1;
    unsigned STRICT:1;
    unsigned SCLREL:1;
    unsigned SIDL:1;
    unsigned :1;
    unsigned ON:1;
    unsigned DHEN:1;
    unsigned AHEN:1;
    unsigned SBCDE:1;
    unsigned SDAHT:1;
    unsigned BOEN:1;
    unsigned SCIE:1;
    unsigned PCIE:1;
  };
  struct {
    unsigned :11;
    unsigned IPMIEN:1;
    unsigned :1;
    unsigned I2CSIDL:1;
    unsigned :1;
    unsigned I2CEN:1;
  };
} __I2C1CONbits_t;
extern volatile __I2C1CONbits_t I2C1CONbits __asm__ ("I2C1CON") __attribute__((section("sfrs")));
extern volatile unsigned int I2C1CONCLR __attribute__((section("sfrs")));
extern volatile unsigned int I2C1CONSET __attribute__((section("sfrs")));
extern volatile unsigned int I2C1CONINV __attribute__((section("sfrs")));

extern volatile unsigned int I2C1STAT __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned TBF:1;
    unsigned RBF:1;
    unsigned R_W:1;
    unsigned S:1;
    unsigned P:1;
    unsigned D_A:1;
    unsigned I2COV:1;
    unsigned IWCOL:1;
    unsigned ADD10:1;
    unsigned GCSTAT:1;
    unsigned BCL:1;
    unsigned :2;
    unsigned ACKTIM:1;
    unsigned TRSTAT:1;
    unsigned ACKSTAT:1;
  };
  struct {
    unsigned :6;
    unsigned I2CPOV:1;
  };
} __I2C1STATbits_t;
extern volatile __I2C1STATbits_t I2C1STATbits __asm__ ("I2C1STAT") __attribute__((section("sfrs")));
extern volatile unsigned int I2C1STATCLR __attribute__((section("sfrs")));
extern volatile unsigned int I2C1STATSET __attribute__((section("sfrs")));
extern volatile unsigned int I2C1STATINV __attribute__((section("sfrs")));

extern volatile unsigned int I2C1ADD __attribute__((section("sfrs")));
typedef struct {
  unsigned I2CADD:10;
} __I2C1ADDbits_t;
extern volatile __I2C1ADDbits_t I2C1ADDbits __asm__ ("I2C1ADD") __attribute__((section("sfrs")));
extern volatile unsigned int I2C1ADDCLR __attribute__((section("sfrs")));
extern volatile unsigned int I2C1ADDSET __attribute__((section("sfrs")));
extern volatile unsigned int I2C1ADDINV __attribute__((section("sfrs")));

extern volatile unsigned int I2C1MSK __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned I2CMSK:10;
  };
  struct {
    unsigned AMSK:10;
  };
} __I2C1MSKbits_t;
extern volatile __I2C1MSKbits_t I2C1MSKbits __asm__ ("I2C1MSK") __attribute__((section("sfrs")));
extern volatile unsigned int I2C1MSKCLR __attribute__((section("sfrs")));
extern volatile unsigned int I2C1MSKSET __attribute__((section("sfrs")));
extern volatile unsigned int I2C1MSKINV __attribute__((section("sfrs")));

extern volatile unsigned int I2C1BRG __attribute__((section("sfrs")));
typedef struct {
  unsigned I2CBRG:16;
} __I2C1BRGbits_t;
extern volatile __I2C1BRGbits_t I2C1BRGbits __asm__ ("I2C1BRG") __attribute__((section("sfrs")));
extern volatile unsigned int I2C1BRGCLR __attribute__((section("sfrs")));
extern volatile unsigned int I2C1BRGSET __attribute__((section("sfrs")));
extern volatile unsigned int I2C1BRGINV __attribute__((section("sfrs")));

extern volatile unsigned int I2C1TRN __attribute__((section("sfrs")));
typedef struct {
  unsigned I2CTRN:8;
} __I2C1TRNbits_t;
extern volatile __I2C1TRNbits_t I2C1TRNbits __asm__ ("I2C1TRN") __attribute__((section("sfrs")));
extern volatile unsigned int I2C1TRNCLR __attribute__((section("sfrs")));
extern volatile unsigned int I2C1TRNSET __attribute__((section("sfrs")));
extern volatile unsigned int I2C1TRNINV __attribute__((section("sfrs")));

extern volatile unsigned int I2C1RCV __attribute__((section("sfrs")));
typedef struct {
  unsigned I2CRCV:8;
} __I2C1RCVbits_t;
extern volatile __I2C1RCVbits_t I2C1RCVbits __asm__ ("I2C1RCV") __attribute__((section("sfrs")));
extern volatile unsigned int I2C1RCVCLR __attribute__((section("sfrs")));
extern volatile unsigned int I2C1RCVSET __attribute__((section("sfrs")));
extern volatile unsigned int I2C1RCVINV __attribute__((section("sfrs")));

extern volatile unsigned int I2C2CON __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned SEN:1;
    unsigned RSEN:1;
    unsigned PEN:1;
    unsigned RCEN:1;
    unsigned ACKEN:1;
    unsigned ACKDT:1;
    unsigned STREN:1;
    unsigned GCEN:1;
    unsigned SMEN:1;
    unsigned DISSLW:1;
    unsigned A10M:1;
    unsigned STRICT:1;
    unsigned SCLREL:1;
    unsigned SIDL:1;
    unsigned :1;
    unsigned ON:1;
    unsigned DHEN:1;
    unsigned AHEN:1;
    unsigned SBCDE:1;
    unsigned SDAHT:1;
    unsigned BOEN:1;
    unsigned SCIE:1;
    unsigned PCIE:1;
  };
  struct {
    unsigned :11;
    unsigned IPMIEN:1;
    unsigned :1;
    unsigned I2CSIDL:1;
    unsigned :1;
    unsigned I2CEN:1;
  };
} __I2C2CONbits_t;
extern volatile __I2C2CONbits_t I2C2CONbits __asm__ ("I2C2CON") __attribute__((section("sfrs")));
extern volatile unsigned int I2C2CONCLR __attribute__((section("sfrs")));
extern volatile unsigned int I2C2CONSET __attribute__((section("sfrs")));
extern volatile unsigned int I2C2CONINV __attribute__((section("sfrs")));

extern volatile unsigned int I2C2STAT __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned TBF:1;
    unsigned RBF:1;
    unsigned R_W:1;
    unsigned S:1;
    unsigned P:1;
    unsigned D_A:1;
    unsigned I2COV:1;
    unsigned IWCOL:1;
    unsigned ADD10:1;
    unsigned GCSTAT:1;
    unsigned BCL:1;
    unsigned :2;
    unsigned ACKTIM:1;
    unsigned TRSTAT:1;
    unsigned ACKSTAT:1;
  };
  struct {
    unsigned :6;
    unsigned I2CPOV:1;
  };
} __I2C2STATbits_t;
extern volatile __I2C2STATbits_t I2C2STATbits __asm__ ("I2C2STAT") __attribute__((section("sfrs")));
extern volatile unsigned int I2C2STATCLR __attribute__((section("sfrs")));
extern volatile unsigned int I2C2STATSET __attribute__((section("sfrs")));
extern volatile unsigned int I2C2STATINV __attribute__((section("sfrs")));

extern volatile unsigned int I2C2ADD __attribute__((section("sfrs")));
typedef struct {
  unsigned I2CADD:10;
} __I2C2ADDbits_t;
extern volatile __I2C2ADDbits_t I2C2ADDbits __asm__ ("I2C2ADD") __attribute__((section("sfrs")));
extern volatile unsigned int I2C2ADDCLR __attribute__((section("sfrs")));
extern volatile unsigned int I2C2ADDSET __attribute__((section("sfrs")));
extern volatile unsigned int I2C2ADDINV __attribute__((section("sfrs")));

extern volatile unsigned int I2C2MSK __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned I2CMSK:10;
  };
  struct {
    unsigned AMSK:10;
  };
} __I2C2MSKbits_t;
extern volatile __I2C2MSKbits_t I2C2MSKbits __asm__ ("I2C2MSK") __attribute__((section("sfrs")));
extern volatile unsigned int I2C2MSKCLR __attribute__((section("sfrs")));
extern volatile unsigned int I2C2MSKSET __attribute__((section("sfrs")));
extern volatile unsigned int I2C2MSKINV __attribute__((section("sfrs")));

extern volatile unsigned int I2C2BRG __attribute__((section("sfrs")));
typedef struct {
  unsigned I2CBRG:16;
} __I2C2BRGbits_t;
extern volatile __I2C2BRGbits_t I2C2BRGbits __asm__ ("I2C2BRG") __attribute__((section("sfrs")));
extern volatile unsigned int I2C2BRGCLR __attribute__((section("sfrs")));
extern volatile unsigned int I2C2BRGSET __attribute__((section("sfrs")));
extern volatile unsigned int I2C2BRGINV __attribute__((section("sfrs")));

extern volatile unsigned int I2C2TRN __attribute__((section("sfrs")));
typedef struct {
  unsigned I2CTRN:8;
} __I2C2TRNbits_t;
extern volatile __I2C2TRNbits_t I2C2TRNbits __asm__ ("I2C2TRN") __attribute__((section("sfrs")));
extern volatile unsigned int I2C2TRNCLR __attribute__((section("sfrs")));
extern volatile unsigned int I2C2TRNSET __attribute__((section("sfrs")));
extern volatile unsigned int I2C2TRNINV __attribute__((section("sfrs")));

extern volatile unsigned int I2C2RCV __attribute__((section("sfrs")));
typedef struct {
  unsigned I2CRCV:8;
} __I2C2RCVbits_t;
extern volatile __I2C2RCVbits_t I2C2RCVbits __asm__ ("I2C2RCV") __attribute__((section("sfrs")));
extern volatile unsigned int I2C2RCVCLR __attribute__((section("sfrs")));
extern volatile unsigned int I2C2RCVSET __attribute__((section("sfrs")));
extern volatile unsigned int I2C2RCVINV __attribute__((section("sfrs")));

extern volatile unsigned int I2C3CON __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned SEN:1;
    unsigned RSEN:1;
    unsigned PEN:1;
    unsigned RCEN:1;
    unsigned ACKEN:1;
    unsigned ACKDT:1;
    unsigned STREN:1;
    unsigned GCEN:1;
    unsigned SMEN:1;
    unsigned DISSLW:1;
    unsigned A10M:1;
    unsigned STRICT:1;
    unsigned SCLREL:1;
    unsigned SIDL:1;
    unsigned :1;
    unsigned ON:1;
    unsigned DHEN:1;
    unsigned AHEN:1;
    unsigned SBCDE:1;
    unsigned SDAHT:1;
    unsigned BOEN:1;
    unsigned SCIE:1;
    unsigned PCIE:1;
  };
  struct {
    unsigned :11;
    unsigned IPMIEN:1;
    unsigned :1;
    unsigned I2CSIDL:1;
    unsigned :1;
    unsigned I2CEN:1;
  };
} __I2C3CONbits_t;
extern volatile __I2C3CONbits_t I2C3CONbits __asm__ ("I2C3CON") __attribute__((section("sfrs")));
extern volatile unsigned int I2C3CONCLR __attribute__((section("sfrs")));
extern volatile unsigned int I2C3CONSET __attribute__((section("sfrs")));
extern volatile unsigned int I2C3CONINV __attribute__((section("sfrs")));

extern volatile unsigned int I2C3STAT __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned TBF:1;
    unsigned RBF:1;
    unsigned R_W:1;
    unsigned S:1;
    unsigned P:1;
    unsigned D_A:1;
    unsigned I2COV:1;
    unsigned IWCOL:1;
    unsigned ADD10:1;
    unsigned GCSTAT:1;
    unsigned BCL:1;
    unsigned :2;
    unsigned ACKTIM:1;
    unsigned TRSTAT:1;
    unsigned ACKSTAT:1;
  };
  struct {
    unsigned :6;
    unsigned I2CPOV:1;
  };
} __I2C3STATbits_t;
extern volatile __I2C3STATbits_t I2C3STATbits __asm__ ("I2C3STAT") __attribute__((section("sfrs")));
extern volatile unsigned int I2C3STATCLR __attribute__((section("sfrs")));
extern volatile unsigned int I2C3STATSET __attribute__((section("sfrs")));
extern volatile unsigned int I2C3STATINV __attribute__((section("sfrs")));

extern volatile unsigned int I2C3ADD __attribute__((section("sfrs")));
typedef struct {
  unsigned I2CADD:10;
} __I2C3ADDbits_t;
extern volatile __I2C3ADDbits_t I2C3ADDbits __asm__ ("I2C3ADD") __attribute__((section("sfrs")));
extern volatile unsigned int I2C3ADDCLR __attribute__((section("sfrs")));
extern volatile unsigned int I2C3ADDSET __attribute__((section("sfrs")));
extern volatile unsigned int I2C3ADDINV __attribute__((section("sfrs")));

extern volatile unsigned int I2C3MSK __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned I2CMSK:10;
  };
  struct {
    unsigned AMSK:10;
  };
} __I2C3MSKbits_t;
extern volatile __I2C3MSKbits_t I2C3MSKbits __asm__ ("I2C3MSK") __attribute__((section("sfrs")));
extern volatile unsigned int I2C3MSKCLR __attribute__((section("sfrs")));
extern volatile unsigned int I2C3MSKSET __attribute__((section("sfrs")));
extern volatile unsigned int I2C3MSKINV __attribute__((section("sfrs")));

extern volatile unsigned int I2C3BRG __attribute__((section("sfrs")));
typedef struct {
  unsigned I2CBRG:16;
} __I2C3BRGbits_t;
extern volatile __I2C3BRGbits_t I2C3BRGbits __asm__ ("I2C3BRG") __attribute__((section("sfrs")));
extern volatile unsigned int I2C3BRGCLR __attribute__((section("sfrs")));
extern volatile unsigned int I2C3BRGSET __attribute__((section("sfrs")));
extern volatile unsigned int I2C3BRGINV __attribute__((section("sfrs")));

extern volatile unsigned int I2C3TRN __attribute__((section("sfrs")));
typedef struct {
  unsigned I2CTRN:8;
} __I2C3TRNbits_t;
extern volatile __I2C3TRNbits_t I2C3TRNbits __asm__ ("I2C3TRN") __attribute__((section("sfrs")));
extern volatile unsigned int I2C3TRNCLR __attribute__((section("sfrs")));
extern volatile unsigned int I2C3TRNSET __attribute__((section("sfrs")));
extern volatile unsigned int I2C3TRNINV __attribute__((section("sfrs")));

extern volatile unsigned int I2C3RCV __attribute__((section("sfrs")));
typedef struct {
  unsigned I2CRCV:8;
} __I2C3RCVbits_t;
extern volatile __I2C3RCVbits_t I2C3RCVbits __asm__ ("I2C3RCV") __attribute__((section("sfrs")));
extern volatile unsigned int I2C3RCVCLR __attribute__((section("sfrs")));
extern volatile unsigned int I2C3RCVSET __attribute__((section("sfrs")));
extern volatile unsigned int I2C3RCVINV __attribute__((section("sfrs")));

extern volatile unsigned int I2C4CON __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned SEN:1;
    unsigned RSEN:1;
    unsigned PEN:1;
    unsigned RCEN:1;
    unsigned ACKEN:1;
    unsigned ACKDT:1;
    unsigned STREN:1;
    unsigned GCEN:1;
    unsigned SMEN:1;
    unsigned DISSLW:1;
    unsigned A10M:1;
    unsigned STRICT:1;
    unsigned SCLREL:1;
    unsigned SIDL:1;
    unsigned :1;
    unsigned ON:1;
    unsigned DHEN:1;
    unsigned AHEN:1;
    unsigned SBCDE:1;
    unsigned SDAHT:1;
    unsigned BOEN:1;
    unsigned SCIE:1;
    unsigned PCIE:1;
  };
  struct {
    unsigned :11;
    unsigned IPMIEN:1;
    unsigned :1;
    unsigned I2CSIDL:1;
    unsigned :1;
    unsigned I2CEN:1;
  };
} __I2C4CONbits_t;
extern volatile __I2C4CONbits_t I2C4CONbits __asm__ ("I2C4CON") __attribute__((section("sfrs")));
extern volatile unsigned int I2C4CONCLR __attribute__((section("sfrs")));
extern volatile unsigned int I2C4CONSET __attribute__((section("sfrs")));
extern volatile unsigned int I2C4CONINV __attribute__((section("sfrs")));

extern volatile unsigned int I2C4STAT __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned TBF:1;
    unsigned RBF:1;
    unsigned R_W:1;
    unsigned S:1;
    unsigned P:1;
    unsigned D_A:1;
    unsigned I2COV:1;
    unsigned IWCOL:1;
    unsigned ADD10:1;
    unsigned GCSTAT:1;
    unsigned BCL:1;
    unsigned :2;
    unsigned ACKTIM:1;
    unsigned TRSTAT:1;
    unsigned ACKSTAT:1;
  };
  struct {
    unsigned :6;
    unsigned I2CPOV:1;
  };
} __I2C4STATbits_t;
extern volatile __I2C4STATbits_t I2C4STATbits __asm__ ("I2C4STAT") __attribute__((section("sfrs")));
extern volatile unsigned int I2C4STATCLR __attribute__((section("sfrs")));
extern volatile unsigned int I2C4STATSET __attribute__((section("sfrs")));
extern volatile unsigned int I2C4STATINV __attribute__((section("sfrs")));

extern volatile unsigned int I2C4ADD __attribute__((section("sfrs")));
typedef struct {
  unsigned I2CADD:10;
} __I2C4ADDbits_t;
extern volatile __I2C4ADDbits_t I2C4ADDbits __asm__ ("I2C4ADD") __attribute__((section("sfrs")));
extern volatile unsigned int I2C4ADDCLR __attribute__((section("sfrs")));
extern volatile unsigned int I2C4ADDSET __attribute__((section("sfrs")));
extern volatile unsigned int I2C4ADDINV __attribute__((section("sfrs")));

extern volatile unsigned int I2C4MSK __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned I2CMSK:10;
  };
  struct {
    unsigned AMSK:10;
  };
} __I2C4MSKbits_t;
extern volatile __I2C4MSKbits_t I2C4MSKbits __asm__ ("I2C4MSK") __attribute__((section("sfrs")));
extern volatile unsigned int I2C4MSKCLR __attribute__((section("sfrs")));
extern volatile unsigned int I2C4MSKSET __attribute__((section("sfrs")));
extern volatile unsigned int I2C4MSKINV __attribute__((section("sfrs")));

extern volatile unsigned int I2C4BRG __attribute__((section("sfrs")));
typedef struct {
  unsigned I2CBRG:16;
} __I2C4BRGbits_t;
extern volatile __I2C4BRGbits_t I2C4BRGbits __asm__ ("I2C4BRG") __attribute__((section("sfrs")));
extern volatile unsigned int I2C4BRGCLR __attribute__((section("sfrs")));
extern volatile unsigned int I2C4BRGSET __attribute__((section("sfrs")));
extern volatile unsigned int I2C4BRGINV __attribute__((section("sfrs")));

extern volatile unsigned int I2C4TRN __attribute__((section("sfrs")));
typedef struct {
  unsigned I2CTRN:8;
} __I2C4TRNbits_t;
extern volatile __I2C4TRNbits_t I2C4TRNbits __asm__ ("I2C4TRN") __attribute__((section("sfrs")));
extern volatile unsigned int I2C4TRNCLR __attribute__((section("sfrs")));
extern volatile unsigned int I2C4TRNSET __attribute__((section("sfrs")));
extern volatile unsigned int I2C4TRNINV __attribute__((section("sfrs")));

extern volatile unsigned int I2C4RCV __attribute__((section("sfrs")));
typedef struct {
  unsigned I2CRCV:8;
} __I2C4RCVbits_t;
extern volatile __I2C4RCVbits_t I2C4RCVbits __asm__ ("I2C4RCV") __attribute__((section("sfrs")));
extern volatile unsigned int I2C4RCVCLR __attribute__((section("sfrs")));
extern volatile unsigned int I2C4RCVSET __attribute__((section("sfrs")));
extern volatile unsigned int I2C4RCVINV __attribute__((section("sfrs")));

extern volatile unsigned int I2C5CON __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned SEN:1;
    unsigned RSEN:1;
    unsigned PEN:1;
    unsigned RCEN:1;
    unsigned ACKEN:1;
    unsigned ACKDT:1;
    unsigned STREN:1;
    unsigned GCEN:1;
    unsigned SMEN:1;
    unsigned DISSLW:1;
    unsigned A10M:1;
    unsigned STRICT:1;
    unsigned SCLREL:1;
    unsigned SIDL:1;
    unsigned :1;
    unsigned ON:1;
    unsigned DHEN:1;
    unsigned AHEN:1;
    unsigned SBCDE:1;
    unsigned SDAHT:1;
    unsigned BOEN:1;
    unsigned SCIE:1;
    unsigned PCIE:1;
  };
  struct {
    unsigned :11;
    unsigned IPMIEN:1;
    unsigned :1;
    unsigned I2CSIDL:1;
    unsigned :1;
    unsigned I2CEN:1;
  };
} __I2C5CONbits_t;
extern volatile __I2C5CONbits_t I2C5CONbits __asm__ ("I2C5CON") __attribute__((section("sfrs")));
extern volatile unsigned int I2C5CONCLR __attribute__((section("sfrs")));
extern volatile unsigned int I2C5CONSET __attribute__((section("sfrs")));
extern volatile unsigned int I2C5CONINV __attribute__((section("sfrs")));

extern volatile unsigned int I2C5STAT __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned TBF:1;
    unsigned RBF:1;
    unsigned R_W:1;
    unsigned S:1;
    unsigned P:1;
    unsigned D_A:1;
    unsigned I2COV:1;
    unsigned IWCOL:1;
    unsigned ADD10:1;
    unsigned GCSTAT:1;
    unsigned BCL:1;
    unsigned :2;
    unsigned ACKTIM:1;
    unsigned TRSTAT:1;
    unsigned ACKSTAT:1;
  };
  struct {
    unsigned :6;
    unsigned I2CPOV:1;
  };
} __I2C5STATbits_t;
extern volatile __I2C5STATbits_t I2C5STATbits __asm__ ("I2C5STAT") __attribute__((section("sfrs")));
extern volatile unsigned int I2C5STATCLR __attribute__((section("sfrs")));
extern volatile unsigned int I2C5STATSET __attribute__((section("sfrs")));
extern volatile unsigned int I2C5STATINV __attribute__((section("sfrs")));

extern volatile unsigned int I2C5ADD __attribute__((section("sfrs")));
typedef struct {
  unsigned I2CADD:10;
} __I2C5ADDbits_t;
extern volatile __I2C5ADDbits_t I2C5ADDbits __asm__ ("I2C5ADD") __attribute__((section("sfrs")));
extern volatile unsigned int I2C5ADDCLR __attribute__((section("sfrs")));
extern volatile unsigned int I2C5ADDSET __attribute__((section("sfrs")));
extern volatile unsigned int I2C5ADDINV __attribute__((section("sfrs")));

extern volatile unsigned int I2C5MSK __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned I2CMSK:10;
  };
  struct {
    unsigned AMSK:10;
  };
} __I2C5MSKbits_t;
extern volatile __I2C5MSKbits_t I2C5MSKbits __asm__ ("I2C5MSK") __attribute__((section("sfrs")));
extern volatile unsigned int I2C5MSKCLR __attribute__((section("sfrs")));
extern volatile unsigned int I2C5MSKSET __attribute__((section("sfrs")));
extern volatile unsigned int I2C5MSKINV __attribute__((section("sfrs")));

extern volatile unsigned int I2C5BRG __attribute__((section("sfrs")));
typedef struct {
  unsigned I2CBRG:16;
} __I2C5BRGbits_t;
extern volatile __I2C5BRGbits_t I2C5BRGbits __asm__ ("I2C5BRG") __attribute__((section("sfrs")));
extern volatile unsigned int I2C5BRGCLR __attribute__((section("sfrs")));
extern volatile unsigned int I2C5BRGSET __attribute__((section("sfrs")));
extern volatile unsigned int I2C5BRGINV __attribute__((section("sfrs")));

extern volatile unsigned int I2C5TRN __attribute__((section("sfrs")));
typedef struct {
  unsigned I2CTRN:8;
} __I2C5TRNbits_t;
extern volatile __I2C5TRNbits_t I2C5TRNbits __asm__ ("I2C5TRN") __attribute__((section("sfrs")));
extern volatile unsigned int I2C5TRNCLR __attribute__((section("sfrs")));
extern volatile unsigned int I2C5TRNSET __attribute__((section("sfrs")));
extern volatile unsigned int I2C5TRNINV __attribute__((section("sfrs")));

extern volatile unsigned int I2C5RCV __attribute__((section("sfrs")));
typedef struct {
  unsigned I2CRCV:8;
} __I2C5RCVbits_t;
extern volatile __I2C5RCVbits_t I2C5RCVbits __asm__ ("I2C5RCV") __attribute__((section("sfrs")));
extern volatile unsigned int I2C5RCVCLR __attribute__((section("sfrs")));
extern volatile unsigned int I2C5RCVSET __attribute__((section("sfrs")));
extern volatile unsigned int I2C5RCVINV __attribute__((section("sfrs")));

extern volatile unsigned int SPI1CON __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned SRXISEL:2;
    unsigned STXISEL:2;
    unsigned DISSDI:1;
    unsigned MSTEN:1;
    unsigned CKP:1;
    unsigned SSEN:1;
    unsigned CKE:1;
    unsigned SMP:1;
    unsigned MODE16:1;
    unsigned MODE32:1;
    unsigned DISSDO:1;
    unsigned SIDL:1;
    unsigned :1;
    unsigned ON:1;
    unsigned ENHBUF:1;
    unsigned SPIFE:1;
    unsigned :5;
    unsigned MCLKSEL:1;
    unsigned FRMCNT:3;
    unsigned FRMSYPW:1;
    unsigned MSSEN:1;
    unsigned FRMPOL:1;
    unsigned FRMSYNC:1;
    unsigned FRMEN:1;
  };
  struct {
    unsigned w:32;
  };
} __SPI1CONbits_t;
extern volatile __SPI1CONbits_t SPI1CONbits __asm__ ("SPI1CON") __attribute__((section("sfrs")));
extern volatile unsigned int SPI1CONCLR __attribute__((section("sfrs")));
extern volatile unsigned int SPI1CONSET __attribute__((section("sfrs")));
extern volatile unsigned int SPI1CONINV __attribute__((section("sfrs")));

extern volatile unsigned int SPI1STAT __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned SPIRBF:1;
    unsigned SPITBF:1;
    unsigned :1;
    unsigned SPITBE:1;
    unsigned :1;
    unsigned SPIRBE:1;
    unsigned SPIROV:1;
    unsigned SRMT:1;
    unsigned SPITUR:1;
    unsigned :2;
    unsigned SPIBUSY:1;
    unsigned FRMERR:1;
    unsigned :3;
    unsigned TXBUFELM:5;
    unsigned :3;
    unsigned RXBUFELM:5;
  };
  struct {
    unsigned w:32;
  };
} __SPI1STATbits_t;
extern volatile __SPI1STATbits_t SPI1STATbits __asm__ ("SPI1STAT") __attribute__((section("sfrs")));
extern volatile unsigned int SPI1STATCLR __attribute__((section("sfrs")));
extern volatile unsigned int SPI1STATSET __attribute__((section("sfrs")));
extern volatile unsigned int SPI1STATINV __attribute__((section("sfrs")));

extern volatile unsigned int SPI1BUF __attribute__((section("sfrs")));

extern volatile unsigned int SPI1BRG __attribute__((section("sfrs")));
extern volatile unsigned int SPI1BRGCLR __attribute__((section("sfrs")));
extern volatile unsigned int SPI1BRGSET __attribute__((section("sfrs")));
extern volatile unsigned int SPI1BRGINV __attribute__((section("sfrs")));

extern volatile unsigned int SPI1CON2 __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned AUDMOD:2;
    unsigned :1;
    unsigned AUDMONO:1;
    unsigned :3;
    unsigned AUDEN:1;
    unsigned IGNTUR:1;
    unsigned IGNROV:1;
    unsigned SPITUREN:1;
    unsigned SPIROVEN:1;
    unsigned FRMERREN:1;
    unsigned :2;
    unsigned SPISGNEXT:1;
  };
  struct {
    unsigned AUDMOD0:1;
    unsigned AUDMOD1:1;
  };
  struct {
    unsigned w:32;
  };
} __SPI1CON2bits_t;
extern volatile __SPI1CON2bits_t SPI1CON2bits __asm__ ("SPI1CON2") __attribute__((section("sfrs")));
extern volatile unsigned int SPI1CON2CLR __attribute__((section("sfrs")));
extern volatile unsigned int SPI1CON2SET __attribute__((section("sfrs")));
extern volatile unsigned int SPI1CON2INV __attribute__((section("sfrs")));

extern volatile unsigned int SPI2CON __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned SRXISEL:2;
    unsigned STXISEL:2;
    unsigned DISSDI:1;
    unsigned MSTEN:1;
    unsigned CKP:1;
    unsigned SSEN:1;
    unsigned CKE:1;
    unsigned SMP:1;
    unsigned MODE16:1;
    unsigned MODE32:1;
    unsigned DISSDO:1;
    unsigned SIDL:1;
    unsigned :1;
    unsigned ON:1;
    unsigned ENHBUF:1;
    unsigned SPIFE:1;
    unsigned :5;
    unsigned MCLKSEL:1;
    unsigned FRMCNT:3;
    unsigned FRMSYPW:1;
    unsigned MSSEN:1;
    unsigned FRMPOL:1;
    unsigned FRMSYNC:1;
    unsigned FRMEN:1;
  };
  struct {
    unsigned w:32;
  };
} __SPI2CONbits_t;
extern volatile __SPI2CONbits_t SPI2CONbits __asm__ ("SPI2CON") __attribute__((section("sfrs")));
extern volatile unsigned int SPI2CONCLR __attribute__((section("sfrs")));
extern volatile unsigned int SPI2CONSET __attribute__((section("sfrs")));
extern volatile unsigned int SPI2CONINV __attribute__((section("sfrs")));

extern volatile unsigned int SPI2STAT __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned SPIRBF:1;
    unsigned SPITBF:1;
    unsigned :1;
    unsigned SPITBE:1;
    unsigned :1;
    unsigned SPIRBE:1;
    unsigned SPIROV:1;
    unsigned SRMT:1;
    unsigned SPITUR:1;
    unsigned :2;
    unsigned SPIBUSY:1;
    unsigned FRMERR:1;
    unsigned :3;
    unsigned TXBUFELM:5;
    unsigned :3;
    unsigned RXBUFELM:5;
  };
  struct {
    unsigned w:32;
  };
} __SPI2STATbits_t;
extern volatile __SPI2STATbits_t SPI2STATbits __asm__ ("SPI2STAT") __attribute__((section("sfrs")));
extern volatile unsigned int SPI2STATCLR __attribute__((section("sfrs")));
extern volatile unsigned int SPI2STATSET __attribute__((section("sfrs")));
extern volatile unsigned int SPI2STATINV __attribute__((section("sfrs")));

extern volatile unsigned int SPI2BUF __attribute__((section("sfrs")));

extern volatile unsigned int SPI2BRG __attribute__((section("sfrs")));
extern volatile unsigned int SPI2BRGCLR __attribute__((section("sfrs")));
extern volatile unsigned int SPI2BRGSET __attribute__((section("sfrs")));
extern volatile unsigned int SPI2BRGINV __attribute__((section("sfrs")));

extern volatile unsigned int SPI2CON2 __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned AUDMOD:2;
    unsigned :1;
    unsigned AUDMONO:1;
    unsigned :3;
    unsigned AUDEN:1;
    unsigned IGNTUR:1;
    unsigned IGNROV:1;
    unsigned SPITUREN:1;
    unsigned SPIROVEN:1;
    unsigned FRMERREN:1;
    unsigned :2;
    unsigned SPISGNEXT:1;
  };
  struct {
    unsigned AUDMOD0:1;
    unsigned AUDMOD1:1;
  };
  struct {
    unsigned w:32;
  };
} __SPI2CON2bits_t;
extern volatile __SPI2CON2bits_t SPI2CON2bits __asm__ ("SPI2CON2") __attribute__((section("sfrs")));
extern volatile unsigned int SPI2CON2CLR __attribute__((section("sfrs")));
extern volatile unsigned int SPI2CON2SET __attribute__((section("sfrs")));
extern volatile unsigned int SPI2CON2INV __attribute__((section("sfrs")));

extern volatile unsigned int SPI3CON __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned SRXISEL:2;
    unsigned STXISEL:2;
    unsigned DISSDI:1;
    unsigned MSTEN:1;
    unsigned CKP:1;
    unsigned SSEN:1;
    unsigned CKE:1;
    unsigned SMP:1;
    unsigned MODE16:1;
    unsigned MODE32:1;
    unsigned DISSDO:1;
    unsigned SIDL:1;
    unsigned :1;
    unsigned ON:1;
    unsigned ENHBUF:1;
    unsigned SPIFE:1;
    unsigned :5;
    unsigned MCLKSEL:1;
    unsigned FRMCNT:3;
    unsigned FRMSYPW:1;
    unsigned MSSEN:1;
    unsigned FRMPOL:1;
    unsigned FRMSYNC:1;
    unsigned FRMEN:1;
  };
  struct {
    unsigned w:32;
  };
} __SPI3CONbits_t;
extern volatile __SPI3CONbits_t SPI3CONbits __asm__ ("SPI3CON") __attribute__((section("sfrs")));
extern volatile unsigned int SPI3CONCLR __attribute__((section("sfrs")));
extern volatile unsigned int SPI3CONSET __attribute__((section("sfrs")));
extern volatile unsigned int SPI3CONINV __attribute__((section("sfrs")));

extern volatile unsigned int SPI3STAT __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned SPIRBF:1;
    unsigned SPITBF:1;
    unsigned :1;
    unsigned SPITBE:1;
    unsigned :1;
    unsigned SPIRBE:1;
    unsigned SPIROV:1;
    unsigned SRMT:1;
    unsigned SPITUR:1;
    unsigned :2;
    unsigned SPIBUSY:1;
    unsigned FRMERR:1;
    unsigned :3;
    unsigned TXBUFELM:5;
    unsigned :3;
    unsigned RXBUFELM:5;
  };
  struct {
    unsigned w:32;
  };
} __SPI3STATbits_t;
extern volatile __SPI3STATbits_t SPI3STATbits __asm__ ("SPI3STAT") __attribute__((section("sfrs")));
extern volatile unsigned int SPI3STATCLR __attribute__((section("sfrs")));
extern volatile unsigned int SPI3STATSET __attribute__((section("sfrs")));
extern volatile unsigned int SPI3STATINV __attribute__((section("sfrs")));

extern volatile unsigned int SPI3BUF __attribute__((section("sfrs")));

extern volatile unsigned int SPI3BRG __attribute__((section("sfrs")));
extern volatile unsigned int SPI3BRGCLR __attribute__((section("sfrs")));
extern volatile unsigned int SPI3BRGSET __attribute__((section("sfrs")));
extern volatile unsigned int SPI3BRGINV __attribute__((section("sfrs")));

extern volatile unsigned int SPI3CON2 __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned AUDMOD:2;
    unsigned :1;
    unsigned AUDMONO:1;
    unsigned :3;
    unsigned AUDEN:1;
    unsigned IGNTUR:1;
    unsigned IGNROV:1;
    unsigned SPITUREN:1;
    unsigned SPIROVEN:1;
    unsigned FRMERREN:1;
    unsigned :2;
    unsigned SPISGNEXT:1;
  };
  struct {
    unsigned AUDMOD0:1;
    unsigned AUDMOD1:1;
  };
  struct {
    unsigned w:32;
  };
} __SPI3CON2bits_t;
extern volatile __SPI3CON2bits_t SPI3CON2bits __asm__ ("SPI3CON2") __attribute__((section("sfrs")));
extern volatile unsigned int SPI3CON2CLR __attribute__((section("sfrs")));
extern volatile unsigned int SPI3CON2SET __attribute__((section("sfrs")));
extern volatile unsigned int SPI3CON2INV __attribute__((section("sfrs")));

extern volatile unsigned int SPI4CON __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned SRXISEL:2;
    unsigned STXISEL:2;
    unsigned DISSDI:1;
    unsigned MSTEN:1;
    unsigned CKP:1;
    unsigned SSEN:1;
    unsigned CKE:1;
    unsigned SMP:1;
    unsigned MODE16:1;
    unsigned MODE32:1;
    unsigned DISSDO:1;
    unsigned SIDL:1;
    unsigned :1;
    unsigned ON:1;
    unsigned ENHBUF:1;
    unsigned SPIFE:1;
    unsigned :5;
    unsigned MCLKSEL:1;
    unsigned FRMCNT:3;
    unsigned FRMSYPW:1;
    unsigned MSSEN:1;
    unsigned FRMPOL:1;
    unsigned FRMSYNC:1;
    unsigned FRMEN:1;
  };
  struct {
    unsigned w:32;
  };
} __SPI4CONbits_t;
extern volatile __SPI4CONbits_t SPI4CONbits __asm__ ("SPI4CON") __attribute__((section("sfrs")));
extern volatile unsigned int SPI4CONCLR __attribute__((section("sfrs")));
extern volatile unsigned int SPI4CONSET __attribute__((section("sfrs")));
extern volatile unsigned int SPI4CONINV __attribute__((section("sfrs")));

extern volatile unsigned int SPI4STAT __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned SPIRBF:1;
    unsigned SPITBF:1;
    unsigned :1;
    unsigned SPITBE:1;
    unsigned :1;
    unsigned SPIRBE:1;
    unsigned SPIROV:1;
    unsigned SRMT:1;
    unsigned SPITUR:1;
    unsigned :2;
    unsigned SPIBUSY:1;
    unsigned FRMERR:1;
    unsigned :3;
    unsigned TXBUFELM:5;
    unsigned :3;
    unsigned RXBUFELM:5;
  };
  struct {
    unsigned w:32;
  };
} __SPI4STATbits_t;
extern volatile __SPI4STATbits_t SPI4STATbits __asm__ ("SPI4STAT") __attribute__((section("sfrs")));
extern volatile unsigned int SPI4STATCLR __attribute__((section("sfrs")));
extern volatile unsigned int SPI4STATSET __attribute__((section("sfrs")));
extern volatile unsigned int SPI4STATINV __attribute__((section("sfrs")));

extern volatile unsigned int SPI4BUF __attribute__((section("sfrs")));

extern volatile unsigned int SPI4BRG __attribute__((section("sfrs")));
extern volatile unsigned int SPI4BRGCLR __attribute__((section("sfrs")));
extern volatile unsigned int SPI4BRGSET __attribute__((section("sfrs")));
extern volatile unsigned int SPI4BRGINV __attribute__((section("sfrs")));

extern volatile unsigned int SPI4CON2 __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned AUDMOD:2;
    unsigned :1;
    unsigned AUDMONO:1;
    unsigned :3;
    unsigned AUDEN:1;
    unsigned IGNTUR:1;
    unsigned IGNROV:1;
    unsigned SPITUREN:1;
    unsigned SPIROVEN:1;
    unsigned FRMERREN:1;
    unsigned :2;
    unsigned SPISGNEXT:1;
  };
  struct {
    unsigned AUDMOD0:1;
    unsigned AUDMOD1:1;
  };
  struct {
    unsigned w:32;
  };
} __SPI4CON2bits_t;
extern volatile __SPI4CON2bits_t SPI4CON2bits __asm__ ("SPI4CON2") __attribute__((section("sfrs")));
extern volatile unsigned int SPI4CON2CLR __attribute__((section("sfrs")));
extern volatile unsigned int SPI4CON2SET __attribute__((section("sfrs")));
extern volatile unsigned int SPI4CON2INV __attribute__((section("sfrs")));

extern volatile unsigned int SPI5CON __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned SRXISEL:2;
    unsigned STXISEL:2;
    unsigned DISSDI:1;
    unsigned MSTEN:1;
    unsigned CKP:1;
    unsigned SSEN:1;
    unsigned CKE:1;
    unsigned SMP:1;
    unsigned MODE16:1;
    unsigned MODE32:1;
    unsigned DISSDO:1;
    unsigned SIDL:1;
    unsigned :1;
    unsigned ON:1;
    unsigned ENHBUF:1;
    unsigned SPIFE:1;
    unsigned :5;
    unsigned MCLKSEL:1;
    unsigned FRMCNT:3;
    unsigned FRMSYPW:1;
    unsigned MSSEN:1;
    unsigned FRMPOL:1;
    unsigned FRMSYNC:1;
    unsigned FRMEN:1;
  };
  struct {
    unsigned w:32;
  };
} __SPI5CONbits_t;
extern volatile __SPI5CONbits_t SPI5CONbits __asm__ ("SPI5CON") __attribute__((section("sfrs")));
extern volatile unsigned int SPI5CONCLR __attribute__((section("sfrs")));
extern volatile unsigned int SPI5CONSET __attribute__((section("sfrs")));
extern volatile unsigned int SPI5CONINV __attribute__((section("sfrs")));

extern volatile unsigned int SPI5STAT __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned SPIRBF:1;
    unsigned SPITBF:1;
    unsigned :1;
    unsigned SPITBE:1;
    unsigned :1;
    unsigned SPIRBE:1;
    unsigned SPIROV:1;
    unsigned SRMT:1;
    unsigned SPITUR:1;
    unsigned :2;
    unsigned SPIBUSY:1;
    unsigned FRMERR:1;
    unsigned :3;
    unsigned TXBUFELM:5;
    unsigned :3;
    unsigned RXBUFELM:5;
  };
  struct {
    unsigned w:32;
  };
} __SPI5STATbits_t;
extern volatile __SPI5STATbits_t SPI5STATbits __asm__ ("SPI5STAT") __attribute__((section("sfrs")));
extern volatile unsigned int SPI5STATCLR __attribute__((section("sfrs")));
extern volatile unsigned int SPI5STATSET __attribute__((section("sfrs")));
extern volatile unsigned int SPI5STATINV __attribute__((section("sfrs")));

extern volatile unsigned int SPI5BUF __attribute__((section("sfrs")));

extern volatile unsigned int SPI5BRG __attribute__((section("sfrs")));
extern volatile unsigned int SPI5BRGCLR __attribute__((section("sfrs")));
extern volatile unsigned int SPI5BRGSET __attribute__((section("sfrs")));
extern volatile unsigned int SPI5BRGINV __attribute__((section("sfrs")));

extern volatile unsigned int SPI5CON2 __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned AUDMOD:2;
    unsigned :1;
    unsigned AUDMONO:1;
    unsigned :3;
    unsigned AUDEN:1;
    unsigned IGNTUR:1;
    unsigned IGNROV:1;
    unsigned SPITUREN:1;
    unsigned SPIROVEN:1;
    unsigned FRMERREN:1;
    unsigned :2;
    unsigned SPISGNEXT:1;
  };
  struct {
    unsigned AUDMOD0:1;
    unsigned AUDMOD1:1;
  };
  struct {
    unsigned w:32;
  };
} __SPI5CON2bits_t;
extern volatile __SPI5CON2bits_t SPI5CON2bits __asm__ ("SPI5CON2") __attribute__((section("sfrs")));
extern volatile unsigned int SPI5CON2CLR __attribute__((section("sfrs")));
extern volatile unsigned int SPI5CON2SET __attribute__((section("sfrs")));
extern volatile unsigned int SPI5CON2INV __attribute__((section("sfrs")));

extern volatile unsigned int SPI6CON __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned SRXISEL:2;
    unsigned STXISEL:2;
    unsigned DISSDI:1;
    unsigned MSTEN:1;
    unsigned CKP:1;
    unsigned SSEN:1;
    unsigned CKE:1;
    unsigned SMP:1;
    unsigned MODE16:1;
    unsigned MODE32:1;
    unsigned DISSDO:1;
    unsigned SIDL:1;
    unsigned :1;
    unsigned ON:1;
    unsigned ENHBUF:1;
    unsigned SPIFE:1;
    unsigned :5;
    unsigned MCLKSEL:1;
    unsigned FRMCNT:3;
    unsigned FRMSYPW:1;
    unsigned MSSEN:1;
    unsigned FRMPOL:1;
    unsigned FRMSYNC:1;
    unsigned FRMEN:1;
  };
  struct {
    unsigned w:32;
  };
} __SPI6CONbits_t;
extern volatile __SPI6CONbits_t SPI6CONbits __asm__ ("SPI6CON") __attribute__((section("sfrs")));
extern volatile unsigned int SPI6CONCLR __attribute__((section("sfrs")));
extern volatile unsigned int SPI6CONSET __attribute__((section("sfrs")));
extern volatile unsigned int SPI6CONINV __attribute__((section("sfrs")));

extern volatile unsigned int SPI6STAT __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned SPIRBF:1;
    unsigned SPITBF:1;
    unsigned :1;
    unsigned SPITBE:1;
    unsigned :1;
    unsigned SPIRBE:1;
    unsigned SPIROV:1;
    unsigned SRMT:1;
    unsigned SPITUR:1;
    unsigned :2;
    unsigned SPIBUSY:1;
    unsigned FRMERR:1;
    unsigned :3;
    unsigned TXBUFELM:5;
    unsigned :3;
    unsigned RXBUFELM:5;
  };
  struct {
    unsigned w:32;
  };
} __SPI6STATbits_t;
extern volatile __SPI6STATbits_t SPI6STATbits __asm__ ("SPI6STAT") __attribute__((section("sfrs")));
extern volatile unsigned int SPI6STATCLR __attribute__((section("sfrs")));
extern volatile unsigned int SPI6STATSET __attribute__((section("sfrs")));
extern volatile unsigned int SPI6STATINV __attribute__((section("sfrs")));

extern volatile unsigned int SPI6BUF __attribute__((section("sfrs")));

extern volatile unsigned int SPI6BRG __attribute__((section("sfrs")));
extern volatile unsigned int SPI6BRGCLR __attribute__((section("sfrs")));
extern volatile unsigned int SPI6BRGSET __attribute__((section("sfrs")));
extern volatile unsigned int SPI6BRGINV __attribute__((section("sfrs")));

extern volatile unsigned int SPI6CON2 __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned AUDMOD:2;
    unsigned :1;
    unsigned AUDMONO:1;
    unsigned :3;
    unsigned AUDEN:1;
    unsigned IGNTUR:1;
    unsigned IGNROV:1;
    unsigned SPITUREN:1;
    unsigned SPIROVEN:1;
    unsigned FRMERREN:1;
    unsigned :2;
    unsigned SPISGNEXT:1;
  };
  struct {
    unsigned AUDMOD0:1;
    unsigned AUDMOD1:1;
  };
  struct {
    unsigned w:32;
  };
} __SPI6CON2bits_t;
extern volatile __SPI6CON2bits_t SPI6CON2bits __asm__ ("SPI6CON2") __attribute__((section("sfrs")));
extern volatile unsigned int SPI6CON2CLR __attribute__((section("sfrs")));
extern volatile unsigned int SPI6CON2SET __attribute__((section("sfrs")));
extern volatile unsigned int SPI6CON2INV __attribute__((section("sfrs")));

extern volatile unsigned int U1MODE __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned STSEL:1;
    unsigned PDSEL:2;
    unsigned BRGH:1;
    unsigned RXINV:1;
    unsigned ABAUD:1;
    unsigned LPBACK:1;
    unsigned WAKE:1;
    unsigned UEN:2;
    unsigned :1;
    unsigned RTSMD:1;
    unsigned IREN:1;
    unsigned SIDL:1;
    unsigned :1;
    unsigned ON:1;
  };
  struct {
    unsigned :1;
    unsigned PDSEL0:1;
    unsigned PDSEL1:1;
    unsigned :5;
    unsigned UEN0:1;
    unsigned UEN1:1;
  };
  struct {
    unsigned :13;
    unsigned USIDL:1;
    unsigned :1;
    unsigned UARTEN:1;
  };
  struct {
    unsigned w:32;
  };
} __U1MODEbits_t;
extern volatile __U1MODEbits_t U1MODEbits __asm__ ("U1MODE") __attribute__((section("sfrs")));

extern volatile unsigned int UABMODE __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned STSEL:1;
    unsigned PDSEL:2;
    unsigned BRGH:1;
    unsigned RXINV:1;
    unsigned ABAUD:1;
    unsigned LPBACK:1;
    unsigned WAKE:1;
    unsigned UEN:2;
    unsigned :1;
    unsigned RTSMD:1;
    unsigned IREN:1;
    unsigned SIDL:1;
    unsigned :1;
    unsigned ON:1;
  };
  struct {
    unsigned :1;
    unsigned PDSEL0:1;
    unsigned PDSEL1:1;
    unsigned :5;
    unsigned UEN0:1;
    unsigned UEN1:1;
  };
  struct {
    unsigned :13;
    unsigned USIDL:1;
    unsigned :1;
    unsigned UARTEN:1;
  };
  struct {
    unsigned w:32;
  };
} __UABMODEbits_t;
extern volatile __UABMODEbits_t UABMODEbits __asm__ ("UABMODE") __attribute__((section("sfrs")));
extern volatile unsigned int U1MODECLR __attribute__((section("sfrs")));
extern volatile unsigned int UABMODECLR __attribute__((section("sfrs")));
extern volatile unsigned int U1MODESET __attribute__((section("sfrs")));
extern volatile unsigned int UABMODESET __attribute__((section("sfrs")));
extern volatile unsigned int U1MODEINV __attribute__((section("sfrs")));
extern volatile unsigned int UABMODEINV __attribute__((section("sfrs")));

extern volatile unsigned int U1STA __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned URXDA:1;
    unsigned OERR:1;
    unsigned FERR:1;
    unsigned PERR:1;
    unsigned RIDLE:1;
    unsigned ADDEN:1;
    unsigned URXISEL:2;
    unsigned TRMT:1;
    unsigned UTXBF:1;
    unsigned UTXEN:1;
    unsigned UTXBRK:1;
    unsigned URXEN:1;
    unsigned UTXINV:1;
    unsigned UTXISEL:2;
    unsigned ADDR:8;
    unsigned ADM_EN:1;
  };
  struct {
    unsigned :6;
    unsigned URXISEL0:1;
    unsigned URXISEL1:1;
    unsigned :6;
    unsigned UTXISEL0:1;
    unsigned UTXISEL1:1;
  };
  struct {
    unsigned :14;
    unsigned UTXSEL:2;
  };
  struct {
    unsigned w:32;
  };
} __U1STAbits_t;
extern volatile __U1STAbits_t U1STAbits __asm__ ("U1STA") __attribute__((section("sfrs")));

extern volatile unsigned int UABSTA __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned URXDA:1;
    unsigned OERR:1;
    unsigned FERR:1;
    unsigned PERR:1;
    unsigned RIDLE:1;
    unsigned ADDEN:1;
    unsigned URXISEL:2;
    unsigned TRMT:1;
    unsigned UTXBF:1;
    unsigned UTXEN:1;
    unsigned UTXBRK:1;
    unsigned URXEN:1;
    unsigned UTXINV:1;
    unsigned UTXISEL:2;
    unsigned ADDR:8;
    unsigned ADM_EN:1;
  };
  struct {
    unsigned :6;
    unsigned URXISEL0:1;
    unsigned URXISEL1:1;
    unsigned :6;
    unsigned UTXISEL0:1;
    unsigned UTXISEL1:1;
  };
  struct {
    unsigned :14;
    unsigned UTXSEL:2;
  };
  struct {
    unsigned w:32;
  };
} __UABSTAbits_t;
extern volatile __UABSTAbits_t UABSTAbits __asm__ ("UABSTA") __attribute__((section("sfrs")));
extern volatile unsigned int U1STACLR __attribute__((section("sfrs")));
extern volatile unsigned int UABSTACLR __attribute__((section("sfrs")));
extern volatile unsigned int U1STASET __attribute__((section("sfrs")));
extern volatile unsigned int UABSTASET __attribute__((section("sfrs")));
extern volatile unsigned int U1STAINV __attribute__((section("sfrs")));
extern volatile unsigned int UABSTAINV __attribute__((section("sfrs")));

extern volatile unsigned int U1TXREG __attribute__((section("sfrs")));

extern volatile unsigned int UABTXREG __attribute__((section("sfrs")));

extern volatile unsigned int U1RXREG __attribute__((section("sfrs")));

extern volatile unsigned int UABRXREG __attribute__((section("sfrs")));

extern volatile unsigned int U1BRG __attribute__((section("sfrs")));

extern volatile unsigned int UABBRG __attribute__((section("sfrs")));
extern volatile unsigned int U1BRGCLR __attribute__((section("sfrs")));
extern volatile unsigned int UABBRGCLR __attribute__((section("sfrs")));
extern volatile unsigned int U1BRGSET __attribute__((section("sfrs")));
extern volatile unsigned int UABBRGSET __attribute__((section("sfrs")));
extern volatile unsigned int U1BRGINV __attribute__((section("sfrs")));
extern volatile unsigned int UABBRGINV __attribute__((section("sfrs")));

extern volatile unsigned int U2MODE __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned STSEL:1;
    unsigned PDSEL:2;
    unsigned BRGH:1;
    unsigned RXINV:1;
    unsigned ABAUD:1;
    unsigned LPBACK:1;
    unsigned WAKE:1;
    unsigned UEN:2;
    unsigned :1;
    unsigned RTSMD:1;
    unsigned IREN:1;
    unsigned SIDL:1;
    unsigned :1;
    unsigned ON:1;
  };
  struct {
    unsigned :1;
    unsigned PDSEL0:1;
    unsigned PDSEL1:1;
    unsigned :5;
    unsigned UEN0:1;
    unsigned UEN1:1;
  };
  struct {
    unsigned :13;
    unsigned USIDL:1;
    unsigned :1;
    unsigned UARTEN:1;
  };
  struct {
    unsigned w:32;
  };
} __U2MODEbits_t;
extern volatile __U2MODEbits_t U2MODEbits __asm__ ("U2MODE") __attribute__((section("sfrs")));

extern volatile unsigned int UCDMODE __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned STSEL:1;
    unsigned PDSEL:2;
    unsigned BRGH:1;
    unsigned RXINV:1;
    unsigned ABAUD:1;
    unsigned LPBACK:1;
    unsigned WAKE:1;
    unsigned UEN:2;
    unsigned :1;
    unsigned RTSMD:1;
    unsigned IREN:1;
    unsigned SIDL:1;
    unsigned :1;
    unsigned ON:1;
  };
  struct {
    unsigned :1;
    unsigned PDSEL0:1;
    unsigned PDSEL1:1;
    unsigned :5;
    unsigned UEN0:1;
    unsigned UEN1:1;
  };
  struct {
    unsigned :13;
    unsigned USIDL:1;
    unsigned :1;
    unsigned UARTEN:1;
  };
  struct {
    unsigned w:32;
  };
} __UCDMODEbits_t;
extern volatile __UCDMODEbits_t UCDMODEbits __asm__ ("UCDMODE") __attribute__((section("sfrs")));
extern volatile unsigned int U2MODECLR __attribute__((section("sfrs")));
extern volatile unsigned int UCDMODECLR __attribute__((section("sfrs")));
extern volatile unsigned int U2MODESET __attribute__((section("sfrs")));
extern volatile unsigned int UCDMODESET __attribute__((section("sfrs")));
extern volatile unsigned int U2MODEINV __attribute__((section("sfrs")));
extern volatile unsigned int UCDMODEINV __attribute__((section("sfrs")));

extern volatile unsigned int U2STA __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned URXDA:1;
    unsigned OERR:1;
    unsigned FERR:1;
    unsigned PERR:1;
    unsigned RIDLE:1;
    unsigned ADDEN:1;
    unsigned URXISEL:2;
    unsigned TRMT:1;
    unsigned UTXBF:1;
    unsigned UTXEN:1;
    unsigned UTXBRK:1;
    unsigned URXEN:1;
    unsigned UTXINV:1;
    unsigned UTXISEL:2;
    unsigned ADDR:8;
    unsigned ADM_EN:1;
  };
  struct {
    unsigned :6;
    unsigned URXISEL0:1;
    unsigned URXISEL1:1;
    unsigned :6;
    unsigned UTXISEL0:1;
    unsigned UTXISEL1:1;
  };
  struct {
    unsigned :14;
    unsigned UTXSEL:2;
  };
  struct {
    unsigned w:32;
  };
} __U2STAbits_t;
extern volatile __U2STAbits_t U2STAbits __asm__ ("U2STA") __attribute__((section("sfrs")));

extern volatile unsigned int UCDSTA __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned URXDA:1;
    unsigned OERR:1;
    unsigned FERR:1;
    unsigned PERR:1;
    unsigned RIDLE:1;
    unsigned ADDEN:1;
    unsigned URXISEL:2;
    unsigned TRMT:1;
    unsigned UTXBF:1;
    unsigned UTXEN:1;
    unsigned UTXBRK:1;
    unsigned URXEN:1;
    unsigned UTXINV:1;
    unsigned UTXISEL:2;
    unsigned ADDR:8;
    unsigned ADM_EN:1;
  };
  struct {
    unsigned :6;
    unsigned URXISEL0:1;
    unsigned URXISEL1:1;
    unsigned :6;
    unsigned UTXISEL0:1;
    unsigned UTXISEL1:1;
  };
  struct {
    unsigned :14;
    unsigned UTXSEL:2;
  };
  struct {
    unsigned w:32;
  };
} __UCDSTAbits_t;
extern volatile __UCDSTAbits_t UCDSTAbits __asm__ ("UCDSTA") __attribute__((section("sfrs")));
extern volatile unsigned int U2STACLR __attribute__((section("sfrs")));
extern volatile unsigned int UCDSTACLR __attribute__((section("sfrs")));
extern volatile unsigned int U2STASET __attribute__((section("sfrs")));
extern volatile unsigned int UCDSTASET __attribute__((section("sfrs")));
extern volatile unsigned int U2STAINV __attribute__((section("sfrs")));
extern volatile unsigned int UCDSTAINV __attribute__((section("sfrs")));

extern volatile unsigned int U2TXREG __attribute__((section("sfrs")));

extern volatile unsigned int UCDTXREG __attribute__((section("sfrs")));

extern volatile unsigned int U2RXREG __attribute__((section("sfrs")));

extern volatile unsigned int UCDRXREG __attribute__((section("sfrs")));

extern volatile unsigned int U2BRG __attribute__((section("sfrs")));

extern volatile unsigned int UCDBRG __attribute__((section("sfrs")));
extern volatile unsigned int U2BRGCLR __attribute__((section("sfrs")));
extern volatile unsigned int UCDBRGCLR __attribute__((section("sfrs")));
extern volatile unsigned int U2BRGSET __attribute__((section("sfrs")));
extern volatile unsigned int UCDBRGSET __attribute__((section("sfrs")));
extern volatile unsigned int U2BRGINV __attribute__((section("sfrs")));
extern volatile unsigned int UCDBRGINV __attribute__((section("sfrs")));

extern volatile unsigned int U3MODE __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned STSEL:1;
    unsigned PDSEL:2;
    unsigned BRGH:1;
    unsigned RXINV:1;
    unsigned ABAUD:1;
    unsigned LPBACK:1;
    unsigned WAKE:1;
    unsigned UEN:2;
    unsigned :1;
    unsigned RTSMD:1;
    unsigned IREN:1;
    unsigned SIDL:1;
    unsigned :1;
    unsigned ON:1;
  };
  struct {
    unsigned :1;
    unsigned PDSEL0:1;
    unsigned PDSEL1:1;
    unsigned :5;
    unsigned UEN0:1;
    unsigned UEN1:1;
  };
  struct {
    unsigned :13;
    unsigned USIDL:1;
    unsigned :1;
    unsigned UARTEN:1;
  };
  struct {
    unsigned w:32;
  };
} __U3MODEbits_t;
extern volatile __U3MODEbits_t U3MODEbits __asm__ ("U3MODE") __attribute__((section("sfrs")));

extern volatile unsigned int UEFMODE __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned STSEL:1;
    unsigned PDSEL:2;
    unsigned BRGH:1;
    unsigned RXINV:1;
    unsigned ABAUD:1;
    unsigned LPBACK:1;
    unsigned WAKE:1;
    unsigned UEN:2;
    unsigned :1;
    unsigned RTSMD:1;
    unsigned IREN:1;
    unsigned SIDL:1;
    unsigned :1;
    unsigned ON:1;
  };
  struct {
    unsigned :1;
    unsigned PDSEL0:1;
    unsigned PDSEL1:1;
    unsigned :5;
    unsigned UEN0:1;
    unsigned UEN1:1;
  };
  struct {
    unsigned :13;
    unsigned USIDL:1;
    unsigned :1;
    unsigned UARTEN:1;
  };
  struct {
    unsigned w:32;
  };
} __UEFMODEbits_t;
extern volatile __UEFMODEbits_t UEFMODEbits __asm__ ("UEFMODE") __attribute__((section("sfrs")));
extern volatile unsigned int U3MODECLR __attribute__((section("sfrs")));
extern volatile unsigned int UEFMODECLR __attribute__((section("sfrs")));
extern volatile unsigned int U3MODESET __attribute__((section("sfrs")));
extern volatile unsigned int UEFMODESET __attribute__((section("sfrs")));
extern volatile unsigned int U3MODEINV __attribute__((section("sfrs")));
extern volatile unsigned int UEFMODEINV __attribute__((section("sfrs")));

extern volatile unsigned int U3STA __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned URXDA:1;
    unsigned OERR:1;
    unsigned FERR:1;
    unsigned PERR:1;
    unsigned RIDLE:1;
    unsigned ADDEN:1;
    unsigned URXISEL:2;
    unsigned TRMT:1;
    unsigned UTXBF:1;
    unsigned UTXEN:1;
    unsigned UTXBRK:1;
    unsigned URXEN:1;
    unsigned UTXINV:1;
    unsigned UTXISEL:2;
    unsigned ADDR:8;
    unsigned ADM_EN:1;
  };
  struct {
    unsigned :6;
    unsigned URXISEL0:1;
    unsigned URXISEL1:1;
    unsigned :6;
    unsigned UTXISEL0:1;
    unsigned UTXISEL1:1;
  };
  struct {
    unsigned :14;
    unsigned UTXSEL:2;
  };
  struct {
    unsigned w:32;
  };
} __U3STAbits_t;
extern volatile __U3STAbits_t U3STAbits __asm__ ("U3STA") __attribute__((section("sfrs")));

extern volatile unsigned int UEFSTA __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned URXDA:1;
    unsigned OERR:1;
    unsigned FERR:1;
    unsigned PERR:1;
    unsigned RIDLE:1;
    unsigned ADDEN:1;
    unsigned URXISEL:2;
    unsigned TRMT:1;
    unsigned UTXBF:1;
    unsigned UTXEN:1;
    unsigned UTXBRK:1;
    unsigned URXEN:1;
    unsigned UTXINV:1;
    unsigned UTXISEL:2;
    unsigned ADDR:8;
    unsigned ADM_EN:1;
  };
  struct {
    unsigned :6;
    unsigned URXISEL0:1;
    unsigned URXISEL1:1;
    unsigned :6;
    unsigned UTXISEL0:1;
    unsigned UTXISEL1:1;
  };
  struct {
    unsigned :14;
    unsigned UTXSEL:2;
  };
  struct {
    unsigned w:32;
  };
} __UEFSTAbits_t;
extern volatile __UEFSTAbits_t UEFSTAbits __asm__ ("UEFSTA") __attribute__((section("sfrs")));
extern volatile unsigned int U3STACLR __attribute__((section("sfrs")));
extern volatile unsigned int UEFSTACLR __attribute__((section("sfrs")));
extern volatile unsigned int U3STASET __attribute__((section("sfrs")));
extern volatile unsigned int UEFSTASET __attribute__((section("sfrs")));
extern volatile unsigned int U3STAINV __attribute__((section("sfrs")));
extern volatile unsigned int UEFSTAINV __attribute__((section("sfrs")));

extern volatile unsigned int U3TXREG __attribute__((section("sfrs")));

extern volatile unsigned int UEFTXREG __attribute__((section("sfrs")));

extern volatile unsigned int U3RXREG __attribute__((section("sfrs")));

extern volatile unsigned int UEFRXREG __attribute__((section("sfrs")));

extern volatile unsigned int U3BRG __attribute__((section("sfrs")));

extern volatile unsigned int UEFBRG __attribute__((section("sfrs")));
extern volatile unsigned int U3BRGCLR __attribute__((section("sfrs")));
extern volatile unsigned int UEFBRGCLR __attribute__((section("sfrs")));
extern volatile unsigned int U3BRGSET __attribute__((section("sfrs")));
extern volatile unsigned int UEFBRGSET __attribute__((section("sfrs")));
extern volatile unsigned int U3BRGINV __attribute__((section("sfrs")));
extern volatile unsigned int UEFBRGINV __attribute__((section("sfrs")));

extern volatile unsigned int U4MODE __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned STSEL:1;
    unsigned PDSEL:2;
    unsigned BRGH:1;
    unsigned RXINV:1;
    unsigned ABAUD:1;
    unsigned LPBACK:1;
    unsigned WAKE:1;
    unsigned UEN:2;
    unsigned :1;
    unsigned RTSMD:1;
    unsigned IREN:1;
    unsigned SIDL:1;
    unsigned :1;
    unsigned ON:1;
  };
  struct {
    unsigned :1;
    unsigned PDSEL0:1;
    unsigned PDSEL1:1;
    unsigned :5;
    unsigned UEN0:1;
    unsigned UEN1:1;
  };
  struct {
    unsigned :13;
    unsigned USIDL:1;
    unsigned :1;
    unsigned UARTEN:1;
  };
  struct {
    unsigned w:32;
  };
} __U4MODEbits_t;
extern volatile __U4MODEbits_t U4MODEbits __asm__ ("U4MODE") __attribute__((section("sfrs")));

extern volatile unsigned int UGHMODE __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned STSEL:1;
    unsigned PDSEL:2;
    unsigned BRGH:1;
    unsigned RXINV:1;
    unsigned ABAUD:1;
    unsigned LPBACK:1;
    unsigned WAKE:1;
    unsigned UEN:2;
    unsigned :1;
    unsigned RTSMD:1;
    unsigned IREN:1;
    unsigned SIDL:1;
    unsigned :1;
    unsigned ON:1;
  };
  struct {
    unsigned :1;
    unsigned PDSEL0:1;
    unsigned PDSEL1:1;
    unsigned :5;
    unsigned UEN0:1;
    unsigned UEN1:1;
  };
  struct {
    unsigned :13;
    unsigned USIDL:1;
    unsigned :1;
    unsigned UARTEN:1;
  };
  struct {
    unsigned w:32;
  };
} __UGHMODEbits_t;
extern volatile __UGHMODEbits_t UGHMODEbits __asm__ ("UGHMODE") __attribute__((section("sfrs")));
extern volatile unsigned int U4MODECLR __attribute__((section("sfrs")));
extern volatile unsigned int UGHMODECLR __attribute__((section("sfrs")));
extern volatile unsigned int U4MODESET __attribute__((section("sfrs")));
extern volatile unsigned int UGHMODESET __attribute__((section("sfrs")));
extern volatile unsigned int U4MODEINV __attribute__((section("sfrs")));
extern volatile unsigned int UGHMODEINV __attribute__((section("sfrs")));

extern volatile unsigned int U4STA __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned URXDA:1;
    unsigned OERR:1;
    unsigned FERR:1;
    unsigned PERR:1;
    unsigned RIDLE:1;
    unsigned ADDEN:1;
    unsigned URXISEL:2;
    unsigned TRMT:1;
    unsigned UTXBF:1;
    unsigned UTXEN:1;
    unsigned UTXBRK:1;
    unsigned URXEN:1;
    unsigned UTXINV:1;
    unsigned UTXISEL:2;
    unsigned ADDR:8;
    unsigned ADM_EN:1;
  };
  struct {
    unsigned :6;
    unsigned URXISEL0:1;
    unsigned URXISEL1:1;
    unsigned :6;
    unsigned UTXISEL0:1;
    unsigned UTXISEL1:1;
  };
  struct {
    unsigned :14;
    unsigned UTXSEL:2;
  };
  struct {
    unsigned w:32;
  };
} __U4STAbits_t;
extern volatile __U4STAbits_t U4STAbits __asm__ ("U4STA") __attribute__((section("sfrs")));

extern volatile unsigned int UGHSTA __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned URXDA:1;
    unsigned OERR:1;
    unsigned FERR:1;
    unsigned PERR:1;
    unsigned RIDLE:1;
    unsigned ADDEN:1;
    unsigned URXISEL:2;
    unsigned TRMT:1;
    unsigned UTXBF:1;
    unsigned UTXEN:1;
    unsigned UTXBRK:1;
    unsigned URXEN:1;
    unsigned UTXINV:1;
    unsigned UTXISEL:2;
    unsigned ADDR:8;
    unsigned ADM_EN:1;
  };
  struct {
    unsigned :6;
    unsigned URXISEL0:1;
    unsigned URXISEL1:1;
    unsigned :6;
    unsigned UTXISEL0:1;
    unsigned UTXISEL1:1;
  };
  struct {
    unsigned :14;
    unsigned UTXSEL:2;
  };
  struct {
    unsigned w:32;
  };
} __UGHSTAbits_t;
extern volatile __UGHSTAbits_t UGHSTAbits __asm__ ("UGHSTA") __attribute__((section("sfrs")));
extern volatile unsigned int U4STACLR __attribute__((section("sfrs")));
extern volatile unsigned int UGHSTACLR __attribute__((section("sfrs")));
extern volatile unsigned int U4STASET __attribute__((section("sfrs")));
extern volatile unsigned int UGHSTASET __attribute__((section("sfrs")));
extern volatile unsigned int U4STAINV __attribute__((section("sfrs")));
extern volatile unsigned int UGHSTAINV __attribute__((section("sfrs")));

extern volatile unsigned int U4TXREG __attribute__((section("sfrs")));

extern volatile unsigned int UGHTXREG __attribute__((section("sfrs")));

extern volatile unsigned int U4RXREG __attribute__((section("sfrs")));

extern volatile unsigned int UGHRXREG __attribute__((section("sfrs")));

extern volatile unsigned int U4BRG __attribute__((section("sfrs")));

extern volatile unsigned int UGHBRG __attribute__((section("sfrs")));
extern volatile unsigned int U4BRGCLR __attribute__((section("sfrs")));
extern volatile unsigned int UGHBRGCLR __attribute__((section("sfrs")));
extern volatile unsigned int U4BRGSET __attribute__((section("sfrs")));
extern volatile unsigned int UGHBRGSET __attribute__((section("sfrs")));
extern volatile unsigned int U4BRGINV __attribute__((section("sfrs")));
extern volatile unsigned int UGHBRGINV __attribute__((section("sfrs")));

extern volatile unsigned int U5MODE __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned STSEL:1;
    unsigned PDSEL:2;
    unsigned BRGH:1;
    unsigned RXINV:1;
    unsigned ABAUD:1;
    unsigned LPBACK:1;
    unsigned WAKE:1;
    unsigned UEN:2;
    unsigned :1;
    unsigned RTSMD:1;
    unsigned IREN:1;
    unsigned SIDL:1;
    unsigned :1;
    unsigned ON:1;
  };
  struct {
    unsigned :1;
    unsigned PDSEL0:1;
    unsigned PDSEL1:1;
    unsigned :5;
    unsigned UEN0:1;
    unsigned UEN1:1;
  };
  struct {
    unsigned :13;
    unsigned USIDL:1;
    unsigned :1;
    unsigned UARTEN:1;
  };
  struct {
    unsigned w:32;
  };
} __U5MODEbits_t;
extern volatile __U5MODEbits_t U5MODEbits __asm__ ("U5MODE") __attribute__((section("sfrs")));

extern volatile unsigned int UJKMODE __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned STSEL:1;
    unsigned PDSEL:2;
    unsigned BRGH:1;
    unsigned RXINV:1;
    unsigned ABAUD:1;
    unsigned LPBACK:1;
    unsigned WAKE:1;
    unsigned UEN:2;
    unsigned :1;
    unsigned RTSMD:1;
    unsigned IREN:1;
    unsigned SIDL:1;
    unsigned :1;
    unsigned ON:1;
  };
  struct {
    unsigned :1;
    unsigned PDSEL0:1;
    unsigned PDSEL1:1;
    unsigned :5;
    unsigned UEN0:1;
    unsigned UEN1:1;
  };
  struct {
    unsigned :13;
    unsigned USIDL:1;
    unsigned :1;
    unsigned UARTEN:1;
  };
  struct {
    unsigned w:32;
  };
} __UJKMODEbits_t;
extern volatile __UJKMODEbits_t UJKMODEbits __asm__ ("UJKMODE") __attribute__((section("sfrs")));
extern volatile unsigned int U5MODECLR __attribute__((section("sfrs")));
extern volatile unsigned int UJKMODECLR __attribute__((section("sfrs")));
extern volatile unsigned int U5MODESET __attribute__((section("sfrs")));
extern volatile unsigned int UJKMODESET __attribute__((section("sfrs")));
extern volatile unsigned int U5MODEINV __attribute__((section("sfrs")));
extern volatile unsigned int UJKMODEINV __attribute__((section("sfrs")));

extern volatile unsigned int U5STA __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned URXDA:1;
    unsigned OERR:1;
    unsigned FERR:1;
    unsigned PERR:1;
    unsigned RIDLE:1;
    unsigned ADDEN:1;
    unsigned URXISEL:2;
    unsigned TRMT:1;
    unsigned UTXBF:1;
    unsigned UTXEN:1;
    unsigned UTXBRK:1;
    unsigned URXEN:1;
    unsigned UTXINV:1;
    unsigned UTXISEL:2;
    unsigned ADDR:8;
    unsigned ADM_EN:1;
  };
  struct {
    unsigned :6;
    unsigned URXISEL0:1;
    unsigned URXISEL1:1;
    unsigned :6;
    unsigned UTXISEL0:1;
    unsigned UTXISEL1:1;
  };
  struct {
    unsigned :14;
    unsigned UTXSEL:2;
  };
  struct {
    unsigned w:32;
  };
} __U5STAbits_t;
extern volatile __U5STAbits_t U5STAbits __asm__ ("U5STA") __attribute__((section("sfrs")));

extern volatile unsigned int UJKSTA __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned URXDA:1;
    unsigned OERR:1;
    unsigned FERR:1;
    unsigned PERR:1;
    unsigned RIDLE:1;
    unsigned ADDEN:1;
    unsigned URXISEL:2;
    unsigned TRMT:1;
    unsigned UTXBF:1;
    unsigned UTXEN:1;
    unsigned UTXBRK:1;
    unsigned URXEN:1;
    unsigned UTXINV:1;
    unsigned UTXISEL:2;
    unsigned ADDR:8;
    unsigned ADM_EN:1;
  };
  struct {
    unsigned :6;
    unsigned URXISEL0:1;
    unsigned URXISEL1:1;
    unsigned :6;
    unsigned UTXISEL0:1;
    unsigned UTXISEL1:1;
  };
  struct {
    unsigned :14;
    unsigned UTXSEL:2;
  };
  struct {
    unsigned w:32;
  };
} __UJKSTAbits_t;
extern volatile __UJKSTAbits_t UJKSTAbits __asm__ ("UJKSTA") __attribute__((section("sfrs")));
extern volatile unsigned int U5STACLR __attribute__((section("sfrs")));
extern volatile unsigned int UJKSTACLR __attribute__((section("sfrs")));
extern volatile unsigned int U5STASET __attribute__((section("sfrs")));
extern volatile unsigned int UJKSTASET __attribute__((section("sfrs")));
extern volatile unsigned int U5STAINV __attribute__((section("sfrs")));
extern volatile unsigned int UJKSTAINV __attribute__((section("sfrs")));

extern volatile unsigned int U5TXREG __attribute__((section("sfrs")));

extern volatile unsigned int UJKTXREG __attribute__((section("sfrs")));

extern volatile unsigned int U5RXREG __attribute__((section("sfrs")));

extern volatile unsigned int UJKRXREG __attribute__((section("sfrs")));

extern volatile unsigned int U5BRG __attribute__((section("sfrs")));

extern volatile unsigned int UJKBRG __attribute__((section("sfrs")));
extern volatile unsigned int U5BRGCLR __attribute__((section("sfrs")));
extern volatile unsigned int UJKBRGCLR __attribute__((section("sfrs")));
extern volatile unsigned int U5BRGSET __attribute__((section("sfrs")));
extern volatile unsigned int UJKBRGSET __attribute__((section("sfrs")));
extern volatile unsigned int U5BRGINV __attribute__((section("sfrs")));
extern volatile unsigned int UJKBRGINV __attribute__((section("sfrs")));

extern volatile unsigned int U6MODE __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned STSEL:1;
    unsigned PDSEL:2;
    unsigned BRGH:1;
    unsigned RXINV:1;
    unsigned ABAUD:1;
    unsigned LPBACK:1;
    unsigned WAKE:1;
    unsigned UEN:2;
    unsigned :1;
    unsigned RTSMD:1;
    unsigned IREN:1;
    unsigned SIDL:1;
    unsigned :1;
    unsigned ON:1;
  };
  struct {
    unsigned :1;
    unsigned PDSEL0:1;
    unsigned PDSEL1:1;
    unsigned :5;
    unsigned UEN0:1;
    unsigned UEN1:1;
  };
  struct {
    unsigned :13;
    unsigned USIDL:1;
    unsigned :1;
    unsigned UARTEN:1;
  };
  struct {
    unsigned w:32;
  };
} __U6MODEbits_t;
extern volatile __U6MODEbits_t U6MODEbits __asm__ ("U6MODE") __attribute__((section("sfrs")));

extern volatile unsigned int ULMMODE __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned STSEL:1;
    unsigned PDSEL:2;
    unsigned BRGH:1;
    unsigned RXINV:1;
    unsigned ABAUD:1;
    unsigned LPBACK:1;
    unsigned WAKE:1;
    unsigned UEN:2;
    unsigned :1;
    unsigned RTSMD:1;
    unsigned IREN:1;
    unsigned SIDL:1;
    unsigned :1;
    unsigned ON:1;
  };
  struct {
    unsigned :1;
    unsigned PDSEL0:1;
    unsigned PDSEL1:1;
    unsigned :5;
    unsigned UEN0:1;
    unsigned UEN1:1;
  };
  struct {
    unsigned :13;
    unsigned USIDL:1;
    unsigned :1;
    unsigned UARTEN:1;
  };
  struct {
    unsigned w:32;
  };
} __ULMMODEbits_t;
extern volatile __ULMMODEbits_t ULMMODEbits __asm__ ("ULMMODE") __attribute__((section("sfrs")));
extern volatile unsigned int U6MODECLR __attribute__((section("sfrs")));
extern volatile unsigned int ULMMODECLR __attribute__((section("sfrs")));
extern volatile unsigned int U6MODESET __attribute__((section("sfrs")));
extern volatile unsigned int ULMMODESET __attribute__((section("sfrs")));
extern volatile unsigned int U6MODEINV __attribute__((section("sfrs")));
extern volatile unsigned int ULMMODEINV __attribute__((section("sfrs")));

extern volatile unsigned int U6STA __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned URXDA:1;
    unsigned OERR:1;
    unsigned FERR:1;
    unsigned PERR:1;
    unsigned RIDLE:1;
    unsigned ADDEN:1;
    unsigned URXISEL:2;
    unsigned TRMT:1;
    unsigned UTXBF:1;
    unsigned UTXEN:1;
    unsigned UTXBRK:1;
    unsigned URXEN:1;
    unsigned UTXINV:1;
    unsigned UTXISEL:2;
    unsigned ADDR:8;
    unsigned ADM_EN:1;
  };
  struct {
    unsigned :6;
    unsigned URXISEL0:1;
    unsigned URXISEL1:1;
    unsigned :6;
    unsigned UTXISEL0:1;
    unsigned UTXISEL1:1;
  };
  struct {
    unsigned :14;
    unsigned UTXSEL:2;
  };
  struct {
    unsigned w:32;
  };
} __U6STAbits_t;
extern volatile __U6STAbits_t U6STAbits __asm__ ("U6STA") __attribute__((section("sfrs")));

extern volatile unsigned int ULMSTA __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned URXDA:1;
    unsigned OERR:1;
    unsigned FERR:1;
    unsigned PERR:1;
    unsigned RIDLE:1;
    unsigned ADDEN:1;
    unsigned URXISEL:2;
    unsigned TRMT:1;
    unsigned UTXBF:1;
    unsigned UTXEN:1;
    unsigned UTXBRK:1;
    unsigned URXEN:1;
    unsigned UTXINV:1;
    unsigned UTXISEL:2;
    unsigned ADDR:8;
    unsigned ADM_EN:1;
  };
  struct {
    unsigned :6;
    unsigned URXISEL0:1;
    unsigned URXISEL1:1;
    unsigned :6;
    unsigned UTXISEL0:1;
    unsigned UTXISEL1:1;
  };
  struct {
    unsigned :14;
    unsigned UTXSEL:2;
  };
  struct {
    unsigned w:32;
  };
} __ULMSTAbits_t;
extern volatile __ULMSTAbits_t ULMSTAbits __asm__ ("ULMSTA") __attribute__((section("sfrs")));
extern volatile unsigned int U6STACLR __attribute__((section("sfrs")));
extern volatile unsigned int ULMSTACLR __attribute__((section("sfrs")));
extern volatile unsigned int U6STASET __attribute__((section("sfrs")));
extern volatile unsigned int ULMSTASET __attribute__((section("sfrs")));
extern volatile unsigned int U6STAINV __attribute__((section("sfrs")));
extern volatile unsigned int ULMSTAINV __attribute__((section("sfrs")));

extern volatile unsigned int U6TXREG __attribute__((section("sfrs")));

extern volatile unsigned int ULMTXREG __attribute__((section("sfrs")));

extern volatile unsigned int U6RXREG __attribute__((section("sfrs")));

extern volatile unsigned int ULMRXREG __attribute__((section("sfrs")));

extern volatile unsigned int U6BRG __attribute__((section("sfrs")));

extern volatile unsigned int ULMBRG __attribute__((section("sfrs")));
extern volatile unsigned int U6BRGCLR __attribute__((section("sfrs")));
extern volatile unsigned int ULMBRGCLR __attribute__((section("sfrs")));
extern volatile unsigned int U6BRGSET __attribute__((section("sfrs")));
extern volatile unsigned int ULMBRGSET __attribute__((section("sfrs")));
extern volatile unsigned int U6BRGINV __attribute__((section("sfrs")));
extern volatile unsigned int ULMBRGINV __attribute__((section("sfrs")));

extern volatile unsigned int PMCON __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned RDSP:1;
    unsigned WRSP:1;
    unsigned :1;
    unsigned CS1P:1;
    unsigned CS2P:1;
    unsigned ALP:1;
    unsigned CSF:2;
    unsigned PTRDEN:1;
    unsigned PTWREN:1;
    unsigned PMPTTL:1;
    unsigned ADRMUX:2;
    unsigned SIDL:1;
    unsigned :1;
    unsigned ON:1;
    unsigned :1;
    unsigned DUALBUF:1;
    unsigned :5;
    unsigned RDSTART:1;
  };
  struct {
    unsigned :6;
    unsigned CSF0:1;
    unsigned CSF1:1;
    unsigned :3;
    unsigned ADRMUX0:1;
    unsigned ADRMUX1:1;
  };
  struct {
    unsigned :13;
    unsigned PSIDL:1;
    unsigned :1;
    unsigned PMPEN:1;
  };
  struct {
    unsigned w:32;
  };
} __PMCONbits_t;
extern volatile __PMCONbits_t PMCONbits __asm__ ("PMCON") __attribute__((section("sfrs")));
extern volatile unsigned int PMCONCLR __attribute__((section("sfrs")));
extern volatile unsigned int PMCONSET __attribute__((section("sfrs")));
extern volatile unsigned int PMCONINV __attribute__((section("sfrs")));

extern volatile unsigned int PMMODE __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned WAITE:2;
    unsigned WAITM:4;
    unsigned WAITB:2;
    unsigned MODE:2;
    unsigned MODE16:1;
    unsigned INCM:2;
    unsigned IRQM:2;
    unsigned BUSY:1;
  };
  struct {
    unsigned WAITE0:1;
    unsigned WAITE1:1;
    unsigned WAITM0:1;
    unsigned WAITM1:1;
    unsigned WAITM2:1;
    unsigned WAITM3:1;
    unsigned WAITB0:1;
    unsigned WAITB1:1;
    unsigned MODE0:1;
    unsigned MODE1:1;
    unsigned :1;
    unsigned INCM0:1;
    unsigned INCM1:1;
    unsigned IRQM0:1;
    unsigned IRQM1:1;
  };
  struct {
    unsigned w:32;
  };
} __PMMODEbits_t;
extern volatile __PMMODEbits_t PMMODEbits __asm__ ("PMMODE") __attribute__((section("sfrs")));
extern volatile unsigned int PMMODECLR __attribute__((section("sfrs")));
extern volatile unsigned int PMMODESET __attribute__((section("sfrs")));
extern volatile unsigned int PMMODEINV __attribute__((section("sfrs")));

extern volatile unsigned int PMADDR __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned ADDR:14;
    unsigned ADDR14:1;
    unsigned ADDR15:1;
  };
  struct {
    unsigned :14;
    unsigned CS:2;
  };
  struct {
    unsigned :14;
    unsigned CS1:1;
    unsigned CS2:1;
  };
  struct {
    unsigned w:32;
  };
} __PMADDRbits_t;
extern volatile __PMADDRbits_t PMADDRbits __asm__ ("PMADDR") __attribute__((section("sfrs")));
extern volatile unsigned int PMADDRCLR __attribute__((section("sfrs")));
extern volatile unsigned int PMADDRSET __attribute__((section("sfrs")));
extern volatile unsigned int PMADDRINV __attribute__((section("sfrs")));

extern volatile unsigned int PMDOUT __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned DATAOUT:32;
  };
  struct {
    unsigned w:32;
  };
} __PMDOUTbits_t;
extern volatile __PMDOUTbits_t PMDOUTbits __asm__ ("PMDOUT") __attribute__((section("sfrs")));
extern volatile unsigned int PMDOUTCLR __attribute__((section("sfrs")));
extern volatile unsigned int PMDOUTSET __attribute__((section("sfrs")));
extern volatile unsigned int PMDOUTINV __attribute__((section("sfrs")));

extern volatile unsigned int PMDIN __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned DATAIN:32;
  };
  struct {
    unsigned w:32;
  };
} __PMDINbits_t;
extern volatile __PMDINbits_t PMDINbits __asm__ ("PMDIN") __attribute__((section("sfrs")));
extern volatile unsigned int PMDINCLR __attribute__((section("sfrs")));
extern volatile unsigned int PMDINSET __attribute__((section("sfrs")));
extern volatile unsigned int PMDININV __attribute__((section("sfrs")));

extern volatile unsigned int PMAEN __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned PTEN:24;
  };
  struct {
    unsigned w:32;
  };
} __PMAENbits_t;
extern volatile __PMAENbits_t PMAENbits __asm__ ("PMAEN") __attribute__((section("sfrs")));
extern volatile unsigned int PMAENCLR __attribute__((section("sfrs")));
extern volatile unsigned int PMAENSET __attribute__((section("sfrs")));
extern volatile unsigned int PMAENINV __attribute__((section("sfrs")));

extern volatile unsigned int PMSTAT __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned OB0E:1;
    unsigned OB1E:1;
    unsigned OB2E:1;
    unsigned OB3E:1;
    unsigned :2;
    unsigned OBUF:1;
    unsigned OBE:1;
    unsigned IB0F:1;
    unsigned IB1F:1;
    unsigned IB2F:1;
    unsigned IB3F:1;
    unsigned :2;
    unsigned IBOV:1;
    unsigned IBF:1;
  };
  struct {
    unsigned w:32;
  };
} __PMSTATbits_t;
extern volatile __PMSTATbits_t PMSTATbits __asm__ ("PMSTAT") __attribute__((section("sfrs")));
extern volatile unsigned int PMSTATCLR __attribute__((section("sfrs")));
extern volatile unsigned int PMSTATSET __attribute__((section("sfrs")));
extern volatile unsigned int PMSTATINV __attribute__((section("sfrs")));

extern volatile unsigned int PMWADDR __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned WADDR:24;
  };
  struct {
    unsigned :14;
    unsigned WCS:2;
    unsigned :6;
    unsigned WCSA:2;
  };
  struct {
    unsigned :14;
    unsigned WCS1:1;
    unsigned WCS2:1;
    unsigned :6;
    unsigned WCS1A:1;
    unsigned WCS2A:1;
  };
  struct {
    unsigned w:32;
  };
  struct {
    unsigned :14;
    unsigned WADDR14:1;
    unsigned WADDR15:1;
    unsigned :6;
    unsigned WADDR22:1;
    unsigned WADDR23:1;
  };
} __PMWADDRbits_t;
extern volatile __PMWADDRbits_t PMWADDRbits __asm__ ("PMWADDR") __attribute__((section("sfrs")));
extern volatile unsigned int PMWADDRCLR __attribute__((section("sfrs")));
extern volatile unsigned int PMWADDRSET __attribute__((section("sfrs")));
extern volatile unsigned int PMWADDRINV __attribute__((section("sfrs")));

extern volatile unsigned int PMRADDR __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned RADDR:14;
    unsigned RADDR14:1;
    unsigned RADDR15:1;
  };
  struct {
    unsigned :14;
    unsigned RCS:2;
  };
  struct {
    unsigned :14;
    unsigned RCS1:1;
    unsigned RCS2:1;
  };
  struct {
    unsigned w:32;
  };
} __PMRADDRbits_t;
extern volatile __PMRADDRbits_t PMRADDRbits __asm__ ("PMRADDR") __attribute__((section("sfrs")));
extern volatile unsigned int PMRADDRCLR __attribute__((section("sfrs")));
extern volatile unsigned int PMRADDRSET __attribute__((section("sfrs")));
extern volatile unsigned int PMRADDRINV __attribute__((section("sfrs")));

extern volatile unsigned int PMRDIN __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned RDATAIN:32;
  };
  struct {
    unsigned w:32;
  };
} __PMRDINbits_t;
extern volatile __PMRDINbits_t PMRDINbits __asm__ ("PMRDIN") __attribute__((section("sfrs")));
extern volatile unsigned int PMRDINCLR __attribute__((section("sfrs")));
extern volatile unsigned int PMRDINSET __attribute__((section("sfrs")));
extern volatile unsigned int PMRDININV __attribute__((section("sfrs")));

extern volatile unsigned int T1CON __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned :1;
    unsigned TCS:1;
    unsigned TSYNC:1;
    unsigned :1;
    unsigned TCKPS:2;
    unsigned :1;
    unsigned TGATE:1;
    unsigned :3;
    unsigned TWIP:1;
    unsigned TWDIS:1;
    unsigned SIDL:1;
    unsigned :1;
    unsigned ON:1;
  };
  struct {
    unsigned :4;
    unsigned TCKPS0:1;
    unsigned TCKPS1:1;
  };
  struct {
    unsigned :13;
    unsigned TSIDL:1;
    unsigned :1;
    unsigned TON:1;
  };
  struct {
    unsigned w:32;
  };
} __T1CONbits_t;
extern volatile __T1CONbits_t T1CONbits __asm__ ("T1CON") __attribute__((section("sfrs")));
extern volatile unsigned int T1CONCLR __attribute__((section("sfrs")));
extern volatile unsigned int T1CONSET __attribute__((section("sfrs")));
extern volatile unsigned int T1CONINV __attribute__((section("sfrs")));

extern volatile unsigned int TMR1 __attribute__((section("sfrs")));
extern volatile unsigned int TMR1CLR __attribute__((section("sfrs")));
extern volatile unsigned int TMR1SET __attribute__((section("sfrs")));
extern volatile unsigned int TMR1INV __attribute__((section("sfrs")));

extern volatile unsigned int PR1 __attribute__((section("sfrs")));
extern volatile unsigned int PR1CLR __attribute__((section("sfrs")));
extern volatile unsigned int PR1SET __attribute__((section("sfrs")));
extern volatile unsigned int PR1INV __attribute__((section("sfrs")));

extern volatile unsigned int T2CON __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned :1;
    unsigned TCS:1;
    unsigned :1;
    unsigned T32:1;
    unsigned TCKPS:3;
    unsigned TGATE:1;
    unsigned :5;
    unsigned SIDL:1;
    unsigned :1;
    unsigned ON:1;
  };
  struct {
    unsigned :4;
    unsigned TCKPS0:1;
    unsigned TCKPS1:1;
    unsigned TCKPS2:1;
  };
  struct {
    unsigned :13;
    unsigned TSIDL:1;
    unsigned :1;
    unsigned TON:1;
  };
  struct {
    unsigned w:32;
  };
} __T2CONbits_t;
extern volatile __T2CONbits_t T2CONbits __asm__ ("T2CON") __attribute__((section("sfrs")));
extern volatile unsigned int T2CONCLR __attribute__((section("sfrs")));
extern volatile unsigned int T2CONSET __attribute__((section("sfrs")));
extern volatile unsigned int T2CONINV __attribute__((section("sfrs")));

extern volatile unsigned int TMR2 __attribute__((section("sfrs")));
extern volatile unsigned int TMR2CLR __attribute__((section("sfrs")));
extern volatile unsigned int TMR2SET __attribute__((section("sfrs")));
extern volatile unsigned int TMR2INV __attribute__((section("sfrs")));

extern volatile unsigned int PR2 __attribute__((section("sfrs")));
extern volatile unsigned int PR2CLR __attribute__((section("sfrs")));
extern volatile unsigned int PR2SET __attribute__((section("sfrs")));
extern volatile unsigned int PR2INV __attribute__((section("sfrs")));

extern volatile unsigned int T3CON __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned :1;
    unsigned TCS:1;
    unsigned :2;
    unsigned TCKPS:3;
    unsigned TGATE:1;
    unsigned :5;
    unsigned SIDL:1;
    unsigned :1;
    unsigned ON:1;
  };
  struct {
    unsigned :4;
    unsigned TCKPS0:1;
    unsigned TCKPS1:1;
    unsigned TCKPS2:1;
  };
  struct {
    unsigned :13;
    unsigned TSIDL:1;
    unsigned :1;
    unsigned TON:1;
  };
  struct {
    unsigned w:32;
  };
} __T3CONbits_t;
extern volatile __T3CONbits_t T3CONbits __asm__ ("T3CON") __attribute__((section("sfrs")));
extern volatile unsigned int T3CONCLR __attribute__((section("sfrs")));
extern volatile unsigned int T3CONSET __attribute__((section("sfrs")));
extern volatile unsigned int T3CONINV __attribute__((section("sfrs")));

extern volatile unsigned int TMR3 __attribute__((section("sfrs")));
extern volatile unsigned int TMR3CLR __attribute__((section("sfrs")));
extern volatile unsigned int TMR3SET __attribute__((section("sfrs")));
extern volatile unsigned int TMR3INV __attribute__((section("sfrs")));

extern volatile unsigned int PR3 __attribute__((section("sfrs")));
extern volatile unsigned int PR3CLR __attribute__((section("sfrs")));
extern volatile unsigned int PR3SET __attribute__((section("sfrs")));
extern volatile unsigned int PR3INV __attribute__((section("sfrs")));

extern volatile unsigned int T4CON __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned :1;
    unsigned TCS:1;
    unsigned :1;
    unsigned T32:1;
    unsigned TCKPS:3;
    unsigned TGATE:1;
    unsigned :5;
    unsigned SIDL:1;
    unsigned :1;
    unsigned ON:1;
  };
  struct {
    unsigned :4;
    unsigned TCKPS0:1;
    unsigned TCKPS1:1;
    unsigned TCKPS2:1;
  };
  struct {
    unsigned :13;
    unsigned TSIDL:1;
    unsigned :1;
    unsigned TON:1;
  };
  struct {
    unsigned w:32;
  };
} __T4CONbits_t;
extern volatile __T4CONbits_t T4CONbits __asm__ ("T4CON") __attribute__((section("sfrs")));
extern volatile unsigned int T4CONCLR __attribute__((section("sfrs")));
extern volatile unsigned int T4CONSET __attribute__((section("sfrs")));
extern volatile unsigned int T4CONINV __attribute__((section("sfrs")));

extern volatile unsigned int TMR4 __attribute__((section("sfrs")));
extern volatile unsigned int TMR4CLR __attribute__((section("sfrs")));
extern volatile unsigned int TMR4SET __attribute__((section("sfrs")));
extern volatile unsigned int TMR4INV __attribute__((section("sfrs")));

extern volatile unsigned int PR4 __attribute__((section("sfrs")));
extern volatile unsigned int PR4CLR __attribute__((section("sfrs")));
extern volatile unsigned int PR4SET __attribute__((section("sfrs")));
extern volatile unsigned int PR4INV __attribute__((section("sfrs")));

extern volatile unsigned int T5CON __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned :1;
    unsigned TCS:1;
    unsigned :2;
    unsigned TCKPS:3;
    unsigned TGATE:1;
    unsigned :5;
    unsigned SIDL:1;
    unsigned :1;
    unsigned ON:1;
  };
  struct {
    unsigned :4;
    unsigned TCKPS0:1;
    unsigned TCKPS1:1;
    unsigned TCKPS2:1;
  };
  struct {
    unsigned :13;
    unsigned TSIDL:1;
    unsigned :1;
    unsigned TON:1;
  };
  struct {
    unsigned w:32;
  };
} __T5CONbits_t;
extern volatile __T5CONbits_t T5CONbits __asm__ ("T5CON") __attribute__((section("sfrs")));
extern volatile unsigned int T5CONCLR __attribute__((section("sfrs")));
extern volatile unsigned int T5CONSET __attribute__((section("sfrs")));
extern volatile unsigned int T5CONINV __attribute__((section("sfrs")));

extern volatile unsigned int TMR5 __attribute__((section("sfrs")));
extern volatile unsigned int TMR5CLR __attribute__((section("sfrs")));
extern volatile unsigned int TMR5SET __attribute__((section("sfrs")));
extern volatile unsigned int TMR5INV __attribute__((section("sfrs")));

extern volatile unsigned int PR5 __attribute__((section("sfrs")));
extern volatile unsigned int PR5CLR __attribute__((section("sfrs")));
extern volatile unsigned int PR5SET __attribute__((section("sfrs")));
extern volatile unsigned int PR5INV __attribute__((section("sfrs")));

extern volatile unsigned int T6CON __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned :1;
    unsigned TCS:1;
    unsigned :1;
    unsigned T32:1;
    unsigned TCKPS:3;
    unsigned TGATE:1;
    unsigned :5;
    unsigned SIDL:1;
    unsigned :1;
    unsigned ON:1;
  };
  struct {
    unsigned :4;
    unsigned TCKPS0:1;
    unsigned TCKPS1:1;
    unsigned TCKPS2:1;
  };
  struct {
    unsigned :13;
    unsigned TSIDL:1;
    unsigned :1;
    unsigned TON:1;
  };
  struct {
    unsigned w:32;
  };
} __T6CONbits_t;
extern volatile __T6CONbits_t T6CONbits __asm__ ("T6CON") __attribute__((section("sfrs")));
extern volatile unsigned int T6CONCLR __attribute__((section("sfrs")));
extern volatile unsigned int T6CONSET __attribute__((section("sfrs")));
extern volatile unsigned int T6CONINV __attribute__((section("sfrs")));

extern volatile unsigned int TMR6 __attribute__((section("sfrs")));
extern volatile unsigned int TMR6CLR __attribute__((section("sfrs")));
extern volatile unsigned int TMR6SET __attribute__((section("sfrs")));
extern volatile unsigned int TMR6INV __attribute__((section("sfrs")));

extern volatile unsigned int PR6 __attribute__((section("sfrs")));
extern volatile unsigned int PR6CLR __attribute__((section("sfrs")));
extern volatile unsigned int PR6SET __attribute__((section("sfrs")));
extern volatile unsigned int PR6INV __attribute__((section("sfrs")));

extern volatile unsigned int T7CON __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned :1;
    unsigned TCS:1;
    unsigned :2;
    unsigned TCKPS:3;
    unsigned TGATE:1;
    unsigned :5;
    unsigned SIDL:1;
    unsigned :1;
    unsigned ON:1;
  };
  struct {
    unsigned :4;
    unsigned TCKPS0:1;
    unsigned TCKPS1:1;
    unsigned TCKPS2:1;
  };
  struct {
    unsigned :13;
    unsigned TSIDL:1;
    unsigned :1;
    unsigned TON:1;
  };
  struct {
    unsigned w:32;
  };
} __T7CONbits_t;
extern volatile __T7CONbits_t T7CONbits __asm__ ("T7CON") __attribute__((section("sfrs")));
extern volatile unsigned int T7CONCLR __attribute__((section("sfrs")));
extern volatile unsigned int T7CONSET __attribute__((section("sfrs")));
extern volatile unsigned int T7CONINV __attribute__((section("sfrs")));

extern volatile unsigned int TMR7 __attribute__((section("sfrs")));
extern volatile unsigned int TMR7CLR __attribute__((section("sfrs")));
extern volatile unsigned int TMR7SET __attribute__((section("sfrs")));
extern volatile unsigned int TMR7INV __attribute__((section("sfrs")));

extern volatile unsigned int PR7 __attribute__((section("sfrs")));
extern volatile unsigned int PR7CLR __attribute__((section("sfrs")));
extern volatile unsigned int PR7SET __attribute__((section("sfrs")));
extern volatile unsigned int PR7INV __attribute__((section("sfrs")));

extern volatile unsigned int T8CON __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned :1;
    unsigned TCS:1;
    unsigned :1;
    unsigned T32:1;
    unsigned TCKPS:3;
    unsigned TGATE:1;
    unsigned :5;
    unsigned SIDL:1;
    unsigned :1;
    unsigned ON:1;
  };
  struct {
    unsigned :4;
    unsigned TCKPS0:1;
    unsigned TCKPS1:1;
    unsigned TCKPS2:1;
  };
  struct {
    unsigned :13;
    unsigned TSIDL:1;
    unsigned :1;
    unsigned TON:1;
  };
  struct {
    unsigned w:32;
  };
} __T8CONbits_t;
extern volatile __T8CONbits_t T8CONbits __asm__ ("T8CON") __attribute__((section("sfrs")));
extern volatile unsigned int T8CONCLR __attribute__((section("sfrs")));
extern volatile unsigned int T8CONSET __attribute__((section("sfrs")));
extern volatile unsigned int T8CONINV __attribute__((section("sfrs")));

extern volatile unsigned int TMR8 __attribute__((section("sfrs")));
extern volatile unsigned int TMR8CLR __attribute__((section("sfrs")));
extern volatile unsigned int TMR8SET __attribute__((section("sfrs")));
extern volatile unsigned int TMR8INV __attribute__((section("sfrs")));

extern volatile unsigned int PR8 __attribute__((section("sfrs")));
extern volatile unsigned int PR8CLR __attribute__((section("sfrs")));
extern volatile unsigned int PR8SET __attribute__((section("sfrs")));
extern volatile unsigned int PR8INV __attribute__((section("sfrs")));

extern volatile unsigned int T9CON __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned :1;
    unsigned TCS:1;
    unsigned :2;
    unsigned TCKPS:3;
    unsigned TGATE:1;
    unsigned :5;
    unsigned SIDL:1;
    unsigned :1;
    unsigned ON:1;
  };
  struct {
    unsigned :4;
    unsigned TCKPS0:1;
    unsigned TCKPS1:1;
    unsigned TCKPS2:1;
  };
  struct {
    unsigned :13;
    unsigned TSIDL:1;
    unsigned :1;
    unsigned TON:1;
  };
  struct {
    unsigned w:32;
  };
} __T9CONbits_t;
extern volatile __T9CONbits_t T9CONbits __asm__ ("T9CON") __attribute__((section("sfrs")));
extern volatile unsigned int T9CONCLR __attribute__((section("sfrs")));
extern volatile unsigned int T9CONSET __attribute__((section("sfrs")));
extern volatile unsigned int T9CONINV __attribute__((section("sfrs")));

extern volatile unsigned int TMR9 __attribute__((section("sfrs")));
extern volatile unsigned int TMR9CLR __attribute__((section("sfrs")));
extern volatile unsigned int TMR9SET __attribute__((section("sfrs")));
extern volatile unsigned int TMR9INV __attribute__((section("sfrs")));

extern volatile unsigned int PR9 __attribute__((section("sfrs")));
extern volatile unsigned int PR9CLR __attribute__((section("sfrs")));
extern volatile unsigned int PR9SET __attribute__((section("sfrs")));
extern volatile unsigned int PR9INV __attribute__((section("sfrs")));

extern volatile unsigned int IC1CON __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned ICM:3;
    unsigned ICBNE:1;
    unsigned ICOV:1;
    unsigned ICI:2;
    unsigned ICTMR:1;
    unsigned C32:1;
    unsigned FEDGE:1;
    unsigned :3;
    unsigned SIDL:1;
    unsigned :1;
    unsigned ON:1;
  };
  struct {
    unsigned ICM0:1;
    unsigned ICM1:1;
    unsigned ICM2:1;
    unsigned :2;
    unsigned ICI0:1;
    unsigned ICI1:1;
  };
  struct {
    unsigned :13;
    unsigned ICSIDL:1;
  };
  struct {
    unsigned w:32;
  };
} __IC1CONbits_t;
extern volatile __IC1CONbits_t IC1CONbits __asm__ ("IC1CON") __attribute__((section("sfrs")));
extern volatile unsigned int IC1CONCLR __attribute__((section("sfrs")));
extern volatile unsigned int IC1CONSET __attribute__((section("sfrs")));
extern volatile unsigned int IC1CONINV __attribute__((section("sfrs")));

extern volatile unsigned int IC1BUF __attribute__((section("sfrs")));

extern volatile unsigned int IC2CON __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned ICM:3;
    unsigned ICBNE:1;
    unsigned ICOV:1;
    unsigned ICI:2;
    unsigned ICTMR:1;
    unsigned C32:1;
    unsigned FEDGE:1;
    unsigned :3;
    unsigned SIDL:1;
    unsigned :1;
    unsigned ON:1;
  };
  struct {
    unsigned ICM0:1;
    unsigned ICM1:1;
    unsigned ICM2:1;
    unsigned :2;
    unsigned ICI0:1;
    unsigned ICI1:1;
  };
  struct {
    unsigned :13;
    unsigned ICSIDL:1;
  };
  struct {
    unsigned w:32;
  };
} __IC2CONbits_t;
extern volatile __IC2CONbits_t IC2CONbits __asm__ ("IC2CON") __attribute__((section("sfrs")));
extern volatile unsigned int IC2CONCLR __attribute__((section("sfrs")));
extern volatile unsigned int IC2CONSET __attribute__((section("sfrs")));
extern volatile unsigned int IC2CONINV __attribute__((section("sfrs")));

extern volatile unsigned int IC2BUF __attribute__((section("sfrs")));

extern volatile unsigned int IC3CON __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned ICM:3;
    unsigned ICBNE:1;
    unsigned ICOV:1;
    unsigned ICI:2;
    unsigned ICTMR:1;
    unsigned C32:1;
    unsigned FEDGE:1;
    unsigned :3;
    unsigned SIDL:1;
    unsigned :1;
    unsigned ON:1;
  };
  struct {
    unsigned ICM0:1;
    unsigned ICM1:1;
    unsigned ICM2:1;
    unsigned :2;
    unsigned ICI0:1;
    unsigned ICI1:1;
  };
  struct {
    unsigned :13;
    unsigned ICSIDL:1;
  };
  struct {
    unsigned w:32;
  };
} __IC3CONbits_t;
extern volatile __IC3CONbits_t IC3CONbits __asm__ ("IC3CON") __attribute__((section("sfrs")));
extern volatile unsigned int IC3CONCLR __attribute__((section("sfrs")));
extern volatile unsigned int IC3CONSET __attribute__((section("sfrs")));
extern volatile unsigned int IC3CONINV __attribute__((section("sfrs")));

extern volatile unsigned int IC3BUF __attribute__((section("sfrs")));

extern volatile unsigned int IC4CON __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned ICM:3;
    unsigned ICBNE:1;
    unsigned ICOV:1;
    unsigned ICI:2;
    unsigned ICTMR:1;
    unsigned C32:1;
    unsigned FEDGE:1;
    unsigned :3;
    unsigned SIDL:1;
    unsigned :1;
    unsigned ON:1;
  };
  struct {
    unsigned ICM0:1;
    unsigned ICM1:1;
    unsigned ICM2:1;
    unsigned :2;
    unsigned ICI0:1;
    unsigned ICI1:1;
  };
  struct {
    unsigned :13;
    unsigned ICSIDL:1;
  };
  struct {
    unsigned w:32;
  };
} __IC4CONbits_t;
extern volatile __IC4CONbits_t IC4CONbits __asm__ ("IC4CON") __attribute__((section("sfrs")));
extern volatile unsigned int IC4CONCLR __attribute__((section("sfrs")));
extern volatile unsigned int IC4CONSET __attribute__((section("sfrs")));
extern volatile unsigned int IC4CONINV __attribute__((section("sfrs")));

extern volatile unsigned int IC4BUF __attribute__((section("sfrs")));

extern volatile unsigned int IC5CON __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned ICM:3;
    unsigned ICBNE:1;
    unsigned ICOV:1;
    unsigned ICI:2;
    unsigned ICTMR:1;
    unsigned C32:1;
    unsigned FEDGE:1;
    unsigned :3;
    unsigned SIDL:1;
    unsigned :1;
    unsigned ON:1;
  };
  struct {
    unsigned ICM0:1;
    unsigned ICM1:1;
    unsigned ICM2:1;
    unsigned :2;
    unsigned ICI0:1;
    unsigned ICI1:1;
  };
  struct {
    unsigned :13;
    unsigned ICSIDL:1;
  };
  struct {
    unsigned w:32;
  };
} __IC5CONbits_t;
extern volatile __IC5CONbits_t IC5CONbits __asm__ ("IC5CON") __attribute__((section("sfrs")));
extern volatile unsigned int IC5CONCLR __attribute__((section("sfrs")));
extern volatile unsigned int IC5CONSET __attribute__((section("sfrs")));
extern volatile unsigned int IC5CONINV __attribute__((section("sfrs")));

extern volatile unsigned int IC5BUF __attribute__((section("sfrs")));

extern volatile unsigned int IC6CON __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned ICM:3;
    unsigned ICBNE:1;
    unsigned ICOV:1;
    unsigned ICI:2;
    unsigned ICTMR:1;
    unsigned C32:1;
    unsigned FEDGE:1;
    unsigned :3;
    unsigned SIDL:1;
    unsigned :1;
    unsigned ON:1;
  };
  struct {
    unsigned ICM0:1;
    unsigned ICM1:1;
    unsigned ICM2:1;
    unsigned :2;
    unsigned ICI0:1;
    unsigned ICI1:1;
  };
  struct {
    unsigned :13;
    unsigned ICSIDL:1;
  };
  struct {
    unsigned w:32;
  };
} __IC6CONbits_t;
extern volatile __IC6CONbits_t IC6CONbits __asm__ ("IC6CON") __attribute__((section("sfrs")));
extern volatile unsigned int IC6CONCLR __attribute__((section("sfrs")));
extern volatile unsigned int IC6CONSET __attribute__((section("sfrs")));
extern volatile unsigned int IC6CONINV __attribute__((section("sfrs")));

extern volatile unsigned int IC6BUF __attribute__((section("sfrs")));

extern volatile unsigned int IC7CON __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned ICM:3;
    unsigned ICBNE:1;
    unsigned ICOV:1;
    unsigned ICI:2;
    unsigned ICTMR:1;
    unsigned C32:1;
    unsigned FEDGE:1;
    unsigned :3;
    unsigned SIDL:1;
    unsigned :1;
    unsigned ON:1;
  };
  struct {
    unsigned ICM0:1;
    unsigned ICM1:1;
    unsigned ICM2:1;
    unsigned :2;
    unsigned ICI0:1;
    unsigned ICI1:1;
  };
  struct {
    unsigned :13;
    unsigned ICSIDL:1;
  };
  struct {
    unsigned w:32;
  };
} __IC7CONbits_t;
extern volatile __IC7CONbits_t IC7CONbits __asm__ ("IC7CON") __attribute__((section("sfrs")));
extern volatile unsigned int IC7CONCLR __attribute__((section("sfrs")));
extern volatile unsigned int IC7CONSET __attribute__((section("sfrs")));
extern volatile unsigned int IC7CONINV __attribute__((section("sfrs")));

extern volatile unsigned int IC7BUF __attribute__((section("sfrs")));

extern volatile unsigned int IC8CON __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned ICM:3;
    unsigned ICBNE:1;
    unsigned ICOV:1;
    unsigned ICI:2;
    unsigned ICTMR:1;
    unsigned C32:1;
    unsigned FEDGE:1;
    unsigned :3;
    unsigned SIDL:1;
    unsigned :1;
    unsigned ON:1;
  };
  struct {
    unsigned ICM0:1;
    unsigned ICM1:1;
    unsigned ICM2:1;
    unsigned :2;
    unsigned ICI0:1;
    unsigned ICI1:1;
  };
  struct {
    unsigned :13;
    unsigned ICSIDL:1;
  };
  struct {
    unsigned w:32;
  };
} __IC8CONbits_t;
extern volatile __IC8CONbits_t IC8CONbits __asm__ ("IC8CON") __attribute__((section("sfrs")));
extern volatile unsigned int IC8CONCLR __attribute__((section("sfrs")));
extern volatile unsigned int IC8CONSET __attribute__((section("sfrs")));
extern volatile unsigned int IC8CONINV __attribute__((section("sfrs")));

extern volatile unsigned int IC8BUF __attribute__((section("sfrs")));

extern volatile unsigned int IC9CON __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned ICM:3;
    unsigned ICBNE:1;
    unsigned ICOV:1;
    unsigned ICI:2;
    unsigned ICTMR:1;
    unsigned C32:1;
    unsigned FEDGE:1;
    unsigned :3;
    unsigned SIDL:1;
    unsigned :1;
    unsigned ON:1;
  };
  struct {
    unsigned ICM0:1;
    unsigned ICM1:1;
    unsigned ICM2:1;
    unsigned :2;
    unsigned ICI0:1;
    unsigned ICI1:1;
  };
  struct {
    unsigned :13;
    unsigned ICSIDL:1;
  };
  struct {
    unsigned w:32;
  };
} __IC9CONbits_t;
extern volatile __IC9CONbits_t IC9CONbits __asm__ ("IC9CON") __attribute__((section("sfrs")));
extern volatile unsigned int IC9CONCLR __attribute__((section("sfrs")));
extern volatile unsigned int IC9CONSET __attribute__((section("sfrs")));
extern volatile unsigned int IC9CONINV __attribute__((section("sfrs")));

extern volatile unsigned int IC9BUF __attribute__((section("sfrs")));

extern volatile unsigned int OC1CON __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned OCM:3;
    unsigned OCTSEL:1;
    unsigned OCFLT:1;
    unsigned OC32:1;
    unsigned :7;
    unsigned SIDL:1;
    unsigned :1;
    unsigned ON:1;
  };
  struct {
    unsigned OCM0:1;
    unsigned OCM1:1;
    unsigned OCM2:1;
  };
  struct {
    unsigned :13;
    unsigned OCSIDL:1;
  };
  struct {
    unsigned w:32;
  };
} __OC1CONbits_t;
extern volatile __OC1CONbits_t OC1CONbits __asm__ ("OC1CON") __attribute__((section("sfrs")));
extern volatile unsigned int OC1CONCLR __attribute__((section("sfrs")));
extern volatile unsigned int OC1CONSET __attribute__((section("sfrs")));
extern volatile unsigned int OC1CONINV __attribute__((section("sfrs")));

extern volatile unsigned int OC1R __attribute__((section("sfrs")));
extern volatile unsigned int OC1RCLR __attribute__((section("sfrs")));
extern volatile unsigned int OC1RSET __attribute__((section("sfrs")));
extern volatile unsigned int OC1RINV __attribute__((section("sfrs")));

extern volatile unsigned int OC1RS __attribute__((section("sfrs")));
extern volatile unsigned int OC1RSCLR __attribute__((section("sfrs")));
extern volatile unsigned int OC1RSSET __attribute__((section("sfrs")));
extern volatile unsigned int OC1RSINV __attribute__((section("sfrs")));

extern volatile unsigned int OC2CON __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned OCM:3;
    unsigned OCTSEL:1;
    unsigned OCFLT:1;
    unsigned OC32:1;
    unsigned :7;
    unsigned SIDL:1;
    unsigned :1;
    unsigned ON:1;
  };
  struct {
    unsigned OCM0:1;
    unsigned OCM1:1;
    unsigned OCM2:1;
  };
  struct {
    unsigned :13;
    unsigned OCSIDL:1;
  };
  struct {
    unsigned w:32;
  };
} __OC2CONbits_t;
extern volatile __OC2CONbits_t OC2CONbits __asm__ ("OC2CON") __attribute__((section("sfrs")));
extern volatile unsigned int OC2CONCLR __attribute__((section("sfrs")));
extern volatile unsigned int OC2CONSET __attribute__((section("sfrs")));
extern volatile unsigned int OC2CONINV __attribute__((section("sfrs")));

extern volatile unsigned int OC2R __attribute__((section("sfrs")));
extern volatile unsigned int OC2RCLR __attribute__((section("sfrs")));
extern volatile unsigned int OC2RSET __attribute__((section("sfrs")));
extern volatile unsigned int OC2RINV __attribute__((section("sfrs")));

extern volatile unsigned int OC2RS __attribute__((section("sfrs")));
extern volatile unsigned int OC2RSCLR __attribute__((section("sfrs")));
extern volatile unsigned int OC2RSSET __attribute__((section("sfrs")));
extern volatile unsigned int OC2RSINV __attribute__((section("sfrs")));

extern volatile unsigned int OC3CON __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned OCM:3;
    unsigned OCTSEL:1;
    unsigned OCFLT:1;
    unsigned OC32:1;
    unsigned :7;
    unsigned SIDL:1;
    unsigned :1;
    unsigned ON:1;
  };
  struct {
    unsigned OCM0:1;
    unsigned OCM1:1;
    unsigned OCM2:1;
  };
  struct {
    unsigned :13;
    unsigned OCSIDL:1;
  };
  struct {
    unsigned w:32;
  };
} __OC3CONbits_t;
extern volatile __OC3CONbits_t OC3CONbits __asm__ ("OC3CON") __attribute__((section("sfrs")));
extern volatile unsigned int OC3CONCLR __attribute__((section("sfrs")));
extern volatile unsigned int OC3CONSET __attribute__((section("sfrs")));
extern volatile unsigned int OC3CONINV __attribute__((section("sfrs")));

extern volatile unsigned int OC3R __attribute__((section("sfrs")));
extern volatile unsigned int OC3RCLR __attribute__((section("sfrs")));
extern volatile unsigned int OC3RSET __attribute__((section("sfrs")));
extern volatile unsigned int OC3RINV __attribute__((section("sfrs")));

extern volatile unsigned int OC3RS __attribute__((section("sfrs")));
extern volatile unsigned int OC3RSCLR __attribute__((section("sfrs")));
extern volatile unsigned int OC3RSSET __attribute__((section("sfrs")));
extern volatile unsigned int OC3RSINV __attribute__((section("sfrs")));

extern volatile unsigned int OC4CON __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned OCM:3;
    unsigned OCTSEL:1;
    unsigned OCFLT:1;
    unsigned OC32:1;
    unsigned :7;
    unsigned SIDL:1;
    unsigned :1;
    unsigned ON:1;
  };
  struct {
    unsigned OCM0:1;
    unsigned OCM1:1;
    unsigned OCM2:1;
  };
  struct {
    unsigned :13;
    unsigned OCSIDL:1;
  };
  struct {
    unsigned w:32;
  };
} __OC4CONbits_t;
extern volatile __OC4CONbits_t OC4CONbits __asm__ ("OC4CON") __attribute__((section("sfrs")));
extern volatile unsigned int OC4CONCLR __attribute__((section("sfrs")));
extern volatile unsigned int OC4CONSET __attribute__((section("sfrs")));
extern volatile unsigned int OC4CONINV __attribute__((section("sfrs")));

extern volatile unsigned int OC4R __attribute__((section("sfrs")));
extern volatile unsigned int OC4RCLR __attribute__((section("sfrs")));
extern volatile unsigned int OC4RSET __attribute__((section("sfrs")));
extern volatile unsigned int OC4RINV __attribute__((section("sfrs")));

extern volatile unsigned int OC4RS __attribute__((section("sfrs")));
extern volatile unsigned int OC4RSCLR __attribute__((section("sfrs")));
extern volatile unsigned int OC4RSSET __attribute__((section("sfrs")));
extern volatile unsigned int OC4RSINV __attribute__((section("sfrs")));

extern volatile unsigned int OC5CON __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned OCM:3;
    unsigned OCTSEL:1;
    unsigned OCFLT:1;
    unsigned OC32:1;
    unsigned :7;
    unsigned SIDL:1;
    unsigned :1;
    unsigned ON:1;
  };
  struct {
    unsigned OCM0:1;
    unsigned OCM1:1;
    unsigned OCM2:1;
  };
  struct {
    unsigned :13;
    unsigned OCSIDL:1;
  };
  struct {
    unsigned w:32;
  };
} __OC5CONbits_t;
extern volatile __OC5CONbits_t OC5CONbits __asm__ ("OC5CON") __attribute__((section("sfrs")));
extern volatile unsigned int OC5CONCLR __attribute__((section("sfrs")));
extern volatile unsigned int OC5CONSET __attribute__((section("sfrs")));
extern volatile unsigned int OC5CONINV __attribute__((section("sfrs")));

extern volatile unsigned int OC5R __attribute__((section("sfrs")));
extern volatile unsigned int OC5RCLR __attribute__((section("sfrs")));
extern volatile unsigned int OC5RSET __attribute__((section("sfrs")));
extern volatile unsigned int OC5RINV __attribute__((section("sfrs")));

extern volatile unsigned int OC5RS __attribute__((section("sfrs")));
extern volatile unsigned int OC5RSCLR __attribute__((section("sfrs")));
extern volatile unsigned int OC5RSSET __attribute__((section("sfrs")));
extern volatile unsigned int OC5RSINV __attribute__((section("sfrs")));

extern volatile unsigned int OC6CON __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned OCM:3;
    unsigned OCTSEL:1;
    unsigned OCFLT:1;
    unsigned OC32:1;
    unsigned :7;
    unsigned SIDL:1;
    unsigned :1;
    unsigned ON:1;
  };
  struct {
    unsigned OCM0:1;
    unsigned OCM1:1;
    unsigned OCM2:1;
  };
  struct {
    unsigned :13;
    unsigned OCSIDL:1;
  };
  struct {
    unsigned w:32;
  };
} __OC6CONbits_t;
extern volatile __OC6CONbits_t OC6CONbits __asm__ ("OC6CON") __attribute__((section("sfrs")));
extern volatile unsigned int OC6CONCLR __attribute__((section("sfrs")));
extern volatile unsigned int OC6CONSET __attribute__((section("sfrs")));
extern volatile unsigned int OC6CONINV __attribute__((section("sfrs")));

extern volatile unsigned int OC6R __attribute__((section("sfrs")));
extern volatile unsigned int OC6RCLR __attribute__((section("sfrs")));
extern volatile unsigned int OC6RSET __attribute__((section("sfrs")));
extern volatile unsigned int OC6RINV __attribute__((section("sfrs")));

extern volatile unsigned int OC6RS __attribute__((section("sfrs")));
extern volatile unsigned int OC6RSCLR __attribute__((section("sfrs")));
extern volatile unsigned int OC6RSSET __attribute__((section("sfrs")));
extern volatile unsigned int OC6RSINV __attribute__((section("sfrs")));

extern volatile unsigned int OC7CON __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned OCM:3;
    unsigned OCTSEL:1;
    unsigned OCFLT:1;
    unsigned OC32:1;
    unsigned :7;
    unsigned SIDL:1;
    unsigned :1;
    unsigned ON:1;
  };
  struct {
    unsigned OCM0:1;
    unsigned OCM1:1;
    unsigned OCM2:1;
  };
  struct {
    unsigned :13;
    unsigned OCSIDL:1;
  };
  struct {
    unsigned w:32;
  };
} __OC7CONbits_t;
extern volatile __OC7CONbits_t OC7CONbits __asm__ ("OC7CON") __attribute__((section("sfrs")));
extern volatile unsigned int OC7CONCLR __attribute__((section("sfrs")));
extern volatile unsigned int OC7CONSET __attribute__((section("sfrs")));
extern volatile unsigned int OC7CONINV __attribute__((section("sfrs")));

extern volatile unsigned int OC7R __attribute__((section("sfrs")));
extern volatile unsigned int OC7RCLR __attribute__((section("sfrs")));
extern volatile unsigned int OC7RSET __attribute__((section("sfrs")));
extern volatile unsigned int OC7RINV __attribute__((section("sfrs")));

extern volatile unsigned int OC7RS __attribute__((section("sfrs")));
extern volatile unsigned int OC7RSCLR __attribute__((section("sfrs")));
extern volatile unsigned int OC7RSSET __attribute__((section("sfrs")));
extern volatile unsigned int OC7RSINV __attribute__((section("sfrs")));

extern volatile unsigned int OC8CON __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned OCM:3;
    unsigned OCTSEL:1;
    unsigned OCFLT:1;
    unsigned OC32:1;
    unsigned :7;
    unsigned SIDL:1;
    unsigned :1;
    unsigned ON:1;
  };
  struct {
    unsigned OCM0:1;
    unsigned OCM1:1;
    unsigned OCM2:1;
  };
  struct {
    unsigned :13;
    unsigned OCSIDL:1;
  };
  struct {
    unsigned w:32;
  };
} __OC8CONbits_t;
extern volatile __OC8CONbits_t OC8CONbits __asm__ ("OC8CON") __attribute__((section("sfrs")));
extern volatile unsigned int OC8CONCLR __attribute__((section("sfrs")));
extern volatile unsigned int OC8CONSET __attribute__((section("sfrs")));
extern volatile unsigned int OC8CONINV __attribute__((section("sfrs")));

extern volatile unsigned int OC8R __attribute__((section("sfrs")));
extern volatile unsigned int OC8RCLR __attribute__((section("sfrs")));
extern volatile unsigned int OC8RSET __attribute__((section("sfrs")));
extern volatile unsigned int OC8RINV __attribute__((section("sfrs")));

extern volatile unsigned int OC8RS __attribute__((section("sfrs")));
extern volatile unsigned int OC8RSCLR __attribute__((section("sfrs")));
extern volatile unsigned int OC8RSSET __attribute__((section("sfrs")));
extern volatile unsigned int OC8RSINV __attribute__((section("sfrs")));

extern volatile unsigned int OC9CON __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned OCM:3;
    unsigned OCTSEL:1;
    unsigned OCFLT:1;
    unsigned OC32:1;
    unsigned :7;
    unsigned SIDL:1;
    unsigned :1;
    unsigned ON:1;
  };
  struct {
    unsigned OCM0:1;
    unsigned OCM1:1;
    unsigned OCM2:1;
  };
  struct {
    unsigned :13;
    unsigned OCSIDL:1;
  };
  struct {
    unsigned w:32;
  };
} __OC9CONbits_t;
extern volatile __OC9CONbits_t OC9CONbits __asm__ ("OC9CON") __attribute__((section("sfrs")));
extern volatile unsigned int OC9CONCLR __attribute__((section("sfrs")));
extern volatile unsigned int OC9CONSET __attribute__((section("sfrs")));
extern volatile unsigned int OC9CONINV __attribute__((section("sfrs")));

extern volatile unsigned int OC9R __attribute__((section("sfrs")));
extern volatile unsigned int OC9RCLR __attribute__((section("sfrs")));
extern volatile unsigned int OC9RSET __attribute__((section("sfrs")));
extern volatile unsigned int OC9RINV __attribute__((section("sfrs")));

extern volatile unsigned int OC9RS __attribute__((section("sfrs")));
extern volatile unsigned int OC9RSCLR __attribute__((section("sfrs")));
extern volatile unsigned int OC9RSSET __attribute__((section("sfrs")));
extern volatile unsigned int OC9RSINV __attribute__((section("sfrs")));

extern volatile unsigned int ADCCON1 __attribute__((section("sfrs")));
typedef struct {
  unsigned :3;
  unsigned STRGLVL:1;
  unsigned IRQVS:3;
  unsigned :2;
  unsigned FSPBCLKEN:1;
  unsigned FSSCLKEN:1;
  unsigned CVDEN:1;
  unsigned AICPMPEN:1;
  unsigned SIDL:1;
  unsigned :1;
  unsigned ON:1;
  unsigned STRGSRC:5;
  unsigned SELRES:2;
  unsigned FRACT:1;
  unsigned TRBSLV:3;
  unsigned TRBMST:3;
  unsigned TRBERR:1;
  unsigned TRBEN:1;
} __ADCCON1bits_t;
extern volatile __ADCCON1bits_t ADCCON1bits __asm__ ("ADCCON1") __attribute__((section("sfrs")));

extern volatile unsigned int ADCCON2 __attribute__((section("sfrs")));
typedef struct {
  unsigned ADCDIV:7;
  unsigned :1;
  unsigned ADCEIS:3;
  unsigned :1;
  unsigned ADCEIOVR:1;
  unsigned EOSIEN:1;
  unsigned REFFLTIEN:1;
  unsigned BGVRIEN:1;
  unsigned SAMC:10;
  unsigned CVDCPL:3;
  unsigned EOSRDY:1;
  unsigned REFFLT:1;
  unsigned BGVRRDY:1;
} __ADCCON2bits_t;
extern volatile __ADCCON2bits_t ADCCON2bits __asm__ ("ADCCON2") __attribute__((section("sfrs")));

extern volatile unsigned int ADCCON3 __attribute__((section("sfrs")));
typedef struct {
  unsigned ADINSEL:6;
  unsigned GSWTRG:1;
  unsigned GLSWTRG:1;
  unsigned RQCNVRT:1;
  unsigned SAMP:1;
  unsigned UPDRDY:1;
  unsigned UPDIEN:1;
  unsigned TRGSUSP:1;
  unsigned VREFSEL:3;
  unsigned DIGEN0:1;
  unsigned DIGEN1:1;
  unsigned DIGEN2:1;
  unsigned DIGEN3:1;
  unsigned DIGEN4:1;
  unsigned :2;
  unsigned DIGEN7:1;
  unsigned CONCLKDIV:6;
  unsigned ADCSEL:2;
} __ADCCON3bits_t;
extern volatile __ADCCON3bits_t ADCCON3bits __asm__ ("ADCCON3") __attribute__((section("sfrs")));

extern volatile unsigned int ADCTRGMODE __attribute__((section("sfrs")));
typedef struct {
  unsigned SSAMPEN0:1;
  unsigned SSAMPEN1:1;
  unsigned SSAMPEN2:1;
  unsigned SSAMPEN3:1;
  unsigned SSAMPEN4:1;
  unsigned :3;
  unsigned STRGEN0:1;
  unsigned STRGEN1:1;
  unsigned STRGEN2:1;
  unsigned STRGEN3:1;
  unsigned STRGEN4:1;
  unsigned :3;
  unsigned SH0ALT:2;
  unsigned SH1ALT:2;
  unsigned SH2ALT:2;
  unsigned SH3ALT:2;
  unsigned SH4ALT:2;
} __ADCTRGMODEbits_t;
extern volatile __ADCTRGMODEbits_t ADCTRGMODEbits __asm__ ("ADCTRGMODE") __attribute__((section("sfrs")));

extern volatile unsigned int ADCIMCON1 __attribute__((section("sfrs")));
typedef struct {
  unsigned SIGN0:1;
  unsigned DIFF0:1;
  unsigned SIGN1:1;
  unsigned DIFF1:1;
  unsigned SIGN2:1;
  unsigned DIFF2:1;
  unsigned SIGN3:1;
  unsigned DIFF3:1;
  unsigned SIGN4:1;
  unsigned DIFF4:1;
  unsigned SIGN5:1;
  unsigned DIFF5:1;
  unsigned SIGN6:1;
  unsigned DIFF6:1;
  unsigned SIGN7:1;
  unsigned DIFF7:1;
  unsigned SIGN8:1;
  unsigned DIFF8:1;
  unsigned SIGN9:1;
  unsigned DIFF9:1;
  unsigned SIGN10:1;
  unsigned DIFF10:1;
  unsigned SIGN11:1;
  unsigned DIFF11:1;
  unsigned SIGN12:1;
  unsigned DIFF12:1;
  unsigned SIGN13:1;
  unsigned DIFF13:1;
  unsigned SIGN14:1;
  unsigned DIFF14:1;
  unsigned SIGN15:1;
  unsigned DIFF15:1;
} __ADCIMCON1bits_t;
extern volatile __ADCIMCON1bits_t ADCIMCON1bits __asm__ ("ADCIMCON1") __attribute__((section("sfrs")));

extern volatile unsigned int ADCIMCON2 __attribute__((section("sfrs")));
typedef struct {
  unsigned SIGN16:1;
  unsigned DIFF16:1;
  unsigned SIGN17:1;
  unsigned DIFF17:1;
  unsigned SIGN18:1;
  unsigned DIFF18:1;
  unsigned SIGN19:1;
  unsigned DIFF19:1;
  unsigned SIGN20:1;
  unsigned DIFF20:1;
  unsigned SIGN21:1;
  unsigned DIFF21:1;
  unsigned SIGN22:1;
  unsigned DIFF22:1;
  unsigned SIGN23:1;
  unsigned DIFF23:1;
  unsigned SIGN24:1;
  unsigned DIFF24:1;
  unsigned SIGN25:1;
  unsigned DIFF25:1;
  unsigned SIGN26:1;
  unsigned DIFF26:1;
  unsigned SIGN27:1;
  unsigned DIFF27:1;
  unsigned SIGN28:1;
  unsigned DIFF28:1;
  unsigned SIGN29:1;
  unsigned DIFF29:1;
  unsigned SIGN30:1;
  unsigned DIFF30:1;
  unsigned SIGN31:1;
  unsigned DIFF31:1;
} __ADCIMCON2bits_t;
extern volatile __ADCIMCON2bits_t ADCIMCON2bits __asm__ ("ADCIMCON2") __attribute__((section("sfrs")));

extern volatile unsigned int ADCIMCON3 __attribute__((section("sfrs")));
typedef struct {
  unsigned SIGN32:1;
  unsigned DIFF32:1;
  unsigned SIGN33:1;
  unsigned DIFF33:1;
  unsigned SIGN34:1;
  unsigned DIFF34:1;
  unsigned SIGN35:1;
  unsigned DIFF35:1;
  unsigned SIGN36:1;
  unsigned DIFF36:1;
  unsigned SIGN37:1;
  unsigned DIFF37:1;
  unsigned SIGN38:1;
  unsigned DIFF38:1;
  unsigned SIGN39:1;
  unsigned DIFF39:1;
  unsigned SIGN40:1;
  unsigned DIFF40:1;
  unsigned SIGN41:1;
  unsigned DIFF41:1;
  unsigned SIGN42:1;
  unsigned DIFF42:1;
  unsigned SIGN43:1;
  unsigned DIFF43:1;
  unsigned SIGN44:1;
  unsigned DIFF44:1;
} __ADCIMCON3bits_t;
extern volatile __ADCIMCON3bits_t ADCIMCON3bits __asm__ ("ADCIMCON3") __attribute__((section("sfrs")));

extern volatile unsigned int ADCGIRQEN1 __attribute__((section("sfrs")));
typedef struct {
  unsigned AGIEN0:1;
  unsigned AGIEN1:1;
  unsigned AGIEN2:1;
  unsigned AGIEN3:1;
  unsigned AGIEN4:1;
  unsigned AGIEN5:1;
  unsigned AGIEN6:1;
  unsigned AGIEN7:1;
  unsigned AGIEN8:1;
  unsigned AGIEN9:1;
  unsigned AGIEN10:1;
  unsigned AGIEN11:1;
  unsigned AGIEN12:1;
  unsigned AGIEN13:1;
  unsigned AGIEN14:1;
  unsigned AGIEN15:1;
  unsigned AGIEN16:1;
  unsigned AGIEN17:1;
  unsigned AGIEN18:1;
  unsigned AGIEN19:1;
  unsigned AGIEN20:1;
  unsigned AGIEN21:1;
  unsigned AGIEN22:1;
  unsigned AGIEN23:1;
  unsigned AGIEN24:1;
  unsigned AGIEN25:1;
  unsigned AGIEN26:1;
  unsigned AGIEN27:1;
  unsigned AGIEN28:1;
  unsigned AGIEN29:1;
  unsigned AGIEN30:1;
  unsigned AGIEN31:1;
} __ADCGIRQEN1bits_t;
extern volatile __ADCGIRQEN1bits_t ADCGIRQEN1bits __asm__ ("ADCGIRQEN1") __attribute__((section("sfrs")));

extern volatile unsigned int ADCGIRQEN2 __attribute__((section("sfrs")));
typedef struct {
  unsigned AGIEN32:1;
  unsigned AGIEN33:1;
  unsigned AGIEN34:1;
  unsigned AGIEN35:1;
  unsigned AGIEN36:1;
  unsigned AGIEN37:1;
  unsigned AGIEN38:1;
  unsigned AGIEN39:1;
  unsigned AGIEN40:1;
  unsigned AGIEN41:1;
  unsigned AGIEN42:1;
  unsigned AGIEN43:1;
  unsigned AGIEN44:1;
} __ADCGIRQEN2bits_t;
extern volatile __ADCGIRQEN2bits_t ADCGIRQEN2bits __asm__ ("ADCGIRQEN2") __attribute__((section("sfrs")));

extern volatile unsigned int ADCCSS1 __attribute__((section("sfrs")));
typedef struct {
  unsigned CSS0:1;
  unsigned CSS1:1;
  unsigned CSS2:1;
  unsigned CSS3:1;
  unsigned CSS4:1;
  unsigned CSS5:1;
  unsigned CSS6:1;
  unsigned CSS7:1;
  unsigned CSS8:1;
  unsigned CSS9:1;
  unsigned CSS10:1;
  unsigned CSS11:1;
  unsigned CSS12:1;
  unsigned CSS13:1;
  unsigned CSS14:1;
  unsigned CSS15:1;
  unsigned CSS16:1;
  unsigned CSS17:1;
  unsigned CSS18:1;
  unsigned CSS19:1;
  unsigned CSS20:1;
  unsigned CSS21:1;
  unsigned CSS22:1;
  unsigned CSS23:1;
  unsigned CSS24:1;
  unsigned CSS25:1;
  unsigned CSS26:1;
  unsigned CSS27:1;
  unsigned CSS28:1;
  unsigned CSS29:1;
  unsigned CSS30:1;
  unsigned CSS31:1;
} __ADCCSS1bits_t;
extern volatile __ADCCSS1bits_t ADCCSS1bits __asm__ ("ADCCSS1") __attribute__((section("sfrs")));

extern volatile unsigned int ADCCSS2 __attribute__((section("sfrs")));
typedef struct {
  unsigned CSS32:1;
  unsigned CSS33:1;
  unsigned CSS34:1;
  unsigned CSS35:1;
  unsigned CSS36:1;
  unsigned CSS37:1;
  unsigned CSS38:1;
  unsigned CSS39:1;
  unsigned CSS40:1;
  unsigned CSS41:1;
  unsigned CSS42:1;
  unsigned CSS43:1;
  unsigned CSS44:1;
} __ADCCSS2bits_t;
extern volatile __ADCCSS2bits_t ADCCSS2bits __asm__ ("ADCCSS2") __attribute__((section("sfrs")));

extern volatile unsigned int ADCDSTAT1 __attribute__((section("sfrs")));
typedef struct {
  unsigned ARDY0:1;
  unsigned ARDY1:1;
  unsigned ARDY2:1;
  unsigned ARDY3:1;
  unsigned ARDY4:1;
  unsigned ARDY5:1;
  unsigned ARDY6:1;
  unsigned ARDY7:1;
  unsigned ARDY8:1;
  unsigned ARDY9:1;
  unsigned ARDY10:1;
  unsigned ARDY11:1;
  unsigned ARDY12:1;
  unsigned ARDY13:1;
  unsigned ARDY14:1;
  unsigned ARDY15:1;
  unsigned ARDY16:1;
  unsigned ARDY17:1;
  unsigned ARDY18:1;
  unsigned ARDY19:1;
  unsigned ARDY20:1;
  unsigned ARDY21:1;
  unsigned ARDY22:1;
  unsigned ARDY23:1;
  unsigned ARDY24:1;
  unsigned ARDY25:1;
  unsigned ARDY26:1;
  unsigned ARDY27:1;
  unsigned ARDY28:1;
  unsigned ARDY29:1;
  unsigned ARDY30:1;
  unsigned ARDY31:1;
} __ADCDSTAT1bits_t;
extern volatile __ADCDSTAT1bits_t ADCDSTAT1bits __asm__ ("ADCDSTAT1") __attribute__((section("sfrs")));

extern volatile unsigned int ADCDSTAT2 __attribute__((section("sfrs")));
typedef struct {
  unsigned ARDY32:1;
  unsigned ARDY33:1;
  unsigned ARDY34:1;
  unsigned ARDY35:1;
  unsigned ARDY36:1;
  unsigned ARDY37:1;
  unsigned ARDY38:1;
  unsigned ARDY39:1;
  unsigned ARDY40:1;
  unsigned ARDY41:1;
  unsigned ARDY42:1;
  unsigned ARDY43:1;
  unsigned ARDY44:1;
} __ADCDSTAT2bits_t;
extern volatile __ADCDSTAT2bits_t ADCDSTAT2bits __asm__ ("ADCDSTAT2") __attribute__((section("sfrs")));

extern volatile unsigned int ADCCMPEN1 __attribute__((section("sfrs")));
typedef struct {
  unsigned CMPE0:1;
  unsigned CMPE1:1;
  unsigned CMPE2:1;
  unsigned CMPE3:1;
  unsigned CMPE4:1;
  unsigned CMPE5:1;
  unsigned CMPE6:1;
  unsigned CMPE7:1;
  unsigned CMPE8:1;
  unsigned CMPE9:1;
  unsigned CMPE10:1;
  unsigned CMPE11:1;
  unsigned CMPE12:1;
  unsigned CMPE13:1;
  unsigned CMPE14:1;
  unsigned CMPE15:1;
  unsigned CMPE16:1;
  unsigned CMPE17:1;
  unsigned CMPE18:1;
  unsigned CMPE19:1;
  unsigned CMPE20:1;
  unsigned CMPE21:1;
  unsigned CMPE22:1;
  unsigned CMPE23:1;
  unsigned CMPE24:1;
  unsigned CMPE25:1;
  unsigned CMPE26:1;
  unsigned CMPE27:1;
  unsigned CMPE28:1;
  unsigned CMPE29:1;
  unsigned CMPE30:1;
  unsigned CMPE31:1;
} __ADCCMPEN1bits_t;
extern volatile __ADCCMPEN1bits_t ADCCMPEN1bits __asm__ ("ADCCMPEN1") __attribute__((section("sfrs")));

extern volatile unsigned int ADCCMP1 __attribute__((section("sfrs")));
typedef struct {
  unsigned DCMPLO:16;
  unsigned DCMPHI:16;
} __ADCCMP1bits_t;
extern volatile __ADCCMP1bits_t ADCCMP1bits __asm__ ("ADCCMP1") __attribute__((section("sfrs")));

extern volatile unsigned int ADCCMPEN2 __attribute__((section("sfrs")));
typedef struct {
  unsigned CMPE0:1;
  unsigned CMPE1:1;
  unsigned CMPE2:1;
  unsigned CMPE3:1;
  unsigned CMPE4:1;
  unsigned CMPE5:1;
  unsigned CMPE6:1;
  unsigned CMPE7:1;
  unsigned CMPE8:1;
  unsigned CMPE9:1;
  unsigned CMPE10:1;
  unsigned CMPE11:1;
  unsigned CMPE12:1;
  unsigned CMPE13:1;
  unsigned CMPE14:1;
  unsigned CMPE15:1;
  unsigned CMPE16:1;
  unsigned CMPE17:1;
  unsigned CMPE18:1;
  unsigned CMPE19:1;
  unsigned CMPE20:1;
  unsigned CMPE21:1;
  unsigned CMPE22:1;
  unsigned CMPE23:1;
  unsigned CMPE24:1;
  unsigned CMPE25:1;
  unsigned CMPE26:1;
  unsigned CMPE27:1;
  unsigned CMPE28:1;
  unsigned CMPE29:1;
  unsigned CMPE30:1;
  unsigned CMPE31:1;
} __ADCCMPEN2bits_t;
extern volatile __ADCCMPEN2bits_t ADCCMPEN2bits __asm__ ("ADCCMPEN2") __attribute__((section("sfrs")));

extern volatile unsigned int ADCCMP2 __attribute__((section("sfrs")));
typedef struct {
  unsigned DCMPLO:16;
  unsigned DCMPHI:16;
} __ADCCMP2bits_t;
extern volatile __ADCCMP2bits_t ADCCMP2bits __asm__ ("ADCCMP2") __attribute__((section("sfrs")));

extern volatile unsigned int ADCCMPEN3 __attribute__((section("sfrs")));
typedef struct {
  unsigned CMPE0:1;
  unsigned CMPE1:1;
  unsigned CMPE2:1;
  unsigned CMPE3:1;
  unsigned CMPE4:1;
  unsigned CMPE5:1;
  unsigned CMPE6:1;
  unsigned CMPE7:1;
  unsigned CMPE8:1;
  unsigned CMPE9:1;
  unsigned CMPE10:1;
  unsigned CMPE11:1;
  unsigned CMPE12:1;
  unsigned CMPE13:1;
  unsigned CMPE14:1;
  unsigned CMPE15:1;
  unsigned CMPE16:1;
  unsigned CMPE17:1;
  unsigned CMPE18:1;
  unsigned CMPE19:1;
  unsigned CMPE20:1;
  unsigned CMPE21:1;
  unsigned CMPE22:1;
  unsigned CMPE23:1;
  unsigned CMPE24:1;
  unsigned CMPE25:1;
  unsigned CMPE26:1;
  unsigned CMPE27:1;
  unsigned CMPE28:1;
  unsigned CMPE29:1;
  unsigned CMPE30:1;
  unsigned CMPE31:1;
} __ADCCMPEN3bits_t;
extern volatile __ADCCMPEN3bits_t ADCCMPEN3bits __asm__ ("ADCCMPEN3") __attribute__((section("sfrs")));

extern volatile unsigned int ADCCMP3 __attribute__((section("sfrs")));
typedef struct {
  unsigned DCMPLO:16;
  unsigned DCMPHI:16;
} __ADCCMP3bits_t;
extern volatile __ADCCMP3bits_t ADCCMP3bits __asm__ ("ADCCMP3") __attribute__((section("sfrs")));

extern volatile unsigned int ADCCMPEN4 __attribute__((section("sfrs")));
typedef struct {
  unsigned CMPE0:1;
  unsigned CMPE1:1;
  unsigned CMPE2:1;
  unsigned CMPE3:1;
  unsigned CMPE4:1;
  unsigned CMPE5:1;
  unsigned CMPE6:1;
  unsigned CMPE7:1;
  unsigned CMPE8:1;
  unsigned CMPE9:1;
  unsigned CMPE10:1;
  unsigned CMPE11:1;
  unsigned CMPE12:1;
  unsigned CMPE13:1;
  unsigned CMPE14:1;
  unsigned CMPE15:1;
  unsigned CMPE16:1;
  unsigned CMPE17:1;
  unsigned CMPE18:1;
  unsigned CMPE19:1;
  unsigned CMPE20:1;
  unsigned CMPE21:1;
  unsigned CMPE22:1;
  unsigned CMPE23:1;
  unsigned CMPE24:1;
  unsigned CMPE25:1;
  unsigned CMPE26:1;
  unsigned CMPE27:1;
  unsigned CMPE28:1;
  unsigned CMPE29:1;
  unsigned CMPE30:1;
  unsigned CMPE31:1;
} __ADCCMPEN4bits_t;
extern volatile __ADCCMPEN4bits_t ADCCMPEN4bits __asm__ ("ADCCMPEN4") __attribute__((section("sfrs")));

extern volatile unsigned int ADCCMP4 __attribute__((section("sfrs")));
typedef struct {
  unsigned DCMPLO:16;
  unsigned DCMPHI:16;
} __ADCCMP4bits_t;
extern volatile __ADCCMP4bits_t ADCCMP4bits __asm__ ("ADCCMP4") __attribute__((section("sfrs")));

extern volatile unsigned int ADCCMPEN5 __attribute__((section("sfrs")));
typedef struct {
  unsigned CMPE0:1;
  unsigned CMPE1:1;
  unsigned CMPE2:1;
  unsigned CMPE3:1;
  unsigned CMPE4:1;
  unsigned CMPE5:1;
  unsigned CMPE6:1;
  unsigned CMPE7:1;
  unsigned CMPE8:1;
  unsigned CMPE9:1;
  unsigned CMPE10:1;
  unsigned CMPE11:1;
  unsigned CMPE12:1;
  unsigned CMPE13:1;
  unsigned CMPE14:1;
  unsigned CMPE15:1;
  unsigned CMPE16:1;
  unsigned CMPE17:1;
  unsigned CMPE18:1;
  unsigned CMPE19:1;
  unsigned CMPE20:1;
  unsigned CMPE21:1;
  unsigned CMPE22:1;
  unsigned CMPE23:1;
  unsigned CMPE24:1;
  unsigned CMPE25:1;
  unsigned CMPE26:1;
  unsigned CMPE27:1;
  unsigned CMPE28:1;
  unsigned CMPE29:1;
  unsigned CMPE30:1;
  unsigned CMPE31:1;
} __ADCCMPEN5bits_t;
extern volatile __ADCCMPEN5bits_t ADCCMPEN5bits __asm__ ("ADCCMPEN5") __attribute__((section("sfrs")));

extern volatile unsigned int ADCCMP5 __attribute__((section("sfrs")));
typedef struct {
  unsigned DCMPLO:16;
  unsigned DCMPHI:16;
} __ADCCMP5bits_t;
extern volatile __ADCCMP5bits_t ADCCMP5bits __asm__ ("ADCCMP5") __attribute__((section("sfrs")));

extern volatile unsigned int ADCCMPEN6 __attribute__((section("sfrs")));
typedef struct {
  unsigned CMPE0:1;
  unsigned CMPE1:1;
  unsigned CMPE2:1;
  unsigned CMPE3:1;
  unsigned CMPE4:1;
  unsigned CMPE5:1;
  unsigned CMPE6:1;
  unsigned CMPE7:1;
  unsigned CMPE8:1;
  unsigned CMPE9:1;
  unsigned CMPE10:1;
  unsigned CMPE11:1;
  unsigned CMPE12:1;
  unsigned CMPE13:1;
  unsigned CMPE14:1;
  unsigned CMPE15:1;
  unsigned CMPE16:1;
  unsigned CMPE17:1;
  unsigned CMPE18:1;
  unsigned CMPE19:1;
  unsigned CMPE20:1;
  unsigned CMPE21:1;
  unsigned CMPE22:1;
  unsigned CMPE23:1;
  unsigned CMPE24:1;
  unsigned CMPE25:1;
  unsigned CMPE26:1;
  unsigned CMPE27:1;
  unsigned CMPE28:1;
  unsigned CMPE29:1;
  unsigned CMPE30:1;
  unsigned CMPE31:1;
} __ADCCMPEN6bits_t;
extern volatile __ADCCMPEN6bits_t ADCCMPEN6bits __asm__ ("ADCCMPEN6") __attribute__((section("sfrs")));

extern volatile unsigned int ADCCMP6 __attribute__((section("sfrs")));
typedef struct {
  unsigned DCMPLO:16;
  unsigned DCMPHI:16;
} __ADCCMP6bits_t;
extern volatile __ADCCMP6bits_t ADCCMP6bits __asm__ ("ADCCMP6") __attribute__((section("sfrs")));

extern volatile unsigned int ADCFLTR1 __attribute__((section("sfrs")));
typedef struct {
  unsigned FLTRDATA:16;
  unsigned CHNLID:5;
  unsigned :3;
  unsigned AFRDY:1;
  unsigned AFGIEN:1;
  unsigned OVRSAM:3;
  unsigned DFMODE:1;
  unsigned DATA16EN:1;
  unsigned AFEN:1;
} __ADCFLTR1bits_t;
extern volatile __ADCFLTR1bits_t ADCFLTR1bits __asm__ ("ADCFLTR1") __attribute__((section("sfrs")));

extern volatile unsigned int ADCFLTR2 __attribute__((section("sfrs")));
typedef struct {
  unsigned FLTRDATA:16;
  unsigned CHNLID:5;
  unsigned :3;
  unsigned AFRDY:1;
  unsigned AFGIEN:1;
  unsigned OVRSAM:3;
  unsigned DFMODE:1;
  unsigned DATA16EN:1;
  unsigned AFEN:1;
} __ADCFLTR2bits_t;
extern volatile __ADCFLTR2bits_t ADCFLTR2bits __asm__ ("ADCFLTR2") __attribute__((section("sfrs")));

extern volatile unsigned int ADCFLTR3 __attribute__((section("sfrs")));
typedef struct {
  unsigned FLTRDATA:16;
  unsigned CHNLID:5;
  unsigned :3;
  unsigned AFRDY:1;
  unsigned AFGIEN:1;
  unsigned OVRSAM:3;
  unsigned DFMODE:1;
  unsigned DATA16EN:1;
  unsigned AFEN:1;
} __ADCFLTR3bits_t;
extern volatile __ADCFLTR3bits_t ADCFLTR3bits __asm__ ("ADCFLTR3") __attribute__((section("sfrs")));

extern volatile unsigned int ADCFLTR4 __attribute__((section("sfrs")));
typedef struct {
  unsigned FLTRDATA:16;
  unsigned CHNLID:5;
  unsigned :3;
  unsigned AFRDY:1;
  unsigned AFGIEN:1;
  unsigned OVRSAM:3;
  unsigned DFMODE:1;
  unsigned DATA16EN:1;
  unsigned AFEN:1;
} __ADCFLTR4bits_t;
extern volatile __ADCFLTR4bits_t ADCFLTR4bits __asm__ ("ADCFLTR4") __attribute__((section("sfrs")));

extern volatile unsigned int ADCFLTR5 __attribute__((section("sfrs")));
typedef struct {
  unsigned FLTRDATA:16;
  unsigned CHNLID:5;
  unsigned :3;
  unsigned AFRDY:1;
  unsigned AFGIEN:1;
  unsigned OVRSAM:3;
  unsigned DFMODE:1;
  unsigned DATA16EN:1;
  unsigned AFEN:1;
} __ADCFLTR5bits_t;
extern volatile __ADCFLTR5bits_t ADCFLTR5bits __asm__ ("ADCFLTR5") __attribute__((section("sfrs")));

extern volatile unsigned int ADCFLTR6 __attribute__((section("sfrs")));
typedef struct {
  unsigned FLTRDATA:16;
  unsigned CHNLID:5;
  unsigned :3;
  unsigned AFRDY:1;
  unsigned AFGIEN:1;
  unsigned OVRSAM:3;
  unsigned DFMODE:1;
  unsigned DATA16EN:1;
  unsigned AFEN:1;
} __ADCFLTR6bits_t;
extern volatile __ADCFLTR6bits_t ADCFLTR6bits __asm__ ("ADCFLTR6") __attribute__((section("sfrs")));

extern volatile unsigned int ADCTRG1 __attribute__((section("sfrs")));
typedef struct {
  unsigned TRGSRC0:5;
  unsigned :3;
  unsigned TRGSRC1:5;
  unsigned :3;
  unsigned TRGSRC2:5;
  unsigned :3;
  unsigned TRGSRC3:5;
} __ADCTRG1bits_t;
extern volatile __ADCTRG1bits_t ADCTRG1bits __asm__ ("ADCTRG1") __attribute__((section("sfrs")));

extern volatile unsigned int ADCTRG2 __attribute__((section("sfrs")));
typedef struct {
  unsigned TRGSRC4:5;
  unsigned :3;
  unsigned TRGSRC5:5;
  unsigned :3;
  unsigned TRGSRC6:5;
  unsigned :3;
  unsigned TRGSRC7:5;
} __ADCTRG2bits_t;
extern volatile __ADCTRG2bits_t ADCTRG2bits __asm__ ("ADCTRG2") __attribute__((section("sfrs")));

extern volatile unsigned int ADCTRG3 __attribute__((section("sfrs")));
typedef struct {
  unsigned TRGSRC8:5;
  unsigned :3;
  unsigned TRGSRC9:5;
  unsigned :3;
  unsigned TRGSRC10:5;
  unsigned :3;
  unsigned TRGSRC11:5;
} __ADCTRG3bits_t;
extern volatile __ADCTRG3bits_t ADCTRG3bits __asm__ ("ADCTRG3") __attribute__((section("sfrs")));

extern volatile unsigned int ADCCMPCON1 __attribute__((section("sfrs")));
typedef struct {
  unsigned IELOLO:1;
  unsigned IELOHI:1;
  unsigned IEHILO:1;
  unsigned IEHIHI:1;
  unsigned IEBTWN:1;
  unsigned DCMPED:1;
  unsigned DCMPGIEN:1;
  unsigned ENDCMP:1;
  unsigned AINID:6;
  unsigned :2;
  unsigned CVDDATA:16;
} __ADCCMPCON1bits_t;
extern volatile __ADCCMPCON1bits_t ADCCMPCON1bits __asm__ ("ADCCMPCON1") __attribute__((section("sfrs")));

extern volatile unsigned int ADCCMPCON2 __attribute__((section("sfrs")));
typedef struct {
  unsigned IELOLO:1;
  unsigned IELOHI:1;
  unsigned IEHILO:1;
  unsigned IEHIHI:1;
  unsigned IEBTWN:1;
  unsigned DCMPED:1;
  unsigned DCMPGIEN:1;
  unsigned ENDCMP:1;
  unsigned AINID:5;
} __ADCCMPCON2bits_t;
extern volatile __ADCCMPCON2bits_t ADCCMPCON2bits __asm__ ("ADCCMPCON2") __attribute__((section("sfrs")));

extern volatile unsigned int ADCCMPCON3 __attribute__((section("sfrs")));
typedef struct {
  unsigned IELOLO:1;
  unsigned IELOHI:1;
  unsigned IEHILO:1;
  unsigned IEHIHI:1;
  unsigned IEBTWN:1;
  unsigned DCMPED:1;
  unsigned DCMPGIEN:1;
  unsigned ENDCMP:1;
  unsigned AINID:5;
} __ADCCMPCON3bits_t;
extern volatile __ADCCMPCON3bits_t ADCCMPCON3bits __asm__ ("ADCCMPCON3") __attribute__((section("sfrs")));

extern volatile unsigned int ADCCMPCON4 __attribute__((section("sfrs")));
typedef struct {
  unsigned IELOLO:1;
  unsigned IELOHI:1;
  unsigned IEHILO:1;
  unsigned IEHIHI:1;
  unsigned IEBTWN:1;
  unsigned DCMPED:1;
  unsigned DCMPGIEN:1;
  unsigned ENDCMP:1;
  unsigned AINID:5;
} __ADCCMPCON4bits_t;
extern volatile __ADCCMPCON4bits_t ADCCMPCON4bits __asm__ ("ADCCMPCON4") __attribute__((section("sfrs")));

extern volatile unsigned int ADCCMPCON5 __attribute__((section("sfrs")));
typedef struct {
  unsigned IELOLO:1;
  unsigned IELOHI:1;
  unsigned IEHILO:1;
  unsigned IEHIHI:1;
  unsigned IEBTWN:1;
  unsigned DCMPED:1;
  unsigned DCMPGIEN:1;
  unsigned ENDCMP:1;
  unsigned AINID:5;
} __ADCCMPCON5bits_t;
extern volatile __ADCCMPCON5bits_t ADCCMPCON5bits __asm__ ("ADCCMPCON5") __attribute__((section("sfrs")));

extern volatile unsigned int ADCCMPCON6 __attribute__((section("sfrs")));
typedef struct {
  unsigned IELOLO:1;
  unsigned IELOHI:1;
  unsigned IEHILO:1;
  unsigned IEHIHI:1;
  unsigned IEBTWN:1;
  unsigned DCMPED:1;
  unsigned DCMPGIEN:1;
  unsigned ENDCMP:1;
  unsigned AINID:5;
} __ADCCMPCON6bits_t;
extern volatile __ADCCMPCON6bits_t ADCCMPCON6bits __asm__ ("ADCCMPCON6") __attribute__((section("sfrs")));

extern volatile unsigned int ADCFSTAT __attribute__((section("sfrs")));
typedef struct {
  unsigned ADCID:3;
  unsigned :4;
  unsigned FSIGN:1;
  unsigned FCNT:8;
  unsigned :5;
  unsigned FWROVERR:1;
  unsigned FRDY:1;
  unsigned FIEN:1;
  unsigned ADC0EN:1;
  unsigned ADC1EN:1;
  unsigned ADC2EN:1;
  unsigned ADC3EN:1;
  unsigned ADC4EN:1;
  unsigned :2;
  unsigned FEN:1;
} __ADCFSTATbits_t;
extern volatile __ADCFSTATbits_t ADCFSTATbits __asm__ ("ADCFSTAT") __attribute__((section("sfrs")));

extern volatile unsigned int ADCFIFO __attribute__((section("sfrs")));
typedef struct {
  unsigned DATA:32;
} __ADCFIFObits_t;
extern volatile __ADCFIFObits_t ADCFIFObits __asm__ ("ADCFIFO") __attribute__((section("sfrs")));

extern volatile unsigned int ADCBASE __attribute__((section("sfrs")));
typedef struct {
  unsigned ADCBASE:16;
} __ADCBASEbits_t;
extern volatile __ADCBASEbits_t ADCBASEbits __asm__ ("ADCBASE") __attribute__((section("sfrs")));

extern volatile unsigned int ADCTRGSNS __attribute__((section("sfrs")));
typedef struct {
  unsigned LVL0:1;
  unsigned LVL1:1;
  unsigned LVL2:1;
  unsigned LVL3:1;
  unsigned LVL4:1;
  unsigned LVL5:1;
  unsigned LVL6:1;
  unsigned LVL7:1;
  unsigned LVL8:1;
  unsigned LVL9:1;
  unsigned LVL10:1;
  unsigned LVL11:1;
} __ADCTRGSNSbits_t;
extern volatile __ADCTRGSNSbits_t ADCTRGSNSbits __asm__ ("ADCTRGSNS") __attribute__((section("sfrs")));

extern volatile unsigned int ADC0TIME __attribute__((section("sfrs")));
typedef struct {
  unsigned SAMC:10;
  unsigned :6;
  unsigned ADCDIV:7;
  unsigned :1;
  unsigned SELRES:2;
  unsigned ADCEIS:3;
} __ADC0TIMEbits_t;
extern volatile __ADC0TIMEbits_t ADC0TIMEbits __asm__ ("ADC0TIME") __attribute__((section("sfrs")));

extern volatile unsigned int ADC1TIME __attribute__((section("sfrs")));
typedef struct {
  unsigned SAMC:10;
  unsigned :6;
  unsigned ADCDIV:7;
  unsigned :1;
  unsigned SELRES:2;
  unsigned ADCEIS:3;
} __ADC1TIMEbits_t;
extern volatile __ADC1TIMEbits_t ADC1TIMEbits __asm__ ("ADC1TIME") __attribute__((section("sfrs")));

extern volatile unsigned int ADC2TIME __attribute__((section("sfrs")));
typedef struct {
  unsigned SAMC:10;
  unsigned :6;
  unsigned ADCDIV:7;
  unsigned :1;
  unsigned SELRES:2;
  unsigned ADCEIS:3;
} __ADC2TIMEbits_t;
extern volatile __ADC2TIMEbits_t ADC2TIMEbits __asm__ ("ADC2TIME") __attribute__((section("sfrs")));

extern volatile unsigned int ADC3TIME __attribute__((section("sfrs")));
typedef struct {
  unsigned SAMC:10;
  unsigned :6;
  unsigned ADCDIV:7;
  unsigned :1;
  unsigned SELRES:2;
  unsigned ADCEIS:3;
} __ADC3TIMEbits_t;
extern volatile __ADC3TIMEbits_t ADC3TIMEbits __asm__ ("ADC3TIME") __attribute__((section("sfrs")));

extern volatile unsigned int ADC4TIME __attribute__((section("sfrs")));
typedef struct {
  unsigned SAMC:10;
  unsigned :6;
  unsigned ADCDIV:7;
  unsigned :1;
  unsigned SELRES:2;
  unsigned ADCEIS:3;
} __ADC4TIMEbits_t;
extern volatile __ADC4TIMEbits_t ADC4TIMEbits __asm__ ("ADC4TIME") __attribute__((section("sfrs")));

extern volatile unsigned int ADCEIEN1 __attribute__((section("sfrs")));
typedef struct {
  unsigned EIEN0:1;
  unsigned EIEN1:1;
  unsigned EIEN2:1;
  unsigned EIEN3:1;
  unsigned EIEN4:1;
  unsigned EIEN5:1;
  unsigned EIEN6:1;
  unsigned EIEN7:1;
  unsigned EIEN8:1;
  unsigned EIEN9:1;
  unsigned EIEN10:1;
  unsigned EIEN11:1;
  unsigned EIEN12:1;
  unsigned EIEN13:1;
  unsigned EIEN14:1;
  unsigned EIEN15:1;
  unsigned EIEN16:1;
  unsigned EIEN17:1;
  unsigned EIEN18:1;
  unsigned EIEN19:1;
  unsigned EIEN20:1;
  unsigned EIEN21:1;
  unsigned EIEN22:1;
  unsigned EIEN23:1;
  unsigned EIEN24:1;
  unsigned EIEN25:1;
  unsigned EIEN26:1;
  unsigned EIEN27:1;
  unsigned EIEN28:1;
  unsigned EIEN29:1;
  unsigned EIEN30:1;
  unsigned EIEN31:1;
} __ADCEIEN1bits_t;
extern volatile __ADCEIEN1bits_t ADCEIEN1bits __asm__ ("ADCEIEN1") __attribute__((section("sfrs")));

extern volatile unsigned int ADCEIEN2 __attribute__((section("sfrs")));
typedef struct {
  unsigned EIEN32:1;
  unsigned EIEN33:1;
  unsigned EIEN34:1;
  unsigned EIEN35:1;
  unsigned EIEN36:1;
  unsigned EIEN37:1;
  unsigned EIEN38:1;
  unsigned EIEN39:1;
  unsigned EIEN40:1;
  unsigned EIEN41:1;
  unsigned EIEN42:1;
  unsigned EIEN43:1;
  unsigned EIEN44:1;
} __ADCEIEN2bits_t;
extern volatile __ADCEIEN2bits_t ADCEIEN2bits __asm__ ("ADCEIEN2") __attribute__((section("sfrs")));

extern volatile unsigned int ADCEISTAT1 __attribute__((section("sfrs")));
typedef struct {
  unsigned EIRDY0:1;
  unsigned EIRDY1:1;
  unsigned EIRDY2:1;
  unsigned EIRDY3:1;
  unsigned EIRDY4:1;
  unsigned EIRDY5:1;
  unsigned EIRDY6:1;
  unsigned EIRDY7:1;
  unsigned EIRDY8:1;
  unsigned EIRDY9:1;
  unsigned EIRDY10:1;
  unsigned EIRDY11:1;
  unsigned EIRDY12:1;
  unsigned EIRDY13:1;
  unsigned EIRDY14:1;
  unsigned EIRDY15:1;
  unsigned EIRDY16:1;
  unsigned EIRDY17:1;
  unsigned EIRDY18:1;
  unsigned EIRDY19:1;
  unsigned EIRDY20:1;
  unsigned EIRDY21:1;
  unsigned EIRDY22:1;
  unsigned EIRDY23:1;
  unsigned EIRDY24:1;
  unsigned EIRDY25:1;
  unsigned EIRDY26:1;
  unsigned EIRDY27:1;
  unsigned EIRDY28:1;
  unsigned EIRDY29:1;
  unsigned EIRDY30:1;
  unsigned EIRDY31:1;
} __ADCEISTAT1bits_t;
extern volatile __ADCEISTAT1bits_t ADCEISTAT1bits __asm__ ("ADCEISTAT1") __attribute__((section("sfrs")));

extern volatile unsigned int ADCEISTAT2 __attribute__((section("sfrs")));
typedef struct {
  unsigned EIRDY32:1;
  unsigned EIRDY33:1;
  unsigned EIRDY34:1;
  unsigned EIRDY35:1;
  unsigned EIRDY36:1;
  unsigned EIRDY37:1;
  unsigned EIRDY38:1;
  unsigned EIRDY39:1;
  unsigned EIRDY40:1;
  unsigned EIRDY41:1;
  unsigned EIRDY42:1;
  unsigned EIRDY43:1;
  unsigned EIRDY44:1;
} __ADCEISTAT2bits_t;
extern volatile __ADCEISTAT2bits_t ADCEISTAT2bits __asm__ ("ADCEISTAT2") __attribute__((section("sfrs")));

extern volatile unsigned int ADCANCON __attribute__((section("sfrs")));
typedef struct {
  unsigned ANEN0:1;
  unsigned ANEN1:1;
  unsigned ANEN2:1;
  unsigned ANEN3:1;
  unsigned ANEN4:1;
  unsigned :2;
  unsigned ANEN7:1;
  unsigned WKRDY0:1;
  unsigned WKRDY1:1;
  unsigned WKRDY2:1;
  unsigned WKRDY3:1;
  unsigned WKRDY4:1;
  unsigned :2;
  unsigned WKRDY7:1;
  unsigned WKIEN0:1;
  unsigned WKIEN1:1;
  unsigned WKIEN2:1;
  unsigned WKIEN3:1;
  unsigned WKIEN4:1;
  unsigned :2;
  unsigned WKIEN7:1;
  unsigned WKUPCLKCNT:4;
} __ADCANCONbits_t;
extern volatile __ADCANCONbits_t ADCANCONbits __asm__ ("ADCANCON") __attribute__((section("sfrs")));

extern volatile unsigned int ADC0CFG __attribute__((section("sfrs")));
typedef struct {
  unsigned ADCCFG:32;
} __ADC0CFGbits_t;
extern volatile __ADC0CFGbits_t ADC0CFGbits __asm__ ("ADC0CFG") __attribute__((section("sfrs")));

extern volatile unsigned int ADC1CFG __attribute__((section("sfrs")));
typedef struct {
  unsigned ADCCFG:32;
} __ADC1CFGbits_t;
extern volatile __ADC1CFGbits_t ADC1CFGbits __asm__ ("ADC1CFG") __attribute__((section("sfrs")));

extern volatile unsigned int ADC2CFG __attribute__((section("sfrs")));
typedef struct {
  unsigned ADCCFG:32;
} __ADC2CFGbits_t;
extern volatile __ADC2CFGbits_t ADC2CFGbits __asm__ ("ADC2CFG") __attribute__((section("sfrs")));

extern volatile unsigned int ADC3CFG __attribute__((section("sfrs")));
typedef struct {
  unsigned ADCCFG:32;
} __ADC3CFGbits_t;
extern volatile __ADC3CFGbits_t ADC3CFGbits __asm__ ("ADC3CFG") __attribute__((section("sfrs")));

extern volatile unsigned int ADC4CFG __attribute__((section("sfrs")));
typedef struct {
  unsigned ADCCFG:32;
} __ADC4CFGbits_t;
extern volatile __ADC4CFGbits_t ADC4CFGbits __asm__ ("ADC4CFG") __attribute__((section("sfrs")));

extern volatile unsigned int ADC7CFG __attribute__((section("sfrs")));
typedef struct {
  unsigned ADCCFG:32;
} __ADC7CFGbits_t;
extern volatile __ADC7CFGbits_t ADC7CFGbits __asm__ ("ADC7CFG") __attribute__((section("sfrs")));

extern volatile unsigned int ADCSYSCFG0 __attribute__((section("sfrs")));
typedef struct {
  unsigned AN0:1;
  unsigned AN1:1;
  unsigned AN2:1;
  unsigned AN3:1;
  unsigned AN4:1;
  unsigned AN5:1;
  unsigned AN6:1;
  unsigned AN7:1;
  unsigned AN8:1;
  unsigned AN9:1;
  unsigned AN10:1;
  unsigned AN11:1;
  unsigned AN12:1;
  unsigned AN13:1;
  unsigned AN14:1;
  unsigned AN15:1;
  unsigned AN16:1;
  unsigned AN17:1;
  unsigned AN18:1;
  unsigned AN19:1;
  unsigned AN20:1;
  unsigned AN21:1;
  unsigned AN22:1;
  unsigned AN23:1;
  unsigned AN24:1;
  unsigned AN25:1;
  unsigned AN26:1;
  unsigned AN27:1;
  unsigned AN28:1;
  unsigned AN29:1;
  unsigned AN30:1;
  unsigned AN31:1;
} __ADCSYSCFG0bits_t;
extern volatile __ADCSYSCFG0bits_t ADCSYSCFG0bits __asm__ ("ADCSYSCFG0") __attribute__((section("sfrs")));

extern volatile unsigned int ADCSYSCFG1 __attribute__((section("sfrs")));
typedef struct {
  unsigned AN32:1;
  unsigned AN33:1;
  unsigned AN34:1;
  unsigned AN35:1;
  unsigned AN36:1;
  unsigned AN37:1;
  unsigned AN38:1;
  unsigned AN39:1;
  unsigned AN40:1;
  unsigned AN41:1;
  unsigned AN42:1;
  unsigned AN43:1;
  unsigned AN44:1;
  unsigned AN45:1;
  unsigned AN46:1;
  unsigned AN47:1;
  unsigned AN48:1;
  unsigned AN49:1;
  unsigned AN50:1;
  unsigned AN51:1;
  unsigned AN52:1;
  unsigned AN53:1;
  unsigned AN54:1;
  unsigned AN55:1;
  unsigned AN56:1;
  unsigned AN57:1;
  unsigned AN58:1;
  unsigned AN59:1;
  unsigned AN60:1;
  unsigned AN61:1;
  unsigned AN62:1;
  unsigned AN63:1;
} __ADCSYSCFG1bits_t;
extern volatile __ADCSYSCFG1bits_t ADCSYSCFG1bits __asm__ ("ADCSYSCFG1") __attribute__((section("sfrs")));

extern volatile unsigned int ADCDATA0 __attribute__((section("sfrs")));
typedef struct {
  unsigned DATA:32;
} __ADCDATA0bits_t;
extern volatile __ADCDATA0bits_t ADCDATA0bits __asm__ ("ADCDATA0") __attribute__((section("sfrs")));

extern volatile unsigned int ADCDATA1 __attribute__((section("sfrs")));
typedef struct {
  unsigned DATA:32;
} __ADCDATA1bits_t;
extern volatile __ADCDATA1bits_t ADCDATA1bits __asm__ ("ADCDATA1") __attribute__((section("sfrs")));

extern volatile unsigned int ADCDATA2 __attribute__((section("sfrs")));
typedef struct {
  unsigned DATA:32;
} __ADCDATA2bits_t;
extern volatile __ADCDATA2bits_t ADCDATA2bits __asm__ ("ADCDATA2") __attribute__((section("sfrs")));

extern volatile unsigned int ADCDATA3 __attribute__((section("sfrs")));
typedef struct {
  unsigned DATA:32;
} __ADCDATA3bits_t;
extern volatile __ADCDATA3bits_t ADCDATA3bits __asm__ ("ADCDATA3") __attribute__((section("sfrs")));

extern volatile unsigned int ADCDATA4 __attribute__((section("sfrs")));
typedef struct {
  unsigned DATA:32;
} __ADCDATA4bits_t;
extern volatile __ADCDATA4bits_t ADCDATA4bits __asm__ ("ADCDATA4") __attribute__((section("sfrs")));

extern volatile unsigned int ADCDATA5 __attribute__((section("sfrs")));
typedef struct {
  unsigned DATA:32;
} __ADCDATA5bits_t;
extern volatile __ADCDATA5bits_t ADCDATA5bits __asm__ ("ADCDATA5") __attribute__((section("sfrs")));

extern volatile unsigned int ADCDATA6 __attribute__((section("sfrs")));
typedef struct {
  unsigned DATA:32;
} __ADCDATA6bits_t;
extern volatile __ADCDATA6bits_t ADCDATA6bits __asm__ ("ADCDATA6") __attribute__((section("sfrs")));

extern volatile unsigned int ADCDATA7 __attribute__((section("sfrs")));
typedef struct {
  unsigned DATA:32;
} __ADCDATA7bits_t;
extern volatile __ADCDATA7bits_t ADCDATA7bits __asm__ ("ADCDATA7") __attribute__((section("sfrs")));

extern volatile unsigned int ADCDATA8 __attribute__((section("sfrs")));
typedef struct {
  unsigned DATA:32;
} __ADCDATA8bits_t;
extern volatile __ADCDATA8bits_t ADCDATA8bits __asm__ ("ADCDATA8") __attribute__((section("sfrs")));

extern volatile unsigned int ADCDATA9 __attribute__((section("sfrs")));
typedef struct {
  unsigned DATA:32;
} __ADCDATA9bits_t;
extern volatile __ADCDATA9bits_t ADCDATA9bits __asm__ ("ADCDATA9") __attribute__((section("sfrs")));

extern volatile unsigned int ADCDATA10 __attribute__((section("sfrs")));
typedef struct {
  unsigned DATA:32;
} __ADCDATA10bits_t;
extern volatile __ADCDATA10bits_t ADCDATA10bits __asm__ ("ADCDATA10") __attribute__((section("sfrs")));

extern volatile unsigned int ADCDATA11 __attribute__((section("sfrs")));
typedef struct {
  unsigned DATA:32;
} __ADCDATA11bits_t;
extern volatile __ADCDATA11bits_t ADCDATA11bits __asm__ ("ADCDATA11") __attribute__((section("sfrs")));

extern volatile unsigned int ADCDATA12 __attribute__((section("sfrs")));
typedef struct {
  unsigned DATA:32;
} __ADCDATA12bits_t;
extern volatile __ADCDATA12bits_t ADCDATA12bits __asm__ ("ADCDATA12") __attribute__((section("sfrs")));

extern volatile unsigned int ADCDATA13 __attribute__((section("sfrs")));
typedef struct {
  unsigned DATA:32;
} __ADCDATA13bits_t;
extern volatile __ADCDATA13bits_t ADCDATA13bits __asm__ ("ADCDATA13") __attribute__((section("sfrs")));

extern volatile unsigned int ADCDATA14 __attribute__((section("sfrs")));
typedef struct {
  unsigned DATA:32;
} __ADCDATA14bits_t;
extern volatile __ADCDATA14bits_t ADCDATA14bits __asm__ ("ADCDATA14") __attribute__((section("sfrs")));

extern volatile unsigned int ADCDATA15 __attribute__((section("sfrs")));
typedef struct {
  unsigned DATA:32;
} __ADCDATA15bits_t;
extern volatile __ADCDATA15bits_t ADCDATA15bits __asm__ ("ADCDATA15") __attribute__((section("sfrs")));

extern volatile unsigned int ADCDATA16 __attribute__((section("sfrs")));
typedef struct {
  unsigned DATA:32;
} __ADCDATA16bits_t;
extern volatile __ADCDATA16bits_t ADCDATA16bits __asm__ ("ADCDATA16") __attribute__((section("sfrs")));

extern volatile unsigned int ADCDATA17 __attribute__((section("sfrs")));
typedef struct {
  unsigned DATA:32;
} __ADCDATA17bits_t;
extern volatile __ADCDATA17bits_t ADCDATA17bits __asm__ ("ADCDATA17") __attribute__((section("sfrs")));

extern volatile unsigned int ADCDATA18 __attribute__((section("sfrs")));
typedef struct {
  unsigned DATA:32;
} __ADCDATA18bits_t;
extern volatile __ADCDATA18bits_t ADCDATA18bits __asm__ ("ADCDATA18") __attribute__((section("sfrs")));

extern volatile unsigned int ADCDATA19 __attribute__((section("sfrs")));
typedef struct {
  unsigned DATA:32;
} __ADCDATA19bits_t;
extern volatile __ADCDATA19bits_t ADCDATA19bits __asm__ ("ADCDATA19") __attribute__((section("sfrs")));

extern volatile unsigned int ADCDATA20 __attribute__((section("sfrs")));
typedef struct {
  unsigned DATA:32;
} __ADCDATA20bits_t;
extern volatile __ADCDATA20bits_t ADCDATA20bits __asm__ ("ADCDATA20") __attribute__((section("sfrs")));

extern volatile unsigned int ADCDATA21 __attribute__((section("sfrs")));
typedef struct {
  unsigned DATA:32;
} __ADCDATA21bits_t;
extern volatile __ADCDATA21bits_t ADCDATA21bits __asm__ ("ADCDATA21") __attribute__((section("sfrs")));

extern volatile unsigned int ADCDATA22 __attribute__((section("sfrs")));
typedef struct {
  unsigned DATA:32;
} __ADCDATA22bits_t;
extern volatile __ADCDATA22bits_t ADCDATA22bits __asm__ ("ADCDATA22") __attribute__((section("sfrs")));

extern volatile unsigned int ADCDATA23 __attribute__((section("sfrs")));
typedef struct {
  unsigned DATA:32;
} __ADCDATA23bits_t;
extern volatile __ADCDATA23bits_t ADCDATA23bits __asm__ ("ADCDATA23") __attribute__((section("sfrs")));

extern volatile unsigned int ADCDATA24 __attribute__((section("sfrs")));
typedef struct {
  unsigned DATA:32;
} __ADCDATA24bits_t;
extern volatile __ADCDATA24bits_t ADCDATA24bits __asm__ ("ADCDATA24") __attribute__((section("sfrs")));

extern volatile unsigned int ADCDATA25 __attribute__((section("sfrs")));
typedef struct {
  unsigned DATA:32;
} __ADCDATA25bits_t;
extern volatile __ADCDATA25bits_t ADCDATA25bits __asm__ ("ADCDATA25") __attribute__((section("sfrs")));

extern volatile unsigned int ADCDATA26 __attribute__((section("sfrs")));
typedef struct {
  unsigned DATA:32;
} __ADCDATA26bits_t;
extern volatile __ADCDATA26bits_t ADCDATA26bits __asm__ ("ADCDATA26") __attribute__((section("sfrs")));

extern volatile unsigned int ADCDATA27 __attribute__((section("sfrs")));
typedef struct {
  unsigned DATA:32;
} __ADCDATA27bits_t;
extern volatile __ADCDATA27bits_t ADCDATA27bits __asm__ ("ADCDATA27") __attribute__((section("sfrs")));

extern volatile unsigned int ADCDATA28 __attribute__((section("sfrs")));
typedef struct {
  unsigned DATA:32;
} __ADCDATA28bits_t;
extern volatile __ADCDATA28bits_t ADCDATA28bits __asm__ ("ADCDATA28") __attribute__((section("sfrs")));

extern volatile unsigned int ADCDATA29 __attribute__((section("sfrs")));
typedef struct {
  unsigned DATA:32;
} __ADCDATA29bits_t;
extern volatile __ADCDATA29bits_t ADCDATA29bits __asm__ ("ADCDATA29") __attribute__((section("sfrs")));

extern volatile unsigned int ADCDATA30 __attribute__((section("sfrs")));
typedef struct {
  unsigned DATA:32;
} __ADCDATA30bits_t;
extern volatile __ADCDATA30bits_t ADCDATA30bits __asm__ ("ADCDATA30") __attribute__((section("sfrs")));

extern volatile unsigned int ADCDATA31 __attribute__((section("sfrs")));
typedef struct {
  unsigned DATA:32;
} __ADCDATA31bits_t;
extern volatile __ADCDATA31bits_t ADCDATA31bits __asm__ ("ADCDATA31") __attribute__((section("sfrs")));

extern volatile unsigned int ADCDATA32 __attribute__((section("sfrs")));
typedef struct {
  unsigned DATA:32;
} __ADCDATA32bits_t;
extern volatile __ADCDATA32bits_t ADCDATA32bits __asm__ ("ADCDATA32") __attribute__((section("sfrs")));

extern volatile unsigned int ADCDATA33 __attribute__((section("sfrs")));
typedef struct {
  unsigned DATA:32;
} __ADCDATA33bits_t;
extern volatile __ADCDATA33bits_t ADCDATA33bits __asm__ ("ADCDATA33") __attribute__((section("sfrs")));

extern volatile unsigned int ADCDATA34 __attribute__((section("sfrs")));
typedef struct {
  unsigned DATA:32;
} __ADCDATA34bits_t;
extern volatile __ADCDATA34bits_t ADCDATA34bits __asm__ ("ADCDATA34") __attribute__((section("sfrs")));

extern volatile unsigned int ADCDATA43 __attribute__((section("sfrs")));
typedef struct {
  unsigned DATA:32;
} __ADCDATA43bits_t;
extern volatile __ADCDATA43bits_t ADCDATA43bits __asm__ ("ADCDATA43") __attribute__((section("sfrs")));

extern volatile unsigned int ADCDATA44 __attribute__((section("sfrs")));
typedef struct {
  unsigned DATA:32;
} __ADCDATA44bits_t;
extern volatile __ADCDATA44bits_t ADCDATA44bits __asm__ ("ADCDATA44") __attribute__((section("sfrs")));

extern volatile unsigned int CM1CON __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned CCH:2;
    unsigned :2;
    unsigned CREF:1;
    unsigned :1;
    unsigned EVPOL:2;
    unsigned COUT:1;
    unsigned :4;
    unsigned CPOL:1;
    unsigned COE:1;
    unsigned ON:1;
  };
  struct {
    unsigned CCH0:1;
    unsigned CCH1:1;
    unsigned :4;
    unsigned EVPOL0:1;
    unsigned EVPOL1:1;
  };
  struct {
    unsigned w:32;
  };
} __CM1CONbits_t;
extern volatile __CM1CONbits_t CM1CONbits __asm__ ("CM1CON") __attribute__((section("sfrs")));
extern volatile unsigned int CM1CONCLR __attribute__((section("sfrs")));
extern volatile unsigned int CM1CONSET __attribute__((section("sfrs")));
extern volatile unsigned int CM1CONINV __attribute__((section("sfrs")));

extern volatile unsigned int CM2CON __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned CCH:2;
    unsigned :2;
    unsigned CREF:1;
    unsigned :1;
    unsigned EVPOL:2;
    unsigned COUT:1;
    unsigned :4;
    unsigned CPOL:1;
    unsigned COE:1;
    unsigned ON:1;
  };
  struct {
    unsigned CCH0:1;
    unsigned CCH1:1;
    unsigned :4;
    unsigned EVPOL0:1;
    unsigned EVPOL1:1;
  };
  struct {
    unsigned w:32;
  };
} __CM2CONbits_t;
extern volatile __CM2CONbits_t CM2CONbits __asm__ ("CM2CON") __attribute__((section("sfrs")));
extern volatile unsigned int CM2CONCLR __attribute__((section("sfrs")));
extern volatile unsigned int CM2CONSET __attribute__((section("sfrs")));
extern volatile unsigned int CM2CONINV __attribute__((section("sfrs")));

extern volatile unsigned int CMSTAT __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned C1OUT:1;
    unsigned C2OUT:1;
    unsigned :11;
    unsigned SIDL:1;
  };
  struct {
    unsigned w:32;
  };
} __CMSTATbits_t;
extern volatile __CMSTATbits_t CMSTATbits __asm__ ("CMSTAT") __attribute__((section("sfrs")));
extern volatile unsigned int CMSTATCLR __attribute__((section("sfrs")));
extern volatile unsigned int CMSTATSET __attribute__((section("sfrs")));
extern volatile unsigned int CMSTATINV __attribute__((section("sfrs")));

extern volatile unsigned int ANSELA __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned ANSA0:1;
    unsigned ANSA1:1;
    unsigned :3;
    unsigned ANSA5:1;
    unsigned :3;
    unsigned ANSA9:1;
    unsigned ANSA10:1;
  };
  struct {
    unsigned w:32;
  };
} __ANSELAbits_t;
extern volatile __ANSELAbits_t ANSELAbits __asm__ ("ANSELA") __attribute__((section("sfrs")));
extern volatile unsigned int ANSELACLR __attribute__((section("sfrs")));
extern volatile unsigned int ANSELASET __attribute__((section("sfrs")));
extern volatile unsigned int ANSELAINV __attribute__((section("sfrs")));

extern volatile unsigned int TRISA __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned TRISA0:1;
    unsigned TRISA1:1;
    unsigned TRISA2:1;
    unsigned TRISA3:1;
    unsigned TRISA4:1;
    unsigned TRISA5:1;
    unsigned TRISA6:1;
    unsigned TRISA7:1;
    unsigned :1;
    unsigned TRISA9:1;
    unsigned TRISA10:1;
    unsigned :3;
    unsigned TRISA14:1;
    unsigned TRISA15:1;
  };
  struct {
    unsigned w:32;
  };
} __TRISAbits_t;
extern volatile __TRISAbits_t TRISAbits __asm__ ("TRISA") __attribute__((section("sfrs")));
extern volatile unsigned int TRISACLR __attribute__((section("sfrs")));
extern volatile unsigned int TRISASET __attribute__((section("sfrs")));
extern volatile unsigned int TRISAINV __attribute__((section("sfrs")));

extern volatile unsigned int PORTA __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned RA0:1;
    unsigned RA1:1;
    unsigned RA2:1;
    unsigned RA3:1;
    unsigned RA4:1;
    unsigned RA5:1;
    unsigned RA6:1;
    unsigned RA7:1;
    unsigned :1;
    unsigned RA9:1;
    unsigned RA10:1;
    unsigned :3;
    unsigned RA14:1;
    unsigned RA15:1;
  };
  struct {
    unsigned w:32;
  };
} __PORTAbits_t;
extern volatile __PORTAbits_t PORTAbits __asm__ ("PORTA") __attribute__((section("sfrs")));
extern volatile unsigned int PORTACLR __attribute__((section("sfrs")));
extern volatile unsigned int PORTASET __attribute__((section("sfrs")));
extern volatile unsigned int PORTAINV __attribute__((section("sfrs")));

extern volatile unsigned int LATA __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned LATA0:1;
    unsigned LATA1:1;
    unsigned LATA2:1;
    unsigned LATA3:1;
    unsigned LATA4:1;
    unsigned LATA5:1;
    unsigned LATA6:1;
    unsigned LATA7:1;
    unsigned :1;
    unsigned LATA9:1;
    unsigned LATA10:1;
    unsigned :3;
    unsigned LATA14:1;
    unsigned LATA15:1;
  };
  struct {
    unsigned w:32;
  };
} __LATAbits_t;
extern volatile __LATAbits_t LATAbits __asm__ ("LATA") __attribute__((section("sfrs")));
extern volatile unsigned int LATACLR __attribute__((section("sfrs")));
extern volatile unsigned int LATASET __attribute__((section("sfrs")));
extern volatile unsigned int LATAINV __attribute__((section("sfrs")));

extern volatile unsigned int ODCA __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned ODCA0:1;
    unsigned ODCA1:1;
    unsigned ODCA2:1;
    unsigned ODCA3:1;
    unsigned ODCA4:1;
    unsigned ODCA5:1;
    unsigned ODCA6:1;
    unsigned ODCA7:1;
    unsigned :1;
    unsigned ODCA9:1;
    unsigned ODCA10:1;
    unsigned :3;
    unsigned ODCA14:1;
    unsigned ODCA15:1;
  };
  struct {
    unsigned w:32;
  };
} __ODCAbits_t;
extern volatile __ODCAbits_t ODCAbits __asm__ ("ODCA") __attribute__((section("sfrs")));
extern volatile unsigned int ODCACLR __attribute__((section("sfrs")));
extern volatile unsigned int ODCASET __attribute__((section("sfrs")));
extern volatile unsigned int ODCAINV __attribute__((section("sfrs")));

extern volatile unsigned int CNPUA __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned CNPUA0:1;
    unsigned CNPUA1:1;
    unsigned CNPUA2:1;
    unsigned CNPUA3:1;
    unsigned CNPUA4:1;
    unsigned CNPUA5:1;
    unsigned CNPUA6:1;
    unsigned CNPUA7:1;
    unsigned :1;
    unsigned CNPUA9:1;
    unsigned CNPUA10:1;
    unsigned :3;
    unsigned CNPUA14:1;
    unsigned CNPUA15:1;
  };
  struct {
    unsigned w:32;
  };
} __CNPUAbits_t;
extern volatile __CNPUAbits_t CNPUAbits __asm__ ("CNPUA") __attribute__((section("sfrs")));
extern volatile unsigned int CNPUACLR __attribute__((section("sfrs")));
extern volatile unsigned int CNPUASET __attribute__((section("sfrs")));
extern volatile unsigned int CNPUAINV __attribute__((section("sfrs")));

extern volatile unsigned int CNPDA __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned CNPDA0:1;
    unsigned CNPDA1:1;
    unsigned CNPDA2:1;
    unsigned CNPDA3:1;
    unsigned CNPDA4:1;
    unsigned CNPDA5:1;
    unsigned CNPDA6:1;
    unsigned CNPDA7:1;
    unsigned :1;
    unsigned CNPDA9:1;
    unsigned CNPDA10:1;
    unsigned :3;
    unsigned CNPDA14:1;
    unsigned CNPDA15:1;
  };
  struct {
    unsigned w:32;
  };
} __CNPDAbits_t;
extern volatile __CNPDAbits_t CNPDAbits __asm__ ("CNPDA") __attribute__((section("sfrs")));
extern volatile unsigned int CNPDACLR __attribute__((section("sfrs")));
extern volatile unsigned int CNPDASET __attribute__((section("sfrs")));
extern volatile unsigned int CNPDAINV __attribute__((section("sfrs")));

extern volatile unsigned int CNCONA __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned :11;
    unsigned EDGEDETECT:1;
    unsigned :1;
    unsigned SIDL:1;
    unsigned :1;
    unsigned ON:1;
  };
  struct {
    unsigned w:32;
  };
} __CNCONAbits_t;
extern volatile __CNCONAbits_t CNCONAbits __asm__ ("CNCONA") __attribute__((section("sfrs")));
extern volatile unsigned int CNCONACLR __attribute__((section("sfrs")));
extern volatile unsigned int CNCONASET __attribute__((section("sfrs")));
extern volatile unsigned int CNCONAINV __attribute__((section("sfrs")));

extern volatile unsigned int CNENA __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned CNIEA0:1;
    unsigned CNIEA1:1;
    unsigned CNIEA2:1;
    unsigned CNIEA3:1;
    unsigned CNIEA4:1;
    unsigned CNIEA5:1;
    unsigned CNIEA6:1;
    unsigned CNIEA7:1;
    unsigned :1;
    unsigned CNIEA9:1;
    unsigned CNIEA10:1;
    unsigned :3;
    unsigned CNIEA14:1;
    unsigned CNIEA15:1;
  };
  struct {
    unsigned w:32;
  };
} __CNENAbits_t;
extern volatile __CNENAbits_t CNENAbits __asm__ ("CNENA") __attribute__((section("sfrs")));
extern volatile unsigned int CNENACLR __attribute__((section("sfrs")));
extern volatile unsigned int CNENASET __attribute__((section("sfrs")));
extern volatile unsigned int CNENAINV __attribute__((section("sfrs")));

extern volatile unsigned int CNSTATA __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned CNSTATA0:1;
    unsigned CNSTATA1:1;
    unsigned CNSTATA2:1;
    unsigned CNSTATA3:1;
    unsigned CNSTATA4:1;
    unsigned CNSTATA5:1;
    unsigned CNSTATA6:1;
    unsigned CNSTATA7:1;
    unsigned :1;
    unsigned CNSTATA9:1;
    unsigned CNSTATA10:1;
    unsigned :3;
    unsigned CNSTATA14:1;
    unsigned CNSTATA15:1;
  };
  struct {
    unsigned w:32;
  };
} __CNSTATAbits_t;
extern volatile __CNSTATAbits_t CNSTATAbits __asm__ ("CNSTATA") __attribute__((section("sfrs")));
extern volatile unsigned int CNSTATACLR __attribute__((section("sfrs")));
extern volatile unsigned int CNSTATASET __attribute__((section("sfrs")));
extern volatile unsigned int CNSTATAINV __attribute__((section("sfrs")));

extern volatile unsigned int CNNEA __attribute__((section("sfrs")));
typedef struct {
  unsigned CNNEA0:1;
  unsigned CNNEA1:1;
  unsigned CNNEA2:1;
  unsigned CNNEA3:1;
  unsigned CNNEA4:1;
  unsigned CNNEA5:1;
  unsigned CNNEA6:1;
  unsigned CNNEA7:1;
  unsigned :1;
  unsigned CNNEA9:1;
  unsigned CNNEA10:1;
  unsigned :3;
  unsigned CNNEA14:1;
  unsigned CNNEA15:1;
} __CNNEAbits_t;
extern volatile __CNNEAbits_t CNNEAbits __asm__ ("CNNEA") __attribute__((section("sfrs")));
extern volatile unsigned int CNNEACLR __attribute__((section("sfrs")));
extern volatile unsigned int CNNEASET __attribute__((section("sfrs")));
extern volatile unsigned int CNNEAINV __attribute__((section("sfrs")));

extern volatile unsigned int CNFA __attribute__((section("sfrs")));
typedef struct {
  unsigned CNFA0:1;
  unsigned CNFA1:1;
  unsigned CNFA2:1;
  unsigned CNFA3:1;
  unsigned CNFA4:1;
  unsigned CNFA5:1;
  unsigned CNFA6:1;
  unsigned CNFA7:1;
  unsigned :1;
  unsigned CNFA9:1;
  unsigned CNFA10:1;
  unsigned :3;
  unsigned CNFA14:1;
  unsigned CNFA15:1;
} __CNFAbits_t;
extern volatile __CNFAbits_t CNFAbits __asm__ ("CNFA") __attribute__((section("sfrs")));
extern volatile unsigned int CNFACLR __attribute__((section("sfrs")));
extern volatile unsigned int CNFASET __attribute__((section("sfrs")));
extern volatile unsigned int CNFAINV __attribute__((section("sfrs")));

extern volatile unsigned int SRCON0A __attribute__((section("sfrs")));
typedef struct {
  unsigned :6;
  unsigned SR0A6:1;
  unsigned SR0A7:1;
} __SRCON0Abits_t;
extern volatile __SRCON0Abits_t SRCON0Abits __asm__ ("SRCON0A") __attribute__((section("sfrs")));
extern volatile unsigned int SRCON0ACLR __attribute__((section("sfrs")));
extern volatile unsigned int SRCON0ASET __attribute__((section("sfrs")));
extern volatile unsigned int SRCON0AINV __attribute__((section("sfrs")));

extern volatile unsigned int SRCON1A __attribute__((section("sfrs")));
typedef struct {
  unsigned :6;
  unsigned SR1A6:1;
  unsigned SR1A7:1;
} __SRCON1Abits_t;
extern volatile __SRCON1Abits_t SRCON1Abits __asm__ ("SRCON1A") __attribute__((section("sfrs")));
extern volatile unsigned int SRCON1ACLR __attribute__((section("sfrs")));
extern volatile unsigned int SRCON1ASET __attribute__((section("sfrs")));
extern volatile unsigned int SRCON1AINV __attribute__((section("sfrs")));

extern volatile unsigned int ANSELB __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned ANSB0:1;
    unsigned ANSB1:1;
    unsigned ANSB2:1;
    unsigned ANSB3:1;
    unsigned ANSB4:1;
    unsigned ANSB5:1;
    unsigned ANSB6:1;
    unsigned ANSB7:1;
    unsigned ANSB8:1;
    unsigned ANSB9:1;
    unsigned ANSB10:1;
    unsigned ANSB11:1;
    unsigned ANSB12:1;
    unsigned ANSB13:1;
    unsigned ANSB14:1;
    unsigned ANSB15:1;
  };
  struct {
    unsigned w:32;
  };
} __ANSELBbits_t;
extern volatile __ANSELBbits_t ANSELBbits __asm__ ("ANSELB") __attribute__((section("sfrs")));
extern volatile unsigned int ANSELBCLR __attribute__((section("sfrs")));
extern volatile unsigned int ANSELBSET __attribute__((section("sfrs")));
extern volatile unsigned int ANSELBINV __attribute__((section("sfrs")));

extern volatile unsigned int TRISB __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned TRISB0:1;
    unsigned TRISB1:1;
    unsigned TRISB2:1;
    unsigned TRISB3:1;
    unsigned TRISB4:1;
    unsigned TRISB5:1;
    unsigned TRISB6:1;
    unsigned TRISB7:1;
    unsigned TRISB8:1;
    unsigned TRISB9:1;
    unsigned TRISB10:1;
    unsigned TRISB11:1;
    unsigned TRISB12:1;
    unsigned TRISB13:1;
    unsigned TRISB14:1;
    unsigned TRISB15:1;
  };
  struct {
    unsigned w:32;
  };
} __TRISBbits_t;
extern volatile __TRISBbits_t TRISBbits __asm__ ("TRISB") __attribute__((section("sfrs")));
extern volatile unsigned int TRISBCLR __attribute__((section("sfrs")));
extern volatile unsigned int TRISBSET __attribute__((section("sfrs")));
extern volatile unsigned int TRISBINV __attribute__((section("sfrs")));

extern volatile unsigned int PORTB __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned RB0:1;
    unsigned RB1:1;
    unsigned RB2:1;
    unsigned RB3:1;
    unsigned RB4:1;
    unsigned RB5:1;
    unsigned RB6:1;
    unsigned RB7:1;
    unsigned RB8:1;
    unsigned RB9:1;
    unsigned RB10:1;
    unsigned RB11:1;
    unsigned RB12:1;
    unsigned RB13:1;
    unsigned RB14:1;
    unsigned RB15:1;
  };
  struct {
    unsigned w:32;
  };
} __PORTBbits_t;
extern volatile __PORTBbits_t PORTBbits __asm__ ("PORTB") __attribute__((section("sfrs")));
extern volatile unsigned int PORTBCLR __attribute__((section("sfrs")));
extern volatile unsigned int PORTBSET __attribute__((section("sfrs")));
extern volatile unsigned int PORTBINV __attribute__((section("sfrs")));

extern volatile unsigned int LATB __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned LATB0:1;
    unsigned LATB1:1;
    unsigned LATB2:1;
    unsigned LATB3:1;
    unsigned LATB4:1;
    unsigned LATB5:1;
    unsigned LATB6:1;
    unsigned LATB7:1;
    unsigned LATB8:1;
    unsigned LATB9:1;
    unsigned LATB10:1;
    unsigned LATB11:1;
    unsigned LATB12:1;
    unsigned LATB13:1;
    unsigned LATB14:1;
    unsigned LATB15:1;
  };
  struct {
    unsigned w:32;
  };
} __LATBbits_t;
extern volatile __LATBbits_t LATBbits __asm__ ("LATB") __attribute__((section("sfrs")));
extern volatile unsigned int LATBCLR __attribute__((section("sfrs")));
extern volatile unsigned int LATBSET __attribute__((section("sfrs")));
extern volatile unsigned int LATBINV __attribute__((section("sfrs")));

extern volatile unsigned int ODCB __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned ODCB0:1;
    unsigned ODCB1:1;
    unsigned ODCB2:1;
    unsigned ODCB3:1;
    unsigned ODCB4:1;
    unsigned ODCB5:1;
    unsigned ODCB6:1;
    unsigned ODCB7:1;
    unsigned ODCB8:1;
    unsigned ODCB9:1;
    unsigned ODCB10:1;
    unsigned ODCB11:1;
    unsigned ODCB12:1;
    unsigned ODCB13:1;
    unsigned ODCB14:1;
    unsigned ODCB15:1;
  };
  struct {
    unsigned w:32;
  };
} __ODCBbits_t;
extern volatile __ODCBbits_t ODCBbits __asm__ ("ODCB") __attribute__((section("sfrs")));
extern volatile unsigned int ODCBCLR __attribute__((section("sfrs")));
extern volatile unsigned int ODCBSET __attribute__((section("sfrs")));
extern volatile unsigned int ODCBINV __attribute__((section("sfrs")));

extern volatile unsigned int CNPUB __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned CNPUB0:1;
    unsigned CNPUB1:1;
    unsigned CNPUB2:1;
    unsigned CNPUB3:1;
    unsigned CNPUB4:1;
    unsigned CNPUB5:1;
    unsigned CNPUB6:1;
    unsigned CNPUB7:1;
    unsigned CNPUB8:1;
    unsigned CNPUB9:1;
    unsigned CNPUB10:1;
    unsigned CNPUB11:1;
    unsigned CNPUB12:1;
    unsigned CNPUB13:1;
    unsigned CNPUB14:1;
    unsigned CNPUB15:1;
  };
  struct {
    unsigned w:32;
  };
} __CNPUBbits_t;
extern volatile __CNPUBbits_t CNPUBbits __asm__ ("CNPUB") __attribute__((section("sfrs")));
extern volatile unsigned int CNPUBCLR __attribute__((section("sfrs")));
extern volatile unsigned int CNPUBSET __attribute__((section("sfrs")));
extern volatile unsigned int CNPUBINV __attribute__((section("sfrs")));

extern volatile unsigned int CNPDB __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned CNPDB0:1;
    unsigned CNPDB1:1;
    unsigned CNPDB2:1;
    unsigned CNPDB3:1;
    unsigned CNPDB4:1;
    unsigned CNPDB5:1;
    unsigned CNPDB6:1;
    unsigned CNPDB7:1;
    unsigned CNPDB8:1;
    unsigned CNPDB9:1;
    unsigned CNPDB10:1;
    unsigned CNPDB11:1;
    unsigned CNPDB12:1;
    unsigned CNPDB13:1;
    unsigned CNPDB14:1;
    unsigned CNPDB15:1;
  };
  struct {
    unsigned w:32;
  };
} __CNPDBbits_t;
extern volatile __CNPDBbits_t CNPDBbits __asm__ ("CNPDB") __attribute__((section("sfrs")));
extern volatile unsigned int CNPDBCLR __attribute__((section("sfrs")));
extern volatile unsigned int CNPDBSET __attribute__((section("sfrs")));
extern volatile unsigned int CNPDBINV __attribute__((section("sfrs")));

extern volatile unsigned int CNCONB __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned :11;
    unsigned EDGEDETECT:1;
    unsigned :1;
    unsigned SIDL:1;
    unsigned :1;
    unsigned ON:1;
  };
  struct {
    unsigned w:32;
  };
} __CNCONBbits_t;
extern volatile __CNCONBbits_t CNCONBbits __asm__ ("CNCONB") __attribute__((section("sfrs")));
extern volatile unsigned int CNCONBCLR __attribute__((section("sfrs")));
extern volatile unsigned int CNCONBSET __attribute__((section("sfrs")));
extern volatile unsigned int CNCONBINV __attribute__((section("sfrs")));

extern volatile unsigned int CNENB __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned CNIEB0:1;
    unsigned CNIEB1:1;
    unsigned CNIEB2:1;
    unsigned CNIEB3:1;
    unsigned CNIEB4:1;
    unsigned CNIEB5:1;
    unsigned CNIEB6:1;
    unsigned CNIEB7:1;
    unsigned CNIEB8:1;
    unsigned CNIEB9:1;
    unsigned CNIEB10:1;
    unsigned CNIEB11:1;
    unsigned CNIEB12:1;
    unsigned CNIEB13:1;
    unsigned CNIEB14:1;
    unsigned CNIEB15:1;
  };
  struct {
    unsigned w:32;
  };
} __CNENBbits_t;
extern volatile __CNENBbits_t CNENBbits __asm__ ("CNENB") __attribute__((section("sfrs")));
extern volatile unsigned int CNENBCLR __attribute__((section("sfrs")));
extern volatile unsigned int CNENBSET __attribute__((section("sfrs")));
extern volatile unsigned int CNENBINV __attribute__((section("sfrs")));

extern volatile unsigned int CNSTATB __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned CNSTATB0:1;
    unsigned CNSTATB1:1;
    unsigned CNSTATB2:1;
    unsigned CNSTATB3:1;
    unsigned CNSTATB4:1;
    unsigned CNSTATB5:1;
    unsigned CNSTATB6:1;
    unsigned CNSTATB7:1;
    unsigned CNSTATB8:1;
    unsigned CNSTATB9:1;
    unsigned CNSTATB10:1;
    unsigned CNSTATB11:1;
    unsigned CNSTATB12:1;
    unsigned CNSTATB13:1;
    unsigned CNSTATB14:1;
    unsigned CNSTATB15:1;
  };
  struct {
    unsigned w:32;
  };
} __CNSTATBbits_t;
extern volatile __CNSTATBbits_t CNSTATBbits __asm__ ("CNSTATB") __attribute__((section("sfrs")));
extern volatile unsigned int CNSTATBCLR __attribute__((section("sfrs")));
extern volatile unsigned int CNSTATBSET __attribute__((section("sfrs")));
extern volatile unsigned int CNSTATBINV __attribute__((section("sfrs")));

extern volatile unsigned int CNNEB __attribute__((section("sfrs")));
typedef struct {
  unsigned CNNEB0:1;
  unsigned CNNEB1:1;
  unsigned CNNEB2:1;
  unsigned CNNEB3:1;
  unsigned CNNEB4:1;
  unsigned CNNEB5:1;
  unsigned CNNEB6:1;
  unsigned CNNEB7:1;
  unsigned CNNEB8:1;
  unsigned CNNEB9:1;
  unsigned CNNEB10:1;
  unsigned CNNEB11:1;
  unsigned CNNEB12:1;
  unsigned CNNEB13:1;
  unsigned CNNEB14:1;
  unsigned CNNEB15:1;
} __CNNEBbits_t;
extern volatile __CNNEBbits_t CNNEBbits __asm__ ("CNNEB") __attribute__((section("sfrs")));
extern volatile unsigned int CNNEBCLR __attribute__((section("sfrs")));
extern volatile unsigned int CNNEBSET __attribute__((section("sfrs")));
extern volatile unsigned int CNNEBINV __attribute__((section("sfrs")));

extern volatile unsigned int CNFB __attribute__((section("sfrs")));
typedef struct {
  unsigned CNFB0:1;
  unsigned CNFB1:1;
  unsigned CNFB2:1;
  unsigned CNFB3:1;
  unsigned CNFB4:1;
  unsigned CNFB5:1;
  unsigned CNFB6:1;
  unsigned CNFB7:1;
  unsigned CNFB8:1;
  unsigned CNFB9:1;
  unsigned CNFB10:1;
  unsigned CNFB11:1;
  unsigned CNFB12:1;
  unsigned CNFB13:1;
  unsigned CNFB14:1;
  unsigned CNFB15:1;
} __CNFBbits_t;
extern volatile __CNFBbits_t CNFBbits __asm__ ("CNFB") __attribute__((section("sfrs")));
extern volatile unsigned int CNFBCLR __attribute__((section("sfrs")));
extern volatile unsigned int CNFBSET __attribute__((section("sfrs")));
extern volatile unsigned int CNFBINV __attribute__((section("sfrs")));

extern volatile unsigned int SRCON0B __attribute__((section("sfrs")));
typedef struct {
  unsigned :3;
  unsigned SR0B3:1;
  unsigned :1;
  unsigned SR0B5:1;
  unsigned :2;
  unsigned SR0B8:1;
  unsigned SR0B9:1;
  unsigned SR0B10:1;
  unsigned :3;
  unsigned SR0B14:1;
} __SRCON0Bbits_t;
extern volatile __SRCON0Bbits_t SRCON0Bbits __asm__ ("SRCON0B") __attribute__((section("sfrs")));
extern volatile unsigned int SRCON0BCLR __attribute__((section("sfrs")));
extern volatile unsigned int SRCON0BSET __attribute__((section("sfrs")));
extern volatile unsigned int SRCON0BINV __attribute__((section("sfrs")));

extern volatile unsigned int SRCON1B __attribute__((section("sfrs")));
typedef struct {
  unsigned :3;
  unsigned SR1B3:1;
  unsigned :1;
  unsigned SR1B5:1;
  unsigned :2;
  unsigned SR1B8:1;
  unsigned SR1B9:1;
  unsigned SR1B10:1;
  unsigned :3;
  unsigned SR1B14:1;
} __SRCON1Bbits_t;
extern volatile __SRCON1Bbits_t SRCON1Bbits __asm__ ("SRCON1B") __attribute__((section("sfrs")));
extern volatile unsigned int SRCON1BCLR __attribute__((section("sfrs")));
extern volatile unsigned int SRCON1BSET __attribute__((section("sfrs")));
extern volatile unsigned int SRCON1BINV __attribute__((section("sfrs")));

extern volatile unsigned int ANSELC __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned :1;
    unsigned ANSC1:1;
    unsigned ANSC2:1;
    unsigned ANSC3:1;
    unsigned ANSC4:1;
  };
  struct {
    unsigned w:32;
  };
} __ANSELCbits_t;
extern volatile __ANSELCbits_t ANSELCbits __asm__ ("ANSELC") __attribute__((section("sfrs")));
extern volatile unsigned int ANSELCCLR __attribute__((section("sfrs")));
extern volatile unsigned int ANSELCSET __attribute__((section("sfrs")));
extern volatile unsigned int ANSELCINV __attribute__((section("sfrs")));

extern volatile unsigned int TRISC __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned :1;
    unsigned TRISC1:1;
    unsigned TRISC2:1;
    unsigned TRISC3:1;
    unsigned TRISC4:1;
    unsigned :7;
    unsigned TRISC12:1;
    unsigned TRISC13:1;
    unsigned TRISC14:1;
    unsigned TRISC15:1;
  };
  struct {
    unsigned w:32;
  };
} __TRISCbits_t;
extern volatile __TRISCbits_t TRISCbits __asm__ ("TRISC") __attribute__((section("sfrs")));
extern volatile unsigned int TRISCCLR __attribute__((section("sfrs")));
extern volatile unsigned int TRISCSET __attribute__((section("sfrs")));
extern volatile unsigned int TRISCINV __attribute__((section("sfrs")));

extern volatile unsigned int PORTC __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned :1;
    unsigned RC1:1;
    unsigned RC2:1;
    unsigned RC3:1;
    unsigned RC4:1;
    unsigned :7;
    unsigned RC12:1;
    unsigned RC13:1;
    unsigned RC14:1;
    unsigned RC15:1;
  };
  struct {
    unsigned w:32;
  };
} __PORTCbits_t;
extern volatile __PORTCbits_t PORTCbits __asm__ ("PORTC") __attribute__((section("sfrs")));
extern volatile unsigned int PORTCCLR __attribute__((section("sfrs")));
extern volatile unsigned int PORTCSET __attribute__((section("sfrs")));
extern volatile unsigned int PORTCINV __attribute__((section("sfrs")));

extern volatile unsigned int LATC __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned :1;
    unsigned LATC1:1;
    unsigned LATC2:1;
    unsigned LATC3:1;
    unsigned LATC4:1;
    unsigned :7;
    unsigned LATC12:1;
    unsigned LATC13:1;
    unsigned LATC14:1;
    unsigned LATC15:1;
  };
  struct {
    unsigned w:32;
  };
} __LATCbits_t;
extern volatile __LATCbits_t LATCbits __asm__ ("LATC") __attribute__((section("sfrs")));
extern volatile unsigned int LATCCLR __attribute__((section("sfrs")));
extern volatile unsigned int LATCSET __attribute__((section("sfrs")));
extern volatile unsigned int LATCINV __attribute__((section("sfrs")));

extern volatile unsigned int ODCC __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned :1;
    unsigned ODCC1:1;
    unsigned ODCC2:1;
    unsigned ODCC3:1;
    unsigned ODCC4:1;
    unsigned :7;
    unsigned ODCC12:1;
    unsigned ODCC13:1;
    unsigned ODCC14:1;
    unsigned ODCC15:1;
  };
  struct {
    unsigned w:32;
  };
} __ODCCbits_t;
extern volatile __ODCCbits_t ODCCbits __asm__ ("ODCC") __attribute__((section("sfrs")));
extern volatile unsigned int ODCCCLR __attribute__((section("sfrs")));
extern volatile unsigned int ODCCSET __attribute__((section("sfrs")));
extern volatile unsigned int ODCCINV __attribute__((section("sfrs")));

extern volatile unsigned int CNPUC __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned :1;
    unsigned CNPUC1:1;
    unsigned CNPUC2:1;
    unsigned CNPUC3:1;
    unsigned CNPUC4:1;
    unsigned :7;
    unsigned CNPUC12:1;
    unsigned CNPUC13:1;
    unsigned CNPUC14:1;
    unsigned CNPUC15:1;
  };
  struct {
    unsigned w:32;
  };
} __CNPUCbits_t;
extern volatile __CNPUCbits_t CNPUCbits __asm__ ("CNPUC") __attribute__((section("sfrs")));
extern volatile unsigned int CNPUCCLR __attribute__((section("sfrs")));
extern volatile unsigned int CNPUCSET __attribute__((section("sfrs")));
extern volatile unsigned int CNPUCINV __attribute__((section("sfrs")));

extern volatile unsigned int CNPDC __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned :1;
    unsigned CNPDC1:1;
    unsigned CNPDC2:1;
    unsigned CNPDC3:1;
    unsigned CNPDC4:1;
    unsigned :7;
    unsigned CNPDC12:1;
    unsigned CNPDC13:1;
    unsigned CNPDC14:1;
    unsigned CNPDC15:1;
  };
  struct {
    unsigned w:32;
  };
} __CNPDCbits_t;
extern volatile __CNPDCbits_t CNPDCbits __asm__ ("CNPDC") __attribute__((section("sfrs")));
extern volatile unsigned int CNPDCCLR __attribute__((section("sfrs")));
extern volatile unsigned int CNPDCSET __attribute__((section("sfrs")));
extern volatile unsigned int CNPDCINV __attribute__((section("sfrs")));

extern volatile unsigned int CNCONC __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned :11;
    unsigned EDGEDETECT:1;
    unsigned :1;
    unsigned SIDL:1;
    unsigned :1;
    unsigned ON:1;
  };
  struct {
    unsigned w:32;
  };
} __CNCONCbits_t;
extern volatile __CNCONCbits_t CNCONCbits __asm__ ("CNCONC") __attribute__((section("sfrs")));
extern volatile unsigned int CNCONCCLR __attribute__((section("sfrs")));
extern volatile unsigned int CNCONCSET __attribute__((section("sfrs")));
extern volatile unsigned int CNCONCINV __attribute__((section("sfrs")));

extern volatile unsigned int CNENC __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned :1;
    unsigned CNIEC1:1;
    unsigned CNIEC2:1;
    unsigned CNIEC3:1;
    unsigned CNIEC4:1;
    unsigned :7;
    unsigned CNIEC12:1;
    unsigned CNIEC13:1;
    unsigned CNIEC14:1;
    unsigned CNIEC15:1;
  };
  struct {
    unsigned w:32;
  };
} __CNENCbits_t;
extern volatile __CNENCbits_t CNENCbits __asm__ ("CNENC") __attribute__((section("sfrs")));
extern volatile unsigned int CNENCCLR __attribute__((section("sfrs")));
extern volatile unsigned int CNENCSET __attribute__((section("sfrs")));
extern volatile unsigned int CNENCINV __attribute__((section("sfrs")));

extern volatile unsigned int CNSTATC __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned :1;
    unsigned CNSTATC1:1;
    unsigned CNSTATC2:1;
    unsigned CNSTATC3:1;
    unsigned CNSTATC4:1;
    unsigned :7;
    unsigned CNSTATC12:1;
    unsigned CNSTATC13:1;
    unsigned CNSTATC14:1;
    unsigned CNSTATC15:1;
  };
  struct {
    unsigned w:32;
  };
} __CNSTATCbits_t;
extern volatile __CNSTATCbits_t CNSTATCbits __asm__ ("CNSTATC") __attribute__((section("sfrs")));
extern volatile unsigned int CNSTATCCLR __attribute__((section("sfrs")));
extern volatile unsigned int CNSTATCSET __attribute__((section("sfrs")));
extern volatile unsigned int CNSTATCINV __attribute__((section("sfrs")));

extern volatile unsigned int CNNEC __attribute__((section("sfrs")));
typedef struct {
  unsigned :1;
  unsigned CNNEC1:1;
  unsigned CNNEC2:1;
  unsigned CNNEC3:1;
  unsigned CNNEC4:1;
  unsigned :7;
  unsigned CNNEC12:1;
  unsigned CNNEC13:1;
  unsigned CNNEC14:1;
  unsigned CNNEC15:1;
} __CNNECbits_t;
extern volatile __CNNECbits_t CNNECbits __asm__ ("CNNEC") __attribute__((section("sfrs")));
extern volatile unsigned int CNNECCLR __attribute__((section("sfrs")));
extern volatile unsigned int CNNECSET __attribute__((section("sfrs")));
extern volatile unsigned int CNNECINV __attribute__((section("sfrs")));

extern volatile unsigned int CNFC __attribute__((section("sfrs")));
typedef struct {
  unsigned :1;
  unsigned CNFC1:1;
  unsigned CNFC2:1;
  unsigned CNFC3:1;
  unsigned CNFC4:1;
  unsigned :7;
  unsigned CNFC12:1;
  unsigned CNFC13:1;
  unsigned CNFC14:1;
  unsigned CNFC15:1;
} __CNFCbits_t;
extern volatile __CNFCbits_t CNFCbits __asm__ ("CNFC") __attribute__((section("sfrs")));
extern volatile unsigned int CNFCCLR __attribute__((section("sfrs")));
extern volatile unsigned int CNFCSET __attribute__((section("sfrs")));
extern volatile unsigned int CNFCINV __attribute__((section("sfrs")));

extern volatile unsigned int ANSELD __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned :14;
    unsigned ANSD14:1;
    unsigned ANSD15:1;
  };
  struct {
    unsigned w:32;
  };
} __ANSELDbits_t;
extern volatile __ANSELDbits_t ANSELDbits __asm__ ("ANSELD") __attribute__((section("sfrs")));
extern volatile unsigned int ANSELDCLR __attribute__((section("sfrs")));
extern volatile unsigned int ANSELDSET __attribute__((section("sfrs")));
extern volatile unsigned int ANSELDINV __attribute__((section("sfrs")));

extern volatile unsigned int TRISD __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned TRISD0:1;
    unsigned TRISD1:1;
    unsigned TRISD2:1;
    unsigned TRISD3:1;
    unsigned TRISD4:1;
    unsigned TRISD5:1;
    unsigned :3;
    unsigned TRISD9:1;
    unsigned TRISD10:1;
    unsigned TRISD11:1;
    unsigned TRISD12:1;
    unsigned TRISD13:1;
    unsigned TRISD14:1;
    unsigned TRISD15:1;
  };
  struct {
    unsigned w:32;
  };
} __TRISDbits_t;
extern volatile __TRISDbits_t TRISDbits __asm__ ("TRISD") __attribute__((section("sfrs")));
extern volatile unsigned int TRISDCLR __attribute__((section("sfrs")));
extern volatile unsigned int TRISDSET __attribute__((section("sfrs")));
extern volatile unsigned int TRISDINV __attribute__((section("sfrs")));

extern volatile unsigned int PORTD __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned RD0:1;
    unsigned RD1:1;
    unsigned RD2:1;
    unsigned RD3:1;
    unsigned RD4:1;
    unsigned RD5:1;
    unsigned :3;
    unsigned RD9:1;
    unsigned RD10:1;
    unsigned RD11:1;
    unsigned RD12:1;
    unsigned RD13:1;
    unsigned RD14:1;
    unsigned RD15:1;
  };
  struct {
    unsigned w:32;
  };
} __PORTDbits_t;
extern volatile __PORTDbits_t PORTDbits __asm__ ("PORTD") __attribute__((section("sfrs")));
extern volatile unsigned int PORTDCLR __attribute__((section("sfrs")));
extern volatile unsigned int PORTDSET __attribute__((section("sfrs")));
extern volatile unsigned int PORTDINV __attribute__((section("sfrs")));

extern volatile unsigned int LATD __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned LATD0:1;
    unsigned LATD1:1;
    unsigned LATD2:1;
    unsigned LATD3:1;
    unsigned LATD4:1;
    unsigned LATD5:1;
    unsigned :3;
    unsigned LATD9:1;
    unsigned LATD10:1;
    unsigned LATD11:1;
    unsigned LATD12:1;
    unsigned LATD13:1;
    unsigned LATD14:1;
    unsigned LATD15:1;
  };
  struct {
    unsigned w:32;
  };
} __LATDbits_t;
extern volatile __LATDbits_t LATDbits __asm__ ("LATD") __attribute__((section("sfrs")));
extern volatile unsigned int LATDCLR __attribute__((section("sfrs")));
extern volatile unsigned int LATDSET __attribute__((section("sfrs")));
extern volatile unsigned int LATDINV __attribute__((section("sfrs")));

extern volatile unsigned int ODCD __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned ODCD0:1;
    unsigned ODCD1:1;
    unsigned ODCD2:1;
    unsigned ODCD3:1;
    unsigned ODCD4:1;
    unsigned ODCD5:1;
    unsigned :3;
    unsigned ODCD9:1;
    unsigned ODCD10:1;
    unsigned ODCD11:1;
    unsigned ODCD12:1;
    unsigned ODCD13:1;
    unsigned ODCD14:1;
    unsigned ODCD15:1;
  };
  struct {
    unsigned w:32;
  };
} __ODCDbits_t;
extern volatile __ODCDbits_t ODCDbits __asm__ ("ODCD") __attribute__((section("sfrs")));
extern volatile unsigned int ODCDCLR __attribute__((section("sfrs")));
extern volatile unsigned int ODCDSET __attribute__((section("sfrs")));
extern volatile unsigned int ODCDINV __attribute__((section("sfrs")));

extern volatile unsigned int CNPUD __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned CNPUD0:1;
    unsigned CNPUD1:1;
    unsigned CNPUD2:1;
    unsigned CNPUD3:1;
    unsigned CNPUD4:1;
    unsigned CNPUD5:1;
    unsigned :3;
    unsigned CNPUD9:1;
    unsigned CNPUD10:1;
    unsigned CNPUD11:1;
    unsigned CNPUD12:1;
    unsigned CNPUD13:1;
    unsigned CNPUD14:1;
    unsigned CNPUD15:1;
  };
  struct {
    unsigned w:32;
  };
} __CNPUDbits_t;
extern volatile __CNPUDbits_t CNPUDbits __asm__ ("CNPUD") __attribute__((section("sfrs")));
extern volatile unsigned int CNPUDCLR __attribute__((section("sfrs")));
extern volatile unsigned int CNPUDSET __attribute__((section("sfrs")));
extern volatile unsigned int CNPUDINV __attribute__((section("sfrs")));

extern volatile unsigned int CNPDD __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned CNPDD0:1;
    unsigned CNPDD1:1;
    unsigned CNPDD2:1;
    unsigned CNPDD3:1;
    unsigned CNPDD4:1;
    unsigned CNPDD5:1;
    unsigned :3;
    unsigned CNPDD9:1;
    unsigned CNPDD10:1;
    unsigned CNPDD11:1;
    unsigned CNPDD12:1;
    unsigned CNPDD13:1;
    unsigned CNPDD14:1;
    unsigned CNPDD15:1;
  };
  struct {
    unsigned w:32;
  };
} __CNPDDbits_t;
extern volatile __CNPDDbits_t CNPDDbits __asm__ ("CNPDD") __attribute__((section("sfrs")));
extern volatile unsigned int CNPDDCLR __attribute__((section("sfrs")));
extern volatile unsigned int CNPDDSET __attribute__((section("sfrs")));
extern volatile unsigned int CNPDDINV __attribute__((section("sfrs")));

extern volatile unsigned int CNCOND __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned :11;
    unsigned EDGEDETECT:1;
    unsigned :1;
    unsigned SIDL:1;
    unsigned :1;
    unsigned ON:1;
  };
  struct {
    unsigned w:32;
  };
} __CNCONDbits_t;
extern volatile __CNCONDbits_t CNCONDbits __asm__ ("CNCOND") __attribute__((section("sfrs")));
extern volatile unsigned int CNCONDCLR __attribute__((section("sfrs")));
extern volatile unsigned int CNCONDSET __attribute__((section("sfrs")));
extern volatile unsigned int CNCONDINV __attribute__((section("sfrs")));

extern volatile unsigned int CNEND __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned CNIED0:1;
    unsigned CNIED1:1;
    unsigned CNIED2:1;
    unsigned CNIED3:1;
    unsigned CNIED4:1;
    unsigned CNIED5:1;
    unsigned :3;
    unsigned CNIED9:1;
    unsigned CNIED10:1;
    unsigned CNIED11:1;
    unsigned CNIED12:1;
    unsigned CNIED13:1;
    unsigned CNIED14:1;
    unsigned CNIED15:1;
  };
  struct {
    unsigned w:32;
  };
} __CNENDbits_t;
extern volatile __CNENDbits_t CNENDbits __asm__ ("CNEND") __attribute__((section("sfrs")));
extern volatile unsigned int CNENDCLR __attribute__((section("sfrs")));
extern volatile unsigned int CNENDSET __attribute__((section("sfrs")));
extern volatile unsigned int CNENDINV __attribute__((section("sfrs")));

extern volatile unsigned int CNSTATD __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned CNSTATD0:1;
    unsigned CNSTATD1:1;
    unsigned CNSTATD2:1;
    unsigned CNSTATD3:1;
    unsigned CNSTATD4:1;
    unsigned CNSTATD5:1;
    unsigned :3;
    unsigned CNSTATD9:1;
    unsigned CNSTATD10:1;
    unsigned CNSTATD11:1;
    unsigned CNSTATD12:1;
    unsigned CNSTATD13:1;
    unsigned CNSTATD14:1;
    unsigned CNSTATD15:1;
  };
  struct {
    unsigned w:32;
  };
} __CNSTATDbits_t;
extern volatile __CNSTATDbits_t CNSTATDbits __asm__ ("CNSTATD") __attribute__((section("sfrs")));
extern volatile unsigned int CNSTATDCLR __attribute__((section("sfrs")));
extern volatile unsigned int CNSTATDSET __attribute__((section("sfrs")));
extern volatile unsigned int CNSTATDINV __attribute__((section("sfrs")));

extern volatile unsigned int CNNED __attribute__((section("sfrs")));
typedef struct {
  unsigned CNNED0:1;
  unsigned CNNED1:1;
  unsigned CNNED2:1;
  unsigned CNNED3:1;
  unsigned CNNED4:1;
  unsigned CNNED5:1;
  unsigned :3;
  unsigned CNNED9:1;
  unsigned CNNED10:1;
  unsigned CNNED11:1;
  unsigned CNNED12:1;
  unsigned CNNED13:1;
  unsigned CNNED14:1;
  unsigned CNNED15:1;
} __CNNEDbits_t;
extern volatile __CNNEDbits_t CNNEDbits __asm__ ("CNNED") __attribute__((section("sfrs")));
extern volatile unsigned int CNNEDCLR __attribute__((section("sfrs")));
extern volatile unsigned int CNNEDSET __attribute__((section("sfrs")));
extern volatile unsigned int CNNEDINV __attribute__((section("sfrs")));

extern volatile unsigned int CNFD __attribute__((section("sfrs")));
typedef struct {
  unsigned CNFD0:1;
  unsigned CNFD1:1;
  unsigned CNFD2:1;
  unsigned CNFD3:1;
  unsigned CNFD4:1;
  unsigned CNFD5:1;
  unsigned :3;
  unsigned CNFD9:1;
  unsigned CNFD10:1;
  unsigned CNFD11:1;
  unsigned CNFD12:1;
  unsigned CNFD13:1;
  unsigned CNFD14:1;
  unsigned CNFD15:1;
} __CNFDbits_t;
extern volatile __CNFDbits_t CNFDbits __asm__ ("CNFD") __attribute__((section("sfrs")));
extern volatile unsigned int CNFDCLR __attribute__((section("sfrs")));
extern volatile unsigned int CNFDSET __attribute__((section("sfrs")));
extern volatile unsigned int CNFDINV __attribute__((section("sfrs")));

extern volatile unsigned int ANSELE __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned :4;
    unsigned ANSE4:1;
    unsigned ANSE5:1;
    unsigned ANSE6:1;
    unsigned ANSE7:1;
    unsigned ANSE8:1;
    unsigned ANSE9:1;
  };
  struct {
    unsigned w:32;
  };
} __ANSELEbits_t;
extern volatile __ANSELEbits_t ANSELEbits __asm__ ("ANSELE") __attribute__((section("sfrs")));
extern volatile unsigned int ANSELECLR __attribute__((section("sfrs")));
extern volatile unsigned int ANSELESET __attribute__((section("sfrs")));
extern volatile unsigned int ANSELEINV __attribute__((section("sfrs")));

extern volatile unsigned int TRISE __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned TRISE0:1;
    unsigned TRISE1:1;
    unsigned TRISE2:1;
    unsigned TRISE3:1;
    unsigned TRISE4:1;
    unsigned TRISE5:1;
    unsigned TRISE6:1;
    unsigned TRISE7:1;
    unsigned TRISE8:1;
    unsigned TRISE9:1;
  };
  struct {
    unsigned w:32;
  };
} __TRISEbits_t;
extern volatile __TRISEbits_t TRISEbits __asm__ ("TRISE") __attribute__((section("sfrs")));
extern volatile unsigned int TRISECLR __attribute__((section("sfrs")));
extern volatile unsigned int TRISESET __attribute__((section("sfrs")));
extern volatile unsigned int TRISEINV __attribute__((section("sfrs")));

extern volatile unsigned int PORTE __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned RE0:1;
    unsigned RE1:1;
    unsigned RE2:1;
    unsigned RE3:1;
    unsigned RE4:1;
    unsigned RE5:1;
    unsigned RE6:1;
    unsigned RE7:1;
    unsigned RE8:1;
    unsigned RE9:1;
  };
  struct {
    unsigned w:32;
  };
} __PORTEbits_t;
extern volatile __PORTEbits_t PORTEbits __asm__ ("PORTE") __attribute__((section("sfrs")));
extern volatile unsigned int PORTECLR __attribute__((section("sfrs")));
extern volatile unsigned int PORTESET __attribute__((section("sfrs")));
extern volatile unsigned int PORTEINV __attribute__((section("sfrs")));

extern volatile unsigned int LATE __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned LATE0:1;
    unsigned LATE1:1;
    unsigned LATE2:1;
    unsigned LATE3:1;
    unsigned LATE4:1;
    unsigned LATE5:1;
    unsigned LATE6:1;
    unsigned LATE7:1;
    unsigned LATE8:1;
    unsigned LATE9:1;
  };
  struct {
    unsigned w:32;
  };
} __LATEbits_t;
extern volatile __LATEbits_t LATEbits __asm__ ("LATE") __attribute__((section("sfrs")));
extern volatile unsigned int LATECLR __attribute__((section("sfrs")));
extern volatile unsigned int LATESET __attribute__((section("sfrs")));
extern volatile unsigned int LATEINV __attribute__((section("sfrs")));

extern volatile unsigned int ODCE __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned ODCE0:1;
    unsigned ODCE1:1;
    unsigned ODCE2:1;
    unsigned ODCE3:1;
    unsigned ODCE4:1;
    unsigned ODCE5:1;
    unsigned ODCE6:1;
    unsigned ODCE7:1;
    unsigned ODCE8:1;
    unsigned ODCE9:1;
  };
  struct {
    unsigned w:32;
  };
} __ODCEbits_t;
extern volatile __ODCEbits_t ODCEbits __asm__ ("ODCE") __attribute__((section("sfrs")));
extern volatile unsigned int ODCECLR __attribute__((section("sfrs")));
extern volatile unsigned int ODCESET __attribute__((section("sfrs")));
extern volatile unsigned int ODCEINV __attribute__((section("sfrs")));

extern volatile unsigned int CNPUE __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned CNPUE0:1;
    unsigned CNPUE1:1;
    unsigned CNPUE2:1;
    unsigned CNPUE3:1;
    unsigned CNPUE4:1;
    unsigned CNPUE5:1;
    unsigned CNPUE6:1;
    unsigned CNPUE7:1;
    unsigned CNPUE8:1;
    unsigned CNPUE9:1;
  };
  struct {
    unsigned w:32;
  };
} __CNPUEbits_t;
extern volatile __CNPUEbits_t CNPUEbits __asm__ ("CNPUE") __attribute__((section("sfrs")));
extern volatile unsigned int CNPUECLR __attribute__((section("sfrs")));
extern volatile unsigned int CNPUESET __attribute__((section("sfrs")));
extern volatile unsigned int CNPUEINV __attribute__((section("sfrs")));

extern volatile unsigned int CNPDE __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned CNPDE0:1;
    unsigned CNPDE1:1;
    unsigned CNPDE2:1;
    unsigned CNPDE3:1;
    unsigned CNPDE4:1;
    unsigned CNPDE5:1;
    unsigned CNPDE6:1;
    unsigned CNPDE7:1;
    unsigned CNPDE8:1;
    unsigned CNPDE9:1;
  };
  struct {
    unsigned w:32;
  };
} __CNPDEbits_t;
extern volatile __CNPDEbits_t CNPDEbits __asm__ ("CNPDE") __attribute__((section("sfrs")));
extern volatile unsigned int CNPDECLR __attribute__((section("sfrs")));
extern volatile unsigned int CNPDESET __attribute__((section("sfrs")));
extern volatile unsigned int CNPDEINV __attribute__((section("sfrs")));

extern volatile unsigned int CNCONE __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned :11;
    unsigned EDGEDETECT:1;
    unsigned :1;
    unsigned SIDL:1;
    unsigned :1;
    unsigned ON:1;
  };
  struct {
    unsigned w:32;
  };
} __CNCONEbits_t;
extern volatile __CNCONEbits_t CNCONEbits __asm__ ("CNCONE") __attribute__((section("sfrs")));
extern volatile unsigned int CNCONECLR __attribute__((section("sfrs")));
extern volatile unsigned int CNCONESET __attribute__((section("sfrs")));
extern volatile unsigned int CNCONEINV __attribute__((section("sfrs")));

extern volatile unsigned int CNENE __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned CNIEE0:1;
    unsigned CNIEE1:1;
    unsigned CNIEE2:1;
    unsigned CNIEE3:1;
    unsigned CNIEE4:1;
    unsigned CNIEE5:1;
    unsigned CNIEE6:1;
    unsigned CNIEE7:1;
    unsigned CNIEE8:1;
    unsigned CNIEE9:1;
  };
  struct {
    unsigned w:32;
  };
} __CNENEbits_t;
extern volatile __CNENEbits_t CNENEbits __asm__ ("CNENE") __attribute__((section("sfrs")));
extern volatile unsigned int CNENECLR __attribute__((section("sfrs")));
extern volatile unsigned int CNENESET __attribute__((section("sfrs")));
extern volatile unsigned int CNENEINV __attribute__((section("sfrs")));

extern volatile unsigned int CNSTATE __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned CNSTATE0:1;
    unsigned CNSTATE1:1;
    unsigned CNSTATE2:1;
    unsigned CNSTATE3:1;
    unsigned CNSTATE4:1;
    unsigned CNSTATE5:1;
    unsigned CNSTATE6:1;
    unsigned CNSTATE7:1;
    unsigned CNSTATE8:1;
    unsigned CNSTATE9:1;
  };
  struct {
    unsigned w:32;
  };
} __CNSTATEbits_t;
extern volatile __CNSTATEbits_t CNSTATEbits __asm__ ("CNSTATE") __attribute__((section("sfrs")));
extern volatile unsigned int CNSTATECLR __attribute__((section("sfrs")));
extern volatile unsigned int CNSTATESET __attribute__((section("sfrs")));
extern volatile unsigned int CNSTATEINV __attribute__((section("sfrs")));

extern volatile unsigned int CNNEE __attribute__((section("sfrs")));
typedef struct {
  unsigned CNNEE0:1;
  unsigned CNNEE1:1;
  unsigned CNNEE2:1;
  unsigned CNNEE3:1;
  unsigned CNNEE4:1;
  unsigned CNNEE5:1;
  unsigned CNNEE6:1;
  unsigned CNNEE7:1;
  unsigned CNNEE8:1;
  unsigned CNNEE9:1;
} __CNNEEbits_t;
extern volatile __CNNEEbits_t CNNEEbits __asm__ ("CNNEE") __attribute__((section("sfrs")));
extern volatile unsigned int CNNEECLR __attribute__((section("sfrs")));
extern volatile unsigned int CNNEESET __attribute__((section("sfrs")));
extern volatile unsigned int CNNEEINV __attribute__((section("sfrs")));

extern volatile unsigned int CNFE __attribute__((section("sfrs")));
typedef struct {
  unsigned CNFE0:1;
  unsigned CNFE1:1;
  unsigned CNFE2:1;
  unsigned CNFE3:1;
  unsigned CNFE4:1;
  unsigned CNFE5:1;
  unsigned CNFE6:1;
  unsigned CNFE7:1;
  unsigned CNFE8:1;
  unsigned CNFE9:1;
} __CNFEbits_t;
extern volatile __CNFEbits_t CNFEbits __asm__ ("CNFE") __attribute__((section("sfrs")));
extern volatile unsigned int CNFECLR __attribute__((section("sfrs")));
extern volatile unsigned int CNFESET __attribute__((section("sfrs")));
extern volatile unsigned int CNFEINV __attribute__((section("sfrs")));

extern volatile unsigned int SRCON0E __attribute__((section("sfrs")));
typedef struct {
  unsigned SR0E0:1;
  unsigned SR0E1:1;
  unsigned SR0E2:1;
  unsigned SR0E3:1;
} __SRCON0Ebits_t;
extern volatile __SRCON0Ebits_t SRCON0Ebits __asm__ ("SRCON0E") __attribute__((section("sfrs")));
extern volatile unsigned int SRCON0ECLR __attribute__((section("sfrs")));
extern volatile unsigned int SRCON0ESET __attribute__((section("sfrs")));
extern volatile unsigned int SRCON0EINV __attribute__((section("sfrs")));

extern volatile unsigned int SRCON1E __attribute__((section("sfrs")));
typedef struct {
  unsigned SR1E0:1;
  unsigned SR1E1:1;
  unsigned SR1E2:1;
  unsigned SR1E3:1;
} __SRCON1Ebits_t;
extern volatile __SRCON1Ebits_t SRCON1Ebits __asm__ ("SRCON1E") __attribute__((section("sfrs")));
extern volatile unsigned int SRCON1ECLR __attribute__((section("sfrs")));
extern volatile unsigned int SRCON1ESET __attribute__((section("sfrs")));
extern volatile unsigned int SRCON1EINV __attribute__((section("sfrs")));

extern volatile unsigned int ANSELF __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned :12;
    unsigned ANSF12:1;
    unsigned ANSF13:1;
  };
  struct {
    unsigned w:32;
  };
} __ANSELFbits_t;
extern volatile __ANSELFbits_t ANSELFbits __asm__ ("ANSELF") __attribute__((section("sfrs")));
extern volatile unsigned int ANSELFCLR __attribute__((section("sfrs")));
extern volatile unsigned int ANSELFSET __attribute__((section("sfrs")));
extern volatile unsigned int ANSELFINV __attribute__((section("sfrs")));

extern volatile unsigned int TRISF __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned TRISF0:1;
    unsigned TRISF1:1;
    unsigned TRISF2:1;
    unsigned TRISF3:1;
    unsigned TRISF4:1;
    unsigned TRISF5:1;
    unsigned :2;
    unsigned TRISF8:1;
    unsigned :3;
    unsigned TRISF12:1;
    unsigned TRISF13:1;
  };
  struct {
    unsigned w:32;
  };
} __TRISFbits_t;
extern volatile __TRISFbits_t TRISFbits __asm__ ("TRISF") __attribute__((section("sfrs")));
extern volatile unsigned int TRISFCLR __attribute__((section("sfrs")));
extern volatile unsigned int TRISFSET __attribute__((section("sfrs")));
extern volatile unsigned int TRISFINV __attribute__((section("sfrs")));

extern volatile unsigned int PORTF __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned RF0:1;
    unsigned RF1:1;
    unsigned RF2:1;
    unsigned RF3:1;
    unsigned RF4:1;
    unsigned RF5:1;
    unsigned :2;
    unsigned RF8:1;
    unsigned :3;
    unsigned RF12:1;
    unsigned RF13:1;
  };
  struct {
    unsigned w:32;
  };
} __PORTFbits_t;
extern volatile __PORTFbits_t PORTFbits __asm__ ("PORTF") __attribute__((section("sfrs")));
extern volatile unsigned int PORTFCLR __attribute__((section("sfrs")));
extern volatile unsigned int PORTFSET __attribute__((section("sfrs")));
extern volatile unsigned int PORTFINV __attribute__((section("sfrs")));

extern volatile unsigned int LATF __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned LATF0:1;
    unsigned LATF1:1;
    unsigned LATF2:1;
    unsigned LATF3:1;
    unsigned LATF4:1;
    unsigned LATF5:1;
    unsigned :2;
    unsigned LATF8:1;
    unsigned :3;
    unsigned LATF12:1;
    unsigned LATF13:1;
  };
  struct {
    unsigned w:32;
  };
} __LATFbits_t;
extern volatile __LATFbits_t LATFbits __asm__ ("LATF") __attribute__((section("sfrs")));
extern volatile unsigned int LATFCLR __attribute__((section("sfrs")));
extern volatile unsigned int LATFSET __attribute__((section("sfrs")));
extern volatile unsigned int LATFINV __attribute__((section("sfrs")));

extern volatile unsigned int ODCF __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned ODCF0:1;
    unsigned ODCF1:1;
    unsigned ODCF2:1;
    unsigned ODCF3:1;
    unsigned ODCF4:1;
    unsigned ODCF5:1;
    unsigned :2;
    unsigned ODCF8:1;
    unsigned :3;
    unsigned ODCF12:1;
    unsigned ODCF13:1;
  };
  struct {
    unsigned w:32;
  };
} __ODCFbits_t;
extern volatile __ODCFbits_t ODCFbits __asm__ ("ODCF") __attribute__((section("sfrs")));
extern volatile unsigned int ODCFCLR __attribute__((section("sfrs")));
extern volatile unsigned int ODCFSET __attribute__((section("sfrs")));
extern volatile unsigned int ODCFINV __attribute__((section("sfrs")));

extern volatile unsigned int CNPUF __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned CNPUF0:1;
    unsigned CNPUF1:1;
    unsigned CNPUF2:1;
    unsigned CNPUF3:1;
    unsigned CNPUF4:1;
    unsigned CNPUF5:1;
    unsigned :2;
    unsigned CNPUF8:1;
    unsigned :3;
    unsigned CNPUF12:1;
    unsigned CNPUF13:1;
  };
  struct {
    unsigned w:32;
  };
} __CNPUFbits_t;
extern volatile __CNPUFbits_t CNPUFbits __asm__ ("CNPUF") __attribute__((section("sfrs")));
extern volatile unsigned int CNPUFCLR __attribute__((section("sfrs")));
extern volatile unsigned int CNPUFSET __attribute__((section("sfrs")));
extern volatile unsigned int CNPUFINV __attribute__((section("sfrs")));

extern volatile unsigned int CNPDF __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned CNPDF0:1;
    unsigned CNPDF1:1;
    unsigned CNPDF2:1;
    unsigned CNPDF3:1;
    unsigned CNPDF4:1;
    unsigned CNPDF5:1;
    unsigned :2;
    unsigned CNPDF8:1;
    unsigned :3;
    unsigned CNPDF12:1;
    unsigned CNPDF13:1;
  };
  struct {
    unsigned w:32;
  };
} __CNPDFbits_t;
extern volatile __CNPDFbits_t CNPDFbits __asm__ ("CNPDF") __attribute__((section("sfrs")));
extern volatile unsigned int CNPDFCLR __attribute__((section("sfrs")));
extern volatile unsigned int CNPDFSET __attribute__((section("sfrs")));
extern volatile unsigned int CNPDFINV __attribute__((section("sfrs")));

extern volatile unsigned int CNCONF __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned :11;
    unsigned EDGEDETECT:1;
    unsigned :1;
    unsigned SIDL:1;
    unsigned :1;
    unsigned ON:1;
  };
  struct {
    unsigned w:32;
  };
} __CNCONFbits_t;
extern volatile __CNCONFbits_t CNCONFbits __asm__ ("CNCONF") __attribute__((section("sfrs")));
extern volatile unsigned int CNCONFCLR __attribute__((section("sfrs")));
extern volatile unsigned int CNCONFSET __attribute__((section("sfrs")));
extern volatile unsigned int CNCONFINV __attribute__((section("sfrs")));

extern volatile unsigned int CNENF __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned CNIEF0:1;
    unsigned CNIEF1:1;
    unsigned CNIEF2:1;
    unsigned CNIEF3:1;
    unsigned CNIEF4:1;
    unsigned CNIEF5:1;
    unsigned :2;
    unsigned CNIEF8:1;
    unsigned :3;
    unsigned CNIEF12:1;
    unsigned CNIEF13:1;
  };
  struct {
    unsigned w:32;
  };
} __CNENFbits_t;
extern volatile __CNENFbits_t CNENFbits __asm__ ("CNENF") __attribute__((section("sfrs")));
extern volatile unsigned int CNENFCLR __attribute__((section("sfrs")));
extern volatile unsigned int CNENFSET __attribute__((section("sfrs")));
extern volatile unsigned int CNENFINV __attribute__((section("sfrs")));

extern volatile unsigned int CNSTATF __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned CNSTATF0:1;
    unsigned CNSTATF1:1;
    unsigned CNSTATF2:1;
    unsigned CNSTATF3:1;
    unsigned CNSTATF4:1;
    unsigned CNSTATF5:1;
    unsigned :2;
    unsigned CNSTATF8:1;
    unsigned :3;
    unsigned CNSTATF12:1;
    unsigned CNSTATF13:1;
  };
  struct {
    unsigned w:32;
  };
} __CNSTATFbits_t;
extern volatile __CNSTATFbits_t CNSTATFbits __asm__ ("CNSTATF") __attribute__((section("sfrs")));
extern volatile unsigned int CNSTATFCLR __attribute__((section("sfrs")));
extern volatile unsigned int CNSTATFSET __attribute__((section("sfrs")));
extern volatile unsigned int CNSTATFINV __attribute__((section("sfrs")));

extern volatile unsigned int CNNEF __attribute__((section("sfrs")));
typedef struct {
  unsigned CNNEF0:1;
  unsigned CNNEF1:1;
  unsigned CNNEF2:1;
  unsigned CNNEF3:1;
  unsigned CNNEF4:1;
  unsigned CNNEF5:1;
  unsigned :2;
  unsigned CNNEF8:1;
  unsigned :3;
  unsigned CNNEF12:1;
  unsigned CNNEF13:1;
} __CNNEFbits_t;
extern volatile __CNNEFbits_t CNNEFbits __asm__ ("CNNEF") __attribute__((section("sfrs")));
extern volatile unsigned int CNNEFCLR __attribute__((section("sfrs")));
extern volatile unsigned int CNNEFSET __attribute__((section("sfrs")));
extern volatile unsigned int CNNEFINV __attribute__((section("sfrs")));

extern volatile unsigned int CNFF __attribute__((section("sfrs")));
typedef struct {
  unsigned CNFF0:1;
  unsigned CNFF1:1;
  unsigned CNFF2:1;
  unsigned CNFF3:1;
  unsigned CNFF4:1;
  unsigned CNFF5:1;
  unsigned :2;
  unsigned CNFF8:1;
  unsigned :3;
  unsigned CNFF12:1;
  unsigned CNFF13:1;
} __CNFFbits_t;
extern volatile __CNFFbits_t CNFFbits __asm__ ("CNFF") __attribute__((section("sfrs")));
extern volatile unsigned int CNFFCLR __attribute__((section("sfrs")));
extern volatile unsigned int CNFFSET __attribute__((section("sfrs")));
extern volatile unsigned int CNFFINV __attribute__((section("sfrs")));

extern volatile unsigned int SRCON0F __attribute__((section("sfrs")));
typedef struct {
  unsigned SR0F0:1;
  unsigned SR0F1:1;
} __SRCON0Fbits_t;
extern volatile __SRCON0Fbits_t SRCON0Fbits __asm__ ("SRCON0F") __attribute__((section("sfrs")));
extern volatile unsigned int SRCON0FCLR __attribute__((section("sfrs")));
extern volatile unsigned int SRCON0FSET __attribute__((section("sfrs")));
extern volatile unsigned int SRCON0FINV __attribute__((section("sfrs")));

extern volatile unsigned int SRCON1F __attribute__((section("sfrs")));
typedef struct {
  unsigned SR1F0:1;
  unsigned SR1F1:1;
} __SRCON1Fbits_t;
extern volatile __SRCON1Fbits_t SRCON1Fbits __asm__ ("SRCON1F") __attribute__((section("sfrs")));
extern volatile unsigned int SRCON1FCLR __attribute__((section("sfrs")));
extern volatile unsigned int SRCON1FSET __attribute__((section("sfrs")));
extern volatile unsigned int SRCON1FINV __attribute__((section("sfrs")));

extern volatile unsigned int ANSELG __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned :6;
    unsigned ANSG6:1;
    unsigned ANSG7:1;
    unsigned ANSG8:1;
    unsigned ANSG9:1;
    unsigned :5;
    unsigned ANSG15:1;
  };
  struct {
    unsigned w:32;
  };
} __ANSELGbits_t;
extern volatile __ANSELGbits_t ANSELGbits __asm__ ("ANSELG") __attribute__((section("sfrs")));
extern volatile unsigned int ANSELGCLR __attribute__((section("sfrs")));
extern volatile unsigned int ANSELGSET __attribute__((section("sfrs")));
extern volatile unsigned int ANSELGINV __attribute__((section("sfrs")));

extern volatile unsigned int TRISG __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned TRISG0:1;
    unsigned TRISG1:1;
    unsigned :4;
    unsigned TRISG6:1;
    unsigned TRISG7:1;
    unsigned TRISG8:1;
    unsigned TRISG9:1;
    unsigned :2;
    unsigned TRISG12:1;
    unsigned TRISG13:1;
    unsigned TRISG14:1;
    unsigned TRISG15:1;
  };
  struct {
    unsigned w:32;
  };
} __TRISGbits_t;
extern volatile __TRISGbits_t TRISGbits __asm__ ("TRISG") __attribute__((section("sfrs")));
extern volatile unsigned int TRISGCLR __attribute__((section("sfrs")));
extern volatile unsigned int TRISGSET __attribute__((section("sfrs")));
extern volatile unsigned int TRISGINV __attribute__((section("sfrs")));

extern volatile unsigned int PORTG __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned RG0:1;
    unsigned RG1:1;
    unsigned :4;
    unsigned RG6:1;
    unsigned RG7:1;
    unsigned RG8:1;
    unsigned RG9:1;
    unsigned :2;
    unsigned RG12:1;
    unsigned RG13:1;
    unsigned RG14:1;
    unsigned RG15:1;
  };
  struct {
    unsigned w:32;
  };
} __PORTGbits_t;
extern volatile __PORTGbits_t PORTGbits __asm__ ("PORTG") __attribute__((section("sfrs")));
extern volatile unsigned int PORTGCLR __attribute__((section("sfrs")));
extern volatile unsigned int PORTGSET __attribute__((section("sfrs")));
extern volatile unsigned int PORTGINV __attribute__((section("sfrs")));

extern volatile unsigned int LATG __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned LATG0:1;
    unsigned LATG1:1;
    unsigned :4;
    unsigned LATG6:1;
    unsigned LATG7:1;
    unsigned LATG8:1;
    unsigned LATG9:1;
    unsigned :2;
    unsigned LATG12:1;
    unsigned LATG13:1;
    unsigned LATG14:1;
    unsigned LATG15:1;
  };
  struct {
    unsigned w:32;
  };
} __LATGbits_t;
extern volatile __LATGbits_t LATGbits __asm__ ("LATG") __attribute__((section("sfrs")));
extern volatile unsigned int LATGCLR __attribute__((section("sfrs")));
extern volatile unsigned int LATGSET __attribute__((section("sfrs")));
extern volatile unsigned int LATGINV __attribute__((section("sfrs")));

extern volatile unsigned int ODCG __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned ODCG0:1;
    unsigned ODCG1:1;
    unsigned :4;
    unsigned ODCG6:1;
    unsigned ODCG7:1;
    unsigned ODCG8:1;
    unsigned ODCG9:1;
    unsigned :2;
    unsigned ODCG12:1;
    unsigned ODCG13:1;
    unsigned ODCG14:1;
    unsigned ODCG15:1;
  };
  struct {
    unsigned w:32;
  };
} __ODCGbits_t;
extern volatile __ODCGbits_t ODCGbits __asm__ ("ODCG") __attribute__((section("sfrs")));
extern volatile unsigned int ODCGCLR __attribute__((section("sfrs")));
extern volatile unsigned int ODCGSET __attribute__((section("sfrs")));
extern volatile unsigned int ODCGINV __attribute__((section("sfrs")));

extern volatile unsigned int CNPUG __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned CNPUG0:1;
    unsigned CNPUG1:1;
    unsigned :4;
    unsigned CNPUG6:1;
    unsigned CNPUG7:1;
    unsigned CNPUG8:1;
    unsigned CNPUG9:1;
    unsigned :2;
    unsigned CNPUG12:1;
    unsigned CNPUG13:1;
    unsigned CNPUG14:1;
    unsigned CNPUG15:1;
  };
  struct {
    unsigned w:32;
  };
} __CNPUGbits_t;
extern volatile __CNPUGbits_t CNPUGbits __asm__ ("CNPUG") __attribute__((section("sfrs")));
extern volatile unsigned int CNPUGCLR __attribute__((section("sfrs")));
extern volatile unsigned int CNPUGSET __attribute__((section("sfrs")));
extern volatile unsigned int CNPUGINV __attribute__((section("sfrs")));

extern volatile unsigned int CNPDG __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned CNPDG0:1;
    unsigned CNPDG1:1;
    unsigned :4;
    unsigned CNPDG6:1;
    unsigned CNPDG7:1;
    unsigned CNPDG8:1;
    unsigned CNPDG9:1;
    unsigned :2;
    unsigned CNPDG12:1;
    unsigned CNPDG13:1;
    unsigned CNPDG14:1;
    unsigned CNPDG15:1;
  };
  struct {
    unsigned w:32;
  };
} __CNPDGbits_t;
extern volatile __CNPDGbits_t CNPDGbits __asm__ ("CNPDG") __attribute__((section("sfrs")));
extern volatile unsigned int CNPDGCLR __attribute__((section("sfrs")));
extern volatile unsigned int CNPDGSET __attribute__((section("sfrs")));
extern volatile unsigned int CNPDGINV __attribute__((section("sfrs")));

extern volatile unsigned int CNCONG __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned :11;
    unsigned EDGEDETECT:1;
    unsigned :1;
    unsigned SIDL:1;
    unsigned :1;
    unsigned ON:1;
  };
  struct {
    unsigned w:32;
  };
} __CNCONGbits_t;
extern volatile __CNCONGbits_t CNCONGbits __asm__ ("CNCONG") __attribute__((section("sfrs")));
extern volatile unsigned int CNCONGCLR __attribute__((section("sfrs")));
extern volatile unsigned int CNCONGSET __attribute__((section("sfrs")));
extern volatile unsigned int CNCONGINV __attribute__((section("sfrs")));

extern volatile unsigned int CNENG __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned CNIEG0:1;
    unsigned CNIEG1:1;
    unsigned :4;
    unsigned CNIEG6:1;
    unsigned CNIEG7:1;
    unsigned CNIEG8:1;
    unsigned CNIEG9:1;
    unsigned :2;
    unsigned CNIEG12:1;
    unsigned CNIEG13:1;
    unsigned CNIEG14:1;
    unsigned CNIEG15:1;
  };
  struct {
    unsigned w:32;
  };
} __CNENGbits_t;
extern volatile __CNENGbits_t CNENGbits __asm__ ("CNENG") __attribute__((section("sfrs")));
extern volatile unsigned int CNENGCLR __attribute__((section("sfrs")));
extern volatile unsigned int CNENGSET __attribute__((section("sfrs")));
extern volatile unsigned int CNENGINV __attribute__((section("sfrs")));

extern volatile unsigned int CNSTATG __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned CNSTATG0:1;
    unsigned CNSTATG1:1;
    unsigned :4;
    unsigned CNSTATG6:1;
    unsigned CNSTATG7:1;
    unsigned CNSTATG8:1;
    unsigned CNSTATG9:1;
    unsigned :2;
    unsigned CNSTATG12:1;
    unsigned CNSTATG13:1;
    unsigned CNSTATG14:1;
    unsigned CNSTATG15:1;
  };
  struct {
    unsigned w:32;
  };
} __CNSTATGbits_t;
extern volatile __CNSTATGbits_t CNSTATGbits __asm__ ("CNSTATG") __attribute__((section("sfrs")));
extern volatile unsigned int CNSTATGCLR __attribute__((section("sfrs")));
extern volatile unsigned int CNSTATGSET __attribute__((section("sfrs")));
extern volatile unsigned int CNSTATGINV __attribute__((section("sfrs")));

extern volatile unsigned int CNNEG __attribute__((section("sfrs")));
typedef struct {
  unsigned CNNEG0:1;
  unsigned CNNEG1:1;
  unsigned :4;
  unsigned CNNEG6:1;
  unsigned CNNEG7:1;
  unsigned CNNEG8:1;
  unsigned CNNEG9:1;
  unsigned :2;
  unsigned CNNEG12:1;
  unsigned CNNEG13:1;
  unsigned CNNEG14:1;
  unsigned CNNEG15:1;
} __CNNEGbits_t;
extern volatile __CNNEGbits_t CNNEGbits __asm__ ("CNNEG") __attribute__((section("sfrs")));
extern volatile unsigned int CNNEGCLR __attribute__((section("sfrs")));
extern volatile unsigned int CNNEGSET __attribute__((section("sfrs")));
extern volatile unsigned int CNNEGINV __attribute__((section("sfrs")));

extern volatile unsigned int CNFG __attribute__((section("sfrs")));
typedef struct {
  unsigned CNFG0:1;
  unsigned CNFG1:1;
  unsigned :4;
  unsigned CNFG6:1;
  unsigned CNFG7:1;
  unsigned CNFG8:1;
  unsigned CNFG9:1;
  unsigned :2;
  unsigned CNFG12:1;
  unsigned CNFG13:1;
  unsigned CNFG14:1;
  unsigned CNFG15:1;
} __CNFGbits_t;
extern volatile __CNFGbits_t CNFGbits __asm__ ("CNFG") __attribute__((section("sfrs")));
extern volatile unsigned int CNFGCLR __attribute__((section("sfrs")));
extern volatile unsigned int CNFGSET __attribute__((section("sfrs")));
extern volatile unsigned int CNFGINV __attribute__((section("sfrs")));

extern volatile unsigned int SRCON0G __attribute__((section("sfrs")));
typedef struct {
  unsigned :6;
  unsigned SR0G6:1;
  unsigned :2;
  unsigned SR0G9:1;
  unsigned :2;
  unsigned SR0G12:1;
  unsigned SR0G13:1;
  unsigned SR0G14:1;
} __SRCON0Gbits_t;
extern volatile __SRCON0Gbits_t SRCON0Gbits __asm__ ("SRCON0G") __attribute__((section("sfrs")));
extern volatile unsigned int SRCON0GCLR __attribute__((section("sfrs")));
extern volatile unsigned int SRCON0GSET __attribute__((section("sfrs")));
extern volatile unsigned int SRCON0GINV __attribute__((section("sfrs")));

extern volatile unsigned int SRCON1G __attribute__((section("sfrs")));
typedef struct {
  unsigned :6;
  unsigned SR1G6:1;
  unsigned :2;
  unsigned SR1G9:1;
  unsigned :2;
  unsigned SR1G12:1;
  unsigned SR1G13:1;
  unsigned SR1G14:1;
} __SRCON1Gbits_t;
extern volatile __SRCON1Gbits_t SRCON1Gbits __asm__ ("SRCON1G") __attribute__((section("sfrs")));
extern volatile unsigned int SRCON1GCLR __attribute__((section("sfrs")));
extern volatile unsigned int SRCON1GSET __attribute__((section("sfrs")));
extern volatile unsigned int SRCON1GINV __attribute__((section("sfrs")));

extern volatile unsigned int ETHCON1 __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned BUFCDEC:1;
    unsigned :3;
    unsigned MANFC:1;
    unsigned :2;
    unsigned AUTOFC:1;
    unsigned RXEN:1;
    unsigned TXRTS:1;
    unsigned :3;
    unsigned SIDL:1;
    unsigned :1;
    unsigned ON:1;
    unsigned PTV:16;
  };
  struct {
    unsigned w:32;
  };
} __ETHCON1bits_t;
extern volatile __ETHCON1bits_t ETHCON1bits __asm__ ("ETHCON1") __attribute__((section("sfrs")));
extern volatile unsigned int ETHCON1CLR __attribute__((section("sfrs")));
extern volatile unsigned int ETHCON1SET __attribute__((section("sfrs")));
extern volatile unsigned int ETHCON1INV __attribute__((section("sfrs")));

extern volatile unsigned int ETHCON2 __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned :4;
    unsigned RXBUF_SZ:7;
  };
  struct {
    unsigned w:32;
  };
} __ETHCON2bits_t;
extern volatile __ETHCON2bits_t ETHCON2bits __asm__ ("ETHCON2") __attribute__((section("sfrs")));
extern volatile unsigned int ETHCON2CLR __attribute__((section("sfrs")));
extern volatile unsigned int ETHCON2SET __attribute__((section("sfrs")));
extern volatile unsigned int ETHCON2INV __attribute__((section("sfrs")));

extern volatile unsigned int ETHTXST __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned :2;
    unsigned TXSTADDR:30;
  };
  struct {
    unsigned w:32;
  };
} __ETHTXSTbits_t;
extern volatile __ETHTXSTbits_t ETHTXSTbits __asm__ ("ETHTXST") __attribute__((section("sfrs")));
extern volatile unsigned int ETHTXSTCLR __attribute__((section("sfrs")));
extern volatile unsigned int ETHTXSTSET __attribute__((section("sfrs")));
extern volatile unsigned int ETHTXSTINV __attribute__((section("sfrs")));

extern volatile unsigned int ETHRXST __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned :2;
    unsigned RXSTADDR:30;
  };
  struct {
    unsigned w:32;
  };
} __ETHRXSTbits_t;
extern volatile __ETHRXSTbits_t ETHRXSTbits __asm__ ("ETHRXST") __attribute__((section("sfrs")));
extern volatile unsigned int ETHRXSTCLR __attribute__((section("sfrs")));
extern volatile unsigned int ETHRXSTSET __attribute__((section("sfrs")));
extern volatile unsigned int ETHRXSTINV __attribute__((section("sfrs")));

extern volatile unsigned int ETHHT0 __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned w:32;
  };
  struct {
    unsigned HTLOWER:32;
  };
} __ETHHT0bits_t;
extern volatile __ETHHT0bits_t ETHHT0bits __asm__ ("ETHHT0") __attribute__((section("sfrs")));
extern volatile unsigned int ETHHT0CLR __attribute__((section("sfrs")));
extern volatile unsigned int ETHHT0SET __attribute__((section("sfrs")));
extern volatile unsigned int ETHHT0INV __attribute__((section("sfrs")));

extern volatile unsigned int ETHHT1 __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned w:32;
  };
  struct {
    unsigned HTUPPER:32;
  };
} __ETHHT1bits_t;
extern volatile __ETHHT1bits_t ETHHT1bits __asm__ ("ETHHT1") __attribute__((section("sfrs")));
extern volatile unsigned int ETHHT1CLR __attribute__((section("sfrs")));
extern volatile unsigned int ETHHT1SET __attribute__((section("sfrs")));
extern volatile unsigned int ETHHT1INV __attribute__((section("sfrs")));

extern volatile unsigned int ETHPMM0 __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned w:32;
  };
  struct {
    unsigned PMMLOWER:32;
  };
} __ETHPMM0bits_t;
extern volatile __ETHPMM0bits_t ETHPMM0bits __asm__ ("ETHPMM0") __attribute__((section("sfrs")));
extern volatile unsigned int ETHPMM0CLR __attribute__((section("sfrs")));
extern volatile unsigned int ETHPMM0SET __attribute__((section("sfrs")));
extern volatile unsigned int ETHPMM0INV __attribute__((section("sfrs")));

extern volatile unsigned int ETHPMM1 __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned w:32;
  };
  struct {
    unsigned PMMUPPER:32;
  };
} __ETHPMM1bits_t;
extern volatile __ETHPMM1bits_t ETHPMM1bits __asm__ ("ETHPMM1") __attribute__((section("sfrs")));
extern volatile unsigned int ETHPMM1CLR __attribute__((section("sfrs")));
extern volatile unsigned int ETHPMM1SET __attribute__((section("sfrs")));
extern volatile unsigned int ETHPMM1INV __attribute__((section("sfrs")));

extern volatile unsigned int ETHPMCS __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned PMCS:16;
  };
  struct {
    unsigned w:32;
  };
} __ETHPMCSbits_t;
extern volatile __ETHPMCSbits_t ETHPMCSbits __asm__ ("ETHPMCS") __attribute__((section("sfrs")));
extern volatile unsigned int ETHPMCSCLR __attribute__((section("sfrs")));
extern volatile unsigned int ETHPMCSSET __attribute__((section("sfrs")));
extern volatile unsigned int ETHPMCSINV __attribute__((section("sfrs")));

extern volatile unsigned int ETHPMO __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned PMO:16;
  };
  struct {
    unsigned w:32;
  };
} __ETHPMObits_t;
extern volatile __ETHPMObits_t ETHPMObits __asm__ ("ETHPMO") __attribute__((section("sfrs")));
extern volatile unsigned int ETHPMOCLR __attribute__((section("sfrs")));
extern volatile unsigned int ETHPMOSET __attribute__((section("sfrs")));
extern volatile unsigned int ETHPMOINV __attribute__((section("sfrs")));

extern volatile unsigned int ETHRXFC __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned BCEN:1;
    unsigned MCEN:1;
    unsigned NOTMEEN:1;
    unsigned UCEN:1;
    unsigned RUNTEN:1;
    unsigned RUNTERREN:1;
    unsigned CRCOKEN:1;
    unsigned CRCERREN:1;
    unsigned PMMODE:4;
    unsigned NOTPM:1;
    unsigned :1;
    unsigned MPEN:1;
    unsigned HTEN:1;
  };
  struct {
    unsigned w:32;
  };
} __ETHRXFCbits_t;
extern volatile __ETHRXFCbits_t ETHRXFCbits __asm__ ("ETHRXFC") __attribute__((section("sfrs")));
extern volatile unsigned int ETHRXFCCLR __attribute__((section("sfrs")));
extern volatile unsigned int ETHRXFCSET __attribute__((section("sfrs")));
extern volatile unsigned int ETHRXFCINV __attribute__((section("sfrs")));

extern volatile unsigned int ETHRXWM __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned RXEWM:8;
    unsigned :8;
    unsigned RXFWM:8;
  };
  struct {
    unsigned w:32;
  };
} __ETHRXWMbits_t;
extern volatile __ETHRXWMbits_t ETHRXWMbits __asm__ ("ETHRXWM") __attribute__((section("sfrs")));
extern volatile unsigned int ETHRXWMCLR __attribute__((section("sfrs")));
extern volatile unsigned int ETHRXWMSET __attribute__((section("sfrs")));
extern volatile unsigned int ETHRXWMINV __attribute__((section("sfrs")));

extern volatile unsigned int ETHIEN __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned RXOVFLWIE:1;
    unsigned RXBUFNAIE:1;
    unsigned TXABORTIE:1;
    unsigned TXDONEIE:1;
    unsigned :1;
    unsigned RXACTIE:1;
    unsigned PKTPENDIE:1;
    unsigned RXDONEIE:1;
    unsigned FWMARKIE:1;
    unsigned EWMARKIE:1;
    unsigned :3;
    unsigned RXBUSEIE:1;
    unsigned TXBUSEIE:1;
  };
  struct {
    unsigned w:32;
  };
} __ETHIENbits_t;
extern volatile __ETHIENbits_t ETHIENbits __asm__ ("ETHIEN") __attribute__((section("sfrs")));
extern volatile unsigned int ETHIENCLR __attribute__((section("sfrs")));
extern volatile unsigned int ETHIENSET __attribute__((section("sfrs")));
extern volatile unsigned int ETHIENINV __attribute__((section("sfrs")));

extern volatile unsigned int ETHIRQ __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned RXOVFLW:1;
    unsigned RXBUFNA:1;
    unsigned TXABORT:1;
    unsigned TXDONE:1;
    unsigned :1;
    unsigned RXACT:1;
    unsigned PKTPEND:1;
    unsigned RXDONE:1;
    unsigned FWMARK:1;
    unsigned EWMARK:1;
    unsigned :3;
    unsigned RXBUSE:1;
    unsigned TXBUSE:1;
  };
  struct {
    unsigned w:32;
  };
} __ETHIRQbits_t;
extern volatile __ETHIRQbits_t ETHIRQbits __asm__ ("ETHIRQ") __attribute__((section("sfrs")));
extern volatile unsigned int ETHIRQCLR __attribute__((section("sfrs")));
extern volatile unsigned int ETHIRQSET __attribute__((section("sfrs")));
extern volatile unsigned int ETHIRQINV __attribute__((section("sfrs")));

extern volatile unsigned int ETHSTAT __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned :5;
    unsigned RXBUSY:1;
    unsigned TXBUSY:1;
    unsigned BUSY:1;
    unsigned :8;
    unsigned BUFCNT:8;
  };
  struct {
    unsigned :7;
    unsigned ETHBUSY:1;
  };
  struct {
    unsigned w:32;
  };
} __ETHSTATbits_t;
extern volatile __ETHSTATbits_t ETHSTATbits __asm__ ("ETHSTAT") __attribute__((section("sfrs")));
extern volatile unsigned int ETHSTATCLR __attribute__((section("sfrs")));
extern volatile unsigned int ETHSTATSET __attribute__((section("sfrs")));
extern volatile unsigned int ETHSTATINV __attribute__((section("sfrs")));

extern volatile unsigned int ETHRXOVFLOW __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned RXOVFLWCNT:16;
  };
  struct {
    unsigned w:32;
  };
} __ETHRXOVFLOWbits_t;
extern volatile __ETHRXOVFLOWbits_t ETHRXOVFLOWbits __asm__ ("ETHRXOVFLOW") __attribute__((section("sfrs")));
extern volatile unsigned int ETHRXOVFLOWCLR __attribute__((section("sfrs")));
extern volatile unsigned int ETHRXOVFLOWSET __attribute__((section("sfrs")));
extern volatile unsigned int ETHRXOVFLOWINV __attribute__((section("sfrs")));

extern volatile unsigned int ETHFRMTXOK __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned FRMTXOKCNT:16;
  };
  struct {
    unsigned w:32;
  };
} __ETHFRMTXOKbits_t;
extern volatile __ETHFRMTXOKbits_t ETHFRMTXOKbits __asm__ ("ETHFRMTXOK") __attribute__((section("sfrs")));
extern volatile unsigned int ETHFRMTXOKCLR __attribute__((section("sfrs")));
extern volatile unsigned int ETHFRMTXOKSET __attribute__((section("sfrs")));
extern volatile unsigned int ETHFRMTXOKINV __attribute__((section("sfrs")));

extern volatile unsigned int ETHSCOLFRM __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned SCOLFRMCNT:16;
  };
  struct {
    unsigned w:32;
  };
} __ETHSCOLFRMbits_t;
extern volatile __ETHSCOLFRMbits_t ETHSCOLFRMbits __asm__ ("ETHSCOLFRM") __attribute__((section("sfrs")));
extern volatile unsigned int ETHSCOLFRMCLR __attribute__((section("sfrs")));
extern volatile unsigned int ETHSCOLFRMSET __attribute__((section("sfrs")));
extern volatile unsigned int ETHSCOLFRMINV __attribute__((section("sfrs")));

extern volatile unsigned int ETHMCOLFRM __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned MCOLFRMCNT:16;
  };
  struct {
    unsigned MCOLFRM_CNT:16;
  };
  struct {
    unsigned w:32;
  };
} __ETHMCOLFRMbits_t;
extern volatile __ETHMCOLFRMbits_t ETHMCOLFRMbits __asm__ ("ETHMCOLFRM") __attribute__((section("sfrs")));
extern volatile unsigned int ETHMCOLFRMCLR __attribute__((section("sfrs")));
extern volatile unsigned int ETHMCOLFRMSET __attribute__((section("sfrs")));
extern volatile unsigned int ETHMCOLFRMINV __attribute__((section("sfrs")));

extern volatile unsigned int ETHFRMRXOK __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned FRMRXOKCNT:16;
  };
  struct {
    unsigned w:32;
  };
} __ETHFRMRXOKbits_t;
extern volatile __ETHFRMRXOKbits_t ETHFRMRXOKbits __asm__ ("ETHFRMRXOK") __attribute__((section("sfrs")));
extern volatile unsigned int ETHFRMRXOKCLR __attribute__((section("sfrs")));
extern volatile unsigned int ETHFRMRXOKSET __attribute__((section("sfrs")));
extern volatile unsigned int ETHFRMRXOKINV __attribute__((section("sfrs")));

extern volatile unsigned int ETHFCSERR __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned FCSERRCNT:16;
  };
  struct {
    unsigned w:32;
  };
} __ETHFCSERRbits_t;
extern volatile __ETHFCSERRbits_t ETHFCSERRbits __asm__ ("ETHFCSERR") __attribute__((section("sfrs")));
extern volatile unsigned int ETHFCSERRCLR __attribute__((section("sfrs")));
extern volatile unsigned int ETHFCSERRSET __attribute__((section("sfrs")));
extern volatile unsigned int ETHFCSERRINV __attribute__((section("sfrs")));

extern volatile unsigned int ETHALGNERR __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned ALGNERRCNT:16;
  };
  struct {
    unsigned w:32;
  };
} __ETHALGNERRbits_t;
extern volatile __ETHALGNERRbits_t ETHALGNERRbits __asm__ ("ETHALGNERR") __attribute__((section("sfrs")));
extern volatile unsigned int ETHALGNERRCLR __attribute__((section("sfrs")));
extern volatile unsigned int ETHALGNERRSET __attribute__((section("sfrs")));
extern volatile unsigned int ETHALGNERRINV __attribute__((section("sfrs")));

extern volatile unsigned int EMAC1CFG1 __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned RXENABLE:1;
    unsigned PASSALL:1;
    unsigned RXPAUSE:1;
    unsigned TXPAUSE:1;
    unsigned LOOPBACK:1;
    unsigned :3;
    unsigned RESETTFUN:1;
    unsigned RESETTMCS:1;
    unsigned RESETRFUN:1;
    unsigned RESETRMCS:1;
    unsigned :2;
    unsigned SIMRESET:1;
    unsigned SOFTRESET:1;
  };
  struct {
    unsigned w:32;
  };
} __EMAC1CFG1bits_t;
extern volatile __EMAC1CFG1bits_t EMAC1CFG1bits __asm__ ("EMAC1CFG1") __attribute__((section("sfrs")));

extern volatile unsigned int EMACxCFG1 __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned RXENABLE:1;
    unsigned PASSALL:1;
    unsigned RXPAUSE:1;
    unsigned TXPAUSE:1;
    unsigned LOOPBACK:1;
    unsigned :3;
    unsigned RESETTFUN:1;
    unsigned RESETTMCS:1;
    unsigned RESETRFUN:1;
    unsigned RESETRMCS:1;
    unsigned :2;
    unsigned SIMRESET:1;
    unsigned SOFTRESET:1;
  };
  struct {
    unsigned w:32;
  };
} __EMACxCFG1bits_t;
extern volatile __EMACxCFG1bits_t EMACxCFG1bits __asm__ ("EMACxCFG1") __attribute__((section("sfrs")));
extern volatile unsigned int EMAC1CFG1CLR __attribute__((section("sfrs")));
extern volatile unsigned int EMACxCFG1CLR __attribute__((section("sfrs")));
extern volatile unsigned int EMAC1CFG1SET __attribute__((section("sfrs")));
extern volatile unsigned int EMACxCFG1SET __attribute__((section("sfrs")));
extern volatile unsigned int EMAC1CFG1INV __attribute__((section("sfrs")));
extern volatile unsigned int EMACxCFG1INV __attribute__((section("sfrs")));

extern volatile unsigned int EMAC1CFG2 __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned FULLDPLX:1;
    unsigned LENGTHCK:1;
    unsigned HUGEFRM:1;
    unsigned DELAYCRC:1;
    unsigned CRCENABLE:1;
    unsigned PADENABLE:1;
    unsigned VLANPAD:1;
    unsigned AUTOPAD:1;
    unsigned PUREPRE:1;
    unsigned LONGPRE:1;
    unsigned :2;
    unsigned NOBKOFF:1;
    unsigned BPNOBKOFF:1;
    unsigned EXCESSDFR:1;
  };
  struct {
    unsigned w:32;
  };
} __EMAC1CFG2bits_t;
extern volatile __EMAC1CFG2bits_t EMAC1CFG2bits __asm__ ("EMAC1CFG2") __attribute__((section("sfrs")));

extern volatile unsigned int EMACxCFG2 __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned FULLDPLX:1;
    unsigned LENGTHCK:1;
    unsigned HUGEFRM:1;
    unsigned DELAYCRC:1;
    unsigned CRCENABLE:1;
    unsigned PADENABLE:1;
    unsigned VLANPAD:1;
    unsigned AUTOPAD:1;
    unsigned PUREPRE:1;
    unsigned LONGPRE:1;
    unsigned :2;
    unsigned NOBKOFF:1;
    unsigned BPNOBKOFF:1;
    unsigned EXCESSDFR:1;
  };
  struct {
    unsigned w:32;
  };
} __EMACxCFG2bits_t;
extern volatile __EMACxCFG2bits_t EMACxCFG2bits __asm__ ("EMACxCFG2") __attribute__((section("sfrs")));
extern volatile unsigned int EMAC1CFG2CLR __attribute__((section("sfrs")));
extern volatile unsigned int EMACxCFG2CLR __attribute__((section("sfrs")));
extern volatile unsigned int EMAC1CFG2SET __attribute__((section("sfrs")));
extern volatile unsigned int EMACxCFG2SET __attribute__((section("sfrs")));
extern volatile unsigned int EMAC1CFG2INV __attribute__((section("sfrs")));
extern volatile unsigned int EMACxCFG2INV __attribute__((section("sfrs")));

extern volatile unsigned int EMAC1IPGT __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned B2BIPKTGP:7;
  };
  struct {
    unsigned w:32;
  };
} __EMAC1IPGTbits_t;
extern volatile __EMAC1IPGTbits_t EMAC1IPGTbits __asm__ ("EMAC1IPGT") __attribute__((section("sfrs")));

extern volatile unsigned int EMACxIPGT __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned B2BIPKTGP:7;
  };
  struct {
    unsigned w:32;
  };
} __EMACxIPGTbits_t;
extern volatile __EMACxIPGTbits_t EMACxIPGTbits __asm__ ("EMACxIPGT") __attribute__((section("sfrs")));
extern volatile unsigned int EMAC1IPGTCLR __attribute__((section("sfrs")));
extern volatile unsigned int EMACxIPGTCLR __attribute__((section("sfrs")));
extern volatile unsigned int EMAC1IPGTSET __attribute__((section("sfrs")));
extern volatile unsigned int EMACxIPGTSET __attribute__((section("sfrs")));
extern volatile unsigned int EMAC1IPGTINV __attribute__((section("sfrs")));
extern volatile unsigned int EMACxIPGTINV __attribute__((section("sfrs")));

extern volatile unsigned int EMAC1IPGR __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned NB2BIPKTGP2:7;
    unsigned :1;
    unsigned NB2BIPKTGP1:7;
  };
  struct {
    unsigned w:32;
  };
} __EMAC1IPGRbits_t;
extern volatile __EMAC1IPGRbits_t EMAC1IPGRbits __asm__ ("EMAC1IPGR") __attribute__((section("sfrs")));

extern volatile unsigned int EMACxIPGR __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned NB2BIPKTGP2:7;
    unsigned :1;
    unsigned NB2BIPKTGP1:7;
  };
  struct {
    unsigned w:32;
  };
} __EMACxIPGRbits_t;
extern volatile __EMACxIPGRbits_t EMACxIPGRbits __asm__ ("EMACxIPGR") __attribute__((section("sfrs")));
extern volatile unsigned int EMAC1IPGRCLR __attribute__((section("sfrs")));
extern volatile unsigned int EMACxIPGRCLR __attribute__((section("sfrs")));
extern volatile unsigned int EMAC1IPGRSET __attribute__((section("sfrs")));
extern volatile unsigned int EMACxIPGRSET __attribute__((section("sfrs")));
extern volatile unsigned int EMAC1IPGRINV __attribute__((section("sfrs")));
extern volatile unsigned int EMACxIPGRINV __attribute__((section("sfrs")));

extern volatile unsigned int EMAC1CLRT __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned RETX:4;
    unsigned :4;
    unsigned CWINDOW:6;
  };
  struct {
    unsigned w:32;
  };
} __EMAC1CLRTbits_t;
extern volatile __EMAC1CLRTbits_t EMAC1CLRTbits __asm__ ("EMAC1CLRT") __attribute__((section("sfrs")));

extern volatile unsigned int EMACxCLRT __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned RETX:4;
    unsigned :4;
    unsigned CWINDOW:6;
  };
  struct {
    unsigned w:32;
  };
} __EMACxCLRTbits_t;
extern volatile __EMACxCLRTbits_t EMACxCLRTbits __asm__ ("EMACxCLRT") __attribute__((section("sfrs")));
extern volatile unsigned int EMAC1CLRTCLR __attribute__((section("sfrs")));
extern volatile unsigned int EMACxCLRTCLR __attribute__((section("sfrs")));
extern volatile unsigned int EMAC1CLRTSET __attribute__((section("sfrs")));
extern volatile unsigned int EMACxCLRTSET __attribute__((section("sfrs")));
extern volatile unsigned int EMAC1CLRTINV __attribute__((section("sfrs")));
extern volatile unsigned int EMACxCLRTINV __attribute__((section("sfrs")));

extern volatile unsigned int EMAC1MAXF __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned MACMAXF:16;
  };
  struct {
    unsigned w:32;
  };
} __EMAC1MAXFbits_t;
extern volatile __EMAC1MAXFbits_t EMAC1MAXFbits __asm__ ("EMAC1MAXF") __attribute__((section("sfrs")));

extern volatile unsigned int EMACxMAXF __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned MACMAXF:16;
  };
  struct {
    unsigned w:32;
  };
} __EMACxMAXFbits_t;
extern volatile __EMACxMAXFbits_t EMACxMAXFbits __asm__ ("EMACxMAXF") __attribute__((section("sfrs")));
extern volatile unsigned int EMAC1MAXFCLR __attribute__((section("sfrs")));
extern volatile unsigned int EMACxMAXFCLR __attribute__((section("sfrs")));
extern volatile unsigned int EMAC1MAXFSET __attribute__((section("sfrs")));
extern volatile unsigned int EMACxMAXFSET __attribute__((section("sfrs")));
extern volatile unsigned int EMAC1MAXFINV __attribute__((section("sfrs")));
extern volatile unsigned int EMACxMAXFINV __attribute__((section("sfrs")));

extern volatile unsigned int EMAC1SUPP __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned :8;
    unsigned SPEEDRMII:1;
    unsigned :2;
    unsigned RESETRMII:1;
  };
  struct {
    unsigned w:32;
  };
} __EMAC1SUPPbits_t;
extern volatile __EMAC1SUPPbits_t EMAC1SUPPbits __asm__ ("EMAC1SUPP") __attribute__((section("sfrs")));

extern volatile unsigned int EMACxSUPP __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned :8;
    unsigned SPEEDRMII:1;
    unsigned :2;
    unsigned RESETRMII:1;
  };
  struct {
    unsigned w:32;
  };
} __EMACxSUPPbits_t;
extern volatile __EMACxSUPPbits_t EMACxSUPPbits __asm__ ("EMACxSUPP") __attribute__((section("sfrs")));
extern volatile unsigned int EMAC1SUPPCLR __attribute__((section("sfrs")));
extern volatile unsigned int EMACxSUPPCLR __attribute__((section("sfrs")));
extern volatile unsigned int EMAC1SUPPSET __attribute__((section("sfrs")));
extern volatile unsigned int EMACxSUPPSET __attribute__((section("sfrs")));
extern volatile unsigned int EMAC1SUPPINV __attribute__((section("sfrs")));
extern volatile unsigned int EMACxSUPPINV __attribute__((section("sfrs")));

extern volatile unsigned int EMAC1TEST __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned SHRTQNTA:1;
    unsigned TESTPAUSE:1;
    unsigned TESTBP:1;
  };
  struct {
    unsigned w:32;
  };
} __EMAC1TESTbits_t;
extern volatile __EMAC1TESTbits_t EMAC1TESTbits __asm__ ("EMAC1TEST") __attribute__((section("sfrs")));

extern volatile unsigned int EMACxTEST __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned SHRTQNTA:1;
    unsigned TESTPAUSE:1;
    unsigned TESTBP:1;
  };
  struct {
    unsigned w:32;
  };
} __EMACxTESTbits_t;
extern volatile __EMACxTESTbits_t EMACxTESTbits __asm__ ("EMACxTEST") __attribute__((section("sfrs")));
extern volatile unsigned int EMAC1TESTCLR __attribute__((section("sfrs")));
extern volatile unsigned int EMACxTESTCLR __attribute__((section("sfrs")));
extern volatile unsigned int EMAC1TESTSET __attribute__((section("sfrs")));
extern volatile unsigned int EMACxTESTSET __attribute__((section("sfrs")));
extern volatile unsigned int EMAC1TESTINV __attribute__((section("sfrs")));
extern volatile unsigned int EMACxTESTINV __attribute__((section("sfrs")));

extern volatile unsigned int EMAC1MCFG __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned SCANINC:1;
    unsigned NOPRE:1;
    unsigned CLKSEL:4;
    unsigned :9;
    unsigned RESETMGMT:1;
  };
  struct {
    unsigned w:32;
  };
} __EMAC1MCFGbits_t;
extern volatile __EMAC1MCFGbits_t EMAC1MCFGbits __asm__ ("EMAC1MCFG") __attribute__((section("sfrs")));

extern volatile unsigned int EMACxMCFG __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned SCANINC:1;
    unsigned NOPRE:1;
    unsigned CLKSEL:4;
    unsigned :9;
    unsigned RESETMGMT:1;
  };
  struct {
    unsigned w:32;
  };
} __EMACxMCFGbits_t;
extern volatile __EMACxMCFGbits_t EMACxMCFGbits __asm__ ("EMACxMCFG") __attribute__((section("sfrs")));
extern volatile unsigned int EMAC1MCFGCLR __attribute__((section("sfrs")));
extern volatile unsigned int EMACxMCFGCLR __attribute__((section("sfrs")));
extern volatile unsigned int EMAC1MCFGSET __attribute__((section("sfrs")));
extern volatile unsigned int EMACxMCFGSET __attribute__((section("sfrs")));
extern volatile unsigned int EMAC1MCFGINV __attribute__((section("sfrs")));
extern volatile unsigned int EMACxMCFGINV __attribute__((section("sfrs")));

extern volatile unsigned int EMAC1MCMD __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned READ:1;
    unsigned SCAN:1;
  };
  struct {
    unsigned w:32;
  };
} __EMAC1MCMDbits_t;
extern volatile __EMAC1MCMDbits_t EMAC1MCMDbits __asm__ ("EMAC1MCMD") __attribute__((section("sfrs")));

extern volatile unsigned int EMACxMCMD __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned READ:1;
    unsigned SCAN:1;
  };
  struct {
    unsigned w:32;
  };
} __EMACxMCMDbits_t;
extern volatile __EMACxMCMDbits_t EMACxMCMDbits __asm__ ("EMACxMCMD") __attribute__((section("sfrs")));
extern volatile unsigned int EMAC1MCMDCLR __attribute__((section("sfrs")));
extern volatile unsigned int EMACxMCMDCLR __attribute__((section("sfrs")));
extern volatile unsigned int EMAC1MCMDSET __attribute__((section("sfrs")));
extern volatile unsigned int EMACxMCMDSET __attribute__((section("sfrs")));
extern volatile unsigned int EMAC1MCMDINV __attribute__((section("sfrs")));
extern volatile unsigned int EMACxMCMDINV __attribute__((section("sfrs")));

extern volatile unsigned int EMAC1MADR __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned REGADDR:5;
    unsigned :3;
    unsigned PHYADDR:5;
  };
  struct {
    unsigned w:32;
  };
} __EMAC1MADRbits_t;
extern volatile __EMAC1MADRbits_t EMAC1MADRbits __asm__ ("EMAC1MADR") __attribute__((section("sfrs")));

extern volatile unsigned int EMACxMADR __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned REGADDR:5;
    unsigned :3;
    unsigned PHYADDR:5;
  };
  struct {
    unsigned w:32;
  };
} __EMACxMADRbits_t;
extern volatile __EMACxMADRbits_t EMACxMADRbits __asm__ ("EMACxMADR") __attribute__((section("sfrs")));
extern volatile unsigned int EMAC1MADRCLR __attribute__((section("sfrs")));
extern volatile unsigned int EMACxMADRCLR __attribute__((section("sfrs")));
extern volatile unsigned int EMAC1MADRSET __attribute__((section("sfrs")));
extern volatile unsigned int EMACxMADRSET __attribute__((section("sfrs")));
extern volatile unsigned int EMAC1MADRINV __attribute__((section("sfrs")));
extern volatile unsigned int EMACxMADRINV __attribute__((section("sfrs")));

extern volatile unsigned int EMAC1MWTD __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned MWTD:16;
  };
  struct {
    unsigned w:32;
  };
} __EMAC1MWTDbits_t;
extern volatile __EMAC1MWTDbits_t EMAC1MWTDbits __asm__ ("EMAC1MWTD") __attribute__((section("sfrs")));

extern volatile unsigned int EMACxMWTD __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned MWTD:16;
  };
  struct {
    unsigned w:32;
  };
} __EMACxMWTDbits_t;
extern volatile __EMACxMWTDbits_t EMACxMWTDbits __asm__ ("EMACxMWTD") __attribute__((section("sfrs")));
extern volatile unsigned int EMAC1MWTDCLR __attribute__((section("sfrs")));
extern volatile unsigned int EMACxMWTDCLR __attribute__((section("sfrs")));
extern volatile unsigned int EMAC1MWTDSET __attribute__((section("sfrs")));
extern volatile unsigned int EMACxMWTDSET __attribute__((section("sfrs")));
extern volatile unsigned int EMAC1MWTDINV __attribute__((section("sfrs")));
extern volatile unsigned int EMACxMWTDINV __attribute__((section("sfrs")));

extern volatile unsigned int EMAC1MRDD __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned MRDD:16;
  };
  struct {
    unsigned w:32;
  };
} __EMAC1MRDDbits_t;
extern volatile __EMAC1MRDDbits_t EMAC1MRDDbits __asm__ ("EMAC1MRDD") __attribute__((section("sfrs")));

extern volatile unsigned int EMACxMRDD __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned MRDD:16;
  };
  struct {
    unsigned w:32;
  };
} __EMACxMRDDbits_t;
extern volatile __EMACxMRDDbits_t EMACxMRDDbits __asm__ ("EMACxMRDD") __attribute__((section("sfrs")));
extern volatile unsigned int EMAC1MRDDCLR __attribute__((section("sfrs")));
extern volatile unsigned int EMACxMRDDCLR __attribute__((section("sfrs")));
extern volatile unsigned int EMAC1MRDDSET __attribute__((section("sfrs")));
extern volatile unsigned int EMACxMRDDSET __attribute__((section("sfrs")));
extern volatile unsigned int EMAC1MRDDINV __attribute__((section("sfrs")));
extern volatile unsigned int EMACxMRDDINV __attribute__((section("sfrs")));

extern volatile unsigned int EMAC1MIND __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned MIIMBUSY:1;
    unsigned SCAN:1;
    unsigned NOTVALID:1;
    unsigned LINKFAIL:1;
  };
  struct {
    unsigned w:32;
  };
} __EMAC1MINDbits_t;
extern volatile __EMAC1MINDbits_t EMAC1MINDbits __asm__ ("EMAC1MIND") __attribute__((section("sfrs")));

extern volatile unsigned int EMACxMIND __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned MIIMBUSY:1;
    unsigned SCAN:1;
    unsigned NOTVALID:1;
    unsigned LINKFAIL:1;
  };
  struct {
    unsigned w:32;
  };
} __EMACxMINDbits_t;
extern volatile __EMACxMINDbits_t EMACxMINDbits __asm__ ("EMACxMIND") __attribute__((section("sfrs")));
extern volatile unsigned int EMAC1MINDCLR __attribute__((section("sfrs")));
extern volatile unsigned int EMACxMINDCLR __attribute__((section("sfrs")));
extern volatile unsigned int EMAC1MINDSET __attribute__((section("sfrs")));
extern volatile unsigned int EMACxMINDSET __attribute__((section("sfrs")));
extern volatile unsigned int EMAC1MINDINV __attribute__((section("sfrs")));
extern volatile unsigned int EMACxMINDINV __attribute__((section("sfrs")));

extern volatile unsigned int EMAC1SA0 __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned STNADDR5:8;
    unsigned STNADDR6:8;
  };
  struct {
    unsigned w:32;
  };
} __EMAC1SA0bits_t;
extern volatile __EMAC1SA0bits_t EMAC1SA0bits __asm__ ("EMAC1SA0") __attribute__((section("sfrs")));

extern volatile unsigned int EMACxSA0 __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned STNADDR5:8;
    unsigned STNADDR6:8;
  };
  struct {
    unsigned w:32;
  };
} __EMACxSA0bits_t;
extern volatile __EMACxSA0bits_t EMACxSA0bits __asm__ ("EMACxSA0") __attribute__((section("sfrs")));
extern volatile unsigned int EMAC1SA0CLR __attribute__((section("sfrs")));
extern volatile unsigned int EMACxSA0CLR __attribute__((section("sfrs")));
extern volatile unsigned int EMAC1SA0SET __attribute__((section("sfrs")));
extern volatile unsigned int EMACxSA0SET __attribute__((section("sfrs")));
extern volatile unsigned int EMAC1SA0INV __attribute__((section("sfrs")));
extern volatile unsigned int EMACxSA0INV __attribute__((section("sfrs")));

extern volatile unsigned int EMAC1SA1 __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned STNADDR3:8;
    unsigned STNADDR4:8;
  };
  struct {
    unsigned w:32;
  };
} __EMAC1SA1bits_t;
extern volatile __EMAC1SA1bits_t EMAC1SA1bits __asm__ ("EMAC1SA1") __attribute__((section("sfrs")));

extern volatile unsigned int EMACxSA1 __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned STNADDR3:8;
    unsigned STNADDR4:8;
  };
  struct {
    unsigned w:32;
  };
} __EMACxSA1bits_t;
extern volatile __EMACxSA1bits_t EMACxSA1bits __asm__ ("EMACxSA1") __attribute__((section("sfrs")));
extern volatile unsigned int EMAC1SA1CLR __attribute__((section("sfrs")));
extern volatile unsigned int EMACxSA1CLR __attribute__((section("sfrs")));
extern volatile unsigned int EMAC1SA1SET __attribute__((section("sfrs")));
extern volatile unsigned int EMACxSA1SET __attribute__((section("sfrs")));
extern volatile unsigned int EMAC1SA1INV __attribute__((section("sfrs")));
extern volatile unsigned int EMACxSA1INV __attribute__((section("sfrs")));

extern volatile unsigned int EMAC1SA2 __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned STNADDR1:8;
    unsigned STNADDR2:8;
  };
  struct {
    unsigned w:32;
  };
} __EMAC1SA2bits_t;
extern volatile __EMAC1SA2bits_t EMAC1SA2bits __asm__ ("EMAC1SA2") __attribute__((section("sfrs")));

extern volatile unsigned int EMACxSA2 __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned STNADDR1:8;
    unsigned STNADDR2:8;
  };
  struct {
    unsigned w:32;
  };
} __EMACxSA2bits_t;
extern volatile __EMACxSA2bits_t EMACxSA2bits __asm__ ("EMACxSA2") __attribute__((section("sfrs")));
extern volatile unsigned int EMAC1SA2CLR __attribute__((section("sfrs")));
extern volatile unsigned int EMACxSA2CLR __attribute__((section("sfrs")));
extern volatile unsigned int EMAC1SA2SET __attribute__((section("sfrs")));
extern volatile unsigned int EMACxSA2SET __attribute__((section("sfrs")));
extern volatile unsigned int EMAC1SA2INV __attribute__((section("sfrs")));
extern volatile unsigned int EMACxSA2INV __attribute__((section("sfrs")));

extern volatile unsigned int USBCRCON __attribute__((section("sfrs")));
typedef struct {
  unsigned USBWKUPEN:1;
  unsigned USBRIE:1;
  unsigned USBIE:1;
  unsigned SENDMONEN:1;
  unsigned BSVALMONEN:1;
  unsigned ASVALMONEN:1;
  unsigned VBUSMONEN:1;
  unsigned PHYIDEN:1;
  unsigned USBIDVAL:1;
  unsigned USBIDOVEN:1;
  unsigned :14;
  unsigned USBWKUP:1;
  unsigned USBRF:1;
  unsigned USBIF:1;
} __USBCRCONbits_t;
extern volatile __USBCRCONbits_t USBCRCONbits __asm__ ("USBCRCON") __attribute__((section("sfrs")));

extern volatile unsigned int PRECON __attribute__((section("sfrs")));
typedef struct {
  unsigned PFMWS:3;
  unsigned :1;
  unsigned PREFEN:2;
  unsigned :20;
  unsigned PFMSECEN:1;
} __PRECONbits_t;
extern volatile __PRECONbits_t PRECONbits __asm__ ("PRECON") __attribute__((section("sfrs")));
extern volatile unsigned int PRECONCLR __attribute__((section("sfrs")));
extern volatile unsigned int PRECONSET __attribute__((section("sfrs")));
extern volatile unsigned int PRECONINV __attribute__((section("sfrs")));

extern volatile unsigned int PRESTAT __attribute__((section("sfrs")));
typedef struct {
  unsigned PFMSECCNT:8;
  unsigned :18;
  unsigned PFMSEC:1;
  unsigned PFMDED:1;
} __PRESTATbits_t;
extern volatile __PRESTATbits_t PRESTATbits __asm__ ("PRESTAT") __attribute__((section("sfrs")));
extern volatile unsigned int PRESTATCLR __attribute__((section("sfrs")));
extern volatile unsigned int PRESTATSET __attribute__((section("sfrs")));
extern volatile unsigned int PRESTATINV __attribute__((section("sfrs")));

extern volatile unsigned int EBICS0 __attribute__((section("sfrs")));
typedef struct {
  unsigned :16;
  unsigned CSADDR:16;
} __EBICS0bits_t;
extern volatile __EBICS0bits_t EBICS0bits __asm__ ("EBICS0") __attribute__((section("sfrs")));

extern volatile unsigned int EBIMSK0 __attribute__((section("sfrs")));
typedef struct {
  unsigned MEMSIZE:5;
  unsigned MEMTYPE:3;
  unsigned REGSEL:3;
} __EBIMSK0bits_t;
extern volatile __EBIMSK0bits_t EBIMSK0bits __asm__ ("EBIMSK0") __attribute__((section("sfrs")));

extern volatile unsigned int EBISMT0 __attribute__((section("sfrs")));
typedef struct {
  unsigned TRC:6;
  unsigned TAS:2;
  unsigned TWR:2;
  unsigned TWP:6;
  unsigned TBTA:3;
  unsigned TPRC:4;
  unsigned PAGEMODE:1;
  unsigned PAGESIZE:2;
  unsigned RDYMODE:1;
} __EBISMT0bits_t;
extern volatile __EBISMT0bits_t EBISMT0bits __asm__ ("EBISMT0") __attribute__((section("sfrs")));

extern volatile unsigned int EBISMT1 __attribute__((section("sfrs")));
typedef struct {
  unsigned TRC:6;
  unsigned TAS:2;
  unsigned TWR:2;
  unsigned TWP:6;
  unsigned TBTA:3;
  unsigned TPRC:4;
  unsigned PAGEMODE:1;
  unsigned PAGESIZE:2;
  unsigned RDYMODE:1;
} __EBISMT1bits_t;
extern volatile __EBISMT1bits_t EBISMT1bits __asm__ ("EBISMT1") __attribute__((section("sfrs")));

extern volatile unsigned int EBISMT2 __attribute__((section("sfrs")));
typedef struct {
  unsigned TRC:6;
  unsigned TAS:2;
  unsigned TWR:2;
  unsigned TWP:6;
  unsigned TBTA:3;
  unsigned TPRC:4;
  unsigned PAGEMODE:1;
  unsigned PAGESIZE:2;
  unsigned RDYMODE:1;
} __EBISMT2bits_t;
extern volatile __EBISMT2bits_t EBISMT2bits __asm__ ("EBISMT2") __attribute__((section("sfrs")));

extern volatile unsigned int EBIFTRPD __attribute__((section("sfrs")));
typedef struct {
  unsigned TRPD:31;
} __EBIFTRPDbits_t;
extern volatile __EBIFTRPDbits_t EBIFTRPDbits __asm__ ("EBIFTRPD") __attribute__((section("sfrs")));

extern volatile unsigned int EBISMCON __attribute__((section("sfrs")));
typedef struct {
  unsigned SMRP:1;
  unsigned :6;
  unsigned SMDWIDTH0:3;
  unsigned SMDWIDTH1:3;
  unsigned SMDWIDTH2:3;
} __EBISMCONbits_t;
extern volatile __EBISMCONbits_t EBISMCONbits __asm__ ("EBISMCON") __attribute__((section("sfrs")));

extern volatile unsigned int SQI1XCON1 __attribute__((section("sfrs")));
typedef struct {
  unsigned TYPECMD:2;
  unsigned TYPEADDR:2;
  unsigned TYPEMODE:2;
  unsigned TYPEDUMMY:2;
  unsigned TYPEDATA:2;
  unsigned READOPCODE:8;
  unsigned ADDRBYTES:3;
  unsigned DUMMYBYTES:3;
  unsigned DDRCMD:1;
  unsigned DDRADDR:1;
  unsigned DDRMODE:1;
  unsigned DDRDUMMY:1;
  unsigned DDRDATA:1;
  unsigned SDRCMD:1;
} __SQI1XCON1bits_t;
extern volatile __SQI1XCON1bits_t SQI1XCON1bits __asm__ ("SQI1XCON1") __attribute__((section("sfrs")));

extern volatile unsigned int SQI1XCON2 __attribute__((section("sfrs")));
typedef struct {
  unsigned MODECODE:8;
  unsigned MODEBYTES:2;
  unsigned DEVSEL:2;
} __SQI1XCON2bits_t;
extern volatile __SQI1XCON2bits_t SQI1XCON2bits __asm__ ("SQI1XCON2") __attribute__((section("sfrs")));

extern volatile unsigned int SQI1CFG __attribute__((section("sfrs")));
typedef struct {
  unsigned MODE:3;
  unsigned CPHA:1;
  unsigned CPOL:1;
  unsigned LSBF:1;
  unsigned :3;
  unsigned WP:1;
  unsigned HOLD:1;
  unsigned :1;
  unsigned BURSTEN:1;
  unsigned :3;
  unsigned RESET:1;
  unsigned TXBUFRST:1;
  unsigned RXBUFRST:1;
  unsigned CONBUFRST:1;
  unsigned DATAEN:2;
  unsigned :1;
  unsigned SQIEN:1;
  unsigned CSEN:2;
} __SQI1CFGbits_t;
extern volatile __SQI1CFGbits_t SQI1CFGbits __asm__ ("SQI1CFG") __attribute__((section("sfrs")));

extern volatile unsigned int SQI1CON __attribute__((section("sfrs")));
typedef struct {
  unsigned TXRXCOUNT:16;
  unsigned CMDINIT:2;
  unsigned LANEMODE:2;
  unsigned DEVSEL:2;
  unsigned DASSERT:1;
  unsigned DDRMODE:1;
  unsigned SCHECK:1;
} __SQI1CONbits_t;
extern volatile __SQI1CONbits_t SQI1CONbits __asm__ ("SQI1CON") __attribute__((section("sfrs")));

extern volatile unsigned int SQI1CLKCON __attribute__((section("sfrs")));
typedef struct {
  unsigned EN:1;
  unsigned STABLE:1;
  unsigned :6;
  unsigned CLKDIV:11;
} __SQI1CLKCONbits_t;
extern volatile __SQI1CLKCONbits_t SQI1CLKCONbits __asm__ ("SQI1CLKCON") __attribute__((section("sfrs")));

extern volatile unsigned int SQI1CMDTHR __attribute__((section("sfrs")));
typedef struct {
  unsigned RXCMDTHR:6;
  unsigned :2;
  unsigned TXCMDTHR:6;
} __SQI1CMDTHRbits_t;
extern volatile __SQI1CMDTHRbits_t SQI1CMDTHRbits __asm__ ("SQI1CMDTHR") __attribute__((section("sfrs")));

extern volatile unsigned int SQI1INTTHR __attribute__((section("sfrs")));
typedef struct {
  unsigned RXINTTHR:6;
  unsigned :2;
  unsigned TXINTTHR:6;
} __SQI1INTTHRbits_t;
extern volatile __SQI1INTTHRbits_t SQI1INTTHRbits __asm__ ("SQI1INTTHR") __attribute__((section("sfrs")));

extern volatile unsigned int SQI1INTEN __attribute__((section("sfrs")));
typedef struct {
  unsigned TXEMPTYIE:1;
  unsigned TXFULLIE:1;
  unsigned TXTHRIE:1;
  unsigned RXEMPTYIE:1;
  unsigned RXFULLIE:1;
  unsigned RXTHRIE:1;
  unsigned CONFULLIE:1;
  unsigned CONEMPTYIE:1;
  unsigned CONTHRIE:1;
  unsigned BDDONEIE:1;
  unsigned PKTCOMPIE:1;
  unsigned DMAEIE:1;
} __SQI1INTENbits_t;
extern volatile __SQI1INTENbits_t SQI1INTENbits __asm__ ("SQI1INTEN") __attribute__((section("sfrs")));

extern volatile unsigned int SQI1INTSTAT __attribute__((section("sfrs")));
typedef struct {
  unsigned TXEMPTYIF:1;
  unsigned TXFULLIF:1;
  unsigned TXTHRIF:1;
  unsigned RXEMPTYIF:1;
  unsigned RXFULLIF:1;
  unsigned RXTHRIF:1;
  unsigned CONFULLIF:1;
  unsigned CONEMPTYIF:1;
  unsigned CONTHRIF:1;
  unsigned BDDONEIF:1;
  unsigned PKTCOMPIF:1;
  unsigned DMAEIF:1;
} __SQI1INTSTATbits_t;
extern volatile __SQI1INTSTATbits_t SQI1INTSTATbits __asm__ ("SQI1INTSTAT") __attribute__((section("sfrs")));

extern volatile unsigned int SQI1TXDATA __attribute__((section("sfrs")));
typedef struct {
  unsigned TXDATA:32;
} __SQI1TXDATAbits_t;
extern volatile __SQI1TXDATAbits_t SQI1TXDATAbits __asm__ ("SQI1TXDATA") __attribute__((section("sfrs")));

extern volatile unsigned int SQI1RXDATA __attribute__((section("sfrs")));
typedef struct {
  unsigned RXDATA:32;
} __SQI1RXDATAbits_t;
extern volatile __SQI1RXDATAbits_t SQI1RXDATAbits __asm__ ("SQI1RXDATA") __attribute__((section("sfrs")));

extern volatile unsigned int SQI1STAT1 __attribute__((section("sfrs")));
typedef struct {
  unsigned RXBUFCNT:6;
  unsigned :10;
  unsigned TXBUFFREE:6;
} __SQI1STAT1bits_t;
extern volatile __SQI1STAT1bits_t SQI1STAT1bits __asm__ ("SQI1STAT1") __attribute__((section("sfrs")));

extern volatile unsigned int SQI1STAT2 __attribute__((section("sfrs")));
typedef struct {
  unsigned TXOV:1;
  unsigned RXUN:1;
  unsigned :1;
  unsigned SQID0:1;
  unsigned SQID1:1;
  unsigned SQID2:1;
  unsigned SQID3:1;
  unsigned CONAVAIL:4;
  unsigned :5;
  unsigned CMDSTAT:2;
} __SQI1STAT2bits_t;
extern volatile __SQI1STAT2bits_t SQI1STAT2bits __asm__ ("SQI1STAT2") __attribute__((section("sfrs")));

extern volatile unsigned int SQI1BDCON __attribute__((section("sfrs")));
typedef struct {
  unsigned DMAEN:1;
  unsigned POLLEN:1;
  unsigned START:1;
} __SQI1BDCONbits_t;
extern volatile __SQI1BDCONbits_t SQI1BDCONbits __asm__ ("SQI1BDCON") __attribute__((section("sfrs")));

extern volatile unsigned int SQI1BDCURADD __attribute__((section("sfrs")));
typedef struct {
  unsigned BDCURRADDR:32;
} __SQI1BDCURADDbits_t;
extern volatile __SQI1BDCURADDbits_t SQI1BDCURADDbits __asm__ ("SQI1BDCURADD") __attribute__((section("sfrs")));

extern volatile unsigned int SQI1BDBASEADD __attribute__((section("sfrs")));
typedef struct {
  unsigned BDADDR:32;
} __SQI1BDBASEADDbits_t;
extern volatile __SQI1BDBASEADDbits_t SQI1BDBASEADDbits __asm__ ("SQI1BDBASEADD") __attribute__((section("sfrs")));

extern volatile unsigned int SQI1BDSTAT __attribute__((section("sfrs")));
typedef struct {
  unsigned BDCON:16;
  unsigned DMAACTV:1;
  unsigned DMASTART:1;
  unsigned BDSTATE:4;
} __SQI1BDSTATbits_t;
extern volatile __SQI1BDSTATbits_t SQI1BDSTATbits __asm__ ("SQI1BDSTAT") __attribute__((section("sfrs")));

extern volatile unsigned int SQI1BDPOLLCON __attribute__((section("sfrs")));
typedef struct {
  unsigned POLLCON:16;
} __SQI1BDPOLLCONbits_t;
extern volatile __SQI1BDPOLLCONbits_t SQI1BDPOLLCONbits __asm__ ("SQI1BDPOLLCON") __attribute__((section("sfrs")));

extern volatile unsigned int SQI1BDTXDSTAT __attribute__((section("sfrs")));
typedef struct {
  unsigned TXCURBUFLEN:9;
  unsigned :7;
  unsigned TXBUFCNT:5;
  unsigned :4;
  unsigned TXSTATE:4;
} __SQI1BDTXDSTATbits_t;
extern volatile __SQI1BDTXDSTATbits_t SQI1BDTXDSTATbits __asm__ ("SQI1BDTXDSTAT") __attribute__((section("sfrs")));

extern volatile unsigned int SQI1BDRXDSTAT __attribute__((section("sfrs")));
typedef struct {
  unsigned RXCURBUFLEN:9;
  unsigned :7;
  unsigned RXBUFCNT:5;
  unsigned :4;
  unsigned RXSTATE:4;
} __SQI1BDRXDSTATbits_t;
extern volatile __SQI1BDRXDSTATbits_t SQI1BDRXDSTATbits __asm__ ("SQI1BDRXDSTAT") __attribute__((section("sfrs")));

extern volatile unsigned int SQI1THR __attribute__((section("sfrs")));
typedef struct {
  unsigned THRES:4;
} __SQI1THRbits_t;
extern volatile __SQI1THRbits_t SQI1THRbits __asm__ ("SQI1THR") __attribute__((section("sfrs")));

extern volatile unsigned int SQI1INTSIGEN __attribute__((section("sfrs")));
typedef struct {
  unsigned TXEMPTYISE:1;
  unsigned TXFULLISE:1;
  unsigned TXTHRISE:1;
  unsigned RXEMPTYISE:1;
  unsigned RXFULLISE:1;
  unsigned RXTHRISE:1;
  unsigned CONFULLISE:1;
  unsigned CONEMPTYISE:1;
  unsigned CONTHRISE:1;
  unsigned BDDONEISE:1;
  unsigned PKTCOMPISE:1;
  unsigned DMAEISE:1;
} __SQI1INTSIGENbits_t;
extern volatile __SQI1INTSIGENbits_t SQI1INTSIGENbits __asm__ ("SQI1INTSIGEN") __attribute__((section("sfrs")));

extern volatile unsigned int SQI1TAPCON __attribute__((section("sfrs")));
typedef struct {
  unsigned CLKOUTDLY:4;
  unsigned DATAOUTDLY:4;
  unsigned SDRCLKINDLY:6;
} __SQI1TAPCONbits_t;
extern volatile __SQI1TAPCONbits_t SQI1TAPCONbits __asm__ ("SQI1TAPCON") __attribute__((section("sfrs")));

extern volatile unsigned int SQI1MEMSTAT __attribute__((section("sfrs")));
typedef struct {
  unsigned STATCMD:16;
  unsigned STATBYTES:2;
  unsigned STATTYPE:2;
  unsigned STATPOS:1;
} __SQI1MEMSTATbits_t;
extern volatile __SQI1MEMSTATbits_t SQI1MEMSTATbits __asm__ ("SQI1MEMSTAT") __attribute__((section("sfrs")));

extern volatile unsigned int SQI1XCON3 __attribute__((section("sfrs")));
typedef struct {
  unsigned INIT1CMD1:8;
  unsigned INIT1CMD2:8;
  unsigned INIT1CMD3:8;
  unsigned INIT1TYPE:2;
  unsigned INIT1COUNT:2;
  unsigned INIT1SCHECK:1;
} __SQI1XCON3bits_t;
extern volatile __SQI1XCON3bits_t SQI1XCON3bits __asm__ ("SQI1XCON3") __attribute__((section("sfrs")));

extern volatile unsigned int SQI1XCON4 __attribute__((section("sfrs")));
typedef struct {
  unsigned INIT2CMD1:8;
  unsigned INIT2CMD2:8;
  unsigned INIT2CMD3:8;
  unsigned INIT2TYPE:2;
  unsigned INIT2COUNT:2;
  unsigned INIT2SCHECK:1;
} __SQI1XCON4bits_t;
extern volatile __SQI1XCON4bits_t SQI1XCON4bits __asm__ ("SQI1XCON4") __attribute__((section("sfrs")));

extern volatile unsigned int USBCSR0 __attribute__((section("sfrs")));
typedef struct {
  unsigned FUNC:7;
  unsigned :1;
  unsigned SUSPEN:1;
  unsigned SUSPMODE:1;
  unsigned RESUME:1;
  unsigned RESET:1;
  unsigned HSMODE:1;
  unsigned HSEN:1;
  unsigned SOFTCONN:1;
  unsigned ISOUPD:1;
  unsigned EP0IF:1;
  unsigned EP1TXIF:1;
  unsigned EP2TXIF:1;
  unsigned EP3TXIF:1;
  unsigned EP4TXIF:1;
  unsigned EP5TXIF:1;
  unsigned EP6TXIF:1;
  unsigned EP7TXIF:1;
} __USBCSR0bits_t;
extern volatile __USBCSR0bits_t USBCSR0bits __asm__ ("USBCSR0") __attribute__((section("sfrs")));

extern volatile unsigned int USBCSR1 __attribute__((section("sfrs")));
typedef struct {
  unsigned :1;
  unsigned EP1RXIF:1;
  unsigned EP2RXIF:1;
  unsigned EP3RXIF:1;
  unsigned EP4RXIF:1;
  unsigned EP5RXIF:1;
  unsigned EP6RXIF:1;
  unsigned EP7RXIF:1;
  unsigned :8;
  unsigned EP0IE:1;
  unsigned EP1TXIE:1;
  unsigned EP2TXIE:1;
  unsigned EP3TXIE:1;
  unsigned EP4TXIE:1;
  unsigned EP5TXIE:1;
  unsigned EP6TXIE:1;
  unsigned EP7TXIE:1;
} __USBCSR1bits_t;
extern volatile __USBCSR1bits_t USBCSR1bits __asm__ ("USBCSR1") __attribute__((section("sfrs")));

extern volatile unsigned int USBCSR2 __attribute__((section("sfrs")));
typedef struct {
  unsigned :1;
  unsigned EP1RXIE:1;
  unsigned EP2RXIE:1;
  unsigned EP3RXIE:1;
  unsigned EP4RXIE:1;
  unsigned EP5RXIE:1;
  unsigned EP6RXIE:1;
  unsigned EP7RXIE:1;
  unsigned :8;
  unsigned SUSPIF:1;
  unsigned RESUMEIF:1;
  unsigned RESETIF:1;
  unsigned SOFIF:1;
  unsigned CONNIF:1;
  unsigned DISCONIF:1;
  unsigned SESSRQIF:1;
  unsigned VBUSERRIF:1;
  unsigned SUSPIE:1;
  unsigned RESUMEIE:1;
  unsigned RESETIE:1;
  unsigned SOFIE:1;
  unsigned CONNIE:1;
  unsigned DISCONIE:1;
  unsigned SESSRQIE:1;
  unsigned VBUSERRIE:1;
} __USBCSR2bits_t;
extern volatile __USBCSR2bits_t USBCSR2bits __asm__ ("USBCSR2") __attribute__((section("sfrs")));

extern volatile unsigned int USBCSR3 __attribute__((section("sfrs")));
typedef struct {
  unsigned RFRMNUM:11;
  unsigned :5;
  unsigned ENDPOINT:4;
  unsigned :4;
  unsigned NAK:1;
  unsigned TESTJ:1;
  unsigned TESTK:1;
  unsigned PACKET:1;
  unsigned FORCEHS:1;
  unsigned FORCEFS:1;
  unsigned FIFOACC:1;
  unsigned FORCEHST:1;
} __USBCSR3bits_t;
extern volatile __USBCSR3bits_t USBCSR3bits __asm__ ("USBCSR3") __attribute__((section("sfrs")));

extern volatile unsigned int USBIENCSR0 __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned TXMAXP:11;
    unsigned MULT:5;
    unsigned TXPKTRDY:1;
    unsigned FIFONE:1;
    unsigned ERROR:1;
    unsigned FLUSH:1;
    unsigned SETUPPKT:1;
    unsigned RXSTALL:1;
    unsigned CLRDT:1;
    unsigned NAKTMOUT:1;
    unsigned DATATGGL:1;
    unsigned DTWREN:1;
    unsigned DMAREQMD:1;
    unsigned FRCDATTG:1;
    unsigned DMAREQEN:1;
    unsigned MODE:1;
    unsigned :1;
    unsigned AUTOSET:1;
  };
  struct {
    unsigned :18;
    unsigned UNDERRUN:1;
    unsigned :1;
    unsigned SENDSTALL:1;
    unsigned SENTSTALL:1;
    unsigned :1;
    unsigned INCOMPTX:1;
    unsigned :6;
    unsigned ISO:1;
  };
} __USBIENCSR0bits_t;
extern volatile __USBIENCSR0bits_t USBIENCSR0bits __asm__ ("USBIENCSR0") __attribute__((section("sfrs")));

extern volatile unsigned int USBIENCSR1 __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned RXMAXP:11;
    unsigned MULT:5;
    unsigned RXPKTRDY:1;
    unsigned FIFOFULL:1;
    unsigned ERROR:1;
    unsigned DERRNAKT:1;
    unsigned FLUSH:1;
    unsigned REQPKT:1;
    unsigned RXSTALL:1;
    unsigned CLRDT:1;
    unsigned INCOMPRX:1;
    unsigned DATATGGL:1;
    unsigned DATATWEN:1;
    unsigned DMAREQMD:1;
    unsigned PIDERR:1;
    unsigned DMAREQEN:1;
    unsigned AUTORQ:1;
    unsigned AUTOCLR:1;
  };
  struct {
    unsigned :18;
    unsigned OVERRUN:1;
    unsigned DATAERR:1;
    unsigned :1;
    unsigned SENDSTALL:1;
    unsigned SENTSTALL:1;
    unsigned :5;
    unsigned DISNYET:1;
    unsigned :1;
    unsigned ISO:1;
  };
} __USBIENCSR1bits_t;
extern volatile __USBIENCSR1bits_t USBIENCSR1bits __asm__ ("USBIENCSR1") __attribute__((section("sfrs")));

extern volatile unsigned int USBIENCSR2 __attribute__((section("sfrs")));
typedef struct {
  unsigned RXCNT:14;
  unsigned :2;
  unsigned TEP:4;
  unsigned PROTOCOL:2;
  unsigned SPEED:2;
  unsigned TXINTERV:8;
} __USBIENCSR2bits_t;
extern volatile __USBIENCSR2bits_t USBIENCSR2bits __asm__ ("USBIENCSR2") __attribute__((section("sfrs")));

extern volatile unsigned int USBIENCSR3 __attribute__((section("sfrs")));
typedef struct {
  unsigned TEP:4;
  unsigned PROTOCOL:2;
  unsigned SPEED:2;
  unsigned RXINTERV:8;
  unsigned :8;
  unsigned TXFIFOSZ:4;
  unsigned RXFIFOSZ:4;
} __USBIENCSR3bits_t;
extern volatile __USBIENCSR3bits_t USBIENCSR3bits __asm__ ("USBIENCSR3") __attribute__((section("sfrs")));

extern volatile unsigned int USBFIFO0 __attribute__((section("sfrs")));
typedef struct {
  unsigned DATA:32;
} __USBFIFO0bits_t;
extern volatile __USBFIFO0bits_t USBFIFO0bits __asm__ ("USBFIFO0") __attribute__((section("sfrs")));

extern volatile unsigned int USBFIFO1 __attribute__((section("sfrs")));
typedef struct {
  unsigned DATA:32;
} __USBFIFO1bits_t;
extern volatile __USBFIFO1bits_t USBFIFO1bits __asm__ ("USBFIFO1") __attribute__((section("sfrs")));

extern volatile unsigned int USBFIFO2 __attribute__((section("sfrs")));
typedef struct {
  unsigned DATA:32;
} __USBFIFO2bits_t;
extern volatile __USBFIFO2bits_t USBFIFO2bits __asm__ ("USBFIFO2") __attribute__((section("sfrs")));

extern volatile unsigned int USBFIFO3 __attribute__((section("sfrs")));
typedef struct {
  unsigned DATA:32;
} __USBFIFO3bits_t;
extern volatile __USBFIFO3bits_t USBFIFO3bits __asm__ ("USBFIFO3") __attribute__((section("sfrs")));

extern volatile unsigned int USBFIFO4 __attribute__((section("sfrs")));
typedef struct {
  unsigned DATA:32;
} __USBFIFO4bits_t;
extern volatile __USBFIFO4bits_t USBFIFO4bits __asm__ ("USBFIFO4") __attribute__((section("sfrs")));

extern volatile unsigned int USBFIFO5 __attribute__((section("sfrs")));
typedef struct {
  unsigned DATA:32;
} __USBFIFO5bits_t;
extern volatile __USBFIFO5bits_t USBFIFO5bits __asm__ ("USBFIFO5") __attribute__((section("sfrs")));

extern volatile unsigned int USBFIFO6 __attribute__((section("sfrs")));
typedef struct {
  unsigned DATA:32;
} __USBFIFO6bits_t;
extern volatile __USBFIFO6bits_t USBFIFO6bits __asm__ ("USBFIFO6") __attribute__((section("sfrs")));

extern volatile unsigned int USBFIFO7 __attribute__((section("sfrs")));
typedef struct {
  unsigned DATA:32;
} __USBFIFO7bits_t;
extern volatile __USBFIFO7bits_t USBFIFO7bits __asm__ ("USBFIFO7") __attribute__((section("sfrs")));

extern volatile unsigned int USBOTG __attribute__((section("sfrs")));
typedef struct {
  unsigned SESSION:1;
  unsigned HOSTREQ:1;
  unsigned HOSTMODE:1;
  unsigned VBUS:2;
  unsigned LSDEV:1;
  unsigned FSDEV:1;
  unsigned BDEV:1;
  unsigned RXEDMA:1;
  unsigned TXEDMA:1;
  unsigned :6;
  unsigned TXFIFOSZ:4;
  unsigned TXDPB:1;
  unsigned :3;
  unsigned RXFIFOSZ:4;
  unsigned RXDPB:1;
} __USBOTGbits_t;
extern volatile __USBOTGbits_t USBOTGbits __asm__ ("USBOTG") __attribute__((section("sfrs")));

extern volatile unsigned int USBFIFOA __attribute__((section("sfrs")));
typedef struct {
  unsigned TXFIFOAD:13;
  unsigned :3;
  unsigned RXFIFOAD:13;
} __USBFIFOAbits_t;
extern volatile __USBFIFOAbits_t USBFIFOAbits __asm__ ("USBFIFOA") __attribute__((section("sfrs")));

extern volatile unsigned int USBHWVER __attribute__((section("sfrs")));
typedef struct {
  unsigned VERMINOR:10;
  unsigned VERMAJOR:5;
  unsigned RC:1;
} __USBHWVERbits_t;
extern volatile __USBHWVERbits_t USBHWVERbits __asm__ ("USBHWVER") __attribute__((section("sfrs")));

extern volatile unsigned int USBINFO __attribute__((section("sfrs")));
typedef struct {
  unsigned TXENDPTS:4;
  unsigned RXENDPTS:4;
  unsigned RAMBITS:4;
  unsigned DMACHANS:4;
  unsigned WTID:4;
  unsigned WTCON:4;
  unsigned VPLEN:8;
} __USBINFObits_t;
extern volatile __USBINFObits_t USBINFObits __asm__ ("USBINFO") __attribute__((section("sfrs")));

extern volatile unsigned int USBEOFRST __attribute__((section("sfrs")));
typedef struct {
  unsigned HSEOF:8;
  unsigned FSEOF:8;
  unsigned LSEOF:8;
  unsigned SOFRST:8;
} __USBEOFRSTbits_t;
extern volatile __USBEOFRSTbits_t USBEOFRSTbits __asm__ ("USBEOFRST") __attribute__((section("sfrs")));

extern volatile unsigned int USBE0TXA __attribute__((section("sfrs")));
typedef struct {
  unsigned TXFADDR:7;
  unsigned :9;
  unsigned TXHUBADD:7;
  unsigned MULTTRAN:1;
  unsigned TXHUBPRT:7;
} __USBE0TXAbits_t;
extern volatile __USBE0TXAbits_t USBE0TXAbits __asm__ ("USBE0TXA") __attribute__((section("sfrs")));

extern volatile unsigned int USBE0RXA __attribute__((section("sfrs")));
typedef struct {
  unsigned :16;
  unsigned RXHUBADD:7;
  unsigned MULTTRAN:1;
  unsigned RXHUBPRT:7;
} __USBE0RXAbits_t;
extern volatile __USBE0RXAbits_t USBE0RXAbits __asm__ ("USBE0RXA") __attribute__((section("sfrs")));

extern volatile unsigned int USBE1TXA __attribute__((section("sfrs")));
typedef struct {
  unsigned TXFADDR:7;
  unsigned :9;
  unsigned TXHUBADD:7;
  unsigned MULTTRAN:1;
  unsigned TXHUBPRT:7;
} __USBE1TXAbits_t;
extern volatile __USBE1TXAbits_t USBE1TXAbits __asm__ ("USBE1TXA") __attribute__((section("sfrs")));

extern volatile unsigned int USBE1RXA __attribute__((section("sfrs")));
typedef struct {
  unsigned RXFADDR:7;
  unsigned :9;
  unsigned RXHUBADD:7;
  unsigned MULTTRAN:1;
  unsigned RXHUBPRT:7;
} __USBE1RXAbits_t;
extern volatile __USBE1RXAbits_t USBE1RXAbits __asm__ ("USBE1RXA") __attribute__((section("sfrs")));

extern volatile unsigned int USBE2TXA __attribute__((section("sfrs")));
typedef struct {
  unsigned TXFADDR:7;
  unsigned :9;
  unsigned TXHUBADD:7;
  unsigned MULTTRAN:1;
  unsigned TXHUBPRT:7;
} __USBE2TXAbits_t;
extern volatile __USBE2TXAbits_t USBE2TXAbits __asm__ ("USBE2TXA") __attribute__((section("sfrs")));

extern volatile unsigned int USBE2RXA __attribute__((section("sfrs")));
typedef struct {
  unsigned RXFADDR:7;
  unsigned :9;
  unsigned RXHUBADD:7;
  unsigned MULTTRAN:1;
  unsigned RXHUBPRT:7;
} __USBE2RXAbits_t;
extern volatile __USBE2RXAbits_t USBE2RXAbits __asm__ ("USBE2RXA") __attribute__((section("sfrs")));

extern volatile unsigned int USBE3TXA __attribute__((section("sfrs")));
typedef struct {
  unsigned TXFADDR:7;
  unsigned :9;
  unsigned TXHUBADD:7;
  unsigned MULTTRAN:1;
  unsigned TXHUBPRT:7;
} __USBE3TXAbits_t;
extern volatile __USBE3TXAbits_t USBE3TXAbits __asm__ ("USBE3TXA") __attribute__((section("sfrs")));

extern volatile unsigned int USBE3RXA __attribute__((section("sfrs")));
typedef struct {
  unsigned RXFADDR:7;
  unsigned :9;
  unsigned RXHUBADD:7;
  unsigned MULTTRAN:1;
  unsigned RXHUBPRT:7;
} __USBE3RXAbits_t;
extern volatile __USBE3RXAbits_t USBE3RXAbits __asm__ ("USBE3RXA") __attribute__((section("sfrs")));

extern volatile unsigned int USBE4TXA __attribute__((section("sfrs")));
typedef struct {
  unsigned TXFADDR:7;
  unsigned :9;
  unsigned TXHUBADD:7;
  unsigned MULTTRAN:1;
  unsigned TXHUBPRT:7;
} __USBE4TXAbits_t;
extern volatile __USBE4TXAbits_t USBE4TXAbits __asm__ ("USBE4TXA") __attribute__((section("sfrs")));

extern volatile unsigned int USBE4RXA __attribute__((section("sfrs")));
typedef struct {
  unsigned RXFADDR:7;
  unsigned :9;
  unsigned RXHUBADD:7;
  unsigned MULTTRAN:1;
  unsigned RXHUBPRT:7;
} __USBE4RXAbits_t;
extern volatile __USBE4RXAbits_t USBE4RXAbits __asm__ ("USBE4RXA") __attribute__((section("sfrs")));

extern volatile unsigned int USBE5TXA __attribute__((section("sfrs")));
typedef struct {
  unsigned TXFADDR:7;
  unsigned :9;
  unsigned TXHUBADD:7;
  unsigned MULTTRAN:1;
  unsigned TXHUBPRT:7;
} __USBE5TXAbits_t;
extern volatile __USBE5TXAbits_t USBE5TXAbits __asm__ ("USBE5TXA") __attribute__((section("sfrs")));

extern volatile unsigned int USBE5RXA __attribute__((section("sfrs")));
typedef struct {
  unsigned RXFADDR:7;
  unsigned :9;
  unsigned RXHUBADD:7;
  unsigned MULTTRAN:1;
  unsigned RXHUBPRT:7;
} __USBE5RXAbits_t;
extern volatile __USBE5RXAbits_t USBE5RXAbits __asm__ ("USBE5RXA") __attribute__((section("sfrs")));

extern volatile unsigned int USBE6TXA __attribute__((section("sfrs")));
typedef struct {
  unsigned TXFADDR:7;
  unsigned :9;
  unsigned TXHUBADD:7;
  unsigned MULTTRAN:1;
  unsigned TXHUBPRT:7;
} __USBE6TXAbits_t;
extern volatile __USBE6TXAbits_t USBE6TXAbits __asm__ ("USBE6TXA") __attribute__((section("sfrs")));

extern volatile unsigned int USBE6RXA __attribute__((section("sfrs")));
typedef struct {
  unsigned RXFADDR:7;
  unsigned :9;
  unsigned RXHUBADD:7;
  unsigned MULTTRAN:1;
  unsigned RXHUBPRT:7;
} __USBE6RXAbits_t;
extern volatile __USBE6RXAbits_t USBE6RXAbits __asm__ ("USBE6RXA") __attribute__((section("sfrs")));

extern volatile unsigned int USBE7TXA __attribute__((section("sfrs")));
typedef struct {
  unsigned TXFADDR:7;
  unsigned :9;
  unsigned TXHUBADD:7;
  unsigned MULTTRAN:1;
  unsigned TXHUBPRT:7;
} __USBE7TXAbits_t;
extern volatile __USBE7TXAbits_t USBE7TXAbits __asm__ ("USBE7TXA") __attribute__((section("sfrs")));

extern volatile unsigned int USBE7RXA __attribute__((section("sfrs")));
typedef struct {
  unsigned RXFADDR:7;
  unsigned :9;
  unsigned RXHUBADD:7;
  unsigned MULTTRAN:1;
  unsigned RXHUBPRT:7;
} __USBE7RXAbits_t;
extern volatile __USBE7RXAbits_t USBE7RXAbits __asm__ ("USBE7RXA") __attribute__((section("sfrs")));

extern volatile unsigned int USBE0CSR0 __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned TXMAXP:11;
    unsigned :5;
    unsigned RXRDY:1;
    unsigned TXRDY:1;
    unsigned STALLED:1;
    unsigned SETUP:1;
    unsigned ERROR:1;
    unsigned REQPKT:1;
    unsigned STATUS:1;
    unsigned NAKTO:1;
    unsigned FLUSH:1;
    unsigned DT:1;
    unsigned DTWE:1;
  };
  struct {
    unsigned :19;
    unsigned DATAEND:1;
    unsigned SETEND:1;
    unsigned STALL:1;
    unsigned RXRDYC:1;
    unsigned SETENDC:1;
  };
} __USBE0CSR0bits_t;
extern volatile __USBE0CSR0bits_t USBE0CSR0bits __asm__ ("USBE0CSR0") __attribute__((section("sfrs")));

extern volatile unsigned int USBE0CSR2 __attribute__((section("sfrs")));
typedef struct {
  unsigned RXCNT:7;
  unsigned :15;
  unsigned SPEED:2;
  unsigned NAKLIM:4;
} __USBE0CSR2bits_t;
extern volatile __USBE0CSR2bits_t USBE0CSR2bits __asm__ ("USBE0CSR2") __attribute__((section("sfrs")));

extern volatile unsigned int USBE0CSR3 __attribute__((section("sfrs")));
typedef struct {
  unsigned :24;
  unsigned UTMIDWID:1;
  unsigned SOFTCONE:1;
  unsigned DYNFIFOS:1;
  unsigned HBTXEN:1;
  unsigned HBRXEN:1;
  unsigned BIGEND:1;
  unsigned MPTXEN:1;
  unsigned MPRXEN:1;
} __USBE0CSR3bits_t;
extern volatile __USBE0CSR3bits_t USBE0CSR3bits __asm__ ("USBE0CSR3") __attribute__((section("sfrs")));

extern volatile unsigned int USBE1CSR0 __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned TXMAXP:11;
    unsigned MULT:5;
    unsigned TXPKTRDY:1;
    unsigned FIFONE:1;
    unsigned ERROR:1;
    unsigned FLUSH:1;
    unsigned SETUPPKT:1;
    unsigned RXSTALL:1;
    unsigned CLRDT:1;
    unsigned NAKTMOUT:1;
    unsigned DATATGGL:1;
    unsigned DTWREN:1;
    unsigned DMAREQMD:1;
    unsigned FRCDATTG:1;
    unsigned DMAREQEN:1;
    unsigned MODE:1;
    unsigned :1;
    unsigned AUTOSET:1;
  };
  struct {
    unsigned :18;
    unsigned UNDERRUN:1;
    unsigned :1;
    unsigned SENDSTALL:1;
    unsigned SENTSTALL:1;
    unsigned :1;
    unsigned INCOMPTX:1;
    unsigned :6;
    unsigned ISO:1;
  };
} __USBE1CSR0bits_t;
extern volatile __USBE1CSR0bits_t USBE1CSR0bits __asm__ ("USBE1CSR0") __attribute__((section("sfrs")));

extern volatile unsigned int USBE1CSR1 __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned RXMAXP:11;
    unsigned MULT:5;
    unsigned RXPKTRDY:1;
    unsigned FIFOFULL:1;
    unsigned ERROR:1;
    unsigned DERRNAKT:1;
    unsigned FLUSH:1;
    unsigned REQPKT:1;
    unsigned RXSTALL:1;
    unsigned CLRDT:1;
    unsigned INCOMPRX:1;
    unsigned DATATGGL:1;
    unsigned DATATWEN:1;
    unsigned DMAREQMD:1;
    unsigned PIDERR:1;
    unsigned DMAREQEN:1;
    unsigned AUTORQ:1;
    unsigned AUTOCLR:1;
  };
  struct {
    unsigned :18;
    unsigned UNDERRUN:1;
    unsigned :1;
    unsigned SENDSTALL:1;
    unsigned SENTSTALL:1;
    unsigned :1;
    unsigned INCOMPTX:1;
    unsigned :6;
    unsigned ISO:1;
  };
} __USBE1CSR1bits_t;
extern volatile __USBE1CSR1bits_t USBE1CSR1bits __asm__ ("USBE1CSR1") __attribute__((section("sfrs")));

extern volatile unsigned int USBE1CSR2 __attribute__((section("sfrs")));
typedef struct {
  unsigned RXCNT:14;
  unsigned :2;
  unsigned TEP:4;
  unsigned PROTOCOL:2;
  unsigned SPEED:2;
  unsigned TXINTERV:8;
} __USBE1CSR2bits_t;
extern volatile __USBE1CSR2bits_t USBE1CSR2bits __asm__ ("USBE1CSR2") __attribute__((section("sfrs")));

extern volatile unsigned int USBE1CSR3 __attribute__((section("sfrs")));
typedef struct {
  unsigned TEP:4;
  unsigned PROTOCOL:2;
  unsigned SPEED:2;
  unsigned RXINTERV:8;
  unsigned :8;
  unsigned TXFIFOSZ:4;
  unsigned RXFIFOSZ:4;
} __USBE1CSR3bits_t;
extern volatile __USBE1CSR3bits_t USBE1CSR3bits __asm__ ("USBE1CSR3") __attribute__((section("sfrs")));

extern volatile unsigned int USBE2CSR0 __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned TXMAXP:11;
    unsigned MULT:5;
    unsigned TXPKTRDY:1;
    unsigned FIFONE:1;
    unsigned ERROR:1;
    unsigned FLUSH:1;
    unsigned SETUPPKT:1;
    unsigned RXSTALL:1;
    unsigned CLRDT:1;
    unsigned NAKTMOUT:1;
    unsigned DATATGGL:1;
    unsigned DTWREN:1;
    unsigned DMAREQMD:1;
    unsigned FRCDATTG:1;
    unsigned DMAREQEN:1;
    unsigned MODE:1;
    unsigned :1;
    unsigned AUTOSET:1;
  };
  struct {
    unsigned :18;
    unsigned UNDERRUN:1;
    unsigned :1;
    unsigned SENDSTALL:1;
    unsigned SENTSTALL:1;
    unsigned :1;
    unsigned INCOMPTX:1;
    unsigned :6;
    unsigned ISO:1;
  };
} __USBE2CSR0bits_t;
extern volatile __USBE2CSR0bits_t USBE2CSR0bits __asm__ ("USBE2CSR0") __attribute__((section("sfrs")));

extern volatile unsigned int USBE2CSR1 __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned RXMAXP:11;
    unsigned MULT:5;
    unsigned RXPKTRDY:1;
    unsigned FIFOFULL:1;
    unsigned ERROR:1;
    unsigned DERRNAKT:1;
    unsigned FLUSH:1;
    unsigned REQPKT:1;
    unsigned RXSTALL:1;
    unsigned CLRDT:1;
    unsigned INCOMPRX:1;
    unsigned DATATGGL:1;
    unsigned DATATWEN:1;
    unsigned DMAREQMD:1;
    unsigned PIDERR:1;
    unsigned DMAREQEN:1;
    unsigned AUTORQ:1;
    unsigned AUTOCLR:1;
  };
  struct {
    unsigned :18;
    unsigned UNDERRUN:1;
    unsigned :1;
    unsigned SENDSTALL:1;
    unsigned SENTSTALL:1;
    unsigned :1;
    unsigned INCOMPTX:1;
    unsigned :6;
    unsigned ISO:1;
  };
} __USBE2CSR1bits_t;
extern volatile __USBE2CSR1bits_t USBE2CSR1bits __asm__ ("USBE2CSR1") __attribute__((section("sfrs")));

extern volatile unsigned int USBE2CSR2 __attribute__((section("sfrs")));
typedef struct {
  unsigned RXCNT:14;
  unsigned :2;
  unsigned TEP:4;
  unsigned PROTOCOL:2;
  unsigned SPEED:2;
  unsigned TXINTERV:8;
} __USBE2CSR2bits_t;
extern volatile __USBE2CSR2bits_t USBE2CSR2bits __asm__ ("USBE2CSR2") __attribute__((section("sfrs")));

extern volatile unsigned int USBE2CSR3 __attribute__((section("sfrs")));
typedef struct {
  unsigned TEP:4;
  unsigned PROTOCOL:2;
  unsigned SPEED:2;
  unsigned RXINTERV:8;
  unsigned :8;
  unsigned TXFIFOSZ:4;
  unsigned RXFIFOSZ:4;
} __USBE2CSR3bits_t;
extern volatile __USBE2CSR3bits_t USBE2CSR3bits __asm__ ("USBE2CSR3") __attribute__((section("sfrs")));

extern volatile unsigned int USBE3CSR0 __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned TXMAXP:11;
    unsigned MULT:5;
    unsigned TXPKTRDY:1;
    unsigned FIFONE:1;
    unsigned ERROR:1;
    unsigned FLUSH:1;
    unsigned SETUPPKT:1;
    unsigned RXSTALL:1;
    unsigned CLRDT:1;
    unsigned NAKTMOUT:1;
    unsigned DATATGGL:1;
    unsigned DTWREN:1;
    unsigned DMAREQMD:1;
    unsigned FRCDATTG:1;
    unsigned DMAREQEN:1;
    unsigned MODE:1;
    unsigned :1;
    unsigned AUTOSET:1;
  };
  struct {
    unsigned :18;
    unsigned UNDERRUN:1;
    unsigned :1;
    unsigned SENDSTALL:1;
    unsigned SENTSTALL:1;
    unsigned :1;
    unsigned INCOMPTX:1;
    unsigned :6;
    unsigned ISO:1;
  };
} __USBE3CSR0bits_t;
extern volatile __USBE3CSR0bits_t USBE3CSR0bits __asm__ ("USBE3CSR0") __attribute__((section("sfrs")));

extern volatile unsigned int USBE3CSR1 __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned RXMAXP:11;
    unsigned MULT:5;
    unsigned RXPKTRDY:1;
    unsigned FIFOFULL:1;
    unsigned ERROR:1;
    unsigned DERRNAKT:1;
    unsigned FLUSH:1;
    unsigned REQPKT:1;
    unsigned RXSTALL:1;
    unsigned CLRDT:1;
    unsigned INCOMPRX:1;
    unsigned DATATGGL:1;
    unsigned DATATWEN:1;
    unsigned DMAREQMD:1;
    unsigned PIDERR:1;
    unsigned DMAREQEN:1;
    unsigned AUTORQ:1;
    unsigned AUTOCLR:1;
  };
  struct {
    unsigned :18;
    unsigned UNDERRUN:1;
    unsigned :1;
    unsigned SENDSTALL:1;
    unsigned SENTSTALL:1;
    unsigned :1;
    unsigned INCOMPTX:1;
    unsigned :6;
    unsigned ISO:1;
  };
} __USBE3CSR1bits_t;
extern volatile __USBE3CSR1bits_t USBE3CSR1bits __asm__ ("USBE3CSR1") __attribute__((section("sfrs")));

extern volatile unsigned int USBE3CSR2 __attribute__((section("sfrs")));
typedef struct {
  unsigned RXCNT:14;
  unsigned :2;
  unsigned TEP:4;
  unsigned PROTOCOL:2;
  unsigned SPEED:2;
  unsigned TXINTERV:8;
} __USBE3CSR2bits_t;
extern volatile __USBE3CSR2bits_t USBE3CSR2bits __asm__ ("USBE3CSR2") __attribute__((section("sfrs")));

extern volatile unsigned int USBE3CSR3 __attribute__((section("sfrs")));
typedef struct {
  unsigned TEP:4;
  unsigned PROTOCOL:2;
  unsigned SPEED:2;
  unsigned RXINTERV:8;
  unsigned :8;
  unsigned TXFIFOSZ:4;
  unsigned RXFIFOSZ:4;
} __USBE3CSR3bits_t;
extern volatile __USBE3CSR3bits_t USBE3CSR3bits __asm__ ("USBE3CSR3") __attribute__((section("sfrs")));

extern volatile unsigned int USBE4CSR0 __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned TXMAXP:11;
    unsigned MULT:5;
    unsigned TXPKTRDY:1;
    unsigned FIFONE:1;
    unsigned ERROR:1;
    unsigned FLUSH:1;
    unsigned SETUPPKT:1;
    unsigned RXSTALL:1;
    unsigned CLRDT:1;
    unsigned NAKTMOUT:1;
    unsigned DATATGGL:1;
    unsigned DTWREN:1;
    unsigned DMAREQMD:1;
    unsigned FRCDATTG:1;
    unsigned DMAREQEN:1;
    unsigned MODE:1;
    unsigned :1;
    unsigned AUTOSET:1;
  };
  struct {
    unsigned :18;
    unsigned UNDERRUN:1;
    unsigned :1;
    unsigned SENDSTALL:1;
    unsigned SENTSTALL:1;
    unsigned :1;
    unsigned INCOMPTX:1;
    unsigned :6;
    unsigned ISO:1;
  };
} __USBE4CSR0bits_t;
extern volatile __USBE4CSR0bits_t USBE4CSR0bits __asm__ ("USBE4CSR0") __attribute__((section("sfrs")));

extern volatile unsigned int USBE4CSR1 __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned RXMAXP:11;
    unsigned MULT:5;
    unsigned RXPKTRDY:1;
    unsigned FIFOFULL:1;
    unsigned ERROR:1;
    unsigned DERRNAKT:1;
    unsigned FLUSH:1;
    unsigned REQPKT:1;
    unsigned RXSTALL:1;
    unsigned CLRDT:1;
    unsigned INCOMPRX:1;
    unsigned DATATGGL:1;
    unsigned DATATWEN:1;
    unsigned DMAREQMD:1;
    unsigned PIDERR:1;
    unsigned DMAREQEN:1;
    unsigned AUTORQ:1;
    unsigned AUTOCLR:1;
  };
  struct {
    unsigned :18;
    unsigned UNDERRUN:1;
    unsigned :1;
    unsigned SENDSTALL:1;
    unsigned SENTSTALL:1;
    unsigned :1;
    unsigned INCOMPTX:1;
    unsigned :6;
    unsigned ISO:1;
  };
} __USBE4CSR1bits_t;
extern volatile __USBE4CSR1bits_t USBE4CSR1bits __asm__ ("USBE4CSR1") __attribute__((section("sfrs")));

extern volatile unsigned int USBE4CSR2 __attribute__((section("sfrs")));
typedef struct {
  unsigned RXCNT:14;
  unsigned :2;
  unsigned TEP:4;
  unsigned PROTOCOL:2;
  unsigned SPEED:2;
  unsigned TXINTERV:8;
} __USBE4CSR2bits_t;
extern volatile __USBE4CSR2bits_t USBE4CSR2bits __asm__ ("USBE4CSR2") __attribute__((section("sfrs")));

extern volatile unsigned int USBE4CSR3 __attribute__((section("sfrs")));
typedef struct {
  unsigned TEP:4;
  unsigned PROTOCOL:2;
  unsigned SPEED:2;
  unsigned RXINTERV:8;
  unsigned :8;
  unsigned TXFIFOSZ:4;
  unsigned RXFIFOSZ:4;
} __USBE4CSR3bits_t;
extern volatile __USBE4CSR3bits_t USBE4CSR3bits __asm__ ("USBE4CSR3") __attribute__((section("sfrs")));

extern volatile unsigned int USBE5CSR0 __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned TXMAXP:11;
    unsigned MULT:5;
    unsigned TXPKTRDY:1;
    unsigned FIFONE:1;
    unsigned ERROR:1;
    unsigned FLUSH:1;
    unsigned SETUPPKT:1;
    unsigned RXSTALL:1;
    unsigned CLRDT:1;
    unsigned NAKTMOUT:1;
    unsigned DATATGGL:1;
    unsigned DTWREN:1;
    unsigned DMAREQMD:1;
    unsigned FRCDATTG:1;
    unsigned DMAREQEN:1;
    unsigned MODE:1;
    unsigned :1;
    unsigned AUTOSET:1;
  };
  struct {
    unsigned :18;
    unsigned UNDERRUN:1;
    unsigned :1;
    unsigned SENDSTALL:1;
    unsigned SENTSTALL:1;
    unsigned :1;
    unsigned INCOMPTX:1;
    unsigned :6;
    unsigned ISO:1;
  };
} __USBE5CSR0bits_t;
extern volatile __USBE5CSR0bits_t USBE5CSR0bits __asm__ ("USBE5CSR0") __attribute__((section("sfrs")));

extern volatile unsigned int USBE5CSR1 __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned RXMAXP:11;
    unsigned MULT:5;
    unsigned RXPKTRDY:1;
    unsigned FIFOFULL:1;
    unsigned ERROR:1;
    unsigned DERRNAKT:1;
    unsigned FLUSH:1;
    unsigned REQPKT:1;
    unsigned RXSTALL:1;
    unsigned CLRDT:1;
    unsigned INCOMPRX:1;
    unsigned DATATGGL:1;
    unsigned DATATWEN:1;
    unsigned DMAREQMD:1;
    unsigned PIDERR:1;
    unsigned DMAREQEN:1;
    unsigned AUTORQ:1;
    unsigned AUTOCLR:1;
  };
  struct {
    unsigned :18;
    unsigned UNDERRUN:1;
    unsigned :1;
    unsigned SENDSTALL:1;
    unsigned SENTSTALL:1;
    unsigned :1;
    unsigned INCOMPTX:1;
    unsigned :6;
    unsigned ISO:1;
  };
} __USBE5CSR1bits_t;
extern volatile __USBE5CSR1bits_t USBE5CSR1bits __asm__ ("USBE5CSR1") __attribute__((section("sfrs")));

extern volatile unsigned int USBE5CSR2 __attribute__((section("sfrs")));
typedef struct {
  unsigned RXCNT:14;
  unsigned :2;
  unsigned TEP:4;
  unsigned PROTOCOL:2;
  unsigned SPEED:2;
  unsigned TXINTERV:8;
} __USBE5CSR2bits_t;
extern volatile __USBE5CSR2bits_t USBE5CSR2bits __asm__ ("USBE5CSR2") __attribute__((section("sfrs")));

extern volatile unsigned int USBE5CSR3 __attribute__((section("sfrs")));
typedef struct {
  unsigned TEP:4;
  unsigned PROTOCOL:2;
  unsigned SPEED:2;
  unsigned RXINTERV:8;
  unsigned :8;
  unsigned TXFIFOSZ:4;
  unsigned RXFIFOSZ:4;
} __USBE5CSR3bits_t;
extern volatile __USBE5CSR3bits_t USBE5CSR3bits __asm__ ("USBE5CSR3") __attribute__((section("sfrs")));

extern volatile unsigned int USBE6CSR0 __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned TXMAXP:11;
    unsigned MULT:5;
    unsigned TXPKTRDY:1;
    unsigned FIFONE:1;
    unsigned ERROR:1;
    unsigned FLUSH:1;
    unsigned SETUPPKT:1;
    unsigned RXSTALL:1;
    unsigned CLRDT:1;
    unsigned NAKTMOUT:1;
    unsigned DATATGGL:1;
    unsigned DTWREN:1;
    unsigned DMAREQMD:1;
    unsigned FRCDATTG:1;
    unsigned DMAREQEN:1;
    unsigned MODE:1;
    unsigned :1;
    unsigned AUTOSET:1;
  };
  struct {
    unsigned :18;
    unsigned UNDERRUN:1;
    unsigned :1;
    unsigned SENDSTALL:1;
    unsigned SENTSTALL:1;
    unsigned :1;
    unsigned INCOMPTX:1;
    unsigned :6;
    unsigned ISO:1;
  };
} __USBE6CSR0bits_t;
extern volatile __USBE6CSR0bits_t USBE6CSR0bits __asm__ ("USBE6CSR0") __attribute__((section("sfrs")));

extern volatile unsigned int USBE6CSR1 __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned RXMAXP:11;
    unsigned MULT:5;
    unsigned RXPKTRDY:1;
    unsigned FIFOFULL:1;
    unsigned ERROR:1;
    unsigned DERRNAKT:1;
    unsigned FLUSH:1;
    unsigned REQPKT:1;
    unsigned RXSTALL:1;
    unsigned CLRDT:1;
    unsigned INCOMPRX:1;
    unsigned DATATGGL:1;
    unsigned DATATWEN:1;
    unsigned DMAREQMD:1;
    unsigned PIDERR:1;
    unsigned DMAREQEN:1;
    unsigned AUTORQ:1;
    unsigned AUTOCLR:1;
  };
  struct {
    unsigned :18;
    unsigned UNDERRUN:1;
    unsigned :1;
    unsigned SENDSTALL:1;
    unsigned SENTSTALL:1;
    unsigned :1;
    unsigned INCOMPTX:1;
    unsigned :6;
    unsigned ISO:1;
  };
} __USBE6CSR1bits_t;
extern volatile __USBE6CSR1bits_t USBE6CSR1bits __asm__ ("USBE6CSR1") __attribute__((section("sfrs")));

extern volatile unsigned int USBE6CSR2 __attribute__((section("sfrs")));
typedef struct {
  unsigned RXCNT:14;
  unsigned :2;
  unsigned TEP:4;
  unsigned PROTOCOL:2;
  unsigned SPEED:2;
  unsigned TXINTERV:8;
} __USBE6CSR2bits_t;
extern volatile __USBE6CSR2bits_t USBE6CSR2bits __asm__ ("USBE6CSR2") __attribute__((section("sfrs")));

extern volatile unsigned int USBE6CSR3 __attribute__((section("sfrs")));
typedef struct {
  unsigned TEP:4;
  unsigned PROTOCOL:2;
  unsigned SPEED:2;
  unsigned RXINTERV:8;
  unsigned :8;
  unsigned TXFIFOSZ:4;
  unsigned RXFIFOSZ:4;
} __USBE6CSR3bits_t;
extern volatile __USBE6CSR3bits_t USBE6CSR3bits __asm__ ("USBE6CSR3") __attribute__((section("sfrs")));

extern volatile unsigned int USBE7CSR0 __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned TXMAXP:11;
    unsigned MULT:5;
    unsigned TXPKTRDY:1;
    unsigned FIFONE:1;
    unsigned ERROR:1;
    unsigned FLUSH:1;
    unsigned SETUPPKT:1;
    unsigned RXSTALL:1;
    unsigned CLRDT:1;
    unsigned NAKTMOUT:1;
    unsigned DATATGGL:1;
    unsigned DTWREN:1;
    unsigned DMAREQMD:1;
    unsigned FRCDATTG:1;
    unsigned DMAREQEN:1;
    unsigned MODE:1;
    unsigned :1;
    unsigned AUTOSET:1;
  };
  struct {
    unsigned :18;
    unsigned UNDERRUN:1;
    unsigned :1;
    unsigned SENDSTALL:1;
    unsigned SENTSTALL:1;
    unsigned :1;
    unsigned INCOMPTX:1;
    unsigned :6;
    unsigned ISO:1;
  };
} __USBE7CSR0bits_t;
extern volatile __USBE7CSR0bits_t USBE7CSR0bits __asm__ ("USBE7CSR0") __attribute__((section("sfrs")));

extern volatile unsigned int USBE7CSR1 __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned RXMAXP:11;
    unsigned MULT:5;
    unsigned RXPKTRDY:1;
    unsigned FIFOFULL:1;
    unsigned ERROR:1;
    unsigned DERRNAKT:1;
    unsigned FLUSH:1;
    unsigned REQPKT:1;
    unsigned RXSTALL:1;
    unsigned CLRDT:1;
    unsigned INCOMPRX:1;
    unsigned DATATGGL:1;
    unsigned DATATWEN:1;
    unsigned DMAREQMD:1;
    unsigned PIDERR:1;
    unsigned DMAREQEN:1;
    unsigned AUTORQ:1;
    unsigned AUTOCLR:1;
  };
  struct {
    unsigned :18;
    unsigned UNDERRUN:1;
    unsigned :1;
    unsigned SENDSTALL:1;
    unsigned SENTSTALL:1;
    unsigned :1;
    unsigned INCOMPTX:1;
    unsigned :6;
    unsigned ISO:1;
  };
} __USBE7CSR1bits_t;
extern volatile __USBE7CSR1bits_t USBE7CSR1bits __asm__ ("USBE7CSR1") __attribute__((section("sfrs")));

extern volatile unsigned int USBE7CSR2 __attribute__((section("sfrs")));
typedef struct {
  unsigned RXCNT:14;
  unsigned :2;
  unsigned TEP:4;
  unsigned PROTOCOL:2;
  unsigned SPEED:2;
  unsigned TXINTERV:8;
} __USBE7CSR2bits_t;
extern volatile __USBE7CSR2bits_t USBE7CSR2bits __asm__ ("USBE7CSR2") __attribute__((section("sfrs")));

extern volatile unsigned int USBE7CSR3 __attribute__((section("sfrs")));
typedef struct {
  unsigned TEP:4;
  unsigned PROTOCOL:2;
  unsigned SPEED:2;
  unsigned RXINTERV:8;
  unsigned :8;
  unsigned TXFIFOSZ:4;
  unsigned RXFIFOSZ:4;
} __USBE7CSR3bits_t;
extern volatile __USBE7CSR3bits_t USBE7CSR3bits __asm__ ("USBE7CSR3") __attribute__((section("sfrs")));

extern volatile unsigned int USBDMAINT __attribute__((section("sfrs")));
typedef struct {
  unsigned DMA1IF:1;
  unsigned DMA2IF:1;
  unsigned DMA3IF:1;
  unsigned DMA4IF:1;
  unsigned DMA5IF:1;
  unsigned DMA6IF:1;
  unsigned DMA7IF:1;
  unsigned DMA8IF:1;
} __USBDMAINTbits_t;
extern volatile __USBDMAINTbits_t USBDMAINTbits __asm__ ("USBDMAINT") __attribute__((section("sfrs")));

extern volatile unsigned int USBDMA1C __attribute__((section("sfrs")));
typedef struct {
  unsigned DMAEN:1;
  unsigned DMADIR:1;
  unsigned DMAMODE:1;
  unsigned DMAIE:1;
  unsigned DMAEP:4;
  unsigned DMAERR:1;
  unsigned DMABRSTM:2;
} __USBDMA1Cbits_t;
extern volatile __USBDMA1Cbits_t USBDMA1Cbits __asm__ ("USBDMA1C") __attribute__((section("sfrs")));

extern volatile unsigned int USBDMA1A __attribute__((section("sfrs")));
typedef struct {
  unsigned DMAADDR:32;
} __USBDMA1Abits_t;
extern volatile __USBDMA1Abits_t USBDMA1Abits __asm__ ("USBDMA1A") __attribute__((section("sfrs")));

extern volatile unsigned int USBDMA1N __attribute__((section("sfrs")));
typedef struct {
  unsigned DMACOUNT:32;
} __USBDMA1Nbits_t;
extern volatile __USBDMA1Nbits_t USBDMA1Nbits __asm__ ("USBDMA1N") __attribute__((section("sfrs")));

extern volatile unsigned int USBDMA2C __attribute__((section("sfrs")));
typedef struct {
  unsigned DMAEN:1;
  unsigned DMADIR:1;
  unsigned DMAMODE:1;
  unsigned DMAIE:1;
  unsigned DMAEP:4;
  unsigned DMAERR:1;
  unsigned DMABRSTM:2;
} __USBDMA2Cbits_t;
extern volatile __USBDMA2Cbits_t USBDMA2Cbits __asm__ ("USBDMA2C") __attribute__((section("sfrs")));

extern volatile unsigned int USBDMA2A __attribute__((section("sfrs")));
typedef struct {
  unsigned DMAADDR:32;
} __USBDMA2Abits_t;
extern volatile __USBDMA2Abits_t USBDMA2Abits __asm__ ("USBDMA2A") __attribute__((section("sfrs")));

extern volatile unsigned int USBDMA2N __attribute__((section("sfrs")));
typedef struct {
  unsigned DMACOUNT:32;
} __USBDMA2Nbits_t;
extern volatile __USBDMA2Nbits_t USBDMA2Nbits __asm__ ("USBDMA2N") __attribute__((section("sfrs")));

extern volatile unsigned int USBDMA3C __attribute__((section("sfrs")));
typedef struct {
  unsigned DMAEN:1;
  unsigned DMADIR:1;
  unsigned DMAMODE:1;
  unsigned DMAIE:1;
  unsigned DMAEP:4;
  unsigned DMAERR:1;
  unsigned DMABRSTM:2;
} __USBDMA3Cbits_t;
extern volatile __USBDMA3Cbits_t USBDMA3Cbits __asm__ ("USBDMA3C") __attribute__((section("sfrs")));

extern volatile unsigned int USBDMA3A __attribute__((section("sfrs")));
typedef struct {
  unsigned DMAADDR:32;
} __USBDMA3Abits_t;
extern volatile __USBDMA3Abits_t USBDMA3Abits __asm__ ("USBDMA3A") __attribute__((section("sfrs")));

extern volatile unsigned int USBDMA3N __attribute__((section("sfrs")));
typedef struct {
  unsigned DMACOUNT:32;
} __USBDMA3Nbits_t;
extern volatile __USBDMA3Nbits_t USBDMA3Nbits __asm__ ("USBDMA3N") __attribute__((section("sfrs")));

extern volatile unsigned int USBDMA4C __attribute__((section("sfrs")));
typedef struct {
  unsigned DMAEN:1;
  unsigned DMADIR:1;
  unsigned DMAMODE:1;
  unsigned DMAIE:1;
  unsigned DMAEP:4;
  unsigned DMAERR:1;
  unsigned DMABRSTM:2;
} __USBDMA4Cbits_t;
extern volatile __USBDMA4Cbits_t USBDMA4Cbits __asm__ ("USBDMA4C") __attribute__((section("sfrs")));

extern volatile unsigned int USBDMA4A __attribute__((section("sfrs")));
typedef struct {
  unsigned DMAADDR:32;
} __USBDMA4Abits_t;
extern volatile __USBDMA4Abits_t USBDMA4Abits __asm__ ("USBDMA4A") __attribute__((section("sfrs")));

extern volatile unsigned int USBDMA4N __attribute__((section("sfrs")));
typedef struct {
  unsigned DMACOUNT:32;
} __USBDMA4Nbits_t;
extern volatile __USBDMA4Nbits_t USBDMA4Nbits __asm__ ("USBDMA4N") __attribute__((section("sfrs")));

extern volatile unsigned int USBDMA5C __attribute__((section("sfrs")));
typedef struct {
  unsigned DMAEN:1;
  unsigned DMADIR:1;
  unsigned DMAMODE:1;
  unsigned DMAIE:1;
  unsigned DMAEP:4;
  unsigned DMAERR:1;
  unsigned DMABRSTM:2;
} __USBDMA5Cbits_t;
extern volatile __USBDMA5Cbits_t USBDMA5Cbits __asm__ ("USBDMA5C") __attribute__((section("sfrs")));

extern volatile unsigned int USBDMA5A __attribute__((section("sfrs")));
typedef struct {
  unsigned DMAADDR:32;
} __USBDMA5Abits_t;
extern volatile __USBDMA5Abits_t USBDMA5Abits __asm__ ("USBDMA5A") __attribute__((section("sfrs")));

extern volatile unsigned int USBDMA5N __attribute__((section("sfrs")));
typedef struct {
  unsigned DMACOUNT:32;
} __USBDMA5Nbits_t;
extern volatile __USBDMA5Nbits_t USBDMA5Nbits __asm__ ("USBDMA5N") __attribute__((section("sfrs")));

extern volatile unsigned int USBDMA6C __attribute__((section("sfrs")));
typedef struct {
  unsigned DMAEN:1;
  unsigned DMADIR:1;
  unsigned DMAMODE:1;
  unsigned DMAIE:1;
  unsigned DMAEP:4;
  unsigned DMAERR:1;
  unsigned DMABRSTM:2;
} __USBDMA6Cbits_t;
extern volatile __USBDMA6Cbits_t USBDMA6Cbits __asm__ ("USBDMA6C") __attribute__((section("sfrs")));

extern volatile unsigned int USBDMA6A __attribute__((section("sfrs")));
typedef struct {
  unsigned DMAADDR:32;
} __USBDMA6Abits_t;
extern volatile __USBDMA6Abits_t USBDMA6Abits __asm__ ("USBDMA6A") __attribute__((section("sfrs")));

extern volatile unsigned int USBDMA6N __attribute__((section("sfrs")));
typedef struct {
  unsigned DMACOUNT:32;
} __USBDMA6Nbits_t;
extern volatile __USBDMA6Nbits_t USBDMA6Nbits __asm__ ("USBDMA6N") __attribute__((section("sfrs")));

extern volatile unsigned int USBDMA7C __attribute__((section("sfrs")));
typedef struct {
  unsigned DMAEN:1;
  unsigned DMADIR:1;
  unsigned DMAMODE:1;
  unsigned DMAIE:1;
  unsigned DMAEP:4;
  unsigned DMAERR:1;
  unsigned DMABRSTM:2;
} __USBDMA7Cbits_t;
extern volatile __USBDMA7Cbits_t USBDMA7Cbits __asm__ ("USBDMA7C") __attribute__((section("sfrs")));

extern volatile unsigned int USBDMA7A __attribute__((section("sfrs")));
typedef struct {
  unsigned DMAADDR:32;
} __USBDMA7Abits_t;
extern volatile __USBDMA7Abits_t USBDMA7Abits __asm__ ("USBDMA7A") __attribute__((section("sfrs")));

extern volatile unsigned int USBDMA7N __attribute__((section("sfrs")));
typedef struct {
  unsigned DMACOUNT:32;
} __USBDMA7Nbits_t;
extern volatile __USBDMA7Nbits_t USBDMA7Nbits __asm__ ("USBDMA7N") __attribute__((section("sfrs")));

extern volatile unsigned int USBDMA8C __attribute__((section("sfrs")));
typedef struct {
  unsigned DMAEN:1;
  unsigned DMADIR:1;
  unsigned DMAMODE:1;
  unsigned DMAIE:1;
  unsigned DMAEP:4;
  unsigned DMAERR:1;
  unsigned DMABRSTM:2;
} __USBDMA8Cbits_t;
extern volatile __USBDMA8Cbits_t USBDMA8Cbits __asm__ ("USBDMA8C") __attribute__((section("sfrs")));

extern volatile unsigned int USBDMA8A __attribute__((section("sfrs")));
typedef struct {
  unsigned DMAADDR:32;
} __USBDMA8Abits_t;
extern volatile __USBDMA8Abits_t USBDMA8Abits __asm__ ("USBDMA8A") __attribute__((section("sfrs")));

extern volatile unsigned int USBDMA8N __attribute__((section("sfrs")));
typedef struct {
  unsigned DMACOUNT:32;
} __USBDMA8Nbits_t;
extern volatile __USBDMA8Nbits_t USBDMA8Nbits __asm__ ("USBDMA8N") __attribute__((section("sfrs")));

extern volatile unsigned int USBE1RPC __attribute__((section("sfrs")));
typedef struct {
  unsigned RQPKTCNT:16;
} __USBE1RPCbits_t;
extern volatile __USBE1RPCbits_t USBE1RPCbits __asm__ ("USBE1RPC") __attribute__((section("sfrs")));

extern volatile unsigned int USBE2RPC __attribute__((section("sfrs")));
typedef struct {
  unsigned RQPKTCNT:16;
} __USBE2RPCbits_t;
extern volatile __USBE2RPCbits_t USBE2RPCbits __asm__ ("USBE2RPC") __attribute__((section("sfrs")));

extern volatile unsigned int USBE3RPC __attribute__((section("sfrs")));
typedef struct {
  unsigned RQPKTCNT:16;
} __USBE3RPCbits_t;
extern volatile __USBE3RPCbits_t USBE3RPCbits __asm__ ("USBE3RPC") __attribute__((section("sfrs")));

extern volatile unsigned int USBE4RPC __attribute__((section("sfrs")));
typedef struct {
  unsigned RQPKTCNT:16;
} __USBE4RPCbits_t;
extern volatile __USBE4RPCbits_t USBE4RPCbits __asm__ ("USBE4RPC") __attribute__((section("sfrs")));

extern volatile unsigned int USBE5RPC __attribute__((section("sfrs")));
typedef struct {
  unsigned RQPKTCNT:16;
} __USBE5RPCbits_t;
extern volatile __USBE5RPCbits_t USBE5RPCbits __asm__ ("USBE5RPC") __attribute__((section("sfrs")));

extern volatile unsigned int USBE6RPC __attribute__((section("sfrs")));
typedef struct {
  unsigned RQPKTCNT:16;
} __USBE6RPCbits_t;
extern volatile __USBE6RPCbits_t USBE6RPCbits __asm__ ("USBE6RPC") __attribute__((section("sfrs")));

extern volatile unsigned int USBE7RPC __attribute__((section("sfrs")));
typedef struct {
  unsigned RQPKTCNT:16;
} __USBE7RPCbits_t;
extern volatile __USBE7RPCbits_t USBE7RPCbits __asm__ ("USBE7RPC") __attribute__((section("sfrs")));

extern volatile unsigned int USBDPBFD __attribute__((section("sfrs")));
typedef struct {
  unsigned :1;
  unsigned EP1RXD:1;
  unsigned EP2RXD:1;
  unsigned EP3RXD:1;
  unsigned EP4RXD:1;
  unsigned EP5RXD:1;
  unsigned EP6RXD:1;
  unsigned EP7RXD:1;
  unsigned :9;
  unsigned EP1TXD:1;
  unsigned EP2TXD:1;
  unsigned EP3TXD:1;
  unsigned EP4TXD:1;
  unsigned EP5TXD:1;
  unsigned EP6TXD:1;
  unsigned EP7TXD:1;
} __USBDPBFDbits_t;
extern volatile __USBDPBFDbits_t USBDPBFDbits __asm__ ("USBDPBFD") __attribute__((section("sfrs")));

extern volatile unsigned int USBTMCON1 __attribute__((section("sfrs")));
typedef struct {
  unsigned TUCH:16;
  unsigned THHSRTN:16;
} __USBTMCON1bits_t;
extern volatile __USBTMCON1bits_t USBTMCON1bits __asm__ ("USBTMCON1") __attribute__((section("sfrs")));

extern volatile unsigned int USBTMCON2 __attribute__((section("sfrs")));
typedef struct {
  unsigned THSBT:4;
} __USBTMCON2bits_t;
extern volatile __USBTMCON2bits_t USBTMCON2bits __asm__ ("USBTMCON2") __attribute__((section("sfrs")));

extern volatile unsigned int USBLPMR1 __attribute__((section("sfrs")));
typedef struct {
  unsigned LNKSTATE:4;
  unsigned HIRD:4;
  unsigned RMTWAK:1;
  unsigned :3;
  unsigned ENDPOINT:4;
  unsigned LPMXMT:1;
  unsigned LPMRES:1;
  unsigned LPMEN:2;
  unsigned LPMNAK:1;
  unsigned :3;
  unsigned LPMTOIE:1;
  unsigned LPMSTIE:1;
  unsigned LPMNYIE:1;
  unsigned LPMACKIE:1;
  unsigned LPMRESIE:1;
  unsigned LPMERRIE:1;
} __USBLPMR1bits_t;
extern volatile __USBLPMR1bits_t USBLPMR1bits __asm__ ("USBLPMR1") __attribute__((section("sfrs")));

extern volatile unsigned int USBLMPR2 __attribute__((section("sfrs")));
typedef struct {
  unsigned LPMST:1;
  unsigned LPMNY:1;
  unsigned LPMACK:1;
  unsigned LPMNC:1;
  unsigned LPMRES:1;
  unsigned LPMERR:1;
  unsigned :2;
  unsigned LPMFADDR:7;
} __USBLMPR2bits_t;
extern volatile __USBLMPR2bits_t USBLMPR2bits __asm__ ("USBLMPR2") __attribute__((section("sfrs")));

extern volatile unsigned int USBLPMP2 __attribute__((section("sfrs")));
typedef struct {
  unsigned LPMST:1;
  unsigned LPMNY:1;
  unsigned LPMACK:1;
  unsigned LPMNC:1;
  unsigned LPMRES:1;
  unsigned LPMERR:1;
  unsigned :2;
  unsigned LPMFADDR:7;
} __USBLPMP2bits_t;
extern volatile __USBLPMP2bits_t USBLPMP2bits __asm__ ("USBLPMP2") __attribute__((section("sfrs")));

extern volatile unsigned int RNGVER __attribute__((section("sfrs")));
typedef struct {
  unsigned REVISION:7;
  unsigned VERSION:9;
  unsigned ID:16;
} __RNGVERbits_t;
extern volatile __RNGVERbits_t RNGVERbits __asm__ ("RNGVER") __attribute__((section("sfrs")));

extern volatile unsigned int RNGCON __attribute__((section("sfrs")));
typedef struct {
  unsigned PLEN:8;
  unsigned TRNGEN:1;
  unsigned PRNGEN:1;
  unsigned CONT:1;
  unsigned TRNGMODE:1;
  unsigned LOAD:1;
} __RNGCONbits_t;
extern volatile __RNGCONbits_t RNGCONbits __asm__ ("RNGCON") __attribute__((section("sfrs")));

extern volatile unsigned int RNGPOLY1 __attribute__((section("sfrs")));
typedef struct {
  unsigned POLY:32;
} __RNGPOLY1bits_t;
extern volatile __RNGPOLY1bits_t RNGPOLY1bits __asm__ ("RNGPOLY1") __attribute__((section("sfrs")));

extern volatile unsigned int RNGPOLY2 __attribute__((section("sfrs")));
typedef struct {
  unsigned POLY:32;
} __RNGPOLY2bits_t;
extern volatile __RNGPOLY2bits_t RNGPOLY2bits __asm__ ("RNGPOLY2") __attribute__((section("sfrs")));

extern volatile unsigned int RNGNUMGEN1 __attribute__((section("sfrs")));
typedef struct {
  unsigned RNG:32;
} __RNGNUMGEN1bits_t;
extern volatile __RNGNUMGEN1bits_t RNGNUMGEN1bits __asm__ ("RNGNUMGEN1") __attribute__((section("sfrs")));

extern volatile unsigned int RNGNUMGEN2 __attribute__((section("sfrs")));
typedef struct {
  unsigned RNG:32;
} __RNGNUMGEN2bits_t;
extern volatile __RNGNUMGEN2bits_t RNGNUMGEN2bits __asm__ ("RNGNUMGEN2") __attribute__((section("sfrs")));

extern volatile unsigned int RNGSEED1 __attribute__((section("sfrs")));
typedef struct {
  unsigned SEED:32;
} __RNGSEED1bits_t;
extern volatile __RNGSEED1bits_t RNGSEED1bits __asm__ ("RNGSEED1") __attribute__((section("sfrs")));

extern volatile unsigned int RNGSEED2 __attribute__((section("sfrs")));
typedef struct {
  unsigned SEED:32;
} __RNGSEED2bits_t;
extern volatile __RNGSEED2bits_t RNGSEED2bits __asm__ ("RNGSEED2") __attribute__((section("sfrs")));

extern volatile unsigned int RNGCNT __attribute__((section("sfrs")));
typedef struct {
  unsigned RCNT:7;
} __RNGCNTbits_t;
extern volatile __RNGCNTbits_t RNGCNTbits __asm__ ("RNGCNT") __attribute__((section("sfrs")));

extern volatile unsigned int SBFLAG __attribute__((section("sfrs")));
typedef struct {
  unsigned T0PGV:1;
  unsigned T1PGV:1;
  unsigned T2PGV:1;
  unsigned T3PGV:1;
  unsigned T4PGV:1;
  unsigned T5PGV:1;
  unsigned T6PGV:1;
  unsigned T7PGV:1;
  unsigned T8PGV:1;
  unsigned T9PGV:1;
  unsigned T10PGV:1;
  unsigned T11PGV:1;
  unsigned T12PGV:1;
  unsigned T13PGV:1;
} __SBFLAGbits_t;
extern volatile __SBFLAGbits_t SBFLAGbits __asm__ ("SBFLAG") __attribute__((section("sfrs")));

extern volatile unsigned int SBT0ELOG1 __attribute__((section("sfrs")));
typedef struct {
  unsigned CMD:3;
  unsigned :1;
  unsigned REGION:4;
  unsigned INITID:8;
  unsigned :8;
  unsigned CODE:4;
  unsigned :3;
  unsigned MULTI:1;
} __SBT0ELOG1bits_t;
extern volatile __SBT0ELOG1bits_t SBT0ELOG1bits __asm__ ("SBT0ELOG1") __attribute__((section("sfrs")));

extern volatile unsigned int SBT0ELOG2 __attribute__((section("sfrs")));
typedef struct {
  unsigned GROUP:2;
} __SBT0ELOG2bits_t;
extern volatile __SBT0ELOG2bits_t SBT0ELOG2bits __asm__ ("SBT0ELOG2") __attribute__((section("sfrs")));

extern volatile unsigned int SBT0ECON __attribute__((section("sfrs")));
typedef struct {
  unsigned :24;
  unsigned ERRP:1;
} __SBT0ECONbits_t;
extern volatile __SBT0ECONbits_t SBT0ECONbits __asm__ ("SBT0ECON") __attribute__((section("sfrs")));

extern volatile unsigned int SBT0ECLRS __attribute__((section("sfrs")));
typedef struct {
  unsigned CLEAR:1;
} __SBT0ECLRSbits_t;
extern volatile __SBT0ECLRSbits_t SBT0ECLRSbits __asm__ ("SBT0ECLRS") __attribute__((section("sfrs")));

extern volatile unsigned int SBT0ECLRM __attribute__((section("sfrs")));
typedef struct {
  unsigned CLEAR:1;
} __SBT0ECLRMbits_t;
extern volatile __SBT0ECLRMbits_t SBT0ECLRMbits __asm__ ("SBT0ECLRM") __attribute__((section("sfrs")));

extern volatile unsigned int SBT0REG0 __attribute__((section("sfrs")));
typedef struct {
  unsigned :3;
  unsigned SIZE:5;
  unsigned :1;
  unsigned PRI:1;
  unsigned BASE:22;
} __SBT0REG0bits_t;
extern volatile __SBT0REG0bits_t SBT0REG0bits __asm__ ("SBT0REG0") __attribute__((section("sfrs")));

extern volatile unsigned int SBT0RD0 __attribute__((section("sfrs")));
typedef struct {
  unsigned GROUP0:1;
  unsigned GROUP1:1;
  unsigned GROUP2:1;
  unsigned GROUP3:1;
} __SBT0RD0bits_t;
extern volatile __SBT0RD0bits_t SBT0RD0bits __asm__ ("SBT0RD0") __attribute__((section("sfrs")));

extern volatile unsigned int SBT0WR0 __attribute__((section("sfrs")));
typedef struct {
  unsigned GROUP0:1;
  unsigned GROUP1:1;
  unsigned GROUP2:1;
  unsigned GROUP3:1;
} __SBT0WR0bits_t;
extern volatile __SBT0WR0bits_t SBT0WR0bits __asm__ ("SBT0WR0") __attribute__((section("sfrs")));

extern volatile unsigned int SBT0REG1 __attribute__((section("sfrs")));
typedef struct {
  unsigned :3;
  unsigned SIZE:5;
  unsigned :1;
  unsigned PRI:1;
  unsigned BASE:22;
} __SBT0REG1bits_t;
extern volatile __SBT0REG1bits_t SBT0REG1bits __asm__ ("SBT0REG1") __attribute__((section("sfrs")));

extern volatile unsigned int SBT0RD1 __attribute__((section("sfrs")));
typedef struct {
  unsigned GROUP0:1;
  unsigned GROUP1:1;
  unsigned GROUP2:1;
  unsigned GROUP3:1;
} __SBT0RD1bits_t;
extern volatile __SBT0RD1bits_t SBT0RD1bits __asm__ ("SBT0RD1") __attribute__((section("sfrs")));

extern volatile unsigned int SBT0WR1 __attribute__((section("sfrs")));
typedef struct {
  unsigned GROUP0:1;
  unsigned GROUP1:1;
  unsigned GROUP2:1;
  unsigned GROUP3:1;
} __SBT0WR1bits_t;
extern volatile __SBT0WR1bits_t SBT0WR1bits __asm__ ("SBT0WR1") __attribute__((section("sfrs")));

extern volatile unsigned int SBT1ELOG1 __attribute__((section("sfrs")));
typedef struct {
  unsigned CMD:3;
  unsigned :1;
  unsigned REGION:4;
  unsigned INITID:8;
  unsigned :8;
  unsigned CODE:4;
  unsigned :3;
  unsigned MULTI:1;
} __SBT1ELOG1bits_t;
extern volatile __SBT1ELOG1bits_t SBT1ELOG1bits __asm__ ("SBT1ELOG1") __attribute__((section("sfrs")));

extern volatile unsigned int SBT1ELOG2 __attribute__((section("sfrs")));
typedef struct {
  unsigned GROUP:2;
} __SBT1ELOG2bits_t;
extern volatile __SBT1ELOG2bits_t SBT1ELOG2bits __asm__ ("SBT1ELOG2") __attribute__((section("sfrs")));

extern volatile unsigned int SBT1ECON __attribute__((section("sfrs")));
typedef struct {
  unsigned :24;
  unsigned ERRP:1;
} __SBT1ECONbits_t;
extern volatile __SBT1ECONbits_t SBT1ECONbits __asm__ ("SBT1ECON") __attribute__((section("sfrs")));

extern volatile unsigned int SBT1ECLRS __attribute__((section("sfrs")));
typedef struct {
  unsigned CLEAR:1;
} __SBT1ECLRSbits_t;
extern volatile __SBT1ECLRSbits_t SBT1ECLRSbits __asm__ ("SBT1ECLRS") __attribute__((section("sfrs")));

extern volatile unsigned int SBT1ECLRM __attribute__((section("sfrs")));
typedef struct {
  unsigned CLEAR:1;
} __SBT1ECLRMbits_t;
extern volatile __SBT1ECLRMbits_t SBT1ECLRMbits __asm__ ("SBT1ECLRM") __attribute__((section("sfrs")));

extern volatile unsigned int SBT1REG0 __attribute__((section("sfrs")));
typedef struct {
  unsigned :3;
  unsigned SIZE:5;
  unsigned :1;
  unsigned PRI:1;
  unsigned BASE:22;
} __SBT1REG0bits_t;
extern volatile __SBT1REG0bits_t SBT1REG0bits __asm__ ("SBT1REG0") __attribute__((section("sfrs")));

extern volatile unsigned int SBT1RD0 __attribute__((section("sfrs")));
typedef struct {
  unsigned GROUP0:1;
  unsigned GROUP1:1;
  unsigned GROUP2:1;
  unsigned GROUP3:1;
} __SBT1RD0bits_t;
extern volatile __SBT1RD0bits_t SBT1RD0bits __asm__ ("SBT1RD0") __attribute__((section("sfrs")));

extern volatile unsigned int SBT1WR0 __attribute__((section("sfrs")));
typedef struct {
  unsigned GROUP0:1;
  unsigned GROUP1:1;
  unsigned GROUP2:1;
  unsigned GROUP3:1;
} __SBT1WR0bits_t;
extern volatile __SBT1WR0bits_t SBT1WR0bits __asm__ ("SBT1WR0") __attribute__((section("sfrs")));

extern volatile unsigned int SBT1REG2 __attribute__((section("sfrs")));
typedef struct {
  unsigned :3;
  unsigned SIZE:5;
  unsigned :1;
  unsigned PRI:1;
  unsigned BASE:22;
} __SBT1REG2bits_t;
extern volatile __SBT1REG2bits_t SBT1REG2bits __asm__ ("SBT1REG2") __attribute__((section("sfrs")));

extern volatile unsigned int SBT1RD2 __attribute__((section("sfrs")));
typedef struct {
  unsigned GROUP0:1;
  unsigned GROUP1:1;
  unsigned GROUP2:1;
  unsigned GROUP3:1;
} __SBT1RD2bits_t;
extern volatile __SBT1RD2bits_t SBT1RD2bits __asm__ ("SBT1RD2") __attribute__((section("sfrs")));

extern volatile unsigned int SBT1WR2 __attribute__((section("sfrs")));
typedef struct {
  unsigned GROUP0:1;
  unsigned GROUP1:1;
  unsigned GROUP2:1;
  unsigned GROUP3:1;
} __SBT1WR2bits_t;
extern volatile __SBT1WR2bits_t SBT1WR2bits __asm__ ("SBT1WR2") __attribute__((section("sfrs")));

extern volatile unsigned int SBT1REG3 __attribute__((section("sfrs")));
typedef struct {
  unsigned :3;
  unsigned SIZE:5;
  unsigned :1;
  unsigned PRI:1;
  unsigned BASE:22;
} __SBT1REG3bits_t;
extern volatile __SBT1REG3bits_t SBT1REG3bits __asm__ ("SBT1REG3") __attribute__((section("sfrs")));

extern volatile unsigned int SBT1RD3 __attribute__((section("sfrs")));
typedef struct {
  unsigned GROUP0:1;
  unsigned GROUP1:1;
  unsigned GROUP2:1;
  unsigned GROUP3:1;
} __SBT1RD3bits_t;
extern volatile __SBT1RD3bits_t SBT1RD3bits __asm__ ("SBT1RD3") __attribute__((section("sfrs")));

extern volatile unsigned int SBT1WR3 __attribute__((section("sfrs")));
typedef struct {
  unsigned GROUP0:1;
  unsigned GROUP1:1;
  unsigned GROUP2:1;
  unsigned GROUP3:1;
} __SBT1WR3bits_t;
extern volatile __SBT1WR3bits_t SBT1WR3bits __asm__ ("SBT1WR3") __attribute__((section("sfrs")));

extern volatile unsigned int SBT1REG4 __attribute__((section("sfrs")));
typedef struct {
  unsigned :3;
  unsigned SIZE:5;
  unsigned :1;
  unsigned PRI:1;
  unsigned BASE:22;
} __SBT1REG4bits_t;
extern volatile __SBT1REG4bits_t SBT1REG4bits __asm__ ("SBT1REG4") __attribute__((section("sfrs")));

extern volatile unsigned int SBT1RD4 __attribute__((section("sfrs")));
typedef struct {
  unsigned GROUP0:1;
  unsigned GROUP1:1;
  unsigned GROUP2:1;
  unsigned GROUP3:1;
} __SBT1RD4bits_t;
extern volatile __SBT1RD4bits_t SBT1RD4bits __asm__ ("SBT1RD4") __attribute__((section("sfrs")));

extern volatile unsigned int SBT1WR4 __attribute__((section("sfrs")));
typedef struct {
  unsigned GROUP0:1;
  unsigned GROUP1:1;
  unsigned GROUP2:1;
  unsigned GROUP3:1;
} __SBT1WR4bits_t;
extern volatile __SBT1WR4bits_t SBT1WR4bits __asm__ ("SBT1WR4") __attribute__((section("sfrs")));

extern volatile unsigned int SBT1REG5 __attribute__((section("sfrs")));
typedef struct {
  unsigned :3;
  unsigned SIZE:5;
  unsigned :1;
  unsigned PRI:1;
  unsigned BASE:22;
} __SBT1REG5bits_t;
extern volatile __SBT1REG5bits_t SBT1REG5bits __asm__ ("SBT1REG5") __attribute__((section("sfrs")));

extern volatile unsigned int SBT1RD5 __attribute__((section("sfrs")));
typedef struct {
  unsigned GROUP0:1;
  unsigned GROUP1:1;
  unsigned GROUP2:1;
  unsigned GROUP3:1;
} __SBT1RD5bits_t;
extern volatile __SBT1RD5bits_t SBT1RD5bits __asm__ ("SBT1RD5") __attribute__((section("sfrs")));

extern volatile unsigned int SBT1WR5 __attribute__((section("sfrs")));
typedef struct {
  unsigned GROUP0:1;
  unsigned GROUP1:1;
  unsigned GROUP2:1;
  unsigned GROUP3:1;
} __SBT1WR5bits_t;
extern volatile __SBT1WR5bits_t SBT1WR5bits __asm__ ("SBT1WR5") __attribute__((section("sfrs")));

extern volatile unsigned int SBT1REG6 __attribute__((section("sfrs")));
typedef struct {
  unsigned :3;
  unsigned SIZE:5;
  unsigned :1;
  unsigned PRI:1;
  unsigned BASE:22;
} __SBT1REG6bits_t;
extern volatile __SBT1REG6bits_t SBT1REG6bits __asm__ ("SBT1REG6") __attribute__((section("sfrs")));

extern volatile unsigned int SBT1RD6 __attribute__((section("sfrs")));
typedef struct {
  unsigned GROUP0:1;
  unsigned GROUP1:1;
  unsigned GROUP2:1;
  unsigned GROUP3:1;
} __SBT1RD6bits_t;
extern volatile __SBT1RD6bits_t SBT1RD6bits __asm__ ("SBT1RD6") __attribute__((section("sfrs")));

extern volatile unsigned int SBT1WR6 __attribute__((section("sfrs")));
typedef struct {
  unsigned GROUP0:1;
  unsigned GROUP1:1;
  unsigned GROUP2:1;
  unsigned GROUP3:1;
} __SBT1WR6bits_t;
extern volatile __SBT1WR6bits_t SBT1WR6bits __asm__ ("SBT1WR6") __attribute__((section("sfrs")));

extern volatile unsigned int SBT1REG7 __attribute__((section("sfrs")));
typedef struct {
  unsigned :3;
  unsigned SIZE:5;
  unsigned :1;
  unsigned PRI:1;
  unsigned BASE:22;
} __SBT1REG7bits_t;
extern volatile __SBT1REG7bits_t SBT1REG7bits __asm__ ("SBT1REG7") __attribute__((section("sfrs")));

extern volatile unsigned int SBT1RD7 __attribute__((section("sfrs")));
typedef struct {
  unsigned GROUP0:1;
  unsigned GROUP1:1;
  unsigned GROUP2:1;
  unsigned GROUP3:1;
} __SBT1RD7bits_t;
extern volatile __SBT1RD7bits_t SBT1RD7bits __asm__ ("SBT1RD7") __attribute__((section("sfrs")));

extern volatile unsigned int SBT1WR7 __attribute__((section("sfrs")));
typedef struct {
  unsigned GROUP0:1;
  unsigned GROUP1:1;
  unsigned GROUP2:1;
  unsigned GROUP3:1;
} __SBT1WR7bits_t;
extern volatile __SBT1WR7bits_t SBT1WR7bits __asm__ ("SBT1WR7") __attribute__((section("sfrs")));

extern volatile unsigned int SBT1REG8 __attribute__((section("sfrs")));
typedef struct {
  unsigned :3;
  unsigned SIZE:5;
  unsigned :1;
  unsigned PRI:1;
  unsigned BASE:22;
} __SBT1REG8bits_t;
extern volatile __SBT1REG8bits_t SBT1REG8bits __asm__ ("SBT1REG8") __attribute__((section("sfrs")));

extern volatile unsigned int SBT1RD8 __attribute__((section("sfrs")));
typedef struct {
  unsigned GROUP0:1;
  unsigned GROUP1:1;
  unsigned GROUP2:1;
  unsigned GROUP3:1;
} __SBT1RD8bits_t;
extern volatile __SBT1RD8bits_t SBT1RD8bits __asm__ ("SBT1RD8") __attribute__((section("sfrs")));

extern volatile unsigned int SBT1WR8 __attribute__((section("sfrs")));
typedef struct {
  unsigned GROUP0:1;
  unsigned GROUP1:1;
  unsigned GROUP2:1;
  unsigned GROUP3:1;
} __SBT1WR8bits_t;
extern volatile __SBT1WR8bits_t SBT1WR8bits __asm__ ("SBT1WR8") __attribute__((section("sfrs")));

extern volatile unsigned int SBT2ELOG1 __attribute__((section("sfrs")));
typedef struct {
  unsigned CMD:3;
  unsigned :1;
  unsigned REGION:4;
  unsigned INITID:8;
  unsigned :8;
  unsigned CODE:4;
  unsigned :3;
  unsigned MULTI:1;
} __SBT2ELOG1bits_t;
extern volatile __SBT2ELOG1bits_t SBT2ELOG1bits __asm__ ("SBT2ELOG1") __attribute__((section("sfrs")));

extern volatile unsigned int SBT2ELOG2 __attribute__((section("sfrs")));
typedef struct {
  unsigned GROUP:2;
} __SBT2ELOG2bits_t;
extern volatile __SBT2ELOG2bits_t SBT2ELOG2bits __asm__ ("SBT2ELOG2") __attribute__((section("sfrs")));

extern volatile unsigned int SBT2ECON __attribute__((section("sfrs")));
typedef struct {
  unsigned :24;
  unsigned ERRP:1;
} __SBT2ECONbits_t;
extern volatile __SBT2ECONbits_t SBT2ECONbits __asm__ ("SBT2ECON") __attribute__((section("sfrs")));

extern volatile unsigned int SBT2ECLRS __attribute__((section("sfrs")));
typedef struct {
  unsigned CLEAR:1;
} __SBT2ECLRSbits_t;
extern volatile __SBT2ECLRSbits_t SBT2ECLRSbits __asm__ ("SBT2ECLRS") __attribute__((section("sfrs")));

extern volatile unsigned int SBT2ECLRM __attribute__((section("sfrs")));
typedef struct {
  unsigned CLEAR:1;
} __SBT2ECLRMbits_t;
extern volatile __SBT2ECLRMbits_t SBT2ECLRMbits __asm__ ("SBT2ECLRM") __attribute__((section("sfrs")));

extern volatile unsigned int SBT2REG0 __attribute__((section("sfrs")));
typedef struct {
  unsigned :3;
  unsigned SIZE:5;
  unsigned :1;
  unsigned PRI:1;
  unsigned BASE:22;
} __SBT2REG0bits_t;
extern volatile __SBT2REG0bits_t SBT2REG0bits __asm__ ("SBT2REG0") __attribute__((section("sfrs")));

extern volatile unsigned int SBT2RD0 __attribute__((section("sfrs")));
typedef struct {
  unsigned GROUP0:1;
  unsigned GROUP1:1;
  unsigned GROUP2:1;
  unsigned GROUP3:1;
} __SBT2RD0bits_t;
extern volatile __SBT2RD0bits_t SBT2RD0bits __asm__ ("SBT2RD0") __attribute__((section("sfrs")));

extern volatile unsigned int SBT2WR0 __attribute__((section("sfrs")));
typedef struct {
  unsigned GROUP0:1;
  unsigned GROUP1:1;
  unsigned GROUP2:1;
  unsigned GROUP3:1;
} __SBT2WR0bits_t;
extern volatile __SBT2WR0bits_t SBT2WR0bits __asm__ ("SBT2WR0") __attribute__((section("sfrs")));

extern volatile unsigned int SBT2REG1 __attribute__((section("sfrs")));
typedef struct {
  unsigned :3;
  unsigned SIZE:5;
  unsigned :1;
  unsigned PRI:1;
  unsigned BASE:22;
} __SBT2REG1bits_t;
extern volatile __SBT2REG1bits_t SBT2REG1bits __asm__ ("SBT2REG1") __attribute__((section("sfrs")));

extern volatile unsigned int SBT2RD1 __attribute__((section("sfrs")));
typedef struct {
  unsigned GROUP0:1;
  unsigned GROUP1:1;
  unsigned GROUP2:1;
  unsigned GROUP3:1;
} __SBT2RD1bits_t;
extern volatile __SBT2RD1bits_t SBT2RD1bits __asm__ ("SBT2RD1") __attribute__((section("sfrs")));

extern volatile unsigned int SBT2WR1 __attribute__((section("sfrs")));
typedef struct {
  unsigned GROUP0:1;
  unsigned GROUP1:1;
  unsigned GROUP2:1;
  unsigned GROUP3:1;
} __SBT2WR1bits_t;
extern volatile __SBT2WR1bits_t SBT2WR1bits __asm__ ("SBT2WR1") __attribute__((section("sfrs")));

extern volatile unsigned int SBT2REG2 __attribute__((section("sfrs")));
typedef struct {
  unsigned :3;
  unsigned SIZE:5;
  unsigned :1;
  unsigned PRI:1;
  unsigned BASE:22;
} __SBT2REG2bits_t;
extern volatile __SBT2REG2bits_t SBT2REG2bits __asm__ ("SBT2REG2") __attribute__((section("sfrs")));

extern volatile unsigned int SBT2RD2 __attribute__((section("sfrs")));
typedef struct {
  unsigned GROUP0:1;
  unsigned GROUP1:1;
  unsigned GROUP2:1;
  unsigned GROUP3:1;
} __SBT2RD2bits_t;
extern volatile __SBT2RD2bits_t SBT2RD2bits __asm__ ("SBT2RD2") __attribute__((section("sfrs")));

extern volatile unsigned int SBT2WR2 __attribute__((section("sfrs")));
typedef struct {
  unsigned GROUP0:1;
  unsigned GROUP1:1;
  unsigned GROUP2:1;
  unsigned GROUP3:1;
} __SBT2WR2bits_t;
extern volatile __SBT2WR2bits_t SBT2WR2bits __asm__ ("SBT2WR2") __attribute__((section("sfrs")));

extern volatile unsigned int SBT3ELOG1 __attribute__((section("sfrs")));
typedef struct {
  unsigned CMD:3;
  unsigned :1;
  unsigned REGION:4;
  unsigned INITID:8;
  unsigned :8;
  unsigned CODE:4;
  unsigned :3;
  unsigned MULTI:1;
} __SBT3ELOG1bits_t;
extern volatile __SBT3ELOG1bits_t SBT3ELOG1bits __asm__ ("SBT3ELOG1") __attribute__((section("sfrs")));

extern volatile unsigned int SBT3ELOG2 __attribute__((section("sfrs")));
typedef struct {
  unsigned GROUP:2;
} __SBT3ELOG2bits_t;
extern volatile __SBT3ELOG2bits_t SBT3ELOG2bits __asm__ ("SBT3ELOG2") __attribute__((section("sfrs")));

extern volatile unsigned int SBT3ECON __attribute__((section("sfrs")));
typedef struct {
  unsigned :24;
  unsigned ERRP:1;
} __SBT3ECONbits_t;
extern volatile __SBT3ECONbits_t SBT3ECONbits __asm__ ("SBT3ECON") __attribute__((section("sfrs")));

extern volatile unsigned int SBT3ECLRS __attribute__((section("sfrs")));
typedef struct {
  unsigned CLEAR:1;
} __SBT3ECLRSbits_t;
extern volatile __SBT3ECLRSbits_t SBT3ECLRSbits __asm__ ("SBT3ECLRS") __attribute__((section("sfrs")));

extern volatile unsigned int SBT3ECLRM __attribute__((section("sfrs")));
typedef struct {
  unsigned CLEAR:1;
} __SBT3ECLRMbits_t;
extern volatile __SBT3ECLRMbits_t SBT3ECLRMbits __asm__ ("SBT3ECLRM") __attribute__((section("sfrs")));

extern volatile unsigned int SBT3REG0 __attribute__((section("sfrs")));
typedef struct {
  unsigned :3;
  unsigned SIZE:5;
  unsigned :1;
  unsigned PRI:1;
  unsigned BASE:22;
} __SBT3REG0bits_t;
extern volatile __SBT3REG0bits_t SBT3REG0bits __asm__ ("SBT3REG0") __attribute__((section("sfrs")));

extern volatile unsigned int SBT3RD0 __attribute__((section("sfrs")));
typedef struct {
  unsigned GROUP0:1;
  unsigned GROUP1:1;
  unsigned GROUP2:1;
  unsigned GROUP3:1;
} __SBT3RD0bits_t;
extern volatile __SBT3RD0bits_t SBT3RD0bits __asm__ ("SBT3RD0") __attribute__((section("sfrs")));

extern volatile unsigned int SBT3WR0 __attribute__((section("sfrs")));
typedef struct {
  unsigned GROUP0:1;
  unsigned GROUP1:1;
  unsigned GROUP2:1;
  unsigned GROUP3:1;
} __SBT3WR0bits_t;
extern volatile __SBT3WR0bits_t SBT3WR0bits __asm__ ("SBT3WR0") __attribute__((section("sfrs")));

extern volatile unsigned int SBT3REG1 __attribute__((section("sfrs")));
typedef struct {
  unsigned :3;
  unsigned SIZE:5;
  unsigned :1;
  unsigned PRI:1;
  unsigned BASE:22;
} __SBT3REG1bits_t;
extern volatile __SBT3REG1bits_t SBT3REG1bits __asm__ ("SBT3REG1") __attribute__((section("sfrs")));

extern volatile unsigned int SBT3RD1 __attribute__((section("sfrs")));
typedef struct {
  unsigned GROUP0:1;
  unsigned GROUP1:1;
  unsigned GROUP2:1;
  unsigned GROUP3:1;
} __SBT3RD1bits_t;
extern volatile __SBT3RD1bits_t SBT3RD1bits __asm__ ("SBT3RD1") __attribute__((section("sfrs")));

extern volatile unsigned int SBT3WR1 __attribute__((section("sfrs")));
typedef struct {
  unsigned GROUP0:1;
  unsigned GROUP1:1;
  unsigned GROUP2:1;
  unsigned GROUP3:1;
} __SBT3WR1bits_t;
extern volatile __SBT3WR1bits_t SBT3WR1bits __asm__ ("SBT3WR1") __attribute__((section("sfrs")));

extern volatile unsigned int SBT3REG2 __attribute__((section("sfrs")));
typedef struct {
  unsigned :3;
  unsigned SIZE:5;
  unsigned :1;
  unsigned PRI:1;
  unsigned BASE:22;
} __SBT3REG2bits_t;
extern volatile __SBT3REG2bits_t SBT3REG2bits __asm__ ("SBT3REG2") __attribute__((section("sfrs")));

extern volatile unsigned int SBT3RD2 __attribute__((section("sfrs")));
typedef struct {
  unsigned GROUP0:1;
  unsigned GROUP1:1;
  unsigned GROUP2:1;
  unsigned GROUP3:1;
} __SBT3RD2bits_t;
extern volatile __SBT3RD2bits_t SBT3RD2bits __asm__ ("SBT3RD2") __attribute__((section("sfrs")));

extern volatile unsigned int SBT3WR2 __attribute__((section("sfrs")));
typedef struct {
  unsigned GROUP0:1;
  unsigned GROUP1:1;
  unsigned GROUP2:1;
  unsigned GROUP3:1;
} __SBT3WR2bits_t;
extern volatile __SBT3WR2bits_t SBT3WR2bits __asm__ ("SBT3WR2") __attribute__((section("sfrs")));

extern volatile unsigned int SBT4ELOG1 __attribute__((section("sfrs")));
typedef struct {
  unsigned CMD:3;
  unsigned :1;
  unsigned REGION:4;
  unsigned INITID:8;
  unsigned :8;
  unsigned CODE:4;
  unsigned :3;
  unsigned MULTI:1;
} __SBT4ELOG1bits_t;
extern volatile __SBT4ELOG1bits_t SBT4ELOG1bits __asm__ ("SBT4ELOG1") __attribute__((section("sfrs")));

extern volatile unsigned int SBT4ELOG2 __attribute__((section("sfrs")));
typedef struct {
  unsigned GROUP:2;
} __SBT4ELOG2bits_t;
extern volatile __SBT4ELOG2bits_t SBT4ELOG2bits __asm__ ("SBT4ELOG2") __attribute__((section("sfrs")));

extern volatile unsigned int SBT4ECON __attribute__((section("sfrs")));
typedef struct {
  unsigned :24;
  unsigned ERRP:1;
} __SBT4ECONbits_t;
extern volatile __SBT4ECONbits_t SBT4ECONbits __asm__ ("SBT4ECON") __attribute__((section("sfrs")));

extern volatile unsigned int SBT4ECLRS __attribute__((section("sfrs")));
typedef struct {
  unsigned CLEAR:1;
} __SBT4ECLRSbits_t;
extern volatile __SBT4ECLRSbits_t SBT4ECLRSbits __asm__ ("SBT4ECLRS") __attribute__((section("sfrs")));

extern volatile unsigned int SBT4ECLRM __attribute__((section("sfrs")));
typedef struct {
  unsigned CLEAR:1;
} __SBT4ECLRMbits_t;
extern volatile __SBT4ECLRMbits_t SBT4ECLRMbits __asm__ ("SBT4ECLRM") __attribute__((section("sfrs")));

extern volatile unsigned int SBT4REG0 __attribute__((section("sfrs")));
typedef struct {
  unsigned :3;
  unsigned SIZE:5;
  unsigned :1;
  unsigned PRI:1;
  unsigned BASE:22;
} __SBT4REG0bits_t;
extern volatile __SBT4REG0bits_t SBT4REG0bits __asm__ ("SBT4REG0") __attribute__((section("sfrs")));

extern volatile unsigned int SBT4RD0 __attribute__((section("sfrs")));
typedef struct {
  unsigned GROUP0:1;
  unsigned GROUP1:1;
  unsigned GROUP2:1;
  unsigned GROUP3:1;
} __SBT4RD0bits_t;
extern volatile __SBT4RD0bits_t SBT4RD0bits __asm__ ("SBT4RD0") __attribute__((section("sfrs")));

extern volatile unsigned int SBT4WR0 __attribute__((section("sfrs")));
typedef struct {
  unsigned GROUP0:1;
  unsigned GROUP1:1;
  unsigned GROUP2:1;
  unsigned GROUP3:1;
} __SBT4WR0bits_t;
extern volatile __SBT4WR0bits_t SBT4WR0bits __asm__ ("SBT4WR0") __attribute__((section("sfrs")));

extern volatile unsigned int SBT4REG2 __attribute__((section("sfrs")));
typedef struct {
  unsigned :3;
  unsigned SIZE:5;
  unsigned :1;
  unsigned PRI:1;
  unsigned BASE:22;
} __SBT4REG2bits_t;
extern volatile __SBT4REG2bits_t SBT4REG2bits __asm__ ("SBT4REG2") __attribute__((section("sfrs")));

extern volatile unsigned int SBT4RD2 __attribute__((section("sfrs")));
typedef struct {
  unsigned GROUP0:1;
  unsigned GROUP1:1;
  unsigned GROUP2:1;
  unsigned GROUP3:1;
} __SBT4RD2bits_t;
extern volatile __SBT4RD2bits_t SBT4RD2bits __asm__ ("SBT4RD2") __attribute__((section("sfrs")));

extern volatile unsigned int SBT4WR2 __attribute__((section("sfrs")));
typedef struct {
  unsigned GROUP0:1;
  unsigned GROUP1:1;
  unsigned GROUP2:1;
  unsigned GROUP3:1;
} __SBT4WR2bits_t;
extern volatile __SBT4WR2bits_t SBT4WR2bits __asm__ ("SBT4WR2") __attribute__((section("sfrs")));

extern volatile unsigned int SBT5ELOG1 __attribute__((section("sfrs")));
typedef struct {
  unsigned CMD:3;
  unsigned :1;
  unsigned REGION:4;
  unsigned INITID:8;
  unsigned :8;
  unsigned CODE:4;
  unsigned :3;
  unsigned MULTI:1;
} __SBT5ELOG1bits_t;
extern volatile __SBT5ELOG1bits_t SBT5ELOG1bits __asm__ ("SBT5ELOG1") __attribute__((section("sfrs")));

extern volatile unsigned int SBT5ELOG2 __attribute__((section("sfrs")));
typedef struct {
  unsigned GROUP:2;
} __SBT5ELOG2bits_t;
extern volatile __SBT5ELOG2bits_t SBT5ELOG2bits __asm__ ("SBT5ELOG2") __attribute__((section("sfrs")));

extern volatile unsigned int SBT5ECON __attribute__((section("sfrs")));
typedef struct {
  unsigned :24;
  unsigned ERRP:1;
} __SBT5ECONbits_t;
extern volatile __SBT5ECONbits_t SBT5ECONbits __asm__ ("SBT5ECON") __attribute__((section("sfrs")));

extern volatile unsigned int SBT5ECLRS __attribute__((section("sfrs")));
typedef struct {
  unsigned CLEAR:1;
} __SBT5ECLRSbits_t;
extern volatile __SBT5ECLRSbits_t SBT5ECLRSbits __asm__ ("SBT5ECLRS") __attribute__((section("sfrs")));

extern volatile unsigned int SBT5ECLRM __attribute__((section("sfrs")));
typedef struct {
  unsigned CLEAR:1;
} __SBT5ECLRMbits_t;
extern volatile __SBT5ECLRMbits_t SBT5ECLRMbits __asm__ ("SBT5ECLRM") __attribute__((section("sfrs")));

extern volatile unsigned int SBT5REG0 __attribute__((section("sfrs")));
typedef struct {
  unsigned :3;
  unsigned SIZE:5;
  unsigned :1;
  unsigned PRI:1;
  unsigned BASE:22;
} __SBT5REG0bits_t;
extern volatile __SBT5REG0bits_t SBT5REG0bits __asm__ ("SBT5REG0") __attribute__((section("sfrs")));

extern volatile unsigned int SBT5RD0 __attribute__((section("sfrs")));
typedef struct {
  unsigned GROUP0:1;
  unsigned GROUP1:1;
  unsigned GROUP2:1;
  unsigned GROUP3:1;
} __SBT5RD0bits_t;
extern volatile __SBT5RD0bits_t SBT5RD0bits __asm__ ("SBT5RD0") __attribute__((section("sfrs")));

extern volatile unsigned int SBT5WR0 __attribute__((section("sfrs")));
typedef struct {
  unsigned GROUP0:1;
  unsigned GROUP1:1;
  unsigned GROUP2:1;
  unsigned GROUP3:1;
} __SBT5WR0bits_t;
extern volatile __SBT5WR0bits_t SBT5WR0bits __asm__ ("SBT5WR0") __attribute__((section("sfrs")));

extern volatile unsigned int SBT5REG1 __attribute__((section("sfrs")));
typedef struct {
  unsigned :3;
  unsigned SIZE:5;
  unsigned :1;
  unsigned PRI:1;
  unsigned BASE:22;
} __SBT5REG1bits_t;
extern volatile __SBT5REG1bits_t SBT5REG1bits __asm__ ("SBT5REG1") __attribute__((section("sfrs")));

extern volatile unsigned int SBT5RD1 __attribute__((section("sfrs")));
typedef struct {
  unsigned GROUP0:1;
  unsigned GROUP1:1;
  unsigned GROUP2:1;
  unsigned GROUP3:1;
} __SBT5RD1bits_t;
extern volatile __SBT5RD1bits_t SBT5RD1bits __asm__ ("SBT5RD1") __attribute__((section("sfrs")));

extern volatile unsigned int SBT5WR1 __attribute__((section("sfrs")));
typedef struct {
  unsigned GROUP0:1;
  unsigned GROUP1:1;
  unsigned GROUP2:1;
  unsigned GROUP3:1;
} __SBT5WR1bits_t;
extern volatile __SBT5WR1bits_t SBT5WR1bits __asm__ ("SBT5WR1") __attribute__((section("sfrs")));

extern volatile unsigned int SBT5REG2 __attribute__((section("sfrs")));
typedef struct {
  unsigned :3;
  unsigned SIZE:5;
  unsigned :1;
  unsigned PRI:1;
  unsigned BASE:22;
} __SBT5REG2bits_t;
extern volatile __SBT5REG2bits_t SBT5REG2bits __asm__ ("SBT5REG2") __attribute__((section("sfrs")));

extern volatile unsigned int SBT5RD2 __attribute__((section("sfrs")));
typedef struct {
  unsigned GROUP0:1;
  unsigned GROUP1:1;
  unsigned GROUP2:1;
  unsigned GROUP3:1;
} __SBT5RD2bits_t;
extern volatile __SBT5RD2bits_t SBT5RD2bits __asm__ ("SBT5RD2") __attribute__((section("sfrs")));

extern volatile unsigned int SBT5WR2 __attribute__((section("sfrs")));
typedef struct {
  unsigned GROUP0:1;
  unsigned GROUP1:1;
  unsigned GROUP2:1;
  unsigned GROUP3:1;
} __SBT5WR2bits_t;
extern volatile __SBT5WR2bits_t SBT5WR2bits __asm__ ("SBT5WR2") __attribute__((section("sfrs")));

extern volatile unsigned int SBT6ELOG1 __attribute__((section("sfrs")));
typedef struct {
  unsigned CMD:3;
  unsigned :1;
  unsigned REGION:4;
  unsigned INITID:8;
  unsigned :8;
  unsigned CODE:4;
  unsigned :3;
  unsigned MULTI:1;
} __SBT6ELOG1bits_t;
extern volatile __SBT6ELOG1bits_t SBT6ELOG1bits __asm__ ("SBT6ELOG1") __attribute__((section("sfrs")));

extern volatile unsigned int SBT6ELOG2 __attribute__((section("sfrs")));
typedef struct {
  unsigned GROUP:2;
} __SBT6ELOG2bits_t;
extern volatile __SBT6ELOG2bits_t SBT6ELOG2bits __asm__ ("SBT6ELOG2") __attribute__((section("sfrs")));

extern volatile unsigned int SBT6ECON __attribute__((section("sfrs")));
typedef struct {
  unsigned :24;
  unsigned ERRP:1;
} __SBT6ECONbits_t;
extern volatile __SBT6ECONbits_t SBT6ECONbits __asm__ ("SBT6ECON") __attribute__((section("sfrs")));

extern volatile unsigned int SBT6ECLRS __attribute__((section("sfrs")));
typedef struct {
  unsigned CLEAR:1;
} __SBT6ECLRSbits_t;
extern volatile __SBT6ECLRSbits_t SBT6ECLRSbits __asm__ ("SBT6ECLRS") __attribute__((section("sfrs")));

extern volatile unsigned int SBT6ECLRM __attribute__((section("sfrs")));
typedef struct {
  unsigned CLEAR:1;
} __SBT6ECLRMbits_t;
extern volatile __SBT6ECLRMbits_t SBT6ECLRMbits __asm__ ("SBT6ECLRM") __attribute__((section("sfrs")));

extern volatile unsigned int SBT6REG0 __attribute__((section("sfrs")));
typedef struct {
  unsigned :3;
  unsigned SIZE:5;
  unsigned :1;
  unsigned PRI:1;
  unsigned BASE:22;
} __SBT6REG0bits_t;
extern volatile __SBT6REG0bits_t SBT6REG0bits __asm__ ("SBT6REG0") __attribute__((section("sfrs")));

extern volatile unsigned int SBT6RD0 __attribute__((section("sfrs")));
typedef struct {
  unsigned GROUP0:1;
  unsigned GROUP1:1;
  unsigned GROUP2:1;
  unsigned GROUP3:1;
} __SBT6RD0bits_t;
extern volatile __SBT6RD0bits_t SBT6RD0bits __asm__ ("SBT6RD0") __attribute__((section("sfrs")));

extern volatile unsigned int SBT6WR0 __attribute__((section("sfrs")));
typedef struct {
  unsigned GROUP0:1;
  unsigned GROUP1:1;
  unsigned GROUP2:1;
  unsigned GROUP3:1;
} __SBT6WR0bits_t;
extern volatile __SBT6WR0bits_t SBT6WR0bits __asm__ ("SBT6WR0") __attribute__((section("sfrs")));

extern volatile unsigned int SBT6REG1 __attribute__((section("sfrs")));
typedef struct {
  unsigned :3;
  unsigned SIZE:5;
  unsigned :1;
  unsigned PRI:1;
  unsigned BASE:22;
} __SBT6REG1bits_t;
extern volatile __SBT6REG1bits_t SBT6REG1bits __asm__ ("SBT6REG1") __attribute__((section("sfrs")));

extern volatile unsigned int SBT6RD1 __attribute__((section("sfrs")));
typedef struct {
  unsigned GROUP0:1;
  unsigned GROUP1:1;
  unsigned GROUP2:1;
  unsigned GROUP3:1;
} __SBT6RD1bits_t;
extern volatile __SBT6RD1bits_t SBT6RD1bits __asm__ ("SBT6RD1") __attribute__((section("sfrs")));

extern volatile unsigned int SBT6WR1 __attribute__((section("sfrs")));
typedef struct {
  unsigned GROUP0:1;
  unsigned GROUP1:1;
  unsigned GROUP2:1;
  unsigned GROUP3:1;
} __SBT6WR1bits_t;
extern volatile __SBT6WR1bits_t SBT6WR1bits __asm__ ("SBT6WR1") __attribute__((section("sfrs")));

extern volatile unsigned int SBT7ELOG1 __attribute__((section("sfrs")));
typedef struct {
  unsigned CMD:3;
  unsigned :1;
  unsigned REGION:4;
  unsigned INITID:8;
  unsigned :8;
  unsigned CODE:4;
  unsigned :3;
  unsigned MULTI:1;
} __SBT7ELOG1bits_t;
extern volatile __SBT7ELOG1bits_t SBT7ELOG1bits __asm__ ("SBT7ELOG1") __attribute__((section("sfrs")));

extern volatile unsigned int SBT7ELOG2 __attribute__((section("sfrs")));
typedef struct {
  unsigned GROUP:2;
} __SBT7ELOG2bits_t;
extern volatile __SBT7ELOG2bits_t SBT7ELOG2bits __asm__ ("SBT7ELOG2") __attribute__((section("sfrs")));

extern volatile unsigned int SBT7ECON __attribute__((section("sfrs")));
typedef struct {
  unsigned :24;
  unsigned ERRP:1;
} __SBT7ECONbits_t;
extern volatile __SBT7ECONbits_t SBT7ECONbits __asm__ ("SBT7ECON") __attribute__((section("sfrs")));

extern volatile unsigned int SBT7ECLRS __attribute__((section("sfrs")));
typedef struct {
  unsigned CLEAR:1;
} __SBT7ECLRSbits_t;
extern volatile __SBT7ECLRSbits_t SBT7ECLRSbits __asm__ ("SBT7ECLRS") __attribute__((section("sfrs")));

extern volatile unsigned int SBT7ECLRM __attribute__((section("sfrs")));
typedef struct {
  unsigned CLEAR:1;
} __SBT7ECLRMbits_t;
extern volatile __SBT7ECLRMbits_t SBT7ECLRMbits __asm__ ("SBT7ECLRM") __attribute__((section("sfrs")));

extern volatile unsigned int SBT7REG0 __attribute__((section("sfrs")));
typedef struct {
  unsigned :3;
  unsigned SIZE:5;
  unsigned :1;
  unsigned PRI:1;
  unsigned BASE:22;
} __SBT7REG0bits_t;
extern volatile __SBT7REG0bits_t SBT7REG0bits __asm__ ("SBT7REG0") __attribute__((section("sfrs")));

extern volatile unsigned int SBT7RD0 __attribute__((section("sfrs")));
typedef struct {
  unsigned GROUP0:1;
  unsigned GROUP1:1;
  unsigned GROUP2:1;
  unsigned GROUP3:1;
} __SBT7RD0bits_t;
extern volatile __SBT7RD0bits_t SBT7RD0bits __asm__ ("SBT7RD0") __attribute__((section("sfrs")));

extern volatile unsigned int SBT7WR0 __attribute__((section("sfrs")));
typedef struct {
  unsigned GROUP0:1;
  unsigned GROUP1:1;
  unsigned GROUP2:1;
  unsigned GROUP3:1;
} __SBT7WR0bits_t;
extern volatile __SBT7WR0bits_t SBT7WR0bits __asm__ ("SBT7WR0") __attribute__((section("sfrs")));

extern volatile unsigned int SBT7REG1 __attribute__((section("sfrs")));
typedef struct {
  unsigned :3;
  unsigned SIZE:5;
  unsigned :1;
  unsigned PRI:1;
  unsigned BASE:22;
} __SBT7REG1bits_t;
extern volatile __SBT7REG1bits_t SBT7REG1bits __asm__ ("SBT7REG1") __attribute__((section("sfrs")));

extern volatile unsigned int SBT7RD1 __attribute__((section("sfrs")));
typedef struct {
  unsigned GROUP0:1;
  unsigned GROUP1:1;
  unsigned GROUP2:1;
  unsigned GROUP3:1;
} __SBT7RD1bits_t;
extern volatile __SBT7RD1bits_t SBT7RD1bits __asm__ ("SBT7RD1") __attribute__((section("sfrs")));

extern volatile unsigned int SBT7WR1 __attribute__((section("sfrs")));
typedef struct {
  unsigned GROUP0:1;
  unsigned GROUP1:1;
  unsigned GROUP2:1;
  unsigned GROUP3:1;
} __SBT7WR1bits_t;
extern volatile __SBT7WR1bits_t SBT7WR1bits __asm__ ("SBT7WR1") __attribute__((section("sfrs")));

extern volatile unsigned int SBT8ELOG1 __attribute__((section("sfrs")));
typedef struct {
  unsigned CMD:3;
  unsigned :1;
  unsigned REGION:4;
  unsigned INITID:8;
  unsigned :8;
  unsigned CODE:4;
  unsigned :3;
  unsigned MULTI:1;
} __SBT8ELOG1bits_t;
extern volatile __SBT8ELOG1bits_t SBT8ELOG1bits __asm__ ("SBT8ELOG1") __attribute__((section("sfrs")));

extern volatile unsigned int SBT8ELOG2 __attribute__((section("sfrs")));
typedef struct {
  unsigned GROUP:2;
} __SBT8ELOG2bits_t;
extern volatile __SBT8ELOG2bits_t SBT8ELOG2bits __asm__ ("SBT8ELOG2") __attribute__((section("sfrs")));

extern volatile unsigned int SBT8ECON __attribute__((section("sfrs")));
typedef struct {
  unsigned :24;
  unsigned ERRP:1;
} __SBT8ECONbits_t;
extern volatile __SBT8ECONbits_t SBT8ECONbits __asm__ ("SBT8ECON") __attribute__((section("sfrs")));

extern volatile unsigned int SBT8ECLRS __attribute__((section("sfrs")));
typedef struct {
  unsigned CLEAR:1;
} __SBT8ECLRSbits_t;
extern volatile __SBT8ECLRSbits_t SBT8ECLRSbits __asm__ ("SBT8ECLRS") __attribute__((section("sfrs")));

extern volatile unsigned int SBT8ECLRM __attribute__((section("sfrs")));
typedef struct {
  unsigned CLEAR:1;
} __SBT8ECLRMbits_t;
extern volatile __SBT8ECLRMbits_t SBT8ECLRMbits __asm__ ("SBT8ECLRM") __attribute__((section("sfrs")));

extern volatile unsigned int SBT8REG0 __attribute__((section("sfrs")));
typedef struct {
  unsigned :3;
  unsigned SIZE:5;
  unsigned :1;
  unsigned PRI:1;
  unsigned BASE:22;
} __SBT8REG0bits_t;
extern volatile __SBT8REG0bits_t SBT8REG0bits __asm__ ("SBT8REG0") __attribute__((section("sfrs")));

extern volatile unsigned int SBT8RD0 __attribute__((section("sfrs")));
typedef struct {
  unsigned GROUP0:1;
  unsigned GROUP1:1;
  unsigned GROUP2:1;
  unsigned GROUP3:1;
} __SBT8RD0bits_t;
extern volatile __SBT8RD0bits_t SBT8RD0bits __asm__ ("SBT8RD0") __attribute__((section("sfrs")));

extern volatile unsigned int SBT8WR0 __attribute__((section("sfrs")));
typedef struct {
  unsigned GROUP0:1;
  unsigned GROUP1:1;
  unsigned GROUP2:1;
  unsigned GROUP3:1;
} __SBT8WR0bits_t;
extern volatile __SBT8WR0bits_t SBT8WR0bits __asm__ ("SBT8WR0") __attribute__((section("sfrs")));

extern volatile unsigned int SBT8REG1 __attribute__((section("sfrs")));
typedef struct {
  unsigned :3;
  unsigned SIZE:5;
  unsigned :1;
  unsigned PRI:1;
  unsigned BASE:22;
} __SBT8REG1bits_t;
extern volatile __SBT8REG1bits_t SBT8REG1bits __asm__ ("SBT8REG1") __attribute__((section("sfrs")));

extern volatile unsigned int SBT8RD1 __attribute__((section("sfrs")));
typedef struct {
  unsigned GROUP0:1;
  unsigned GROUP1:1;
  unsigned GROUP2:1;
  unsigned GROUP3:1;
} __SBT8RD1bits_t;
extern volatile __SBT8RD1bits_t SBT8RD1bits __asm__ ("SBT8RD1") __attribute__((section("sfrs")));

extern volatile unsigned int SBT8WR1 __attribute__((section("sfrs")));
typedef struct {
  unsigned GROUP0:1;
  unsigned GROUP1:1;
  unsigned GROUP2:1;
  unsigned GROUP3:1;
} __SBT8WR1bits_t;
extern volatile __SBT8WR1bits_t SBT8WR1bits __asm__ ("SBT8WR1") __attribute__((section("sfrs")));

extern volatile unsigned int SBT9ELOG1 __attribute__((section("sfrs")));
typedef struct {
  unsigned CMD:3;
  unsigned :1;
  unsigned REGION:4;
  unsigned INITID:8;
  unsigned :8;
  unsigned CODE:4;
  unsigned :3;
  unsigned MULTI:1;
} __SBT9ELOG1bits_t;
extern volatile __SBT9ELOG1bits_t SBT9ELOG1bits __asm__ ("SBT9ELOG1") __attribute__((section("sfrs")));

extern volatile unsigned int SBT9ELOG2 __attribute__((section("sfrs")));
typedef struct {
  unsigned GROUP:2;
} __SBT9ELOG2bits_t;
extern volatile __SBT9ELOG2bits_t SBT9ELOG2bits __asm__ ("SBT9ELOG2") __attribute__((section("sfrs")));

extern volatile unsigned int SBT9ECON __attribute__((section("sfrs")));
typedef struct {
  unsigned :24;
  unsigned ERRP:1;
} __SBT9ECONbits_t;
extern volatile __SBT9ECONbits_t SBT9ECONbits __asm__ ("SBT9ECON") __attribute__((section("sfrs")));

extern volatile unsigned int SBT9ECLRS __attribute__((section("sfrs")));
typedef struct {
  unsigned CLEAR:1;
} __SBT9ECLRSbits_t;
extern volatile __SBT9ECLRSbits_t SBT9ECLRSbits __asm__ ("SBT9ECLRS") __attribute__((section("sfrs")));

extern volatile unsigned int SBT9ECLRM __attribute__((section("sfrs")));
typedef struct {
  unsigned CLEAR:1;
} __SBT9ECLRMbits_t;
extern volatile __SBT9ECLRMbits_t SBT9ECLRMbits __asm__ ("SBT9ECLRM") __attribute__((section("sfrs")));

extern volatile unsigned int SBT9REG0 __attribute__((section("sfrs")));
typedef struct {
  unsigned :3;
  unsigned SIZE:5;
  unsigned :1;
  unsigned PRI:1;
  unsigned BASE:22;
} __SBT9REG0bits_t;
extern volatile __SBT9REG0bits_t SBT9REG0bits __asm__ ("SBT9REG0") __attribute__((section("sfrs")));

extern volatile unsigned int SBT9RD0 __attribute__((section("sfrs")));
typedef struct {
  unsigned GROUP0:1;
  unsigned GROUP1:1;
  unsigned GROUP2:1;
  unsigned GROUP3:1;
} __SBT9RD0bits_t;
extern volatile __SBT9RD0bits_t SBT9RD0bits __asm__ ("SBT9RD0") __attribute__((section("sfrs")));

extern volatile unsigned int SBT9WR0 __attribute__((section("sfrs")));
typedef struct {
  unsigned GROUP0:1;
  unsigned GROUP1:1;
  unsigned GROUP2:1;
  unsigned GROUP3:1;
} __SBT9WR0bits_t;
extern volatile __SBT9WR0bits_t SBT9WR0bits __asm__ ("SBT9WR0") __attribute__((section("sfrs")));

extern volatile unsigned int SBT9REG1 __attribute__((section("sfrs")));
typedef struct {
  unsigned :3;
  unsigned SIZE:5;
  unsigned :1;
  unsigned PRI:1;
  unsigned BASE:22;
} __SBT9REG1bits_t;
extern volatile __SBT9REG1bits_t SBT9REG1bits __asm__ ("SBT9REG1") __attribute__((section("sfrs")));

extern volatile unsigned int SBT9RD1 __attribute__((section("sfrs")));
typedef struct {
  unsigned GROUP0:1;
  unsigned GROUP1:1;
  unsigned GROUP2:1;
  unsigned GROUP3:1;
} __SBT9RD1bits_t;
extern volatile __SBT9RD1bits_t SBT9RD1bits __asm__ ("SBT9RD1") __attribute__((section("sfrs")));

extern volatile unsigned int SBT9WR1 __attribute__((section("sfrs")));
typedef struct {
  unsigned GROUP0:1;
  unsigned GROUP1:1;
  unsigned GROUP2:1;
  unsigned GROUP3:1;
} __SBT9WR1bits_t;
extern volatile __SBT9WR1bits_t SBT9WR1bits __asm__ ("SBT9WR1") __attribute__((section("sfrs")));

extern volatile unsigned int SBT10ELOG1 __attribute__((section("sfrs")));
typedef struct {
  unsigned CMD:3;
  unsigned :1;
  unsigned REGION:4;
  unsigned INITID:8;
  unsigned :8;
  unsigned CODE:4;
  unsigned :3;
  unsigned MULTI:1;
} __SBT10ELOG1bits_t;
extern volatile __SBT10ELOG1bits_t SBT10ELOG1bits __asm__ ("SBT10ELOG1") __attribute__((section("sfrs")));

extern volatile unsigned int SBT10ELOG2 __attribute__((section("sfrs")));
typedef struct {
  unsigned GROUP:2;
} __SBT10ELOG2bits_t;
extern volatile __SBT10ELOG2bits_t SBT10ELOG2bits __asm__ ("SBT10ELOG2") __attribute__((section("sfrs")));

extern volatile unsigned int SBT10ECON __attribute__((section("sfrs")));
typedef struct {
  unsigned :24;
  unsigned ERRP:1;
} __SBT10ECONbits_t;
extern volatile __SBT10ECONbits_t SBT10ECONbits __asm__ ("SBT10ECON") __attribute__((section("sfrs")));

extern volatile unsigned int SBT10ECLRS __attribute__((section("sfrs")));
typedef struct {
  unsigned CLEAR:1;
} __SBT10ECLRSbits_t;
extern volatile __SBT10ECLRSbits_t SBT10ECLRSbits __asm__ ("SBT10ECLRS") __attribute__((section("sfrs")));

extern volatile unsigned int SBT10ECLRM __attribute__((section("sfrs")));
typedef struct {
  unsigned CLEAR:1;
} __SBT10ECLRMbits_t;
extern volatile __SBT10ECLRMbits_t SBT10ECLRMbits __asm__ ("SBT10ECLRM") __attribute__((section("sfrs")));

extern volatile unsigned int SBT10REG0 __attribute__((section("sfrs")));
typedef struct {
  unsigned :3;
  unsigned SIZE:5;
  unsigned :1;
  unsigned PRI:1;
  unsigned BASE:22;
} __SBT10REG0bits_t;
extern volatile __SBT10REG0bits_t SBT10REG0bits __asm__ ("SBT10REG0") __attribute__((section("sfrs")));

extern volatile unsigned int SBT10RD0 __attribute__((section("sfrs")));
typedef struct {
  unsigned GROUP0:1;
  unsigned GROUP1:1;
  unsigned GROUP2:1;
  unsigned GROUP3:1;
} __SBT10RD0bits_t;
extern volatile __SBT10RD0bits_t SBT10RD0bits __asm__ ("SBT10RD0") __attribute__((section("sfrs")));

extern volatile unsigned int SBT10WR0 __attribute__((section("sfrs")));
typedef struct {
  unsigned GROUP0:1;
  unsigned GROUP1:1;
  unsigned GROUP2:1;
  unsigned GROUP3:1;
} __SBT10WR0bits_t;
extern volatile __SBT10WR0bits_t SBT10WR0bits __asm__ ("SBT10WR0") __attribute__((section("sfrs")));

extern volatile unsigned int SBT11ELOG1 __attribute__((section("sfrs")));
typedef struct {
  unsigned CMD:3;
  unsigned :1;
  unsigned REGION:4;
  unsigned INITID:8;
  unsigned :8;
  unsigned CODE:4;
  unsigned :3;
  unsigned MULTI:1;
} __SBT11ELOG1bits_t;
extern volatile __SBT11ELOG1bits_t SBT11ELOG1bits __asm__ ("SBT11ELOG1") __attribute__((section("sfrs")));

extern volatile unsigned int SBT11ELOG2 __attribute__((section("sfrs")));
typedef struct {
  unsigned GROUP:2;
} __SBT11ELOG2bits_t;
extern volatile __SBT11ELOG2bits_t SBT11ELOG2bits __asm__ ("SBT11ELOG2") __attribute__((section("sfrs")));

extern volatile unsigned int SBT11ECON __attribute__((section("sfrs")));
typedef struct {
  unsigned :24;
  unsigned ERRP:1;
} __SBT11ECONbits_t;
extern volatile __SBT11ECONbits_t SBT11ECONbits __asm__ ("SBT11ECON") __attribute__((section("sfrs")));

extern volatile unsigned int SBT11ECLRS __attribute__((section("sfrs")));
typedef struct {
  unsigned CLEAR:1;
} __SBT11ECLRSbits_t;
extern volatile __SBT11ECLRSbits_t SBT11ECLRSbits __asm__ ("SBT11ECLRS") __attribute__((section("sfrs")));

extern volatile unsigned int SBT11ECLRM __attribute__((section("sfrs")));
typedef struct {
  unsigned CLEAR:1;
} __SBT11ECLRMbits_t;
extern volatile __SBT11ECLRMbits_t SBT11ECLRMbits __asm__ ("SBT11ECLRM") __attribute__((section("sfrs")));

extern volatile unsigned int SBT11REG0 __attribute__((section("sfrs")));
typedef struct {
  unsigned :3;
  unsigned SIZE:5;
  unsigned :1;
  unsigned PRI:1;
  unsigned BASE:22;
} __SBT11REG0bits_t;
extern volatile __SBT11REG0bits_t SBT11REG0bits __asm__ ("SBT11REG0") __attribute__((section("sfrs")));

extern volatile unsigned int SBT11RD0 __attribute__((section("sfrs")));
typedef struct {
  unsigned GROUP0:1;
  unsigned GROUP1:1;
  unsigned GROUP2:1;
  unsigned GROUP3:1;
} __SBT11RD0bits_t;
extern volatile __SBT11RD0bits_t SBT11RD0bits __asm__ ("SBT11RD0") __attribute__((section("sfrs")));

extern volatile unsigned int SBT11WR0 __attribute__((section("sfrs")));
typedef struct {
  unsigned GROUP0:1;
  unsigned GROUP1:1;
  unsigned GROUP2:1;
  unsigned GROUP3:1;
} __SBT11WR0bits_t;
extern volatile __SBT11WR0bits_t SBT11WR0bits __asm__ ("SBT11WR0") __attribute__((section("sfrs")));

extern volatile unsigned int SBT11REG1 __attribute__((section("sfrs")));
typedef struct {
  unsigned :3;
  unsigned SIZE:5;
  unsigned :1;
  unsigned PRI:1;
  unsigned BASE:22;
} __SBT11REG1bits_t;
extern volatile __SBT11REG1bits_t SBT11REG1bits __asm__ ("SBT11REG1") __attribute__((section("sfrs")));

extern volatile unsigned int SBT11RD1 __attribute__((section("sfrs")));
typedef struct {
  unsigned GROUP0:1;
  unsigned GROUP1:1;
  unsigned GROUP2:1;
  unsigned GROUP3:1;
} __SBT11RD1bits_t;
extern volatile __SBT11RD1bits_t SBT11RD1bits __asm__ ("SBT11RD1") __attribute__((section("sfrs")));

extern volatile unsigned int SBT11WR1 __attribute__((section("sfrs")));
typedef struct {
  unsigned GROUP0:1;
  unsigned GROUP1:1;
  unsigned GROUP2:1;
  unsigned GROUP3:1;
} __SBT11WR1bits_t;
extern volatile __SBT11WR1bits_t SBT11WR1bits __asm__ ("SBT11WR1") __attribute__((section("sfrs")));

extern volatile unsigned int SBT12ELOG1 __attribute__((section("sfrs")));
typedef struct {
  unsigned CMD:3;
  unsigned :1;
  unsigned REGION:4;
  unsigned INITID:8;
  unsigned :8;
  unsigned CODE:4;
  unsigned :3;
  unsigned MULTI:1;
} __SBT12ELOG1bits_t;
extern volatile __SBT12ELOG1bits_t SBT12ELOG1bits __asm__ ("SBT12ELOG1") __attribute__((section("sfrs")));

extern volatile unsigned int SBT12ELOG2 __attribute__((section("sfrs")));
typedef struct {
  unsigned GROUP:2;
} __SBT12ELOG2bits_t;
extern volatile __SBT12ELOG2bits_t SBT12ELOG2bits __asm__ ("SBT12ELOG2") __attribute__((section("sfrs")));

extern volatile unsigned int SBT12ECON __attribute__((section("sfrs")));
typedef struct {
  unsigned :24;
  unsigned ERRP:1;
} __SBT12ECONbits_t;
extern volatile __SBT12ECONbits_t SBT12ECONbits __asm__ ("SBT12ECON") __attribute__((section("sfrs")));

extern volatile unsigned int SBT12ECLRS __attribute__((section("sfrs")));
typedef struct {
  unsigned CLEAR:1;
} __SBT12ECLRSbits_t;
extern volatile __SBT12ECLRSbits_t SBT12ECLRSbits __asm__ ("SBT12ECLRS") __attribute__((section("sfrs")));

extern volatile unsigned int SBT12ECLRM __attribute__((section("sfrs")));
typedef struct {
  unsigned CLEAR:1;
} __SBT12ECLRMbits_t;
extern volatile __SBT12ECLRMbits_t SBT12ECLRMbits __asm__ ("SBT12ECLRM") __attribute__((section("sfrs")));

extern volatile unsigned int SBT12REG0 __attribute__((section("sfrs")));
typedef struct {
  unsigned :3;
  unsigned SIZE:5;
  unsigned :1;
  unsigned PRI:1;
  unsigned BASE:22;
} __SBT12REG0bits_t;
extern volatile __SBT12REG0bits_t SBT12REG0bits __asm__ ("SBT12REG0") __attribute__((section("sfrs")));

extern volatile unsigned int SBT12RD0 __attribute__((section("sfrs")));
typedef struct {
  unsigned GROUP0:1;
  unsigned GROUP1:1;
  unsigned GROUP2:1;
  unsigned GROUP3:1;
} __SBT12RD0bits_t;
extern volatile __SBT12RD0bits_t SBT12RD0bits __asm__ ("SBT12RD0") __attribute__((section("sfrs")));

extern volatile unsigned int SBT12WR0 __attribute__((section("sfrs")));
typedef struct {
  unsigned GROUP0:1;
  unsigned GROUP1:1;
  unsigned GROUP2:1;
  unsigned GROUP3:1;
} __SBT12WR0bits_t;
extern volatile __SBT12WR0bits_t SBT12WR0bits __asm__ ("SBT12WR0") __attribute__((section("sfrs")));

extern volatile unsigned int SBT13ELOG1 __attribute__((section("sfrs")));
typedef struct {
  unsigned CMD:3;
  unsigned :1;
  unsigned REGION:4;
  unsigned INITID:8;
  unsigned :8;
  unsigned CODE:4;
  unsigned :3;
  unsigned MULTI:1;
} __SBT13ELOG1bits_t;
extern volatile __SBT13ELOG1bits_t SBT13ELOG1bits __asm__ ("SBT13ELOG1") __attribute__((section("sfrs")));

extern volatile unsigned int SBT13ELOG2 __attribute__((section("sfrs")));
typedef struct {
  unsigned GROUP:2;
} __SBT13ELOG2bits_t;
extern volatile __SBT13ELOG2bits_t SBT13ELOG2bits __asm__ ("SBT13ELOG2") __attribute__((section("sfrs")));

extern volatile unsigned int SBT13ECON __attribute__((section("sfrs")));
typedef struct {
  unsigned :24;
  unsigned ERRP:1;
} __SBT13ECONbits_t;
extern volatile __SBT13ECONbits_t SBT13ECONbits __asm__ ("SBT13ECON") __attribute__((section("sfrs")));

extern volatile unsigned int SBT13ECLRS __attribute__((section("sfrs")));
typedef struct {
  unsigned CLEAR:1;
} __SBT13ECLRSbits_t;
extern volatile __SBT13ECLRSbits_t SBT13ECLRSbits __asm__ ("SBT13ECLRS") __attribute__((section("sfrs")));

extern volatile unsigned int SBT13ECLRM __attribute__((section("sfrs")));
typedef struct {
  unsigned CLEAR:1;
} __SBT13ECLRMbits_t;
extern volatile __SBT13ECLRMbits_t SBT13ECLRMbits __asm__ ("SBT13ECLRM") __attribute__((section("sfrs")));

extern volatile unsigned int SBT13REG0 __attribute__((section("sfrs")));
typedef struct {
  unsigned :3;
  unsigned SIZE:5;
  unsigned :1;
  unsigned PRI:1;
  unsigned BASE:22;
} __SBT13REG0bits_t;
extern volatile __SBT13REG0bits_t SBT13REG0bits __asm__ ("SBT13REG0") __attribute__((section("sfrs")));

extern volatile unsigned int SBT13RD0 __attribute__((section("sfrs")));
typedef struct {
  unsigned GROUP0:1;
  unsigned GROUP1:1;
  unsigned GROUP2:1;
  unsigned GROUP3:1;
} __SBT13RD0bits_t;
extern volatile __SBT13RD0bits_t SBT13RD0bits __asm__ ("SBT13RD0") __attribute__((section("sfrs")));

extern volatile unsigned int SBT13WR0 __attribute__((section("sfrs")));
typedef struct {
  unsigned GROUP0:1;
  unsigned GROUP1:1;
  unsigned GROUP2:1;
  unsigned GROUP3:1;
} __SBT13WR0bits_t;
extern volatile __SBT13WR0bits_t SBT13WR0bits __asm__ ("SBT13WR0") __attribute__((section("sfrs")));

extern volatile unsigned int DEVCFG3 __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned USERID:16;
    unsigned :8;
    unsigned FMIIEN:1;
    unsigned FETHIO:1;
    unsigned :1;
    unsigned PGL1WAY:1;
    unsigned PMDL1WAY:1;
    unsigned IOL1WAY:1;
    unsigned FUSBIDIO:1;
  };
  struct {
    unsigned w:32;
  };
} __DEVCFG3bits_t;
extern volatile __DEVCFG3bits_t DEVCFG3bits __asm__ ("DEVCFG3") __attribute__((section("sfrs")));

extern volatile unsigned int DEVCFG2 __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned FPLLIDIV:3;
    unsigned :1;
    unsigned FPLLRNG:3;
    unsigned FPLLICLK:1;
    unsigned FPLLMULT:7;
    unsigned :1;
    unsigned FPLLODIV:3;
    unsigned :11;
    unsigned UPLLFSEL:1;
  };
  struct {
    unsigned w:32;
  };
} __DEVCFG2bits_t;
extern volatile __DEVCFG2bits_t DEVCFG2bits __asm__ ("DEVCFG2") __attribute__((section("sfrs")));

extern volatile unsigned int DEVCFG1 __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned FNOSC:3;
    unsigned DMTINTV:3;
    unsigned FSOSCEN:1;
    unsigned IESO:1;
    unsigned POSCMOD:2;
    unsigned OSCIOFNC:1;
    unsigned :3;
    unsigned FCKSM:2;
    unsigned WDTPS:5;
    unsigned WDTSPGM:1;
    unsigned WINDIS:1;
    unsigned FWDTEN:1;
    unsigned FWDTWINSZ:2;
    unsigned DMTCNT:5;
    unsigned FDMTEN:1;
  };
  struct {
    unsigned w:32;
  };
} __DEVCFG1bits_t;
extern volatile __DEVCFG1bits_t DEVCFG1bits __asm__ ("DEVCFG1") __attribute__((section("sfrs")));

extern volatile unsigned int DEVCFG0 __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned DEBUG:2;
    unsigned JTAGEN:1;
    unsigned ICESEL:2;
    unsigned TRCEN:1;
    unsigned BOOTISA:1;
    unsigned :1;
    unsigned FECCCON:2;
    unsigned FSLEEP:1;
    unsigned :1;
    unsigned DBGPER:3;
    unsigned SMCLR:1;
    unsigned SOSCGAIN:2;
    unsigned SOSCBOOST:1;
    unsigned POSCGAIN:2;
    unsigned POSCBOOST:1;
    unsigned :8;
    unsigned EJTAGBEN:1;
  };
  struct {
    unsigned FDEBUG:2;
  };
  struct {
    unsigned w:32;
  };
} __DEVCFG0bits_t;
extern volatile __DEVCFG0bits_t DEVCFG0bits __asm__ ("DEVCFG0") __attribute__((section("sfrs")));

extern volatile unsigned int DEVCP3 __attribute__((section("sfrs")));

extern volatile unsigned int DEVCP2 __attribute__((section("sfrs")));

extern volatile unsigned int DEVCP1 __attribute__((section("sfrs")));

extern volatile unsigned int DEVCP0 __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned :28;
    unsigned CP:1;
  };
  struct {
    unsigned w:32;
  };
} __DEVCP0bits_t;
extern volatile __DEVCP0bits_t DEVCP0bits __asm__ ("DEVCP0") __attribute__((section("sfrs")));

extern volatile unsigned int DEVSIGN3 __attribute__((section("sfrs")));

extern volatile unsigned int DEVSIGN2 __attribute__((section("sfrs")));

extern volatile unsigned int DEVSIGN1 __attribute__((section("sfrs")));

extern volatile unsigned int DEVSIGN0 __attribute__((section("sfrs")));

extern volatile unsigned int SEQ3 __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned TSEQ:16;
    unsigned CSEQ:16;
  };
  struct {
    unsigned w:32;
  };
} __SEQ3bits_t;
extern volatile __SEQ3bits_t SEQ3bits __asm__ ("SEQ3") __attribute__((section("sfrs")));

extern volatile unsigned int SEQ2 __attribute__((section("sfrs")));

extern volatile unsigned int SEQ1 __attribute__((section("sfrs")));

extern volatile unsigned int SEQ0 __attribute__((section("sfrs")));

extern volatile unsigned int DEVADC0 __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned ADCFG:32;
  };
  struct {
    unsigned w:32;
  };
} __DEVADC0bits_t;
extern volatile __DEVADC0bits_t DEVADC0bits __asm__ ("DEVADC0") __attribute__((section("sfrs")));

extern volatile unsigned int DEVADC1 __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned ADCFG:32;
  };
  struct {
    unsigned w:32;
  };
} __DEVADC1bits_t;
extern volatile __DEVADC1bits_t DEVADC1bits __asm__ ("DEVADC1") __attribute__((section("sfrs")));

extern volatile unsigned int DEVADC2 __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned ADCFG:32;
  };
  struct {
    unsigned w:32;
  };
} __DEVADC2bits_t;
extern volatile __DEVADC2bits_t DEVADC2bits __asm__ ("DEVADC2") __attribute__((section("sfrs")));

extern volatile unsigned int DEVADC3 __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned ADCFG:32;
  };
  struct {
    unsigned w:32;
  };
} __DEVADC3bits_t;
extern volatile __DEVADC3bits_t DEVADC3bits __asm__ ("DEVADC3") __attribute__((section("sfrs")));

extern volatile unsigned int DEVADC4 __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned ADCFG:32;
  };
  struct {
    unsigned w:32;
  };
} __DEVADC4bits_t;
extern volatile __DEVADC4bits_t DEVADC4bits __asm__ ("DEVADC4") __attribute__((section("sfrs")));

extern volatile unsigned int DEVADC7 __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned ADCFG:32;
  };
  struct {
    unsigned w:32;
  };
} __DEVADC7bits_t;
extern volatile __DEVADC7bits_t DEVADC7bits __asm__ ("DEVADC7") __attribute__((section("sfrs")));

extern volatile unsigned int DEVSN0 __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned SN:32;
  };
  struct {
    unsigned w:32;
  };
} __DEVSN0bits_t;
extern volatile __DEVSN0bits_t DEVSN0bits __asm__ ("DEVSN0") __attribute__((section("sfrs")));

extern volatile unsigned int DEVSN1 __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned SN:32;
  };
  struct {
    unsigned w:32;
  };
} __DEVSN1bits_t;
extern volatile __DEVSN1bits_t DEVSN1bits __asm__ ("DEVSN1") __attribute__((section("sfrs")));

extern volatile unsigned int ADEVCFG3 __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned USERID:16;
    unsigned :8;
    unsigned FMIIEN:1;
    unsigned FETHIO:1;
    unsigned :1;
    unsigned PGL1WAY:1;
    unsigned PMDL1WAY:1;
    unsigned IOL1WAY:1;
    unsigned FUSBIDIO:1;
  };
  struct {
    unsigned w:32;
  };
} __ADEVCFG3bits_t;
extern volatile __ADEVCFG3bits_t ADEVCFG3bits __asm__ ("ADEVCFG3") __attribute__((section("sfrs")));

extern volatile unsigned int ADEVCFG2 __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned FPLLIDIV:3;
    unsigned :1;
    unsigned FPLLRNG:3;
    unsigned FPLLICLK:1;
    unsigned FPLLMULT:7;
    unsigned :1;
    unsigned FPLLODIV:3;
    unsigned :11;
    unsigned UPLLFSEL:1;
  };
  struct {
    unsigned w:32;
  };
} __ADEVCFG2bits_t;
extern volatile __ADEVCFG2bits_t ADEVCFG2bits __asm__ ("ADEVCFG2") __attribute__((section("sfrs")));

extern volatile unsigned int ADEVCFG1 __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned FNOSC:3;
    unsigned DMTINTV:3;
    unsigned FSOSCEN:1;
    unsigned IESO:1;
    unsigned POSCMOD:2;
    unsigned OSCIOFNC:1;
    unsigned :3;
    unsigned FCKSM:2;
    unsigned WDTPS:5;
    unsigned WDTSPGM:1;
    unsigned WINDIS:1;
    unsigned FWDTEN:1;
    unsigned FWDTWINSZ:2;
    unsigned DMTCNT:5;
    unsigned FDMTEN:1;
  };
  struct {
    unsigned w:32;
  };
} __ADEVCFG1bits_t;
extern volatile __ADEVCFG1bits_t ADEVCFG1bits __asm__ ("ADEVCFG1") __attribute__((section("sfrs")));

extern volatile unsigned int ADEVCFG0 __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned DEBUG:2;
    unsigned JTAGEN:1;
    unsigned ICESEL:2;
    unsigned TRCEN:1;
    unsigned BOOTISA:1;
    unsigned :1;
    unsigned FECCCON:2;
    unsigned FSLEEP:1;
    unsigned :1;
    unsigned DBGPER:3;
    unsigned SMCLR:1;
    unsigned SOSCGAIN:2;
    unsigned SOSCBOOST:1;
    unsigned POSCGAIN:2;
    unsigned POSCBOOST:1;
    unsigned :8;
    unsigned EJTAGBEN:1;
  };
  struct {
    unsigned FDEBUG:2;
  };
  struct {
    unsigned w:32;
  };
} __ADEVCFG0bits_t;
extern volatile __ADEVCFG0bits_t ADEVCFG0bits __asm__ ("ADEVCFG0") __attribute__((section("sfrs")));

extern volatile unsigned int ADEVCP3 __attribute__((section("sfrs")));

extern volatile unsigned int ADEVCP2 __attribute__((section("sfrs")));

extern volatile unsigned int ADEVCP1 __attribute__((section("sfrs")));

extern volatile unsigned int ADEVCP0 __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned :28;
    unsigned CP:1;
  };
  struct {
    unsigned w:32;
  };
} __ADEVCP0bits_t;
extern volatile __ADEVCP0bits_t ADEVCP0bits __asm__ ("ADEVCP0") __attribute__((section("sfrs")));

extern volatile unsigned int ADEVSIGN3 __attribute__((section("sfrs")));

extern volatile unsigned int ADEVSIGN2 __attribute__((section("sfrs")));

extern volatile unsigned int ADEVSIGN1 __attribute__((section("sfrs")));

extern volatile unsigned int ADEVSIGN0 __attribute__((section("sfrs")));

extern volatile unsigned int ASEQ3 __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned TSEQ:16;
    unsigned CSEQ:16;
  };
  struct {
    unsigned w:32;
  };
} __ASEQ3bits_t;
extern volatile __ASEQ3bits_t ASEQ3bits __asm__ ("ASEQ3") __attribute__((section("sfrs")));

extern volatile unsigned int ASEQ2 __attribute__((section("sfrs")));

extern volatile unsigned int ASEQ1 __attribute__((section("sfrs")));

extern volatile unsigned int ASEQ0 __attribute__((section("sfrs")));

extern volatile unsigned int AUBADEVCFG3 __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned USERID:16;
    unsigned :8;
    unsigned FMIIEN:1;
    unsigned FETHIO:1;
    unsigned :1;
    unsigned PGL1WAY:1;
    unsigned PMDL1WAY:1;
    unsigned IOL1WAY:1;
    unsigned FUSBIDIO:1;
  };
  struct {
    unsigned w:32;
  };
} __AUBADEVCFG3bits_t;
extern volatile __AUBADEVCFG3bits_t AUBADEVCFG3bits __asm__ ("AUBADEVCFG3") __attribute__((section("sfrs")));

extern volatile unsigned int AUBADEVCFG2 __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned FPLLIDIV:3;
    unsigned :1;
    unsigned FPLLRNG:3;
    unsigned FPLLICLK:1;
    unsigned FPLLMULT:7;
    unsigned :1;
    unsigned FPLLODIV:3;
    unsigned :11;
    unsigned UPLLFSEL:1;
  };
  struct {
    unsigned w:32;
  };
} __AUBADEVCFG2bits_t;
extern volatile __AUBADEVCFG2bits_t AUBADEVCFG2bits __asm__ ("AUBADEVCFG2") __attribute__((section("sfrs")));

extern volatile unsigned int AUBADEVCFG1 __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned FNOSC:3;
    unsigned DMTINTV:3;
    unsigned FSOSCEN:1;
    unsigned IESO:1;
    unsigned POSCMOD:2;
    unsigned OSCIOFNC:1;
    unsigned :3;
    unsigned FCKSM:2;
    unsigned WDTPS:5;
    unsigned WDTSPGM:1;
    unsigned WINDIS:1;
    unsigned FWDTEN:1;
    unsigned FWDTWINSZ:2;
    unsigned DMTCNT:5;
    unsigned FDMTEN:1;
  };
  struct {
    unsigned w:32;
  };
} __AUBADEVCFG1bits_t;
extern volatile __AUBADEVCFG1bits_t AUBADEVCFG1bits __asm__ ("AUBADEVCFG1") __attribute__((section("sfrs")));

extern volatile unsigned int AUBADEVCFG0 __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned DEBUG:2;
    unsigned JTAGEN:1;
    unsigned ICESEL:2;
    unsigned TRCEN:1;
    unsigned BOOTISA:1;
    unsigned :1;
    unsigned FECCCON:2;
    unsigned FSLEEP:1;
    unsigned :1;
    unsigned DBGPER:3;
    unsigned SMCLR:1;
    unsigned SOSCGAIN:2;
    unsigned SOSCBOOST:1;
    unsigned POSCGAIN:2;
    unsigned POSCBOOST:1;
    unsigned :8;
    unsigned EJTAGBEN:1;
  };
  struct {
    unsigned FDEBUG:2;
  };
  struct {
    unsigned w:32;
  };
} __AUBADEVCFG0bits_t;
extern volatile __AUBADEVCFG0bits_t AUBADEVCFG0bits __asm__ ("AUBADEVCFG0") __attribute__((section("sfrs")));

extern volatile unsigned int AUBADEVCP3 __attribute__((section("sfrs")));

extern volatile unsigned int AUBADEVCP2 __attribute__((section("sfrs")));

extern volatile unsigned int AUBADEVCP1 __attribute__((section("sfrs")));

extern volatile unsigned int AUBADEVCP0 __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned :28;
    unsigned CP:1;
  };
  struct {
    unsigned w:32;
  };
} __AUBADEVCP0bits_t;
extern volatile __AUBADEVCP0bits_t AUBADEVCP0bits __asm__ ("AUBADEVCP0") __attribute__((section("sfrs")));

extern volatile unsigned int AUBADEVSIGN3 __attribute__((section("sfrs")));

extern volatile unsigned int AUBADEVSIGN2 __attribute__((section("sfrs")));

extern volatile unsigned int AUBADEVSIGN1 __attribute__((section("sfrs")));

extern volatile unsigned int AUBADEVSIGN0 __attribute__((section("sfrs")));

extern volatile unsigned int AUBASEQ3 __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned TSEQ:16;
    unsigned CSEQ:16;
  };
  struct {
    unsigned w:32;
  };
} __AUBASEQ3bits_t;
extern volatile __AUBASEQ3bits_t AUBASEQ3bits __asm__ ("AUBASEQ3") __attribute__((section("sfrs")));

extern volatile unsigned int AUBASEQ2 __attribute__((section("sfrs")));

extern volatile unsigned int AUBASEQ1 __attribute__((section("sfrs")));

extern volatile unsigned int AUBASEQ0 __attribute__((section("sfrs")));

extern volatile unsigned int UBADEVCFG3 __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned USERID:16;
    unsigned :8;
    unsigned FMIIEN:1;
    unsigned FETHIO:1;
    unsigned :1;
    unsigned PGL1WAY:1;
    unsigned PMDL1WAY:1;
    unsigned IOL1WAY:1;
    unsigned FUSBIDIO:1;
  };
  struct {
    unsigned w:32;
  };
} __UBADEVCFG3bits_t;
extern volatile __UBADEVCFG3bits_t UBADEVCFG3bits __asm__ ("UBADEVCFG3") __attribute__((section("sfrs")));

extern volatile unsigned int UBADEVCFG2 __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned FPLLIDIV:3;
    unsigned :1;
    unsigned FPLLRNG:3;
    unsigned FPLLICLK:1;
    unsigned FPLLMULT:7;
    unsigned :1;
    unsigned FPLLODIV:3;
    unsigned :11;
    unsigned UPLLFSEL:1;
  };
  struct {
    unsigned w:32;
  };
} __UBADEVCFG2bits_t;
extern volatile __UBADEVCFG2bits_t UBADEVCFG2bits __asm__ ("UBADEVCFG2") __attribute__((section("sfrs")));

extern volatile unsigned int UBADEVCFG1 __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned FNOSC:3;
    unsigned DMTINTV:3;
    unsigned FSOSCEN:1;
    unsigned IESO:1;
    unsigned POSCMOD:2;
    unsigned OSCIOFNC:1;
    unsigned :3;
    unsigned FCKSM:2;
    unsigned WDTPS:5;
    unsigned WDTSPGM:1;
    unsigned WINDIS:1;
    unsigned FWDTEN:1;
    unsigned FWDTWINSZ:2;
    unsigned DMTCNT:5;
    unsigned FDMTEN:1;
  };
  struct {
    unsigned w:32;
  };
} __UBADEVCFG1bits_t;
extern volatile __UBADEVCFG1bits_t UBADEVCFG1bits __asm__ ("UBADEVCFG1") __attribute__((section("sfrs")));

extern volatile unsigned int UBADEVCFG0 __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned DEBUG:2;
    unsigned JTAGEN:1;
    unsigned ICESEL:2;
    unsigned TRCEN:1;
    unsigned BOOTISA:1;
    unsigned :1;
    unsigned FECCCON:2;
    unsigned FSLEEP:1;
    unsigned :1;
    unsigned DBGPER:3;
    unsigned SMCLR:1;
    unsigned SOSCGAIN:2;
    unsigned SOSCBOOST:1;
    unsigned POSCGAIN:2;
    unsigned POSCBOOST:1;
    unsigned :8;
    unsigned EJTAGBEN:1;
  };
  struct {
    unsigned FDEBUG:2;
  };
  struct {
    unsigned w:32;
  };
} __UBADEVCFG0bits_t;
extern volatile __UBADEVCFG0bits_t UBADEVCFG0bits __asm__ ("UBADEVCFG0") __attribute__((section("sfrs")));

extern volatile unsigned int UBADEVCP3 __attribute__((section("sfrs")));

extern volatile unsigned int UBADEVCP2 __attribute__((section("sfrs")));

extern volatile unsigned int UBADEVCP1 __attribute__((section("sfrs")));

extern volatile unsigned int UBADEVCP0 __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned :28;
    unsigned CP:1;
  };
  struct {
    unsigned w:32;
  };
} __UBADEVCP0bits_t;
extern volatile __UBADEVCP0bits_t UBADEVCP0bits __asm__ ("UBADEVCP0") __attribute__((section("sfrs")));

extern volatile unsigned int UBADEVSIGN3 __attribute__((section("sfrs")));

extern volatile unsigned int UBADEVSIGN2 __attribute__((section("sfrs")));

extern volatile unsigned int UBADEVSIGN1 __attribute__((section("sfrs")));

extern volatile unsigned int UBADEVSIGN0 __attribute__((section("sfrs")));

extern volatile unsigned int UBASEQ3 __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned TSEQ:16;
    unsigned CSEQ:16;
  };
  struct {
    unsigned w:32;
  };
} __UBASEQ3bits_t;
extern volatile __UBASEQ3bits_t UBASEQ3bits __asm__ ("UBASEQ3") __attribute__((section("sfrs")));

extern volatile unsigned int UBASEQ2 __attribute__((section("sfrs")));

extern volatile unsigned int UBASEQ1 __attribute__((section("sfrs")));

extern volatile unsigned int UBASEQ0 __attribute__((section("sfrs")));

extern volatile unsigned int ABF1DEVCFG3 __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned USERID:16;
    unsigned :8;
    unsigned FMIIEN:1;
    unsigned FETHIO:1;
    unsigned :1;
    unsigned PGL1WAY:1;
    unsigned PMDL1WAY:1;
    unsigned IOL1WAY:1;
    unsigned FUSBIDIO:1;
  };
  struct {
    unsigned w:32;
  };
} __ABF1DEVCFG3bits_t;
extern volatile __ABF1DEVCFG3bits_t ABF1DEVCFG3bits __asm__ ("ABF1DEVCFG3") __attribute__((section("sfrs")));

extern volatile unsigned int ABF1DEVCFG2 __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned FPLLIDIV:3;
    unsigned :1;
    unsigned FPLLRNG:3;
    unsigned FPLLICLK:1;
    unsigned FPLLMULT:7;
    unsigned :1;
    unsigned FPLLODIV:3;
    unsigned :11;
    unsigned UPLLFSEL:1;
  };
  struct {
    unsigned w:32;
  };
} __ABF1DEVCFG2bits_t;
extern volatile __ABF1DEVCFG2bits_t ABF1DEVCFG2bits __asm__ ("ABF1DEVCFG2") __attribute__((section("sfrs")));

extern volatile unsigned int ABF1DEVCFG1 __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned FNOSC:3;
    unsigned DMTINTV:3;
    unsigned FSOSCEN:1;
    unsigned IESO:1;
    unsigned POSCMOD:2;
    unsigned OSCIOFNC:1;
    unsigned :3;
    unsigned FCKSM:2;
    unsigned WDTPS:5;
    unsigned WDTSPGM:1;
    unsigned WINDIS:1;
    unsigned FWDTEN:1;
    unsigned FWDTWINSZ:2;
    unsigned DMTCNT:5;
    unsigned FDMTEN:1;
  };
  struct {
    unsigned w:32;
  };
} __ABF1DEVCFG1bits_t;
extern volatile __ABF1DEVCFG1bits_t ABF1DEVCFG1bits __asm__ ("ABF1DEVCFG1") __attribute__((section("sfrs")));

extern volatile unsigned int ABF1DEVCFG0 __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned DEBUG:2;
    unsigned JTAGEN:1;
    unsigned ICESEL:2;
    unsigned TRCEN:1;
    unsigned BOOTISA:1;
    unsigned :1;
    unsigned FECCCON:2;
    unsigned FSLEEP:1;
    unsigned :1;
    unsigned DBGPER:3;
    unsigned SMCLR:1;
    unsigned SOSCGAIN:2;
    unsigned SOSCBOOST:1;
    unsigned POSCGAIN:2;
    unsigned POSCBOOST:1;
    unsigned :8;
    unsigned EJTAGBEN:1;
  };
  struct {
    unsigned FDEBUG:2;
  };
  struct {
    unsigned w:32;
  };
} __ABF1DEVCFG0bits_t;
extern volatile __ABF1DEVCFG0bits_t ABF1DEVCFG0bits __asm__ ("ABF1DEVCFG0") __attribute__((section("sfrs")));

extern volatile unsigned int ABF1DEVCP3 __attribute__((section("sfrs")));

extern volatile unsigned int ABF1DEVCP2 __attribute__((section("sfrs")));

extern volatile unsigned int ABF1DEVCP1 __attribute__((section("sfrs")));

extern volatile unsigned int ABF1DEVCP0 __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned :28;
    unsigned CP:1;
  };
  struct {
    unsigned w:32;
  };
} __ABF1DEVCP0bits_t;
extern volatile __ABF1DEVCP0bits_t ABF1DEVCP0bits __asm__ ("ABF1DEVCP0") __attribute__((section("sfrs")));

extern volatile unsigned int ABF1DEVSIGN3 __attribute__((section("sfrs")));

extern volatile unsigned int ABF1DEVSIGN2 __attribute__((section("sfrs")));

extern volatile unsigned int ABF1DEVSIGN1 __attribute__((section("sfrs")));

extern volatile unsigned int ABF1DEVSIGN0 __attribute__((section("sfrs")));

extern volatile unsigned int ABF1SEQ3 __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned TSEQ:16;
    unsigned CSEQ:16;
  };
  struct {
    unsigned w:32;
  };
} __ABF1SEQ3bits_t;
extern volatile __ABF1SEQ3bits_t ABF1SEQ3bits __asm__ ("ABF1SEQ3") __attribute__((section("sfrs")));

extern volatile unsigned int ABF1SEQ2 __attribute__((section("sfrs")));

extern volatile unsigned int ABF1SEQ1 __attribute__((section("sfrs")));

extern volatile unsigned int ABF1SEQ0 __attribute__((section("sfrs")));

extern volatile unsigned int BF1DEVCFG3 __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned USERID:16;
    unsigned :8;
    unsigned FMIIEN:1;
    unsigned FETHIO:1;
    unsigned :1;
    unsigned PGL1WAY:1;
    unsigned PMDL1WAY:1;
    unsigned IOL1WAY:1;
    unsigned FUSBIDIO:1;
  };
  struct {
    unsigned w:32;
  };
} __BF1DEVCFG3bits_t;
extern volatile __BF1DEVCFG3bits_t BF1DEVCFG3bits __asm__ ("BF1DEVCFG3") __attribute__((section("sfrs")));

extern volatile unsigned int BF1DEVCFG2 __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned FPLLIDIV:3;
    unsigned :1;
    unsigned FPLLRNG:3;
    unsigned FPLLICLK:1;
    unsigned FPLLMULT:7;
    unsigned :1;
    unsigned FPLLODIV:3;
    unsigned :11;
    unsigned UPLLFSEL:1;
  };
  struct {
    unsigned w:32;
  };
} __BF1DEVCFG2bits_t;
extern volatile __BF1DEVCFG2bits_t BF1DEVCFG2bits __asm__ ("BF1DEVCFG2") __attribute__((section("sfrs")));

extern volatile unsigned int BF1DEVCFG1 __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned FNOSC:3;
    unsigned DMTINTV:3;
    unsigned FSOSCEN:1;
    unsigned IESO:1;
    unsigned POSCMOD:2;
    unsigned OSCIOFNC:1;
    unsigned :3;
    unsigned FCKSM:2;
    unsigned WDTPS:5;
    unsigned WDTSPGM:1;
    unsigned WINDIS:1;
    unsigned FWDTEN:1;
    unsigned FWDTWINSZ:2;
    unsigned DMTCNT:5;
    unsigned FDMTEN:1;
  };
  struct {
    unsigned w:32;
  };
} __BF1DEVCFG1bits_t;
extern volatile __BF1DEVCFG1bits_t BF1DEVCFG1bits __asm__ ("BF1DEVCFG1") __attribute__((section("sfrs")));

extern volatile unsigned int BF1DEVCFG0 __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned DEBUG:2;
    unsigned JTAGEN:1;
    unsigned ICESEL:2;
    unsigned TRCEN:1;
    unsigned BOOTISA:1;
    unsigned :1;
    unsigned FECCCON:2;
    unsigned FSLEEP:1;
    unsigned :1;
    unsigned DBGPER:3;
    unsigned SMCLR:1;
    unsigned SOSCGAIN:2;
    unsigned SOSCBOOST:1;
    unsigned POSCGAIN:2;
    unsigned POSCBOOST:1;
    unsigned :8;
    unsigned EJTAGBEN:1;
  };
  struct {
    unsigned FDEBUG:2;
  };
  struct {
    unsigned w:32;
  };
} __BF1DEVCFG0bits_t;
extern volatile __BF1DEVCFG0bits_t BF1DEVCFG0bits __asm__ ("BF1DEVCFG0") __attribute__((section("sfrs")));

extern volatile unsigned int BF1DEVCP3 __attribute__((section("sfrs")));

extern volatile unsigned int BF1DEVCP2 __attribute__((section("sfrs")));

extern volatile unsigned int BF1DEVCP1 __attribute__((section("sfrs")));

extern volatile unsigned int BF1DEVCP0 __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned :28;
    unsigned CP:1;
  };
  struct {
    unsigned w:32;
  };
} __BF1DEVCP0bits_t;
extern volatile __BF1DEVCP0bits_t BF1DEVCP0bits __asm__ ("BF1DEVCP0") __attribute__((section("sfrs")));

extern volatile unsigned int BF1DEVSIGN3 __attribute__((section("sfrs")));

extern volatile unsigned int BF1DEVSIGN2 __attribute__((section("sfrs")));

extern volatile unsigned int BF1DEVSIGN1 __attribute__((section("sfrs")));

extern volatile unsigned int BF1DEVSIGN0 __attribute__((section("sfrs")));

extern volatile unsigned int BF1SEQ3 __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned TSEQ:16;
    unsigned CSEQ:16;
  };
  struct {
    unsigned w:32;
  };
} __BF1SEQ3bits_t;
extern volatile __BF1SEQ3bits_t BF1SEQ3bits __asm__ ("BF1SEQ3") __attribute__((section("sfrs")));

extern volatile unsigned int BF1SEQ2 __attribute__((section("sfrs")));

extern volatile unsigned int BF1SEQ1 __attribute__((section("sfrs")));

extern volatile unsigned int BF1SEQ0 __attribute__((section("sfrs")));

extern volatile unsigned int ABF2DEVCFG3 __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned USERID:16;
    unsigned :8;
    unsigned FMIIEN:1;
    unsigned FETHIO:1;
    unsigned :1;
    unsigned PGL1WAY:1;
    unsigned PMDL1WAY:1;
    unsigned IOL1WAY:1;
    unsigned FUSBIDIO:1;
  };
  struct {
    unsigned w:32;
  };
} __ABF2DEVCFG3bits_t;
extern volatile __ABF2DEVCFG3bits_t ABF2DEVCFG3bits __asm__ ("ABF2DEVCFG3") __attribute__((section("sfrs")));

extern volatile unsigned int ABF2DEVCFG2 __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned FPLLIDIV:3;
    unsigned :1;
    unsigned FPLLRNG:3;
    unsigned FPLLICLK:1;
    unsigned FPLLMULT:7;
    unsigned :1;
    unsigned FPLLODIV:3;
    unsigned :11;
    unsigned UPLLFSEL:1;
  };
  struct {
    unsigned w:32;
  };
} __ABF2DEVCFG2bits_t;
extern volatile __ABF2DEVCFG2bits_t ABF2DEVCFG2bits __asm__ ("ABF2DEVCFG2") __attribute__((section("sfrs")));

extern volatile unsigned int ABF2DEVCFG1 __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned FNOSC:3;
    unsigned DMTINTV:3;
    unsigned FSOSCEN:1;
    unsigned IESO:1;
    unsigned POSCMOD:2;
    unsigned OSCIOFNC:1;
    unsigned :3;
    unsigned FCKSM:2;
    unsigned WDTPS:5;
    unsigned WDTSPGM:1;
    unsigned WINDIS:1;
    unsigned FWDTEN:1;
    unsigned FWDTWINSZ:2;
    unsigned DMTCNT:5;
    unsigned FDMTEN:1;
  };
  struct {
    unsigned w:32;
  };
} __ABF2DEVCFG1bits_t;
extern volatile __ABF2DEVCFG1bits_t ABF2DEVCFG1bits __asm__ ("ABF2DEVCFG1") __attribute__((section("sfrs")));

extern volatile unsigned int ABF2DEVCFG0 __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned DEBUG:2;
    unsigned JTAGEN:1;
    unsigned ICESEL:2;
    unsigned TRCEN:1;
    unsigned BOOTISA:1;
    unsigned :1;
    unsigned FECCCON:2;
    unsigned FSLEEP:1;
    unsigned :1;
    unsigned DBGPER:3;
    unsigned SMCLR:1;
    unsigned SOSCGAIN:2;
    unsigned SOSCBOOST:1;
    unsigned POSCGAIN:2;
    unsigned POSCBOOST:1;
    unsigned :8;
    unsigned EJTAGBEN:1;
  };
  struct {
    unsigned FDEBUG:2;
  };
  struct {
    unsigned w:32;
  };
} __ABF2DEVCFG0bits_t;
extern volatile __ABF2DEVCFG0bits_t ABF2DEVCFG0bits __asm__ ("ABF2DEVCFG0") __attribute__((section("sfrs")));

extern volatile unsigned int ABF2DEVCP3 __attribute__((section("sfrs")));

extern volatile unsigned int ABF2DEVCP2 __attribute__((section("sfrs")));

extern volatile unsigned int ABF2DEVCP1 __attribute__((section("sfrs")));

extern volatile unsigned int ABF2DEVCP0 __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned :28;
    unsigned CP:1;
  };
  struct {
    unsigned w:32;
  };
} __ABF2DEVCP0bits_t;
extern volatile __ABF2DEVCP0bits_t ABF2DEVCP0bits __asm__ ("ABF2DEVCP0") __attribute__((section("sfrs")));

extern volatile unsigned int ABF2DEVSIGN3 __attribute__((section("sfrs")));

extern volatile unsigned int ABF2DEVSIGN2 __attribute__((section("sfrs")));

extern volatile unsigned int ABF2DEVSIGN1 __attribute__((section("sfrs")));

extern volatile unsigned int ABF2DEVSIGN0 __attribute__((section("sfrs")));

extern volatile unsigned int ABF2SEQ3 __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned TSEQ:16;
    unsigned CSEQ:16;
  };
  struct {
    unsigned w:32;
  };
} __ABF2SEQ3bits_t;
extern volatile __ABF2SEQ3bits_t ABF2SEQ3bits __asm__ ("ABF2SEQ3") __attribute__((section("sfrs")));

extern volatile unsigned int ABF2SEQ2 __attribute__((section("sfrs")));

extern volatile unsigned int ABF2SEQ1 __attribute__((section("sfrs")));

extern volatile unsigned int ABF2SEQ0 __attribute__((section("sfrs")));

extern volatile unsigned int BF2DEVCFG3 __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned USERID:16;
    unsigned :8;
    unsigned FMIIEN:1;
    unsigned FETHIO:1;
    unsigned :1;
    unsigned PGL1WAY:1;
    unsigned PMDL1WAY:1;
    unsigned IOL1WAY:1;
    unsigned FUSBIDIO:1;
  };
  struct {
    unsigned w:32;
  };
} __BF2DEVCFG3bits_t;
extern volatile __BF2DEVCFG3bits_t BF2DEVCFG3bits __asm__ ("BF2DEVCFG3") __attribute__((section("sfrs")));

extern volatile unsigned int BF2DEVCFG2 __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned FPLLIDIV:3;
    unsigned :1;
    unsigned FPLLRNG:3;
    unsigned FPLLICLK:1;
    unsigned FPLLMULT:7;
    unsigned :1;
    unsigned FPLLODIV:3;
    unsigned :11;
    unsigned UPLLFSEL:1;
  };
  struct {
    unsigned w:32;
  };
} __BF2DEVCFG2bits_t;
extern volatile __BF2DEVCFG2bits_t BF2DEVCFG2bits __asm__ ("BF2DEVCFG2") __attribute__((section("sfrs")));

extern volatile unsigned int BF2DEVCFG1 __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned FNOSC:3;
    unsigned DMTINTV:3;
    unsigned FSOSCEN:1;
    unsigned IESO:1;
    unsigned POSCMOD:2;
    unsigned OSCIOFNC:1;
    unsigned :3;
    unsigned FCKSM:2;
    unsigned WDTPS:5;
    unsigned WDTSPGM:1;
    unsigned WINDIS:1;
    unsigned FWDTEN:1;
    unsigned FWDTWINSZ:2;
    unsigned DMTCNT:5;
    unsigned FDMTEN:1;
  };
  struct {
    unsigned w:32;
  };
} __BF2DEVCFG1bits_t;
extern volatile __BF2DEVCFG1bits_t BF2DEVCFG1bits __asm__ ("BF2DEVCFG1") __attribute__((section("sfrs")));

extern volatile unsigned int BF2DEVCFG0 __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned DEBUG:2;
    unsigned JTAGEN:1;
    unsigned ICESEL:2;
    unsigned TRCEN:1;
    unsigned BOOTISA:1;
    unsigned :1;
    unsigned FECCCON:2;
    unsigned FSLEEP:1;
    unsigned :1;
    unsigned DBGPER:3;
    unsigned SMCLR:1;
    unsigned SOSCGAIN:2;
    unsigned SOSCBOOST:1;
    unsigned POSCGAIN:2;
    unsigned POSCBOOST:1;
    unsigned :8;
    unsigned EJTAGBEN:1;
  };
  struct {
    unsigned FDEBUG:2;
  };
  struct {
    unsigned w:32;
  };
} __BF2DEVCFG0bits_t;
extern volatile __BF2DEVCFG0bits_t BF2DEVCFG0bits __asm__ ("BF2DEVCFG0") __attribute__((section("sfrs")));

extern volatile unsigned int BF2DEVCP3 __attribute__((section("sfrs")));

extern volatile unsigned int BF2DEVCP2 __attribute__((section("sfrs")));

extern volatile unsigned int BF2DEVCP1 __attribute__((section("sfrs")));

extern volatile unsigned int BF2DEVCP0 __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned :28;
    unsigned CP:1;
  };
  struct {
    unsigned w:32;
  };
} __BF2DEVCP0bits_t;
extern volatile __BF2DEVCP0bits_t BF2DEVCP0bits __asm__ ("BF2DEVCP0") __attribute__((section("sfrs")));

extern volatile unsigned int BF2DEVSIGN3 __attribute__((section("sfrs")));

extern volatile unsigned int BF2DEVSIGN2 __attribute__((section("sfrs")));

extern volatile unsigned int BF2DEVSIGN1 __attribute__((section("sfrs")));

extern volatile unsigned int BF2DEVSIGN0 __attribute__((section("sfrs")));

extern volatile unsigned int BF2SEQ3 __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned TSEQ:16;
    unsigned CSEQ:16;
  };
  struct {
    unsigned w:32;
  };
} __BF2SEQ3bits_t;
extern volatile __BF2SEQ3bits_t BF2SEQ3bits __asm__ ("BF2SEQ3") __attribute__((section("sfrs")));

extern volatile unsigned int BF2SEQ2 __attribute__((section("sfrs")));

extern volatile unsigned int BF2SEQ1 __attribute__((section("sfrs")));

extern volatile unsigned int BF2SEQ0 __attribute__((section("sfrs")));
# 553 "c:\\program files (x86)\\microchip\\xc32\\v1.42\\pic32mx\\include\\xc.h" 2 3
# 685 "c:\\program files (x86)\\microchip\\xc32\\v1.42\\pic32mx\\include\\xc.h" 3
extern int __XC_UART;
# 699 "c:\\program files (x86)\\microchip\\xc32\\v1.42\\pic32mx\\include\\xc.h" 3
typedef unsigned long _reg_t;
# 863 "c:\\program files (x86)\\microchip\\xc32\\v1.42\\pic32mx\\include\\xc.h" 3
extern unsigned int _xchsrspss (unsigned int);
# 877 "c:\\program files (x86)\\microchip\\xc32\\v1.42\\pic32mx\\include\\xc.h" 3
# 1 "c:\\program files (x86)\\microchip\\xc32\\v1.42\\pic32mx\\include\\cp0defs.h" 1 3
# 35 "c:\\program files (x86)\\microchip\\xc32\\v1.42\\pic32mx\\include\\cp0defs.h" 3
       
# 878 "c:\\program files (x86)\\microchip\\xc32\\v1.42\\pic32mx\\include\\xc.h" 2 3


# 1 "c:\\program files (x86)\\microchip\\xc32\\v1.42\\pic32mx\\include\\sys\\appio.h" 1 3
# 881 "c:\\program files (x86)\\microchip\\xc32\\v1.42\\pic32mx\\include\\xc.h" 2 3
# 1 "c:\\program files (x86)\\microchip\\xc32\\v1.42\\pic32mx\\include\\sys\\l1cache.h" 1 3
# 48 "c:\\program files (x86)\\microchip\\xc32\\v1.42\\pic32mx\\include\\sys\\l1cache.h" 3
       
# 58 "c:\\program files (x86)\\microchip\\xc32\\v1.42\\pic32mx\\include\\sys\\l1cache.h" 3
# 1 "c:\\program files (x86)\\microchip\\xc32\\v1.42\\pic32mx\\include\\stdlib.h" 1 3






# 1 "c:\\program files (x86)\\microchip\\xc32\\v1.42\\pic32mx\\include\\stddef.h" 1 3



typedef long int ptrdiff_t;
typedef long unsigned int size_t;
typedef int wchar_t;
# 15 "c:\\program files (x86)\\microchip\\xc32\\v1.42\\pic32mx\\include\\stddef.h" 3
extern __attribute__((section(".bss.errno"))) int errno;
# 8 "c:\\program files (x86)\\microchip\\xc32\\v1.42\\pic32mx\\include\\stdlib.h" 2 3
# 24 "c:\\program files (x86)\\microchip\\xc32\\v1.42\\pic32mx\\include\\stdlib.h" 3
typedef struct {
 int quot;
 int rem;
} div_t;
typedef struct {
 unsigned quot;
 unsigned rem;
} udiv_t;
typedef struct {
 long quot;
 long rem;
} ldiv_t;
typedef struct {
 unsigned long quot;
 unsigned long rem;
} uldiv_t;



extern double atof(const char *);
extern long double _datof(const char *);
extern float strtof(const char *, char **);
extern double strtod(const char *, char **);
extern long double _dstrtod(const char *, char **);
# 66 "c:\\program files (x86)\\microchip\\xc32\\v1.42\\pic32mx\\include\\stdlib.h" 3
extern int atoi(const char *);
extern unsigned xtoi(const char *);
extern long atol(const char *);
extern long strtol(const char *, char **, int);
extern unsigned long strtoul(const char *, char **, int);

extern long long atoll(const char *);
extern long long strtoll(const char *, char **, int);
extern unsigned long long strtoull(const char *, char **, int);

extern int rand(void);
extern void srand(unsigned int);
extern void * calloc(size_t, size_t);
extern div_t div(int numer, int denom);
extern udiv_t udiv(unsigned numer, unsigned denom);
extern ldiv_t ldiv(long numer, long denom);
extern uldiv_t uldiv(unsigned long numer,unsigned long denom);




extern void * malloc(size_t);
extern void free(void *);
extern void * realloc(void *, size_t);

extern void

__attribute__((noreturn))

abort(void);

extern void

__attribute__((noreturn))

exit(int);

extern int atexit(void (*)(void));
extern char * getenv(const char *);
extern char ** environ;


extern int __attribute__((weak)) system(const char *);




extern void qsort(void *, size_t, size_t, int (*)(const void *, const void *));
extern void * bsearch(const void *, void *, size_t, size_t, int(*)(const void *, const void *));
extern int abs(int);
extern long labs(long);

extern char * itoa(char * buf, int val, int base);
extern char * utoa(char * buf, unsigned val, int base);
extern char * ltoa(char * buf, long val, int base);


extern char * ultoa(char * buf, unsigned long val, int base);
# 59 "c:\\program files (x86)\\microchip\\xc32\\v1.42\\pic32mx\\include\\sys\\l1cache.h" 2 3
# 91 "c:\\program files (x86)\\microchip\\xc32\\v1.42\\pic32mx\\include\\sys\\l1cache.h" 3
static __inline__ void * __pic32_alloc_coherent(size_t size)
{
  void *retptr;
  retptr = malloc (size);
  if (retptr == (0)) {
    return (0);
  }

  return ((__typeof__(retptr)*)((unsigned long)(retptr) | 0x20000000u));
}

static __inline__ void __pic32_free_coherent(void* ptr)
{

  free (((__typeof__(ptr)*)((unsigned long)(ptr) & ~0x20000000u)));
}
# 882 "c:\\program files (x86)\\microchip\\xc32\\v1.42\\pic32mx\\include\\xc.h" 2 3
# 50 "src/OLED/FillPat.c" 2


# 1 "c:\\program files (x86)\\microchip\\xc32\\v1.42\\pic32mx\\include\\stdint.h" 1 3
# 42 "c:\\program files (x86)\\microchip\\xc32\\v1.42\\pic32mx\\include\\stdint.h" 3
# 1 "c:\\program files (x86)\\microchip\\xc32\\v1.42\\pic32mx\\include\\machine\\int_types.h" 1 3
# 46 "c:\\program files (x86)\\microchip\\xc32\\v1.42\\pic32mx\\include\\machine\\int_types.h" 3
typedef __signed char __int8_t;
typedef unsigned char __uint8_t;
typedef short int __int16_t;
typedef unsigned short int __uint16_t;
typedef int __int32_t;
typedef unsigned int __uint32_t;
# 60 "c:\\program files (x86)\\microchip\\xc32\\v1.42\\pic32mx\\include\\machine\\int_types.h" 3
__extension__
typedef long long int __int64_t;

__extension__
typedef unsigned long long int __uint64_t;
# 75 "c:\\program files (x86)\\microchip\\xc32\\v1.42\\pic32mx\\include\\machine\\int_types.h" 3
typedef int __intptr_t;
typedef unsigned int __uintptr_t;
# 43 "c:\\program files (x86)\\microchip\\xc32\\v1.42\\pic32mx\\include\\stdint.h" 2 3


typedef __int8_t int8_t;




typedef __uint8_t uint8_t;




typedef __int16_t int16_t;




typedef __uint16_t uint16_t;




typedef __int32_t int32_t;




typedef __uint32_t uint32_t;




typedef __int64_t int64_t;




typedef __uint64_t uint64_t;




typedef __intptr_t intptr_t;




typedef __uintptr_t uintptr_t;



# 1 "c:\\program files (x86)\\microchip\\xc32\\v1.42\\pic32mx\\include\\machine\\int_mwgwtypes.h" 1 3
# 48 "c:\\program files (x86)\\microchip\\xc32\\v1.42\\pic32mx\\include\\machine\\int_mwgwtypes.h" 3
__extension__
typedef __signed char int_least8_t;
typedef unsigned char uint_least8_t;
typedef short int int_least16_t;
typedef unsigned short int uint_least16_t;
typedef int int_least24_t;
typedef unsigned int uint_least24_t;
typedef int int_least32_t;
typedef unsigned int uint_least32_t;
# 65 "c:\\program files (x86)\\microchip\\xc32\\v1.42\\pic32mx\\include\\machine\\int_mwgwtypes.h" 3
__extension__
typedef long long int int_least64_t;

__extension__
typedef unsigned long long int uint_least64_t;



typedef int int_fast8_t;
typedef unsigned int uint_fast8_t;
typedef int int_fast16_t;
typedef unsigned int uint_fast16_t;
typedef int int_fast24_t;
typedef unsigned int uint_fast24_t;
typedef int int_fast32_t;
typedef unsigned int uint_fast32_t;
# 89 "c:\\program files (x86)\\microchip\\xc32\\v1.42\\pic32mx\\include\\machine\\int_mwgwtypes.h" 3
__extension__
typedef long long int int_fast64_t;

__extension__
typedef unsigned long long int uint_fast64_t;
# 106 "c:\\program files (x86)\\microchip\\xc32\\v1.42\\pic32mx\\include\\machine\\int_mwgwtypes.h" 3
__extension__
typedef long long int intmax_t;

__extension__
typedef unsigned long long int uintmax_t;
# 95 "c:\\program files (x86)\\microchip\\xc32\\v1.42\\pic32mx\\include\\stdint.h" 2 3


# 1 "c:\\program files (x86)\\microchip\\xc32\\v1.42\\pic32mx\\include\\machine\\int_limits.h" 1 3
# 98 "c:\\program files (x86)\\microchip\\xc32\\v1.42\\pic32mx\\include\\stdint.h" 2 3



# 1 "c:\\program files (x86)\\microchip\\xc32\\v1.42\\pic32mx\\include\\machine\\int_const.h" 1 3
# 102 "c:\\program files (x86)\\microchip\\xc32\\v1.42\\pic32mx\\include\\stdint.h" 2 3
# 53 "src/OLED/FillPat.c" 2
# 1 "src/OLED/OLED.h" 1
# 38 "src/OLED/OLED.h"
typedef __uint8_t BYTE;
# 104 "src/OLED/OLED.h"
BYTE rgbOledBmp[512];
# 131 "src/OLED/OLED.h"
void OledInit();
void OledDvrInit();
void OledTerm();
void OledDisplayOn();
void OledDisplayOff();
void OledClear();
void OledClearBuffer();
void OledUpdate();
# 54 "src/OLED/FillPat.c" 2
# 62 "src/OLED/FillPat.c"
const BYTE rgbFillPat[] = {
 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF,
 0xAA, 0x55, 0xAA, 0x55, 0xAA, 0x55, 0xAA, 0x55,
 0x11, 0x44, 0x00, 0x11, 0x44, 0x00, 0x11, 0x44,
 0x92, 0x45, 0x24, 0x92, 0x45, 0x24, 0x92, 0x45,
 0x49, 0x92, 0x24, 0x49, 0x92, 0x24, 0x49, 0x92,
 0x22, 0x11, 0x22, 0x00, 0x22, 0x11, 0x22, 0x00,
 0x11, 0x22, 0x11, 0x00, 0x11, 0x22, 0x11, 0x00
};
