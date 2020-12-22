unit Acess;

interface

uses Delegates.interfaces;

type
  TSimpleAccess = class(TInterfacedObject, IAccess)
  private
    FLists : String;
  public
    constructor Create();
    destructor Destroy; override;
    function List(Value : String): IAccess;
    function AsString: string;
    class function New(): IAccess;
  end;

implementation

{ TSimpleAccess }

function TSimpleAccess.AsString: string;
begin
  Result := FLists;
end;

constructor TSimpleAccess.Create();
begin

end;

destructor TSimpleAccess.Destroy;
begin

  inherited;
end;

function TSimpleAccess.List(Value : String): IAccess;
begin
  Result := Self;
  FLists := Value;
end;

class function TSimpleAccess.New(): IAccess;
begin
  Result := Self.Create();
end;

end.
