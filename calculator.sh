ch="y"
while [ $ch = "y" ]
do
echo "1.Addition"
echo "2.Substraction"
echo "3.Multiplication"
echo "4.Division"
echo "5.Modulus"
echo "Select an choice:"
read c
if [ $c -lt 6 ] && [ $c -gt 0 ]; then
echo " Enter First number:"
read a
echo "Enter second number:"
read b
fi
case $c in
1)
if [ $c -eq 1 ]; then
r=`expr $a + $b`
echo "Result= $r"
fi ;;
2)
if [ $c -eq 2 ]; then
r=`expr $a - $b`
echo "Result=$r"
fi ;;
3)
if [ $c -eq 3 ]; then
r=`expr $a \* $b`
echo "Result=$r"
fi ;;
4)
if [ $c -eq 4 ]; then
if [ $b -eq 0 ]; then
echo "Division not possible"
else
echo "Result="
echo `echo "scale=2; $a / $b" |bc`
fi
fi ;;
5)
if [ $c -eq 5 ]; then
if [ $b -eq 0 ]; then
echo "Division not possible"
else
r=`expr $a % $b`
echo "Result=$r"
fi
fi ;;
*)
echo "Invalid choice";;
esac
echo "Do you want to continue(y/n)?"
read ch 
done 
