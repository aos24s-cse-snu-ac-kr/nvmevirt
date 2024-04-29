#include "nvmev.h"

__attribute__((no_instrument_function))
void __cyg_profile_func_enter(void *this_fn, void *call_site) {}

__attribute__((no_instrument_function))
void __cyg_profile_func_exit(void *this_fn, void *call_site) {
    printk(KERN_WARNING "%s exit: {pointer: '%p'}", NVMEV_DRV_NAME, this_fn);
}
