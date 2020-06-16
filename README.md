# 4d-example-custom-context-menu
View Proエリアのコンテキストメニューをカスタマイズするには？

#### Screenshot

<img width="504" alt="Screen Shot 2020-06-16 at 19 16 32" src="https://user-images.githubusercontent.com/1725068/84762573-ee721380-b005-11ea-88c7-ca7f5f664525.png">

#### About

**Problem**: By default, the context menu contains standard edit actions such as **cut**, **copy** and **paste**. These access the internal clipboard of 4D View Pro, meaning, __they are not in sync with the standard pastebard__, used via the keyboard shortcut. 

For instace:

* What you copy in an external app is **not** pasted via the context menu
* What you copy via the context menu is **not** what gets pasted to an external app

User may not like that....

**Solution**: With some JavaScript, we can intecept the context menu and invoke 4D code. To avoid confusion, we can also remove SpreadJS "paste special" and limit the context menu to regular copy/paste only.
