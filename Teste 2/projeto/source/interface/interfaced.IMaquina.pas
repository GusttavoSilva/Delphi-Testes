unit interfaced.IMaquina;

interface

uses
  Classes, Vcl.StdCtrls;

type

  IMaquina = interface
    ['{3C966B93-EE1F-4A5A-9C15-24188B50EDEA}']

    function ListChange(listChange: TList):IMaquina;
    function MontarTroco(Troco: Double): IMaquina;
    function ReturnListChange(Sender: TObject): IMaquina;
  end;

implementation

end.
