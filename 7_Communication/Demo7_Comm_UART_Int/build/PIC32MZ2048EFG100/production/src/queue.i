# 1 "src/queue.c"
# 1 "E:\\待办事项\\完成石老师大学计划任务\\CML\\The-Connected-MCU-Lab--v1.5-12Oct2016-CHN\\Release\\Modules\\7_Communication\\Demo7_Comm_UART_Int//"
# 1 "<command-line>"
# 1 "src/queue.c"
# 1 "src/queue.h" 1



# 1 "c:\\program files\\microchip\\xc32\\v1.42\\pic32mx\\include\\stdint.h" 1 3
# 42 "c:\\program files\\microchip\\xc32\\v1.42\\pic32mx\\include\\stdint.h" 3
# 1 "c:\\program files\\microchip\\xc32\\v1.42\\pic32mx\\include\\machine\\int_types.h" 1 3
# 46 "c:\\program files\\microchip\\xc32\\v1.42\\pic32mx\\include\\machine\\int_types.h" 3
typedef __signed char __int8_t;
typedef unsigned char __uint8_t;
typedef short int __int16_t;
typedef unsigned short int __uint16_t;
typedef int __int32_t;
typedef unsigned int __uint32_t;
# 60 "c:\\program files\\microchip\\xc32\\v1.42\\pic32mx\\include\\machine\\int_types.h" 3
__extension__
typedef long long int __int64_t;

__extension__
typedef unsigned long long int __uint64_t;
# 75 "c:\\program files\\microchip\\xc32\\v1.42\\pic32mx\\include\\machine\\int_types.h" 3
typedef int __intptr_t;
typedef unsigned int __uintptr_t;
# 43 "c:\\program files\\microchip\\xc32\\v1.42\\pic32mx\\include\\stdint.h" 2 3


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



# 1 "c:\\program files\\microchip\\xc32\\v1.42\\pic32mx\\include\\machine\\int_mwgwtypes.h" 1 3
# 48 "c:\\program files\\microchip\\xc32\\v1.42\\pic32mx\\include\\machine\\int_mwgwtypes.h" 3
__extension__
typedef __signed char int_least8_t;
typedef unsigned char uint_least8_t;
typedef short int int_least16_t;
typedef unsigned short int uint_least16_t;
typedef int int_least24_t;
typedef unsigned int uint_least24_t;
typedef int int_least32_t;
typedef unsigned int uint_least32_t;
# 65 "c:\\program files\\microchip\\xc32\\v1.42\\pic32mx\\include\\machine\\int_mwgwtypes.h" 3
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
# 89 "c:\\program files\\microchip\\xc32\\v1.42\\pic32mx\\include\\machine\\int_mwgwtypes.h" 3
__extension__
typedef long long int int_fast64_t;

__extension__
typedef unsigned long long int uint_fast64_t;
# 106 "c:\\program files\\microchip\\xc32\\v1.42\\pic32mx\\include\\machine\\int_mwgwtypes.h" 3
__extension__
typedef long long int intmax_t;

__extension__
typedef unsigned long long int uintmax_t;
# 95 "c:\\program files\\microchip\\xc32\\v1.42\\pic32mx\\include\\stdint.h" 2 3


# 1 "c:\\program files\\microchip\\xc32\\v1.42\\pic32mx\\include\\machine\\int_limits.h" 1 3
# 98 "c:\\program files\\microchip\\xc32\\v1.42\\pic32mx\\include\\stdint.h" 2 3



# 1 "c:\\program files\\microchip\\xc32\\v1.42\\pic32mx\\include\\machine\\int_const.h" 1 3
# 102 "c:\\program files\\microchip\\xc32\\v1.42\\pic32mx\\include\\stdint.h" 2 3
# 5 "src/queue.h" 2



typedef struct {
  unsigned char Data[(128)];
  unsigned int Head;
  unsigned int Tail;
  unsigned int Size;
} Q_T;

extern unsigned int Q_Size(Q_T * q);
extern int Q_Empty(Q_T * q);
extern int Q_Full(Q_T * q);
extern int Q_Enqueue(Q_T * q, __uint8_t d);
extern char Q_Dequeue(Q_T * q);
extern void Q_Init(Q_T * q);
# 2 "src/queue.c" 2

int Q_Empty(Q_T * q) {
  return q->Size == 0;
}

int Q_Full(Q_T * q) {
  return q->Size == (128);
}

unsigned int Q_Size(Q_T * q) {
 return q->Size;
}


int Q_Enqueue(Q_T * q, __uint8_t d) {


  if (!Q_Full(q)) {
    q->Data[q->Tail++] = d;
    q->Tail %= (128);
    q->Size++;
    return 1;
  } else
    return 0;
}

char Q_Dequeue(Q_T * q) {

  __uint8_t t=0;
  if (!Q_Empty(q)) {
    t = q->Data[q->Head];
    q->Data[q->Head++] = 0;
    q->Head %= (128);
    q->Size--;
  }
  return t;
}


void Q_Init(Q_T * q) {
  unsigned int i;
  for (i=0; i<(128); i++)
    q->Data[i] = 0;
  q->Head = 0;
  q->Tail = 0;
  q->Size = 0;
}
