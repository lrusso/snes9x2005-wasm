#\!/bin/bash
cd `dirname $0`
emcc -O3 -s WASM=0 -s EXPORTED_RUNTIME_METHODS='["cwrap","HEAP8","HEAPF32"]' -s INITIAL_MEMORY=67108864 -s ALLOW_MEMORY_GROWTH=0 source/*.c -o snes9x_2005.js
