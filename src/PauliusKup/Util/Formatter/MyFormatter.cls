/* --------------------------------------------------------------------------------
   Project     : Service Framework
   File        : MyFormatter.cls
   Program     :  system/common/formatter/MyFormatter.cls
   Description : Primitive type formatter interface
   Created     : 2023-08-10
   Notes       : OPEN. Add missing type when needed
-------------------------------------------------------------------------------- */

BLOCK-LEVEL ON ERROR UNDO, THROW.

USING PauliusKup.Util.Formatter.IFormatter.
USING PauliusKup.Util.Formatter.MyFormatter.

CLASS PauliusKup.Util.Formatter.MyFormatter IMPLEMENTS IFormatter:
  DEFINE PRIVATE STATIC VARIABLE oInstance AS MyFormatter NO-UNDO.
  
  CONSTRUCTOR PRIVATE MyFormatter():
  END.

  METHOD PUBLIC STATIC MyFormatter GetInstance():
    IF NOT VALID-OBJECT(MyFormatter:oInstance) THEN
      MyFormatter:oInstance = NEW MyFormatter().
    
    RETURN MyFormatter:oInstance.
  END METHOD.

  METHOD PUBLIC CHARACTER GetChar(pc AS CHARACTER):
    RETURN STRING(pc).
  END METHOD.

  METHOD PUBLIC CHARACTER GetChar(pi AS INTEGER):
    RETURN STRING(pi).
  END METHOD.

  METHOD PUBLIC CHARACTER GetChar(pd AS DECIMAL):
    RETURN STRING(pd).
  END METHOD.

END CLASS.