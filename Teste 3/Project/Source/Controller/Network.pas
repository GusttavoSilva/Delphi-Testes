unit Network;

interface

uses
  Interfaced.INetwork, System.Classes, System.SysUtils, Vcl.StdCtrls;

type
  TNetwork = class(TInterfacedObject, INetwork)
  private
    FConnection1, FConnection2: integer;

    FConectionsList: TStringList;
    FCapacityOfConnection: integer;
    ActiveConnections: integer;
    function ConnectionStillAvailable: Boolean;
    // procedure VerificaLigacao(var ConectionElement: Boolean;
    // const VerifyElement: Integer; var _PConexoes: string);
  public
    constructor Create(const NumberConnections: integer);
    destructor Destroy; override;
    class function New(const NumberConnections: integer): INetwork;

    procedure ConnectionOne(Connection1: integer);
    procedure ConnectionTwo(Connection2: integer);

    function ConectionsList: TStringList;
    procedure Connect(const Conection1, Conection2: integer);
    // function Query(const Verifyconection1, Verifyconection2: Integer): String;
    procedure ListConnections(Sender: TObject);
  end;

implementation

{ TNetwork }

class function TNetwork.New(const NumberConnections: integer): INetwork;
begin
  Result := Self.Create(NumberConnections);
end;

constructor TNetwork.Create(const NumberConnections: integer);
begin
  FConectionsList := TStringList.Create;
  FCapacityOfConnection := NumberConnections;
end;

destructor TNetwork.Destroy;
begin
  FreeAndNil(FConectionsList);
  inherited;
end;

function TNetwork.ConectionsList: TStringList;
begin
  Result := FConectionsList;
end;

procedure TNetwork.Connect(const Conection1, Conection2: integer);
var
  Index: integer;
begin
  if (Conection1 > 0) and (Conection2 > 0) then
  begin
    if ConnectionStillAvailable then
    begin
      if not FConectionsList.Find(Conection1.ToString + '=' +
        Conection2.ToString, Index) then
      begin
        FConectionsList.AddPair(Conection1.ToString, Conection2.ToString);
        ActiveConnections := FConectionsList.Count;
      end;
    end
    else
      raise Exception.Create('Limite permitido excedido.');
  end
  else
    raise Exception.Create('Não é permitido valores negativos.');

end;

procedure TNetwork.ConnectionOne(Connection1: integer);
begin
  FConnection1 := Connection1;
end;

procedure TNetwork.ConnectionTwo(Connection2: integer);
begin
  FConnection2 := Connection2;
end;

function TNetwork.ConnectionStillAvailable: Boolean;
begin
  Result := (ActiveConnections + 1) <= FCapacityOfConnection;
end;

procedure TNetwork.ListConnections(Sender: TObject);
var
  Count: integer;
begin
  TMemo(Sender).Clear;

  for Count := 0 to Pred(ConectionsList.Count) do
  begin
    TMemo(Sender).Lines.Add(ConectionsList.KeyNames[Count] + '  <-->  ' +
      ConectionsList.ValueFromIndex[Count]);
  end;
end;

// function TNetwork.Query(const Verifyconection1, Verifyconection2
// : Integer): String;
// CONST
// MSG_CONEXAO = 'A conexão %d tem vinculo com: ';
// MSG_NAO_CONECTADO = 'A conexão %d não tem nenhum vinculo.';
// var
// LConectionElement1, LConectionElement2: Boolean;
// AConexoes_1, AConexoes_2: String;
// begin
// LConectionElement1 := False;
// LConectionElement2 := False;
// if (Verifyconection1 > 0) and (Verifyconection2 > 0) then
// begin
// if ConnectionStillAvailable then
// begin
// VerificaLigacao(LConectionElement1, Verifyconection1, AConexoes_1);
// VerificaLigacao(LConectionElement2, Verifyconection2, AConexoes_2);
// end
// else
// raise Exception.Create('Consulta fora do limite de conexões permitidas.');
// end
// else
// raise Exception.Create('Permitido apenas valores positivos.');
//
// if LConectionElement1 then
// Result := Format(MSG_CONEXAO, [Verifyconection1]) + AConexoes_1
// else
// Result := Format(MSG_NAO_CONECTADO, [Verifyconection1]);
//
// if LConectionElement2 then
// Result := Result + sLineBreak + Format(MSG_CONEXAO, [Verifyconection2]) +
// AConexoes_2
// else
// Result := Result + sLineBreak + Format(MSG_NAO_CONECTADO,
// [Verifyconection2]);
//
// end;

end.
