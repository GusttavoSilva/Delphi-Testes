program QS6;

uses
  VCL.Forms,
  Controller.Substitui in 'source\controller\Controller.Substitui.pas',
  Interfaced.ISubstitui in 'source\interface\Interfaced.ISubstitui.pas',
  View.Principal in 'source\view\View.Principal.pas' {Form1};

{$R *.RES}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
