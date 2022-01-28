if %1==debug (

  if %2==winnt (
    lime build cpp -debug
    lime run cpp -debug
  )
  
)
