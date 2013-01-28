object dm_dados: Tdm_dados
  OldCreateOrder = False
  Height = 150
  Width = 215
  object LOGINOO: TSQLConnection
    ConnectionName = 'LOGINOO'
    DriverName = 'FIREBIRD'
    GetDriverFunc = 'getSQLDriverINTERBASE'
    LibraryName = 'dbxfb.dll'
    LoginPrompt = False
    Params.Strings = (
      'drivername=FIREBIRD'
      'blobsize=-1'
      'commitretain=False'
      
        'Database=C:\Users\thiago\Documents\GitHub\Artigos\LoginOO\DataBa' +
        'se\Banco.FDB'
      'localecode=0000'
      'password=masterkey'
      'rolename=RoleName'
      'sqldialect=3'
      'isolationlevel=ReadCommitted'
      'user_name=sysdba'
      'waitonlocks=True'
      'trim char=False')
    VendorLib = 'fbclient.DLL'
    Left = 32
    Top = 20
  end
end
