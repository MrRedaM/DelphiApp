object Login: TLogin
  Left = 0
  Top = 0
  ActiveControl = Panel1
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSizeToolWin
  Caption = 'Connexion BDD'
  ClientHeight = 406
  ClientWidth = 362
  Color = clWhite
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = [fsBold]
  OldCreateOrder = False
  Position = poScreenCenter
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 362
    Height = 393
    Align = alTop
    Padding.Left = 32
    Padding.Top = 32
    Padding.Right = 32
    Padding.Bottom = 32
    TabOrder = 0
    ExplicitTop = 5
    object Title: TLabel
      Left = 33
      Top = 33
      Width = 296
      Height = 32
      Margins.Left = 16
      Margins.Top = 16
      Margins.Right = 16
      Margins.Bottom = 16
      Align = alTop
      Alignment = taCenter
      Caption = 'Connectez-vous '#224' la BDD'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -24
      Font.Name = 'Segoe UI Semibold'
      Font.Style = []
      ParentFont = False
      ExplicitWidth = 276
    end
    object EditServer: TEdit
      Left = 88
      Top = 128
      Width = 177
      Height = 21
      Alignment = taCenter
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
      TextHint = 'Serveur'
    end
    object EditUsername: TEdit
      Left = 88
      Top = 215
      Width = 177
      Height = 21
      Alignment = taCenter
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 1
      TextHint = 'Utilisateur'
    end
    object EditPassword: TEdit
      Left = 88
      Top = 258
      Width = 177
      Height = 21
      Alignment = taCenter
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 2
      TextHint = 'Mot de passe'
    end
    object EditDB: TEdit
      Left = 88
      Top = 171
      Width = 177
      Height = 21
      Alignment = taCenter
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 3
      TextHint = 'Nom base de donn'#233'es'
    end
    object Button1: TButton
      Left = 33
      Top = 335
      Width = 296
      Height = 25
      Cursor = crHandPoint
      Align = alBottom
      Caption = 'Se connecter'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Segoe UI Black'
      Font.Style = []
      ParentFont = False
      TabOrder = 4
      OnClick = Button1Click
      ExplicitWidth = 238
    end
  end
  object StatusServer: TStatusBar
    Left = 0
    Top = 387
    Width = 362
    Height = 19
    Color = clWhite
    Panels = <>
    SimplePanel = True
    SimpleText = 'Server : Disconnected'
    ExplicitTop = 374
    ExplicitWidth = 304
  end
end
