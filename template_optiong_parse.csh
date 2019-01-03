#!/bin/tcsh

while ($#argv > 0)
  switch($1:q)
  
  case -opt1:
  case --opt1-long:
    echo "Got a option named opt1 or opt1-long"
    shift
    breaksw;
  
  case -opt2:
  case -opt2-long:
    echo "Option opt2, got arg: "`$2:q\`;
    shift;
    shift
    breaksw
    
  default:
    echo "Unknow argument"
    exit 1
  endsw
end
