program Delegates;

uses
  Vcl.Forms,
  Main in 'src\view\Main.pas' {Form1} ,
  Delegates.interfaces in 'src\interfaces\Delegates.interfaces.pas',
  Client in 'src\services\Client.pas',
  Acess in 'src\services\Acess.pas',
  Finances in 'src\services\Finances.pas';

{$R *.res}

begin
  ReportMemoryLeaksOnShutdown := True;
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.Run;

end.
