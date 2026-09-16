/* --------------------------------------------------------------------------------
   Project     : Service Framework
   File        : IFormatter.cls
   Program     :  system/common/formatter/IFormatter.cls
   Description : Primitive type formatter interface
   Created     : 2023-08-10
   Notes       : OPEN. Add missing type when needed
-------------------------------------------------------------------------------- */

BLOCK-LEVEL ON ERROR UNDO, THROW.

INTERFACE PauliusKup.Util.Formatter.IFormatter:
  METHOD PUBLIC CHARACTER GetChar(pc AS CHARACTER).
  METHOD PUBLIC CHARACTER GetChar(pi AS INTEGER).
  METHOD PUBLIC CHARACTER GetChar(pd AS DECIMAL).
END INTERFACE.