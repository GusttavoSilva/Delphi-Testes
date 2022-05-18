unit Controller.Substitui;

interface

uses
  Interfaced.ISubstitui, System.SysUtils;

type
  TSubstitui = class(TInterfacedObject, ISubstitui)

  public
    function Substituir(Str, Velho, Novo: String): String;
  end;

implementation

{ TSubstitui }

function TSubstitui.Substituir(Str, Velho, Novo: String): String;
var
  newText: String;
begin

  newText := EmptyStr;

  while Pos(Velho, Str) > 0 do
  begin
    newText := newText + Copy(Str, 0, Pos(Velho, Str) - 1) + Novo;
    Str := Copy(Str, Pos(Velho, Str) + Length(Velho), Length(Str));
  end;

  Result := newText + Str;
end;

end.
