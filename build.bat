@echo off

if %1==debug (

  if %2==winnt (
    lime build cpp -debug
    lime run cpp -debug
  )
  
  if %2==android (
    lime build android -debug
    lime run android -debug
  )
  
)

if %1==release (

  lime build cpp -debug
  lime build macos -debug
  lime build linux -debug
  lime build android -debug
  lime build ios -debug
  lime build hl -debug
  
)
