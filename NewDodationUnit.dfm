object NewDodationForm: TNewDodationForm
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Demande de dodation '
  ClientHeight = 606
  ClientWidth = 383
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
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 383
    Height = 606
    Align = alClient
    Padding.Left = 16
    Padding.Top = 16
    Padding.Right = 16
    Padding.Bottom = 16
    TabOrder = 0
    ExplicitLeft = -48
    ExplicitTop = -40
    ExplicitHeight = 459
    object Title: TLabel
      Left = 17
      Top = 17
      Width = 349
      Height = 30
      Align = alTop
      Alignment = taCenter
      Caption = 'Nouvelle demande de dodation'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -21
      Font.Name = 'Segoe UI Semibold'
      Font.Style = []
      ParentFont = False
      ExplicitWidth = 304
    end
    object Label2: TLabel
      Left = 85
      Top = 112
      Width = 60
      Height = 13
      Alignment = taRightJustify
      Caption = 'Demandeur'
    end
    object Label3: TLabel
      Left = 50
      Top = 472
      Width = 95
      Height = 13
      Alignment = taRightJustify
      Caption = 'Service commercial'
    end
    object Label4: TLabel
      Left = 67
      Top = 504
      Width = 78
      Height = 13
      Alignment = taRightJustify
      Caption = 'Magasin cenral'
    end
    object Label1: TLabel
      Left = 121
      Top = 80
      Width = 24
      Height = 13
      Alignment = taRightJustify
      Caption = 'Date'
    end
    object Label5: TLabel
      Left = 82
      Top = 152
      Width = 63
      Height = 13
      Alignment = taRightJustify
      Caption = 'Observation'
    end
    object Label6: TLabel
      Left = 78
      Top = 192
      Width = 67
      Height = 13
      Alignment = taRightJustify
      Caption = 'D'#233'partement'
    end
    object Label7: TLabel
      Left = 110
      Top = 232
      Width = 35
      Height = 13
      Alignment = taRightJustify
      Caption = 'Nature'
    end
    object Label8: TLabel
      Left = 82
      Top = 272
      Width = 63
      Height = 13
      Alignment = taRightJustify
      Caption = 'D'#233'signation'
    end
    object Label9: TLabel
      Left = 48
      Top = 312
      Width = 97
      Height = 13
      Alignment = taRightJustify
      Caption = 'Quantit'#233' Demand'#233
    end
    object Label10: TLabel
      Left = 80
      Top = 352
      Width = 65
      Height = 13
      Alignment = taRightJustify
      Caption = 'Prix Estimatif'
    end
    object Label11: TLabel
      Left = 98
      Top = 434
      Width = 47
      Height = 13
      Alignment = taRightJustify
      Caption = 'Direction'
    end
    object Label12: TLabel
      Left = 104
      Top = 392
      Width = 41
      Height = 13
      Alignment = taRightJustify
      Caption = 'Division'
    end
    object dem: TEdit
      Left = 160
      Top = 109
      Width = 206
      Height = 21
      TabOrder = 0
      TextHint = 'Saisir'
    end
    object ComboComm: TDBComboBox
      Left = 160
      Top = 466
      Width = 206
      Height = 21
      Hint = 'Selectionner le service commercial'
      DataField = 'N_srv'
      DataSource = DM.SrcComm
      TabOrder = 1
    end
    object ComboCentral: TDBComboBox
      Left = 160
      Top = 501
      Width = 206
      Height = 21
      DataField = 'N_mag_Cen'
      DataSource = DM.SrcCentral
      TabOrder = 2
    end
    object Panel2: TPanel
      Left = 17
      Top = 555
      Width = 349
      Height = 34
      Align = alBottom
      BevelOuter = bvNone
      Caption = 'Panel2'
      ShowCaption = False
      TabOrder = 3
      ExplicitTop = 408
      object BtnCancel: TButton
        Left = 0
        Top = 0
        Width = 105
        Height = 34
        Align = alLeft
        Caption = 'Annuler'
        ModalResult = 3
        TabOrder = 0
        ExplicitLeft = 1
        ExplicitTop = 1
        ExplicitHeight = 32
      end
      object BtnConfirm: TButton
        Left = 111
        Top = 0
        Width = 238
        Height = 34
        Align = alRight
        Caption = 'Cr'#233'er'
        Default = True
        ModalResult = 1
        TabOrder = 1
        OnClick = BtnConfirmClick
        ExplicitLeft = 110
        ExplicitTop = 1
        ExplicitHeight = 32
      end
    end
    object date: TDateTimePicker
      Left = 160
      Top = 72
      Width = 206
      Height = 21
      Date = 44520.000000000000000000
      Time = 0.875510543985001300
      TabOrder = 4
    end
    object obs: TEdit
      Left = 160
      Top = 149
      Width = 206
      Height = 21
      TabOrder = 5
      TextHint = 'Saisir'
    end
    object dep: TEdit
      Left = 160
      Top = 189
      Width = 206
      Height = 21
      TabOrder = 6
      TextHint = 'Saisir'
    end
    object nat: TEdit
      Left = 160
      Top = 229
      Width = 206
      Height = 21
      TabOrder = 7
      TextHint = 'Saisir'
    end
    object des: TEdit
      Left = 160
      Top = 269
      Width = 206
      Height = 21
      TabOrder = 8
      TextHint = 'Saisir'
    end
    object dir: TEdit
      Left = 160
      Top = 431
      Width = 206
      Height = 21
      TabOrder = 9
      TextHint = 'Saisir'
    end
    object divis: TEdit
      Left = 160
      Top = 389
      Width = 206
      Height = 21
      TabOrder = 10
      TextHint = 'Saisir'
    end
    object prix: TNumberBox
      Left = 160
      Top = 349
      Width = 206
      Height = 21
      TabOrder = 11
    end
    object qtn: TNumberBox
      Left = 160
      Top = 309
      Width = 206
      Height = 21
      TabOrder = 12
    end
  end
end
