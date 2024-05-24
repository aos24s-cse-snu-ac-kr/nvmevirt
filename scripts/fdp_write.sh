#!/bin/bash

DEV=/dev/nvme1n1
SIZE_BYTE=65536
SLBA=7
RUH=3

curl https://en.wikipedia.org/wiki/Adaptive_replacement_cache 2>/dev/null \
  | sudo nvme write ${DEV} -z ${SIZE_BYTE} -s ${SLBA} -T2 -S ${RUH}
