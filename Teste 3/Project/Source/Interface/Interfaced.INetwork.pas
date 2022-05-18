unit Interfaced.INetwork;

interface

uses
  System.Classes;

type
  INetwork = interface
    ['{06F7D5BF-E1FB-4F36-8C55-5D8A213063DA}']
    function ConectionsList: TStringList;
    procedure Connect(const Conection1, Conection2: integer);
    procedure ListConnections(Sender: TObject);
    function Query(const ElementVerify1, ElementVerify2: integer): String;
  end;

implementation

end.
