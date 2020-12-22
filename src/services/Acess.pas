unit Acess;

interface

uses Delegates.interfaces;

type
  TSimpleAccess = class(TInterfacedObject, IAccess)
  public
    constructor Create();
    destructor Destroy; override;
    function List: String;
    function AsString: string;
    class function New(): IAccess;
  end;

implementation

{ TSimpleAccess }

function TSimpleAccess.AsString: string;
begin
  Result := Self.ClassName;
end;

constructor TSimpleAccess.Create();
begin

end;

destructor TSimpleAccess.Destroy;
begin

  inherited;
end;

function TSimpleAccess.List: String;
begin
  Result := 'Lista';
end;

class function TSimpleAccess.New(): IAccess;
begin
  Result := Self.Create();
end;

end.
