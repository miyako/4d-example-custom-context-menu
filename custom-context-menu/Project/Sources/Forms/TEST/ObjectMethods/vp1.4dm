$event:=FORM Event:C1606

Case of 
	: ($event.code=On Load:K2:1)
		
		OBJECT SET VISIBLE:C603(*;$event.objectName+"@";False:C215)
		
		WA SET PREFERENCE:C1041(*;$event.objectName;WA enable Web inspector:K62:7;True:C214)
		
	: ($event.code=On VP Ready:K2:59)
		
		VP NEW DOCUMENT ($event.objectName)
		
		OBJECT SET VISIBLE:C603(*;$event.objectName+"@";True:C214)
		
		vpSimplifyMenu ("vp1")
		
		If (Get database localization:C1009(Current localization:K5:22)="ja")
			vpLocaliseMenu ("vp1")
		End if 
		
		vpCustomiseBasicMenu ("vp1")
		
	Else 
		
End case 