# llvm_loop_unswitch

## what does loop unswitch do

```
It transforms loops that contain branches on loop-invariant conditions
to have multiple loops
[https://llvm.org/docs/Passes.html#loop-unswitch-unswitch-loops]

for (loop)
{
    A
    if (w)
    {
        B
    }
    C
}
!loop unswitch!
if(w) {
    for (loop)
    {
        A
        B
        C
    }
} else {
    for (loop)
    {
        A
        C
    }
}
```

## example
### run example
get file without llvm optimizations:

`clang-12 -S -O3 -emit-llvm -mllvm -disable-llvm-optzns source.c`
get file with licm optimization (required for loop unswitch opt):

`opt-12 -S -licm source.ll -o source_licm.ll`
get file with loop unswitch optimization from file with licm optimization:

`opt-12 -S -loop-unswitch source_licm.ll -o source_loopunsw.ll --print-before=loop-unswitch --print-after=loop-unswitch &> file_temp.txt`