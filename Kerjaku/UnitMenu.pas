unit UnitMenu;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.Imaging.pngimage,
  Vcl.StdCtrls, Vcl.ComCtrls, Data.DB, MemDS, DBAccess, MyAccess, Vcl.Grids,
  Vcl.DBGrids;

type
  TfMenu = class(TForm)
    Panel2: TPanel;
    Panel1: TPanel;
    Panel3: TPanel;
    Image1: TImage;
    lblNama: TLabel;
    btnKategori: TPanel;
    btnUser: TPanel;
    lblRoles: TLabel;
    PageControl: TPageControl;
    tabKegiatan: TTabSheet;
    tabKetegori: TTabSheet;
    tabUser: TTabSheet;
    btnLogout: TPanel;
    btnKegiatan: TPanel;
    Panel4: TPanel;
    Label1: TLabel;
    gridKegiatan: TDBGrid;
    QDATAKEGIATAN: TMyQuery;
    QSQL: TMyQuery;
    sourceKegiatan: TDataSource;
    btnJobAdd: TButton;
    btnJobEdit: TButton;
    btnJobDelete: TButton;
    procedure FormActivate(Sender: TObject);
    procedure ActivateMenu(x1, x2, x3, x4: integer);
    procedure btnKegiatanClick(Sender: TObject);
    procedure btnKategoriClick(Sender: TObject);
    procedure btnUserClick(Sender: TObject);
    procedure btnLogoutClick(Sender: TObject);
    procedure btnJobAddClick(Sender: TObject);
    procedure CheckMenu();
    procedure btnKegiatanMouseEnter(Sender: TObject);
    procedure btnKategoriMouseEnter(Sender: TObject);
    procedure btnUserMouseEnter(Sender: TObject);
    procedure btnUserMouseLeave(Sender: TObject);
    procedure btnKategoriMouseLeave(Sender: TObject);
    procedure btnKegiatanMouseLeave(Sender: TObject);
    procedure btnLogoutMouseEnter(Sender: TObject);
    procedure btnLogoutMouseLeave(Sender: TObject);
    procedure btnJobDeleteClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    username, nama, roles : string;
    mKegiatan, mKategori, mUser : boolean;
  end;

var
  fMenu: TfMenu;

implementation

uses UnitLogin, UnitJobAdd;

{$R *.dfm}

procedure TfMenu.btnKegiatanClick(Sender: TObject);
begin
ActivateMenu(1,0,0,0);
CheckMenu();
end;


procedure TfMenu.btnKegiatanMouseEnter(Sender: TObject);
begin
    btnKegiatan.color := clHotLight;
    btnKegiatan.font.color := clWhite;
end;

procedure TfMenu.btnKegiatanMouseLeave(Sender: TObject);
begin
CheckMenu();
end;

procedure TfMenu.btnLogoutClick(Sender: TObject);
begin
ActivateMenu(0,0,0,1);
CheckMenu();
end;

procedure TfMenu.btnLogoutMouseEnter(Sender: TObject);
begin
    btnLogout.color := clHotLight;
    btnLogout.font.color := clWhite;
end;

procedure TfMenu.btnLogoutMouseLeave(Sender: TObject);
begin
    btnLogout.color := clHighlight;
    btnLogout.font.color := clwhite;
end;

procedure TfMenu.btnJobAddClick(Sender: TObject);
begin
fJobAdd.ShowModal;
end;

procedure TfMenu.btnJobDeleteClick(Sender: TObject);
begin
    if MessageDlg('Ingin Menghapus ' + gridKegiatan.Fields[1].AsString + '?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
      begin
        QSQL.close;
        QSQL.SQL.Clear;
        QSQL.SQL.Add('DELETE FROM JOB WHERE id =' + gridKegiatan.Fields[0].AsString);
        QSQL.Execute;
        QSQL.close;
        QSQL.SQL.Clear;

        QDATAKEGIATAN.Close;
        QDATAKEGIATAN.Open;
        gridKegiatan.Columns[0].Width := 0;
      end
    else
      begin
        ActivateMenu(1,0,0,0);
      end;
end;

procedure TfMenu.btnKategoriClick(Sender: TObject);
begin
ActivateMenu(0,1,0,0);
CheckMenu();
end;


procedure TfMenu.btnKategoriMouseEnter(Sender: TObject);
begin
    btnKategori.color := clHotLight;
    btnKategori.font.color := clWhite;
end;

procedure TfMenu.btnKategoriMouseLeave(Sender: TObject);
begin
CheckMenu();
end;

procedure TfMenu.btnUserClick(Sender: TObject);
begin
ActivateMenu(0,0,1,0);
CheckMenu();
end;

procedure TfMenu.btnUserMouseEnter(Sender: TObject);
begin
    btnUser.color := clHotLight;
    btnUser.font.color := clWhite;
end;

procedure TfMenu.btnUserMouseLeave(Sender: TObject);
begin
  CheckMenu();
end;

procedure TfMenu.CheckMenu();
begin
if mKegiatan = true then
  begin
    btnKegiatan.color := clwhite;
    btnKegiatan.font.color := clHighlight;
    PageControl.ActivePage := tabKegiatan;
  end;
if mKegiatan = false then
  begin
    btnKegiatan.color := clHighlight;
    btnKegiatan.font.color := clwhite;
  end;

if mKategori = true then
  begin
    btnKategori.color := clwhite;
    btnKategori.font.color := clHighlight;
    PageControl.ActivePage := tabKetegori;
  end
else
  begin
    btnKategori.color := clHighlight;
    btnKategori.font.color := clwhite;
  end;

if mUser = true then
  begin
    btnUser.color := clwhite;
    btnUser.font.color := clHighlight;
    PageControl.ActivePage := tabUser;
  end
else
  begin
    btnUser.color := clHighlight;
    btnUser.font.color := clwhite;
  end;
end;

procedure TfMenu.FormActivate(Sender: TObject);
begin

mKegiatan := true;
mKategori := false;
mUser := false;

QDATAKEGIATAN.Close;
QDATAKEGIATAN.SQL.Clear;
QDATAKEGIATAN.SQL.Add('SELECT ID,Kegiatan, Kategori, Keterangan, Mulai, Sampai FROM view_job WHERE username = ''' + username + '''');
QDATAKEGIATAN.Open;

//gridKegiatan.Fields[0].DisplayWidth := 0;
gridKegiatan.Columns[0].Width := 0;

lblNama.Caption := username;
lblRoles.Caption := roles;
ActivateMenu(1,0,0,0);

if roles = 'Admin' then btnUser.Visible := true;
end;

procedure TfMenu.ActivateMenu(x1, x2, x3, x4: integer);
begin
if x1 = 1 then
  begin
    mKegiatan := true;
  end;
if x1 = 0 then
  begin
    mKegiatan := false;
  end;

if x2 = 1 then
  begin
    mKategori := true;
  end;
if x2 = 0 then
  begin
    mKategori := false;
  end;

if x3 = 1 then
  begin
    mUser := true;
  end;
if x3 = 0 then
  begin
    mUser := false;
  end;

if x4 = 1 then
  begin
    btnLogout.color := clwhite;
    btnLogout.font.color := clHighlight;

    if MessageDlg('Ingin Logout ?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
      begin
        fMenu.Close;
        fLogin.edUsername.SetFocus;
//      Application.Terminate;
      end
    else
      begin
        ActivateMenu(1,0,0,0);
      end;

  end;
if x4 = 0 then
  begin
    btnLogout.color := clHighlight;
    btnLogout.font.color := clwhite;
  end;


end;

end.
