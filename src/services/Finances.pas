unit Finances;

interface

uses Delegates.interfaces;

type
  TSimpleFinances = class(TInterfacedObject, IFinances)
  private
  FCurrent : Currency;
  public
    constructor Create();
    destructor Destroy; override;
    function SetCurrent(Value : Currency) : IFinances;
    function Current: Currency;
    function AsString: string;
    class function New(): IFinances;

  end;

implementation
  uses
  System.SysUtils;
{ TSimpleFinances }

function TSimpleFinances.AsString: string;
begin
  Result := 'R$ ' + FormatCurr('0.00',FCurrent);
end;

constructor TSimpleFinances.Create();
begin

end;

function TSimpleFinances.Current: Currency;
begin
  Result := FCurrent;
end;

destructor TSimpleFinances.Destroy;
begin

  inherited;
end;

class function TSimpleFinances.New(): IFinances;
begin
  Result := Self.Create();
end;

function TSimpleFinances.SetCurrent(Value: Currency): IFinances;
begin
 Result:= self;
 FCurrent := Value;
end;

end.
