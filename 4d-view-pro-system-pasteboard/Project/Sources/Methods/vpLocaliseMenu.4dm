//%attributes = {"invisible":true}
$o:=new coder ($1)

$o.add("(function(){")
$o.add("    let menuData = Utils.spread.contextMenu.menuData")
$o.add("    menuData.forEach(function(item){")
$o.add("        if(item.name == 'gc.spread.copy'){")
$o.add("            item.text = 'コピー'")
$o.add("        }")
$o.add("        if(item.name == 'gc.spread.cut'){")
$o.add("            item.text = 'カット'")
$o.add("        }")
$o.add("        if(item.name == 'gc.spread.pasteOptions'){")
$o.add("            item.text = '形式を指定してペースト:'")
$o.add("        }")
$o.add("        if(item.name == 'gc.spread.pasteAll'){")
  //$o.add("            item.text = 'すべての形式'")
$o.add("            item.text = 'ペースト'")
$o.add("        }")
$o.add("        if(item.name == 'gc.spread.pasteFormula'){")
$o.add("            item.text = '数式のみ'")
$o.add("        }")
$o.add("        if(item.name == 'gc.spread.pasteValues'){")
$o.add("            item.text = '値のみ'")
$o.add("        }")
$o.add("        if(item.name == 'gc.spread.pasteFormatting'){")
$o.add("            item.text = 'スタイルのみ'")
$o.add("        }")
$o.add("        if(item.name == 'gc.spread.pasteValuesFormatting'){")
$o.add("            item.text = 'スタイルと値'")
$o.add("        }")
$o.add("        if(item.name == 'gc.spread.pasteFormulaFormatting'){")
$o.add("            item.text = 'スタイルと数式'")
$o.add("        }")
$o.add("        if(item.name == 'gc.spread.clearContents'){")
$o.add("            item.text = '内容をクリア'")
$o.add("        }")
$o.add("        if(item.name == 'gc.spread.insertRows'){")
$o.add("            item.text = '行を挿入'")
$o.add("        }")
$o.add("        if(item.name == 'gc.spread.insertColumns'){")
$o.add("            item.text = '列を挿入'")
$o.add("        }")
$o.add("        if(item.name == 'gc.spread.deleteRows'){")
$o.add("            item.text = '行を削除'")
$o.add("        }")
$o.add("        if(item.name == 'gc.spread.deleteColumns'){")
$o.add("            item.text = '列を削除'")
$o.add("        }")
$o.add("        if(item.name == 'gc.spread.insertSheet'){")
$o.add("            item.text = 'シート挿入'")
$o.add("        }")
$o.add("        if(item.name == 'gc.spread.deleteSheet'){")
$o.add("            item.text = 'シート削除'")
$o.add("        }")
$o.add("        if(item.name == 'gc.spread.filter'){")
$o.add("            item.text = 'フィルター'")
$o.add("        }")
$o.add("        if(item.name == 'gc.spread.sort'){")
$o.add("            item.text = 'ソート'")
$o.add("            item.subMenu.forEach(function(subItem){")
$o.add("                if(subItem.name == 'gc.spread.sortAscend'){")
$o.add("                    subItem.text = '昇順にソート'")
$o.add("                }")
$o.add("                if(subItem.name == 'gc.spread.sortDescend'){")
$o.add("                    subItem.text = '降順にソート'")
$o.add("                }")
$o.add("            });")
$o.add("        }")
$o.add("        if(item.name == 'gc.spread.slicerSortAscend'){")
$o.add("            item.text = '昇順にソート'")
$o.add("        }")
$o.add("        if(item.name == 'gc.spread.slicerSortDescend'){")
$o.add("            item.text = '降順にソート'")
$o.add("        }")
$o.add("        if(item.name == 'gc.spread.insertComment'){")
$o.add("            item.text = 'コメントを挿入'")
$o.add("        }")
$o.add("        if(item.name == 'gc.spread.editComment'){")
$o.add("            item.text = 'コメントを編集'")
$o.add("        }")
$o.add("        if(item.name == 'gc.spread.deleteComment'){")
$o.add("            item.text = 'コメントを削除'")
$o.add("        }")
$o.add("        if(item.name == 'gc.spread.toggleComment'){")
$o.add("            item.text = 'コメントの表示を切替'")
$o.add("        }")
$o.add("        if(item.name == 'gc.spread.hideRows'){")
$o.add("            item.text = '行を非表示'")
$o.add("        }")
$o.add("        if(item.name == 'gc.spread.unhideRows'){")
$o.add("            item.text = '行を再表示'")
$o.add("        }")
$o.add("        if(item.name == 'gc.spread.hideColumns'){")
$o.add("            item.text = '列を非表示'")
$o.add("        }")
$o.add("        if(item.name == 'gc.spread.unhideColumns'){")
$o.add("            item.text = '列を再表示'")
$o.add("        }")
$o.add("        if(item.name == 'gc.spread.hideSheet'){")
$o.add("            item.text = 'シートを非表示'")
$o.add("        }")
$o.add("        if(item.name == 'gc.spread.unhideSheet'){")
$o.add("            item.text = 'シートを再表示'")
$o.add("        }")
$o.add("        if(item.name == 'gc.spread.removeSlicer'){")
$o.add("            item.text = '項目スライサーを除去'")
$o.add("        }")
$o.add("    });")
$o.add("}())")

$o.eval(Is object:K8:27)