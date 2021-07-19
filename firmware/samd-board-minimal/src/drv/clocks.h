
#ifndef CLOCKS_H_
#define CLOCKS_H_

#include "sam.h"

#define GCLK_8M  0
#define GCLK_1M  1
#define GCLK_48M 2
#define GCLK_96M 3

void clock_init();

#endif /* CLOCKS_H_ */