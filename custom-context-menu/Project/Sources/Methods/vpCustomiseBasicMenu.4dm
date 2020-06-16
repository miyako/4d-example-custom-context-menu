//%attributes = {"invisible":true}
$o:=new coder ($1)

  //redirect: gc.spread.contextMenu.copy => gc.spread.contextMenu.customCopy

If (True:C214)
	
	$o.add("(function(){")
	$o.add("    let menuData = Utils.spread.contextMenu.menuData")
	$o.add("    menuData.forEach(function(item){")
	$o.add("        if(item.name == 'gc.spread.copy'){")
	$o.add("            item.command = 'gc.spread.contextMenu.customCopy'")
	$o.add("        }")
	$o.add("        if(item.name == 'gc.spread.cut'){")
	$o.add("            item.command = 'gc.spread.contextMenu.customCut'")
	$o.add("        }")
	$o.add("        if(item.name == 'gc.spread.pasteAll'){")
	$o.add("            item.command = 'gc.spread.contextMenu.customPaste'")
	$o.add("        }")
	$o.add("    });")
	$o.add("}())")
	
	$o.eval(Is object:K8:27)
	
	$o.clear()
	
End if 

$o.add("(function(){")
$o.add("    let spread = Utils.spread;")
$o.add("    spread.commandManager().register('gc.spread.contextMenu.customCopy', function(workbook, command, flag){")
$o.add("        $4d.vpCustomCopy(workbook, command, flag, function(e){")

$o.add("        });")
$o.add("    });")
$o.add("}())")

$o.eval(Is object:K8:27)

$o.clear()

$o.add("(function(){")
$o.add("    let spread = Utils.spread;")
$o.add("    spread.commandManager().register('gc.spread.contextMenu.customCut', function(workbook, command, flag){")
$o.add("        $4d.vpCustomCut(workbook, command, flag, function(e){")

$o.add("        });")
$o.add("    });")
$o.add("}())")

$o.eval(Is object:K8:27)

$o.clear()

$o.add("(function(){")
$o.add("    let spread = Utils.spread;")
$o.add("    spread.commandManager().register('gc.spread.contextMenu.customPaste', function(workbook, command, flag){")
$o.add("        $4d.vpCustomPaste(workbook, command, flag, function(e){")

$o.add("        });")
$o.add("    });")
$o.add("}())")

$o.eval(Is object:K8:27)

$o.clear()
