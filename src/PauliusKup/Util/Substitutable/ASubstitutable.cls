/* --------------------------------------------------------------------------------
   Project     : Service Framework
   File        : ASubstitutable.cls
   Program     :  system/common/substitutable/ASubstitutable.cls
   Description : Abstract implementation for Substitutable using OE SUBSTITUTE
   Created     : 2023-08-10
   Notes       : OPEN. Implement necessary types. Uses given formatter.
-------------------------------------------------------------------------------- */

BLOCK-LEVEL ON ERROR UNDO, THROW.

USING PauliusKup.Util.Formatter.IFormatter.
USING PauliusKup.Util.Substitutable.ISubstitutable.

CLASS PauliusKup.Util.Substitutable.ASubstitutable ABSTRACT IMPLEMENTS ISubstitutable:

  DEFINE PRIVATE VARIABLE cText AS CHARACTER NO-UNDO INIT "".
  DEFINE PRIVATE VARIABLE iCounter AS INTEGER NO-UNDO INIT 1.
  DEFINE PROTECTED VARIABLE cStrings AS CHARACTER EXTENT 9.
  DEFINE PRIVATE VARIABLE oFormatter AS IFormatter NO-UNDO.

  METHOD PROTECTED VOID SetFormatter(poFormatter AS IFormatter):
    THIS-OBJECT:oFormatter = poFormatter.
  END METHOD.

  METHOD PROTECTED VOID SetText(pcText AS CHARACTER):
    THIS-OBJECT:cText = pcText.
  END METHOD.

  METHOD PUBLIC ISubstitutable Add(pc AS CHARACTER):
    THIS-OBJECT:cStrings[iCounter] = THIS-OBJECT:oFormatter:GetChar(pc).
    iCounter = iCounter + 1.
    RETURN THIS-OBJECT.
  END METHOD.

  METHOD PUBLIC ISubstitutable Add(pi AS INTEGER):
    THIS-OBJECT:cStrings[iCounter] = THIS-OBJECT:oFormatter:GetChar(pi).
    iCounter = iCounter + 1.
    RETURN THIS-OBJECT.
  END METHOD.

  METHOD PUBLIC ISubstitutable Add(pd AS DECIMAL):
    THIS-OBJECT:cStrings[iCounter] = THIS-OBJECT:oFormatter:GetChar(pd).
    iCounter = iCounter + 1.
    RETURN THIS-OBJECT.
  END METHOD.
 
  METHOD PUBLIC CHARACTER GetString():
    RETURN SUBSTITUTE(cText,
    cStrings[1],
    cStrings[2],
    cStrings[3],
    cStrings[4],
    cStrings[5],
    cStrings[6],
    cStrings[7],
    cStrings[8],
    cStrings[9]
    ).
  END METHOD.

  METHOD PUBLIC INTEGER GetCount():
    RETURN iCounter.
  END METHOD.
END CLASS.