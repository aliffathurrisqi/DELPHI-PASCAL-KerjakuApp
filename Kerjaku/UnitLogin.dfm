object fLogin: TfLogin
  Left = 0
  Top = 0
  Caption = 'LOGIN'
  ClientHeight = 729
  ClientWidth = 1350
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Visible = True
  WindowState = wsMaximized
  OnActivate = FormActivate
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 1350
    Height = 729
    Margins.Left = 0
    Margins.Top = 0
    Margins.Right = 0
    Margins.Bottom = 0
    Align = alClient
    BevelOuter = bvNone
    Color = clMenu
    Padding.Left = 300
    Padding.Top = 125
    Padding.Right = 300
    Padding.Bottom = 125
    ParentBackground = False
    TabOrder = 0
    object Panel2: TPanel
      Left = 300
      Top = 125
      Width = 750
      Height = 479
      Margins.Top = 50
      Margins.Bottom = 50
      Align = alClient
      BevelOuter = bvNone
      Color = clWhite
      Padding.Left = 90
      Padding.Top = 50
      Padding.Right = 90
      Padding.Bottom = 50
      ParentBackground = False
      TabOrder = 0
      object Label1: TLabel
        AlignWithMargins = True
        Left = 93
        Top = 53
        Width = 564
        Height = 29
        Align = alTop
        Alignment = taCenter
        Caption = 'LOGIN'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -24
        Font.Name = 'Roboto Lt'
        Font.Style = [fsBold]
        ParentFont = False
        ExplicitWidth = 74
      end
      object Label2: TLabel
        AlignWithMargins = True
        Left = 93
        Top = 222
        Width = 564
        Height = 23
        Margins.Top = 15
        Align = alTop
        Caption = 'Password :'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -19
        Font.Name = 'Roboto'
        Font.Style = []
        ParentFont = False
        ExplicitWidth = 95
      end
      object Label3: TLabel
        AlignWithMargins = True
        Left = 93
        Top = 144
        Width = 564
        Height = 23
        Margins.Top = 30
        Align = alTop
        Caption = 'Username :'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -19
        Font.Name = 'Roboto'
        Font.Style = []
        ParentFont = False
        ExplicitWidth = 98
      end
      object lbl: TLabel
        AlignWithMargins = True
        Left = 93
        Top = 88
        Width = 564
        Height = 23
        Align = alTop
        Alignment = taCenter
        Caption = 'Masuk ke akun untuk melanjutkan'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -19
        Font.Name = 'Roboto'
        Font.Style = []
        ParentFont = False
        ExplicitWidth = 295
      end
      object edPassword: TEdit
        AlignWithMargins = True
        Left = 93
        Top = 251
        Width = 564
        Height = 31
        Align = alTop
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -19
        Font.Name = 'Roboto'
        Font.Style = []
        ParentFont = False
        PasswordChar = '*'
        TabOrder = 0
        TextHint = 'Masukkan Password...'
      end
      object edUsername: TEdit
        AlignWithMargins = True
        Left = 93
        Top = 173
        Width = 564
        Height = 31
        Align = alTop
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -19
        Font.Name = 'Roboto'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
        TextHint = 'Masukkan Username...'
      end
      object btnMasuk: TPanel
        AlignWithMargins = True
        Left = 93
        Top = 325
        Width = 564
        Height = 41
        Margins.Top = 40
        Align = alTop
        BevelOuter = bvNone
        Caption = 'MASUK'
        Color = clHighlight
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindow
        Font.Height = -19
        Font.Name = 'Roboto Lt'
        Font.Style = [fsBold]
        ParentBackground = False
        ParentFont = False
        TabOrder = 2
        OnClick = btnMasukClick
        OnMouseEnter = btnMasukMouseEnter
        OnMouseLeave = btnMasukMouseLeave
      end
    end
  end
  object CONN: TMyConnection
    Database = 'alfari_kerjaku'
    Username = 'root'
    Server = 'localhost'
    Connected = True
    LoginPrompt = False
    Left = 332
    Top = 149
  end
  object QSQL: TMyQuery
    Aggregates = <>
    Connection = CONN
    Left = 388
    Top = 149
  end
end
