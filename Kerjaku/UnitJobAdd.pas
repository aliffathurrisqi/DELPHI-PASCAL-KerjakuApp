unit UnitJobAdd;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, Data.DB,
  MemDS, DBAccess, MyAccess, Vcl.ComCtrls, Vcl.WinXCalendars, Vcl.WinXPickers;

type
  TfJobAdd = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    edJob: TEdit;
    Label3: TLabel;
    cbKategori: TComboBox;
    Label4: TLabel;
    edDesc: TEdit;
    Label5: TLabel;
    Label6: TLabel;
    QCAT: TMyQuery;
    btnSave: TButton;
    Button1: TButton;
    QSQL: TMyQuery;
    Panel2: TPanel;
    dpStart: TCalendarPicker;
    tpStart: TTimePicker;
    Panel3: TPanel;
    dpEnd: TCalendarPicker;
    tpEnd: TTimePicker;
    procedure FormActivate(Sender: TObject);
    procedure btnSaveClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fJobAdd: TfJobAdd;

implementation

uses UnitMenu, UnitLogin;

{$R *.dfm}

procedure TfJobAdd.btnSaveClick(Sender: TObject);
var username, category_id : string;
begin

username := fMenu.username;

if (cbKategori.Text = 'Tidak Berkategori') then
  begin
    category_id := '1';
  end
else begin
  QSQL.Close;
  QSQL.SQL.Clear;
  QSQL.SQL.Add('SELECT * FROM category WHERE username = ''' + username + ''' AND name = ''' + cbKategori.Text + '''');
  QSQL.Open;

  category_id := QSQL.FieldByName('id').AsString;
  end;

if edJob.Text = '' then
  begin
    ShowMessage('Nama kegiatan tidak boleh kosong...');
  end
else
begin
  QSQL.close;
  QSQL.SQL.Clear;
  QSQL.SQL.Add('INSERT INTO job VALUES(NULL, ''' + edJob.Text + ''', '''+ category_id +''',''' + edDesc.Text + ''',''' + username + ''', STR_TO_DATE(''' +  DateToStr(dpStart.Date) + ' ' + TimeToStr(tpStart.Time) + ''', ''%d/%m/%Y %H:%i:%s''), STR_TO_DATE(''' + DateToStr(dpEnd.Date) + ' ' + TimeToStr(tpEnd.Time) +''', ''%d/%m/%Y %H:%i:%s''))');
  //edDesc.Text := QSQL.SQL.Text;
  QSQL.Execute;
  QSQL.close;
  QSQL.SQL.Clear;

  edJob.Clear;
  edDesc.Clear;
  cbKategori.Clear;
  dpStart.Date := now;
  dpEnd.Date := now;
  tpStart.Time := now;
  tpEnd.Time := now;

  fMenu.QDATAKEGIATAN.Close;
  fMenu.QDATAKEGIATAN.Open;
  fMenu.gridKegiatan.Columns[0].Width := 0;

  fJobAdd.Close;
end;

end;

procedure TfJobAdd.FormActivate(Sender: TObject);
begin

edJob.SetFocus;

dpStart.Date := now;
dpEnd.Date := now;
tpStart.Time := now;
tpEnd.Time := now;

cbKategori.Items.Add('Tidak Berkategori');
cbKategori.ItemIndex := 0;

QCAT.Close;
QCAT.SQL.Clear;
QCAT.SQL.Add('SELECT * FROM category WHERE username = ''' + fMenu.username + ''' ORDER BY name');
QCAT.Open;

while not QCAT.Eof do begin
  cbKategori.Items.Add(QCAT.FieldByName('name').AsString);
  QCAT.Next;
end;

QCAT.Close;
end;

procedure TfJobAdd.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  edJob.Clear;
  edDesc.Clear;
  cbKategori.Clear;
  dpStart.Date := now;
  dpEnd.Date := now;
  tpStart.Time := now;
  tpEnd.Time := now;
end;

end.
