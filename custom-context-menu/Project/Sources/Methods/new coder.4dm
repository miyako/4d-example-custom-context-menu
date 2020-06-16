//%attributes = {"invisible":true,"preemptive":"incapable"}
C_TEXT:C284($1)
C_OBJECT:C1216($0;$o)

$o:=New object:C1471("lines";New collection:C1472;"add";Formula:C1597(This:C1470.lines.push(String:C10($1))))
$o.code:=Formula:C1597(This:C1470.lines.join("\r";ck ignore null or empty:K85:5))
$o.eval:=Formula:C1597(WA Evaluate JavaScript:C1029(*;This:C1470.name;This:C1470.code();$1))
$o.clear:=Formula:C1597(This:C1470.lines:=New collection:C1472)
$o.name:=""

If (Count parameters:C259#0)
	$o.name:=$1
End if 

$0:=$o