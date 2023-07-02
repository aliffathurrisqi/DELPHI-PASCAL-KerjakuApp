unit UnitLogin;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls,
  VCLTee.TeCanvas, Data.DB, MemDS, DBAccess, MyAccess;

type
  TfLogin = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    edPassword: TEdit;
    Label3: TLabel;
    edUsername: TEdit;
    lbl: TLabel;
    CONN: TMyConnection;
    QSQL: TMyQuery;
    btnMasuk: TPanel;
    procedure btnMasukClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure btnMasukMouseEnter(Sender: TObject);
    procedure btnMasukMouseLeave(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fLogin: TfLogin;

implementation
uses UnitMenu;

{$R *.dfm}

procedure TfLogin.btnMasukClick(Sender: TObject);
begin
if (edUsername.Text = '') or (edPassword.Text = '') then
  ShowMessage('Data harus diisi...!!!')
else
begin
  QSQL.Close;
  QSQL.SQL.Clear;
  QSQL.SQL.Add('SELECT * FROM users WHERE username = ''' + edUsername.Text + ''' AND password = md5(''' + edPassword.Text + ''')');
  QSQL.Execute;

  if(QSQL.RecordCount < 1) then
    begin
    ShowMessage('Username dan password tidak cocok...!!!');
    edPassword.Text := ''
    end
  else
    begin
      fMenu.username := QSQL.FieldByName('username').AsString;
      fMenu.nama := QSQL.FieldByName('nama').AsString;
      fMenu.roles := QSQL.FieldByName('roles').AsString;
      edPassword.Text := '';
      edUsername.Text := '';
      fMenu.ShowModal;
      fLogin.Close;
      QSQL.Close;
      QSQL.SQL.Clear;
    end;
  end;
end;

procedure TfLogin.btnMasukMouseEnter(Sender: TObject);
begin
btnMasuk.Color := clHotLight;
end;

procedure TfLogin.btnMasukMouseLeave(Sender: TObject);
begin
btnMasuk.Color := clHighlight;
end;

procedure TfLogin.FormActivate(Sender: TObject);
begin
edUsername.SetFocus;
end;

end.
