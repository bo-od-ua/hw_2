# !/bin/bash

is_valid(){
  if ! [[ "$1" =~ ^[0-9\.-]+$ ]] ;
  then
    echo "err: not numeric"
    exit 1
  fi
}

echo "first val:"
read a
is_valid "$a"
echo "second val:"
read b
is_valid "$b"

echo "===================="

res=`echo $a $b + p | dc`
echo "$a + $b = $res"
