# 4d-example-custom-context-menu
View Proエリアのコンテキストメニューをカスタマイズするには？

#### Screenshot

<img width="504" alt="Screen Shot 2020-06-16 at 19 16 32" src="https://user-images.githubusercontent.com/1725068/84762573-ee721380-b005-11ea-88c7-ca7f5f664525.png">

#### About

**Problem**: By default, the context menu contains standard edit actions such as **cut**, **copy** and **paste**. These access the internal clipboard of 4D View Pro, meaning, __they are not in sync with the standard pastebard__, used via the keyboard shortcut. 

For instace:

* What you copy in an external app is **not** pasted via the context menu
* What you copy via the context menu is **not** what gets pasted to an external app

Users may not like that....😅

**Solution**: With some JavaScript, we can intecept the context menu and invoke 4D code. To avoid confusion, we can also remove SpreadJS "paste special" and limit the context menu to regular copy/paste only.

---

* Register custom command

```js
function(){
  let spread = Utils.spread;
  spread.commandManager().register('gc.spread.contextMenu.customCopy', function(workbook, command, flag){
    $4d.vpCustomCopy(workbook, command, flag, function(e){
    
    });
  });
}())
```

* Project method called via $4d

```4d
C_OBJECT($1;$workbook;$2;$command)
C_BOOLEAN($3)

$workbook:=$1
$command:=$2
$flag:=$3
$window:=Current form window

CALL FORM($window;"akCopy")

C_OBJECT($0;$result)

$result:=New object("workbook";$workbook;"command";$command;"flag";$flag)

$0:=$result
```

* Project method called via CALL FORM

```4d
INVOKE ACTION(ak copy;ak current form)
```

* Redirection of context menu command

```js
(function(){
  let menuData = Utils.spread.contextMenu.menuData
  menuData.forEach(function(item){
    if(item.name == 'gc.spread.copy'){
      item.command = 'gc.spread.contextMenu.customCopy'
    }
  });
}())
```
