program QS7;

uses
  vcl.forms,
  View.Principal in 'source\view\View.Principal.pas' {Form1},
  interfaced.IMaquina in 'source\interface\interfaced.IMaquina.pas',
  Controller.Maquina in 'source\controller\Controller.Maquina.pas',
  Controller.Troco in 'source\controller\Controller.Troco.pas';

{$R *.RES}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.Run;

end.
