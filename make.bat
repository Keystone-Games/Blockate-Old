@echo off

echo Use the new build.bat instead of this

if %1==testbuild (
    build debug winnt
)

if %1==stbuild (
    build release
)
