//%attributes = {"invisible":true}
$o:=new coder ("vp1")

$o.add("(function(){")
$o.add("    let instance = new GC.Spread.Sheets.ContextMenu.ContextMenu()")
$o.add("    return instance.menuData;")
$o.add("}())")

$menuData:=$o.eval(Is collection:K8:32)

$copy:=test_getMenu ($menuData;"Copy")

$o.clear()