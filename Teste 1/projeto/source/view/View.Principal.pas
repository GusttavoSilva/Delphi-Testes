unit View.Principal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm1 = class(TForm)
    btn_SendTextToReplace: TButton;
    mem_TextChanged: TMemo;
    edt_TextToChanged: TEdit;
    edt_OldText: TEdit;
    edt_NewText: TEdit;
    lbl_OldText: TLabel;
    lbl_TextToChanged: TLabel;
    lbl_NewText: TLabel;
    procedure btn_SendTextToReplaceClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

uses Controller.Substitui;

procedure TForm1.btn_SendTextToReplaceClick(Sender: TObject);
begin
  mem_TextChanged.Lines.Add(TSubstitui.create.Substituir(edt_TextToChanged.Text,
    edt_OldText.Text, edt_NewText.Text));
end;

end.
