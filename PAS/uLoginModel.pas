unit uLoginModel;

interface
  Type
   TLoginModel = class
    strict private
      // campos
      FUsuario: string;
      FSenha: string;

      // getters
      function GetUsuario: string;
      function GetSenha: string;

      // setters
      procedure SetUsuario(const Value: string);
      procedure SetSenha(const Value: string);

    public
      // propriedades
      property Usuario : string read GetUsuario write SetUsuario;
      property Senha : string read GetSenha write SetSenha;
   end;

implementation

{ TLoginModel }

function TLoginModel.GetSenha: string;
begin
 Result := FSenha;
end;

function TLoginModel.GetUsuario: string;
begin
 Result := FUsuario;
end;

procedure TLoginModel.SetSenha(const Value: string);
begin
  FSenha := Value;
end;

procedure TLoginModel.SetUsuario(const Value: string);
begin
  FUsuario := Value;
end;

end.
