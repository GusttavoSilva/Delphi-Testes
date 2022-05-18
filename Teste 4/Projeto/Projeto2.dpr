program Projeto2;

uses
  Vcl.Forms,
  View.Principal in 'source\view\View.Principal.pas' {Form1},
  Interfaced.ListPhrases in 'source\interface\Interfaced.ListPhrases.pas',
  Controller.ListPhrases in 'source\Controller\Controller.ListPhrases.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
