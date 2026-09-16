/* --------------------------------------------------------------------------------
   Project     : Service Framework
   File        : ISubstitutable.cls
   Program     :  system/common/substitutable/ISubstitutable.cls
   Description : Interface for Substitutable
   Created     : 2023-08-10
   Notes       : CLOSED. Uses include for simplification and workarounds (see IError)
-------------------------------------------------------------------------------- */

BLOCK-LEVEL ON ERROR UNDO, THROW.

USING PauliusKup.Util.Substitutable.ISubstitutable.

INTERFACE PauliusKup.Util.Substitutable.ISubstitutable:
  {PauliusKup/Util/Substitutable/substitutableMethods.i ISubstitutable}

  METHOD PUBLIC CHARACTER GetString().
  METHOD PUBLIC INTEGER GetCount().
END INTERFACE.