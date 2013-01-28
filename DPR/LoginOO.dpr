program LoginOO;

uses
  Forms,
  uDm_Dados in '..\PAS\uDm_Dados.pas' {dm_dados: TDataModule},
  uFrmLogin in '..\PAS\uFrmLogin.pas' {frmLogin},
  uLoginDAO in '..\PAS\uLoginDAO.pas',
  uLoginModel in '..\PAS\uLoginModel.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(Tdm_dados, dm_dados);
  Application.CreateForm(TfrmLogin, frmLogin);
  Application.Run;
end.
