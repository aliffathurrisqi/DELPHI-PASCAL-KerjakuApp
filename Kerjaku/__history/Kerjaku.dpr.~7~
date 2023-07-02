program Kerjaku;

uses
  Vcl.Forms,
  UnitLogin in 'UnitLogin.pas' {fLogin},
  UnitMenu in 'UnitMenu.pas' {fMenu},
  UnitJobAdd in 'UnitJobAdd.pas' {fJobAdd};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfLogin, fLogin);
  Application.CreateForm(TfMenu, fMenu);
  Application.CreateForm(TfJobAdd, fJobAdd);
  Application.Run;
end.
