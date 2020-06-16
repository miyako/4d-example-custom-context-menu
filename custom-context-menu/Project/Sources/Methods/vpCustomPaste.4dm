//%attributes = {"invisible":true}
C_OBJECT:C1216($1;$workbook;$2;$command)
C_BOOLEAN:C305($3)

$workbook:=$1
$command:=$2
$flag:=$3
$window:=Current form window:C827

CALL FORM:C1391($window;"akPaste")

C_OBJECT:C1216($0;$result)

$result:=New object:C1471("workbook";$workbook;"command";$command;"flag";$flag)

$0:=$result