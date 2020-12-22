unit Client;

interface

uses Delegates.interfaces, Acess, Finances;

type
  TTheClient = class(TInterfacedObject, IClient, IFinances, IAccess)
  private
    FFinances: IFinances;
    FAccess: IAccess;
  public
    constructor Create; overload;
    constructor Create(lFinances: IFinances; lAcess: IAccess); overload;
    constructor Create(lFinances: IFinances); overload;
    constructor Create(lAcess: IAccess); overload;
    destructor Destroy; override;
    property Finances: IFinances read FFinances implements IFinances;
    property Access: IAccess read FAccess implements IAccess;
    class function New(lFinances: IFinances; lAcess: IAccess): IClient;
      overload;
    class function New(lFinances: IFinances): IClient; overload;
    class function New(lAcess: IAccess): IClient; overload;
    class function New(): IClient; overload;
  end;

implementation

{ TTheClient }

constructor TTheClient.Create;
begin
  FFinances := TSimpleFinances.New();
  FAccess := TSimpleAccess.New();
end;

constructor TTheClient.Create(lFinances: IFinances; lAcess: IAccess);
begin
  FFinances := lFinances;
  FAccess := lAcess;
end;

constructor TTheClient.Create(lFinances: IFinances);
begin
  FFinances := lFinances;
  FAccess := TSimpleAccess.New();
end;

constructor TTheClient.Create(lAcess: IAccess);
begin
  FAccess := lAcess;
  FFinances := TSimpleFinances.New();
end;

destructor TTheClient.Destroy;
begin

  inherited;
end;

class function TTheClient.New(lFinances: IFinances; lAcess: IAccess): IClient;
begin
  Result := Self.Create(lFinances, lAcess);
end;

class function TTheClient.New(lFinances: IFinances): IClient;
begin
  Result := Self.Create(lFinances);
end;

class function TTheClient.New(lAcess: IAccess): IClient;
begin
  Result := Self.Create(lAcess);
end;

class function TTheClient.New: IClient;
begin
  Result := Self.Create;
end;

end.
