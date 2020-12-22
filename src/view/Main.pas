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
  Vcl.StdCtrls;

type
  TForm1 = class(TForm)
    Button1: TButton;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

uses
  System.StrUtils, Delegates.interfaces, Acess, Finances;

procedure TForm1.Button1Click(Sender: TObject);
VAR
  lCliente: IClient;
  lFinanceiro: IFinances;
  lAcessos: IAccess;
begin
  lFinanceiro := TSimpleFinances.New;
  lAcessos := TSimpleAccess.New;
  lCliente := TTheClient.New(lAcessos);
  try
    ShowMessage(CurrToStr((lCliente as IFinances).Current));
    ShowMessage((lCliente as IAccess).List);
  except
    on E: Exception do
  end;

end;

end.