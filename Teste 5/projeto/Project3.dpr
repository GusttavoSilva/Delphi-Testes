program Project3;

uses
  Vcl.Forms,
  View.Principal in 'source\view\View.Principal.pas' {Form1},
  Interfaced.MergeText in 'source\interface\Interfaced.MergeText.pas',
  Controller.MergeText in 'source\controller\Controller.MergeText.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
