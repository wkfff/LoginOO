unit uFrmLogin;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, uLoginDAO, uLoginModel;

type
  TfrmLogin = class(TForm)
    edtUsuario: TEdit;
    edtSenha: TEdit;
    lblUsuario: TLabel;
    lblSenha: TLabel;
    btnEntrar: TButton;
    btnFechar: TButton;
    lblTitulo: TLabel;
    procedure btnFecharClick(Sender: TObject);
    procedure btnEntrarClick(Sender: TObject);
  private
    procedure EncerraAplicacao;
    procedure Logar;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmLogin: TfrmLogin;

implementation

{$R *.dfm}

{ Observações:

  No controle edtSenha coloquei a propriedade Font como Wingdings,
  e a propriedade passwordChar como i, para aparecer as bolinhas
}

procedure TfrmLogin.btnEntrarClick(Sender: TObject);
begin
 Logar;
end;

procedure TfrmLogin.btnFecharClick(Sender: TObject);
begin
 EncerraAplicacao;
end;

procedure TfrmLogin.EncerraAplicacao;
begin
  Application.Terminate;
end;

procedure TfrmLogin.Logar;
var
  LoginModel: TLoginModel;
  LoginDAO: TLoginDAO;
begin
 LoginModel := TLoginModel.Create;
 LoginDAO := TLoginDAO.Create;

 if (edtUsuario.Text = '') or (edtSenha.Text = '') then
  raise Exception.Create('Digite usuário e senha')
 else
  begin
    try
      LoginModel.Usuario := edtUsuario.Text;
      LoginModel.Senha := edtSenha.Text;
        if LoginDAO.Logar(LoginModel) then
         begin
          ShowMessage('Acesso Autorizado');
         end
        else
          ShowMessage('Acesso nao liberado');
    finally
      FreeAndNil(LoginModel);
      FreeAndNil(LoginDAO);
    end;
  end;
end;

end.
