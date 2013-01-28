unit uLoginDAO;

interface

uses uLoginModel, DBXCommon, SysUtils;

  type
   TLoginDAO = class

    public
     function Logar (LoginModel : TLoginModel) :  Boolean;
   end;

implementation

uses
  Dialogs;

{ TLoginDAO }

function TLoginDAO.Logar(LoginModel: TLoginModel): Boolean;
 var
  dbcon     : TDBXConnection;
  sql       : TDBXCommand;
  parametro : TDBXParameter;
  reader    : TDBXReader;
begin
 try
  try
    dbcon :=  TDBXConnectionFactory.GetConnectionFactory.GetConnection('LOGINOO',
          'sysdba','masterkey');
    sql := dbcon.CreateCommand;
    sql.Text := 'SELECT * FROM USUARIOS WHERE UPPER(USUARIO) = UPPER(?) ' +
                ' AND UPPER(SENHA) = UPPER(?)';

    // parametro Usuario
    parametro := sql.CreateParameter;
    parametro.DataType := TDBXDataTypes.WideStringType;
    parametro.Name := 'pUsuario';
    sql.Parameters.AddParameter(parametro);
    sql.Parameters.Parameter[0].Value.SetWideString(LoginModel.Usuario);

    // parametro Senha
    parametro := sql.CreateParameter;
    parametro.DataType := TDBXDataTypes.WideStringType;
    parametro.Name := 'pSenha';
    sql.Parameters.AddParameter(parametro);
    sql.Parameters.Parameter[1].Value.SetWideString(LoginModel.Senha);

    sql.Prepare;
    reader := sql.ExecuteQuery;

    while (reader.Next) do
      Result := True;

  except on E : Exception do
    ShowMessage('Não foi possível logar no sistema' + #13 + E.Message);
  end;
 finally
  FreeAndNil(dbcon);
  FreeAndNil(sql);
  FreeAndNil(reader);
 end;
end;

end.
