unit View.Principal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Mask, Vcl.ExtCtrls,
  Interfaced.INetwork;

type
  TForm1 = class(TForm)
    conectLimit: TLabeledEdit;
    btn_NumberConnections: TButton;
    mem_Connections: TMemo;
    btn_SaveConnection: TButton;
    edt_ConnectionOne: TLabeledEdit;
    edt_ConnectionTwo: TLabeledEdit;
    btn_ListConnection: TButton;
    mem_ListConnect: TMemo;
    edt_ConfConnectionOne: TLabeledEdit;
    edt_ConfConnectionTwo: TLabeledEdit;
    procedure btn_NumberConnectionsClick(Sender: TObject);
    procedure btn_SaveConnectionClick(Sender: TObject);
    procedure btn_ListConnectionClick(Sender: TObject);
  private
    { Private declarations }
    FNetwork: INetwork;
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

uses Controller.Network;

procedure TForm1.btn_NumberConnectionsClick(Sender: TObject);
begin
  mem_ListConnect.Clear;
  mem_Connections.Clear;
  edt_ConnectionOne.Text := EmptyStr;
  edt_ConnectionTwo.Text := EmptyStr;
  edt_ConfConnectionOne.Text := EmptyStr;
  edt_ConfConnectionTwo.Text := EmptyStr;
  FNetwork := TNetwork.New(StrToInt(conectLimit.Text));
end;

procedure TForm1.btn_SaveConnectionClick(Sender: TObject);
begin

  if StrToInt(edt_ConnectionOne.Text) <> StrToInt(edt_ConnectionTwo.Text) then
  begin
    FNetwork.Connect(StrToInt(edt_ConnectionOne.Text),
      StrToInt(edt_ConnectionTwo.Text));
    FNetwork.ListConnections(mem_Connections);
  end
  else
    ShowMessage('Não é possivel conectar uma conexão a ela mesmo.');

end;

procedure TForm1.btn_ListConnectionClick(Sender: TObject);
begin
  mem_ListConnect.Clear;
  mem_ListConnect.Lines.add(FNetwork.Query(StrToInt(edt_ConfConnectionOne.Text),
    StrToInt(edt_ConfConnectionTwo.Text)));
end;

end.
