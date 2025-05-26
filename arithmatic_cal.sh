#!/bin/bash

read -p "first number: " x

read -p "second number: " y

let mul=$x*$y
let add=$x+$y
let div=$x/$y
let sub=$x-$y
echo "Multiplication $x x $y = $mul"
echo "Add $x + $y = $add"
echo "Div $x / $y = $div"
echo "Sub $x - $y = $sub"


