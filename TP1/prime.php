

<?php
$count = 0 ;
$number = 2 ;
while ($count < 20 )
{
$div_count=0;
for ( $i=1;$i<=$number;$i++)
{
if (($number%$i)==0)
{
$div_count++;
}
}
if ($div_count<3)
{
echo $number." , ";
$count=$count+1;
}
$number=$number+1;
}
?>
