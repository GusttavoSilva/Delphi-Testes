program Projeto4;

uses
  Vcl.Forms,
  View.Principal in 'source\view\View.Principal.pas' {frm_NumberPerfect},
  Interfaced.NumberPerfect in 'source\Interface\Interfaced.NumberPerfect.pas',
  Controller.NumberPerfect in 'source\Controller\Controller.NumberPerfect.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(Tfrm_NumberPerfect, frm_NumberPerfect);
  Application.Run;
end.
