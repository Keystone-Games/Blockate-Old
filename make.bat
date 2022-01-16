@echo off

if %1==testbuild (
    lime test cpp -debug
)

if %1==stbuild (
    lime build windows
    lime build hl
    lime build macos
    lime build linux
)