unit View.Principal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Controller.Maquina, Vcl.StdCtrls, Vcl.Mask;

type
  TForm1 = class(TForm)
    Button1: TButton;
    mem_ListChange: TMemo;
    lbl_ValueChange: TLabel;
    edt_Value: TEdit;
    procedure Button1Click(Sender: TObject);
    procedure OnFormaterExit(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
var
  list: TList;
begin
  mem_ListChange.Lines.Clear;
  list := TList.Create;
  try
    TMaquina.Create.ListChange(list).MontarTroco(StrToFloat(edt_Value.Text))
      .ReturnListChange(mem_ListChange);
  finally
    FreeAndNil(list);
  end;

end;

procedure TForm1.OnFormaterExit(Sender: TObject);
begin
  if TEdit(Sender).Text = EmptyStr then
    TEdit(Sender).Text := '0,00';

  TEdit(Sender).Text := FormatFloat('0.00', StrToFloat(TMaskEdit(Sender).Text));
end;

end.
