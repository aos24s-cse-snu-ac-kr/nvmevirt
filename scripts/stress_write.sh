#!/bin/bash

DEV=/dev/nvme1n1
SLBA=128
SIZE_BYTE=$(( 64 * 4 * 1024 ))
RUH=3

while true; do
curl https://en.wikipedia.org/wiki/Adaptive_replacement_cache 2>/dev/null \
  | sudo nvme write ${DEV} -z ${SIZE_BYTE} -s ${SLBA} -T2 -S ${RUH}
done
