unit View.Principal;

interface

uses
  Winapi.Windows,
  Winapi.Messages,
  System.SysUtils,
  System.Variants,
  System.Classes,
  Vcl.Graphics,
  Vcl.Controls,
  Vcl.Forms,
  Vcl.Dialogs,
  Vcl.StdCtrls,
  System.StrUtils;

type
  TForm1 = class(TForm)
    edtConjuntoA: TEdit;
    lblConjuntoA: TLabel;
    EdtConjuntoB: TEdit;
    Label1: TLabel;
    lblQuantNumero: TLabel;
    lblQuantCarac: TLabel;
    Button1: TButton;
    edtResultado: TEdit;
    Label2: TLabel;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }

  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

uses Controller.MergeText;

procedure TForm1.Button1Click(Sender: TObject);
begin
  TMergeText.new.MergedText(edtConjuntoA.Text, EdtConjuntoB.Text, edtResultado)
    .QuantCaracAndNumber(edtResultado.Text, lblQuantCarac, lblQuantNumero);
end;

end.
