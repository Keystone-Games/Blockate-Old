@echo off

if %1==testbuild (
    lime test cpp
)

if %1==stbuild (
    lime build windows
    lime build hl
    lime build macos
    lime build linux
)