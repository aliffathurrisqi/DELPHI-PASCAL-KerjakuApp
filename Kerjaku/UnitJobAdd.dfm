object fJobAdd: TfJobAdd
  Left = 0
  Top = 0
  Caption = 'Tambah Kegiatan'
  ClientHeight = 373
  ClientWidth = 382
  Color = clWindow
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnActivate = FormActivate
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 382
    Height = 373
    Align = alClient
    Color = clWhite
    Padding.Left = 20
    Padding.Top = 20
    Padding.Right = 20
    Padding.Bottom = 20
    ParentBackground = False
    TabOrder = 0
    object Label1: TLabel
      Left = 21
      Top = 21
      Width = 340
      Height = 19
      Align = alTop
      Alignment = taCenter
      Caption = 'TAMBAH KEGIATAN'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      ExplicitWidth = 164
    end
    object Label2: TLabel
      AlignWithMargins = True
      Left = 24
      Top = 50
      Width = 334
      Height = 13
      Margins.Top = 10
      Align = alTop
      Caption = 'Kegiatan'
      ExplicitWidth = 42
    end
    object Label3: TLabel
      AlignWithMargins = True
      Left = 24
      Top = 96
      Width = 334
      Height = 13
      Align = alTop
      Caption = 'Kategori'
      ExplicitWidth = 40
    end
    object Label4: TLabel
      AlignWithMargins = True
      Left = 24
      Top = 142
      Width = 334
      Height = 13
      Align = alTop
      Caption = 'Deskripsi'
      ExplicitWidth = 42
    end
    object Label5: TLabel
      AlignWithMargins = True
      Left = 24
      Top = 188
      Width = 334
      Height = 13
      Align = alTop
      Caption = 'Mulai'
      ExplicitWidth = 24
    end
    object Label6: TLabel
      AlignWithMargins = True
      Left = 24
      Top = 232
      Width = 334
      Height = 13
      Align = alTop
      Caption = 'Sampai'
      ExplicitLeft = 21
      ExplicitTop = 216
    end
    object edJob: TEdit
      AlignWithMargins = True
      Left = 24
      Top = 69
      Width = 334
      Height = 21
      Align = alTop
      TabOrder = 0
      TextHint = 'Masukkan nama kegiatan'
    end
    object cbKategori: TComboBox
      AlignWithMargins = True
      Left = 24
      Top = 115
      Width = 334
      Height = 21
      Align = alTop
      TabOrder = 1
      Text = 'Tidak Berkategori'
    end
    object edDesc: TEdit
      AlignWithMargins = True
      Left = 24
      Top = 161
      Width = 334
      Height = 21
      Align = alTop
      TabOrder = 2
    end
    object btnSave: TButton
      AlignWithMargins = True
      Left = 24
      Top = 288
      Width = 334
      Height = 25
      Margins.Top = 15
      Align = alTop
      Caption = 'SIMPAN'
      TabOrder = 3
      OnClick = btnSaveClick
      ExplicitTop = 292
    end
    object Button1: TButton
      AlignWithMargins = True
      Left = 24
      Top = 321
      Width = 334
      Height = 25
      Margins.Top = 5
      Align = alTop
      Caption = 'BATAL'
      TabOrder = 4
      ExplicitTop = 325
    end
    object Panel2: TPanel
      Left = 21
      Top = 204
      Width = 340
      Height = 25
      Align = alTop
      BevelOuter = bvNone
      TabOrder = 5
      ExplicitLeft = 18
      object dpStart: TCalendarPicker
        Left = 0
        Top = 0
        Width = 170
        Height = 25
        Align = alLeft
        CalendarHeaderInfo.DaysOfWeekFont.Charset = DEFAULT_CHARSET
        CalendarHeaderInfo.DaysOfWeekFont.Color = clWindowText
        CalendarHeaderInfo.DaysOfWeekFont.Height = -13
        CalendarHeaderInfo.DaysOfWeekFont.Name = 'Segoe UI'
        CalendarHeaderInfo.DaysOfWeekFont.Style = []
        CalendarHeaderInfo.Font.Charset = DEFAULT_CHARSET
        CalendarHeaderInfo.Font.Color = clWindowText
        CalendarHeaderInfo.Font.Height = -20
        CalendarHeaderInfo.Font.Name = 'Segoe UI'
        CalendarHeaderInfo.Font.Style = []
        Color = clWindow
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clGray
        Font.Height = -12
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        TextHint = 'Pilih Tanggal'
        ExplicitLeft = 1
        ExplicitTop = 1
        ExplicitHeight = 39
      end
      object tpStart: TTimePicker
        AlignWithMargins = True
        Left = 173
        Top = 0
        Width = 166
        Height = 25
        Margins.Top = 0
        Margins.Right = 0
        Margins.Bottom = 0
        Align = alLeft
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Segoe UI'
        Font.Style = []
        TabOrder = 1
        Time = 45109.809986076390000000
        TimeFormat = 'hh:mm:ss'
        ExplicitLeft = 174
        ExplicitTop = 1
        ExplicitHeight = 23
      end
    end
    object Panel3: TPanel
      Left = 21
      Top = 248
      Width = 340
      Height = 25
      Align = alTop
      BevelOuter = bvNone
      TabOrder = 6
      ExplicitTop = 204
      object dpEnd: TCalendarPicker
        Left = 0
        Top = 0
        Width = 170
        Height = 25
        Align = alLeft
        CalendarHeaderInfo.DaysOfWeekFont.Charset = DEFAULT_CHARSET
        CalendarHeaderInfo.DaysOfWeekFont.Color = clWindowText
        CalendarHeaderInfo.DaysOfWeekFont.Height = -13
        CalendarHeaderInfo.DaysOfWeekFont.Name = 'Segoe UI'
        CalendarHeaderInfo.DaysOfWeekFont.Style = []
        CalendarHeaderInfo.Font.Charset = DEFAULT_CHARSET
        CalendarHeaderInfo.Font.Color = clWindowText
        CalendarHeaderInfo.Font.Height = -20
        CalendarHeaderInfo.Font.Name = 'Segoe UI'
        CalendarHeaderInfo.Font.Style = []
        Color = clWindow
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clGray
        Font.Height = -12
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        TextHint = 'Pilih Tanggal'
      end
      object tpEnd: TTimePicker
        AlignWithMargins = True
        Left = 173
        Top = 0
        Width = 167
        Height = 25
        Margins.Top = 0
        Margins.Right = 0
        Margins.Bottom = 0
        Align = alLeft
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Segoe UI'
        Font.Style = []
        TabOrder = 1
        Time = 45109.809986076390000000
        TimeFormat = 'hh:mm:ss'
        ExplicitWidth = 166
      end
    end
  end
  object QCAT: TMyQuery
    Aggregates = <>
    Connection = fLogin.CONN
    Left = 24
    Top = 8
  end
  object QSQL: TMyQuery
    Aggregates = <>
    Connection = fLogin.CONN
    Left = 72
    Top = 16
  end
end
