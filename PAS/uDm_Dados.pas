unit uDm_Dados;

interface

uses
  SysUtils, Classes, DBXFirebird, DB, SqlExpr;

type
  Tdm_dados = class(TDataModule)
    LOGINOO: TSQLConnection;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dm_dados: Tdm_dados;

implementation

{$R *.dfm}

end.
