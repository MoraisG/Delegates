unit Main;

interface

uses
  Winapi.Windows,
  Winapi.Messages,
  System.SysUtils,
  System.Variants,
  System.Classes,
  Vcl.Graphics,
  Vcl.Controls,
  Vcl.Forms,
  Vcl.Dialogs,
  Client,
  Delegates.interfaces,
  Vcl.StdCtrls;

type
  TForm1 = class(TForm)
    btnNormal: TButton;
    btnAcess: TButton;
    btnFin: TButton;
    btnAmbos: TButton;
    procedure btnNormalClick(Sender: TObject);
    procedure btnAcessClick(Sender: TObject);
    procedure btnAmbosClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btnFinClick(Sender: TObject);
  private
    { Private declarations }
    FFinanceiro: IFinances;
    FAcesso: IAccess;
    procedure ExibirMensagem(objClient: IClient);
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

uses
  System.StrUtils,
  Acess,
  Finances;

procedure TForm1.btnAcessClick(Sender: TObject);
var
  lCliente: IClient;
begin

  lCliente := TTheClient.New(FAcesso);

  try
    FAcesso.List('Obi-Wan');
    (lCliente as IFinances).SetCurrent(1.58);
    self.ExibirMensagem(lCliente);
  except
    on E: Exception do
    begin

    end;
  end;
end;

procedure TForm1.btnAmbosClick(Sender: TObject);
var
  lCliente: IClient;
begin

  lCliente := TTheClient.New(FFinanceiro, FAcesso);

  try
    FAcesso.List('Palpatine');
    FFinanceiro.SetCurrent(4589.985);
    self.ExibirMensagem(lCliente);
  except
    on E: Exception do
    begin

    end;
  end;
end;

procedure TForm1.btnFinClick(Sender: TObject);
var
  lCliente: IClient;
begin
  lCliente := TTheClient.New(FFinanceiro);

  try
    FFinanceiro.SetCurrent(58.96);
    (lCliente as IAccess).List('Yoda');
    self.ExibirMensagem(lCliente);
  except
    on E: Exception do
  end;

end;

procedure TForm1.btnNormalClick(Sender: TObject);
var
  lCliente: IClient;
begin
  lCliente := TTheClient.New();

  try
    (lCliente as IFinances).SetCurrent(235.5589);
    (lCliente as IAccess).List('Vader');
    self.ExibirMensagem(lCliente);
  except
    on E: Exception do
  end;

end;

procedure TForm1.ExibirMensagem(objClient: IClient);
begin
  ShowMessage((objClient as IFinances).AsString);
  ShowMessage((objClient as IAccess).AsString);
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
  FAcesso := TSimpleAccess.New;
  FFinanceiro := TSimpleFinances.New;
end;

end.
