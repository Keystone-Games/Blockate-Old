@echo off

if %1==debug (

  if %2==winnt (
    lime test cpp -Ddebug
  )
  
  if %2==android (
    lime test android -Ddebug
  )
  
)

if %1==release (

  lime build cpp -Drelease
  lime build macos -Drelease
  lime build linux -Drelease
  lime build android -Drelease
  lime build ios -Drelease
  lime build hl -Drelease
  
)
