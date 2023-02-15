#include <stdlib.h>
#include "Vtestbench.h"
#include "verilated.h"

int main(int argc, char **argv, char** env) {
// Initialize Verilators variables
Verilated::commandArgs(argc, argv);

// Create an instance of our module under test
Vtestbench *tb = new Vtestbench;

// Tick the clock until we are done//  while(!Verilated::gotFinish()) {
//    printf(" Output q: %d \n",tb-> q);
//    printf(" Output q1: %d \n",tb-> q1);
//    printf(" Output rst: %d \n",tb-> rst);
//    tb->eval();
//  } exit(EXIT_SUCCESS);

    tb->eval();
  printf(" Output q: %d \n",tb-> q);
  printf(" Output q1: %d \n",tb-> q1);
  printf(" Output rst: %d \n",tb-> rst);
  exit(EXIT_SUCCESS);
}