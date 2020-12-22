unit Finances;

interface

uses Delegates.interfaces;

type
  TSimpleFinances = class(TInterfacedObject, IFinances)
  public
    constructor Create();
    destructor Destroy; override;
    function Current: Currency;
    function AsString: string;
    class function New(): IFinances;

  end;

implementation

{ TSimpleFinances }

function TSimpleFinances.AsString: string;
begin
  Result := Self.ClassName;
end;

constructor TSimpleFinances.Create();
begin

end;

function TSimpleFinances.Current: Currency;
begin
  Result := 200;
end;

destructor TSimpleFinances.Destroy;
begin

  inherited;
end;

class function TSimpleFinances.New(): IFinances;
begin
  Result := Self.Create();
end;

end.
