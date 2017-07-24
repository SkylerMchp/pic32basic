#ifndef QUEUE_H
#define QUEUE_H

#include <stdint.h>

#define Q_SIZE (128)

typedef struct {
  unsigned char Data[Q_SIZE];
  unsigned int Head; // points to oldest data element 
  unsigned int Tail; // points to next free space
  unsigned int Size; // quantity of elements in queue
} Q_T;

extern unsigned int Q_Size(Q_T * q);
extern int Q_Empty(Q_T * q);
extern int Q_Full(Q_T * q);
extern int Q_Enqueue(Q_T * q, uint8_t d);
extern char Q_Dequeue(Q_T * q);
extern void Q_Init(Q_T * q);

#endif // QUEUE_H
