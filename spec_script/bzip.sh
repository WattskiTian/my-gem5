#!/bin/bash
gem5path=/home/watts/gem5
spec2006path=/home/watts/spec2006/spec2006-v101/speccpu2006-v1.0.1/benchspec/CPU2006
outdir=/home/watts/spec2006Trace
bench=401.bzip2
ben_suffix=run/run_base_test_x86_64_linux.0000
exe=bzip2_base.x86_64_linux

$gem5path/build/X86/gem5.opt \
  --outdir=$outdir --debug-file=401.bzip2.out \
  $gem5path/configs/deprecated/example/se.py \
  -c "$spec2006path/$bench/$ben_suffix/$exe" \
  -o "" \
  -i "$spec2006path/$bench/$ben_suffix/control"
