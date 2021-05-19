#!/bin/bash

sum=0

for num in 1 2 3 4 5 6 7 8 9 10; do
    newsum=$(($sum+$num))
    echo "$sum + $num = $newsum"
    sum=$newsum
done

