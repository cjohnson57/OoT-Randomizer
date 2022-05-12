#include "rng.h"

uint32_t SEED = 0;

void seed_rng() {
    z64_RandSeed(SEED);
}
