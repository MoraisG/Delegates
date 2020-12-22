unit Delegates.interfaces;

interface

type
  IFinances = interface
    ['{0FD7F545-95C3-4960-86EE-5059B11D7398}']
    function SetCurrent(Value: Currency): IFinances;
    function Current: Currency; // total no banco
    function AsString: string;
  end;

  IAccess = interface
    ['{7CB7A598-566B-4E6C-A602-6FFDE6BF22CB}']
    function List(Value: String): IAccess;
    function AsString: string;
  end;

  IClient = interface
    ['{6224B671-27C4-4035-83AD-21048CD1C758}']
  end;

implementation

end.
