unit Controller.Maquina;

interface

uses
  Interfaced.IMaquina, Classes, Controller.Troco, dialogs, SysUtils,
  Vcl.StdCtrls;

type

  TMaquina = class(TInterfacedObject, IMaquina)
  private
    list: TList;
  public
    constructor create;
    destructor destroy; override;

    function ListChange(ListChange: TList): IMaquina;
    function MontarTroco(Troco: Double): IMaquina;
    function ReturnListChange(Sender: TObject): IMaquina;
  end;

implementation

uses math;

constructor TMaquina.create;
begin
end;

destructor TMaquina.destroy;
begin
  inherited;
end;

function TMaquina.ListChange(ListChange: TList): IMaquina;
begin
  result := self;
  list := ListChange;
end;

function TMaquina.MontarTroco(Troco: Double): IMaquina;
var
  ballot: TCedula;
  equivalent: Double;
begin
  result := self;

  for ballot := Low(CValorCedula) to High(CValorCedula) do
  begin
    equivalent := Trunc(Troco / CValorCedula[ballot]);
    if equivalent >= 1 then
    begin
      list.Add(TTroco.create(ballot, Trunc(equivalent)));
      Troco := RoundTo(Troco - (equivalent * CValorCedula[ballot]), -2);
    end;

    if Troco <= 0 then
      Break;
  end;
end;

function TMaquina.ReturnListChange(Sender: TObject): IMaquina;
var
  count: integer;
  tipBallot: String;
begin
  result := self;
  for count := 0 to pred(list.count) do
  begin
    case CValorCedula[TTroco(list[count]).GetTipo] < 2 of
      true:
        begin
          tipBallot := ', Moeda: ';
        end;
      false:
        begin
          tipBallot := ', Cédula: ';
        end;
    end;

    TMemo(Sender).Lines.Add('Quantidade:' + TTroco(list[count])
      .GetQuantidade.ToString + tipBallot + FormatFloat(', R$#,##0.00',
      CValorCedula[TTroco(list[count]).GetTipo]));
  end;

end;

end.
