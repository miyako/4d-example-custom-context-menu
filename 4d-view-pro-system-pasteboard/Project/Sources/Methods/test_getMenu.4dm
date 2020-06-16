//%attributes = {"invisible":true,"preemptive":"capable"}
C_COLLECTION:C1488($1;$col)
C_TEXT:C284($2;$text)
C_OBJECT:C1216($0;$obj)

$col:=$1
$text:=$2

C_COLLECTION:C1488($col)
$col:=$col.query("text == :1";$text)

If ($col.length#0)
	$obj:=$col[0]
End if 

$0:=$obj