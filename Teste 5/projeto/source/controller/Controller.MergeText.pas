unit Controller.MergeText;

interface

uses
  Interfaced.MergeText, System.SysUtils, Vcl.StdCtrls,
  System.StrUtils;

type

  TMergeText = class(TInterfacedObject, IMergeText)
  public
    constructor create;
    destructor destroy; override;
    class function new: IMergeText;
    function MergedText(const Str1, str2: string; Sender: TObject): IMergeText;
    function QuantCaracAndNumber(Str: String; strCarac, StrNumber: TObject)
      : IMergeText;
    function GetStrNumber(const S: string): string;
  end;

implementation

{ TMergeText }

constructor TMergeText.create;
begin

end;

destructor TMergeText.destroy;
begin

  inherited;
end;

class function TMergeText.new: IMergeText;
begin
  result := self.create;
end;

function TMergeText.GetStrNumber(const S: string): string;
var
  vText: PChar;
begin
  vText := PChar(S);
  result := '';

  while (vText^ <> #0) do
  begin
{$IFDEF UNICODE}
    if CharInSet(vText^, ['0' .. '9']) then
{$ELSE}
    if vText^ in ['0' .. '9'] then
{$ENDIF}
      result := result + vText^;

    Inc(vText);
  end;

end;

function TMergeText.MergedText(const Str1, str2: string; Sender: TObject)
  : IMergeText;
var
  i, ConjuntoA, conjuntoB, Total: Integer;
  ValorA, valorB: string;
begin
  result := self;
  Total := Length(Str1) + Length(str2);
  ConjuntoA := Length(Str1);
  conjuntoB := Length(str2);

  ValorA := Str1;
  valorB := ReverseString(str2);

  TEdit(Sender).Clear;

  for i := 1 to Total do
  begin

    if ConjuntoA > 0 then
      TEdit(Sender).Text := TEdit(Sender).Text + ValorA[i];

    if conjuntoB > 0 then
      TEdit(Sender).Text := TEdit(Sender).Text + valorB[i];

    dec(ConjuntoA);
    dec(conjuntoB);
  end;

end;

function TMergeText.QuantCaracAndNumber(Str: String;
  strCarac, StrNumber: TObject): IMergeText;
var
  Total, totalNumeros: Integer;
begin
  result := self;
  Total := Length(Str);
  totalNumeros := Length(GetStrNumber(Str));

  TLabel(StrNumber).Caption := 'Quantidade de Números : ' +
    IntToStr(totalNumeros);

  TLabel(strCarac).Caption := 'Quantidade de outros caracteres: ' +
    IntToStr(Total - totalNumeros);
end;

end.
