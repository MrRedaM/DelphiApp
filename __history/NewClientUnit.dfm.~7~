object Client: TClient
  Left = 0
  Top = 0
  BorderStyle = bsSingle
  Caption = 'Client'
  ClientHeight = 235
  ClientWidth = 368
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Segoe UI'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Title: TLabel
    AlignWithMargins = True
    Left = 16
    Top = 16
    Width = 336
    Height = 32
    Margins.Left = 16
    Margins.Top = 16
    Margins.Right = 16
    Margins.Bottom = 16
    Align = alTop
    Alignment = taCenter
    Caption = 'Nouveau client'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -24
    Font.Name = 'Segoe UI'
    Font.Style = [fsBold]
    ParentFont = False
    ExplicitLeft = 21
    ExplicitTop = 21
  end
  object Label1: TLabel
    Left = 112
    Top = 88
    Width = 24
    Height = 13
    Caption = 'Nom'
  end
  object Label2: TLabel
    Left = 97
    Top = 120
    Width = 39
    Height = 13
    Caption = 'Pr'#233'nom'
  end
  object Label3: TLabel
    Left = 39
    Top = 152
    Width = 97
    Height = 13
    Caption = 'Service Commercial'
  end
  object EditName: TEdit
    Left = 151
    Top = 85
    Width = 206
    Height = 21
    TabOrder = 0
    TextHint = 'Saisir le nom'
  end
  object EditFirstName: TEdit
    Left = 151
    Top = 117
    Width = 206
    Height = 21
    TabOrder = 1
    TextHint = 'Saisir le pr'#233'nom'
  end
  object ComboComm: TDBComboBox
    Left = 151
    Top = 149
    Width = 206
    Height = 21
    Hint = 'Selectionner le service commercial'
    DataField = 'N_srv'
    DataSource = DM.SrcComm
    TabOrder = 2
  end
  object Button1: TButton
    Left = 8
    Top = 200
    Width = 137
    Height = 25
    Caption = 'Annuler'
    ModalResult = 3
    TabOrder = 3
  end
  object Button2: TButton
    Left = 151
    Top = 200
    Width = 206
    Height = 25
    Caption = 'Ajouter'
    ModalResult = 1
    TabOrder = 4
    OnClick = Button2Click
  end
end
