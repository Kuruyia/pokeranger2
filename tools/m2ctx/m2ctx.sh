#!/usr/bin/env bash

OUT_FILE=ctx.cpp

GXX=g++
FLAGS="-E -P -dD -undef -fno-exceptions -fno-rtti -target arm-none-eabi"
INCLUDES="-Itools/cw/include -Isubprojects/NitroSDK-4.1.30001/include -Ibuild/subprojects/NitroSDK-4.1.30001/gen -Isubprojects/NitroSystem-071126.1/include -Isubprojects/NitroWiFi-2.1.30002/include -Isubprojects/NitroDWC-2.2.30000/include -Iinclude -Iasm -Ires -Ibuild -Ibuild/res/text -include pch/global_pch.hpp"
DEFINES="-DGAME_LANGUAGE=ENGLISH -DPM_KEEP_ASSERTS -D_NITRO -DNNS_FINALROM -DSDK_4M -DSDK_ARM9 -DSDK_CODE_ARM -DSDK_CW -DSDK_CW_FORCE_EXPORT_SUPPORT -DSDK_FINALROM -DSDK_TS"

generate-ctx () {
    # Remove any line containing a predefined macro. If not removed, mwccarm
    # generates compiler warnings.
    $GXX $FLAGS $INCLUDES $DEFINES -x c++ "$1" | sed -E '/__STDC_.*|__STDCPP_.*|__cplusplus/d' > $OUT_FILE
}

usage () {
    echo "Generate a context file for decomp.me."
    echo "Usage: $0 [-h] [FILEPATH]"
    echo ""
    echo "Arguments:"
    echo "  FILEPATH      Source file used to generate ctx.cpp"
    echo ""
    echo "Options:"
    echo "  -h            Show this message and exit"
}

while [[ $# -gt 0 ]]; do
  key="$1"
  case $key in
  -h)
    usage
    exit 0
    ;;
  *)
    generate-ctx "$1"
    exit 0
    ;;
  esac
done
