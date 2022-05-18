program PojectComplexo;

uses
  Vcl.Forms,
  View.Principal in 'Source\View\View.Principal.pas' {Form1},
  Interfaced.INetwork in 'Source\Interface\Interfaced.INetwork.pas',
  Controller.Network in 'Source\Controller\Controller.Network.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
