object DechargeForm: TDechargeForm
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'D'#233'charge'
  ClientHeight = 307
  ClientWidth = 426
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
  object Panel: TPanel
    Left = 0
    Top = 0
    Width = 426
    Height = 307
    Align = alClient
    Caption = 'Panel'
    Padding.Left = 16
    Padding.Top = 16
    Padding.Right = 16
    Padding.Bottom = 16
    ShowCaption = False
    TabOrder = 0
    ExplicitLeft = 184
    ExplicitTop = 128
    ExplicitWidth = 185
    ExplicitHeight = 41
    object Title: TLabel
      Left = 17
      Top = 17
      Width = 392
      Height = 30
      Align = alTop
      Alignment = taCenter
      Caption = 'Nouvelle d'#233'charge'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -21
      Font.Name = 'Segoe UI Semibold'
      Font.Style = []
      ParentFont = False
      ExplicitLeft = 136
      ExplicitTop = 56
      ExplicitWidth = 179
    end
    object Label1: TLabel
      Left = 118
      Top = 96
      Width = 51
      Height = 13
      Alignment = taRightJustify
      Caption = 'R'#233'f'#233'rence'
    end
    object Label2: TLabel
      Left = 124
      Top = 136
      Width = 45
      Height = 13
      Alignment = taRightJustify
      Caption = 'Quantit'#233
    end
    object Label3: TLabel
      Left = 66
      Top = 177
      Width = 103
      Height = 13
      Alignment = taRightJustify
      Caption = 'Service d'#233'ploiement'
    end
    object Label4: TLabel
      Left = 105
      Top = 217
      Width = 64
      Height = 13
      Alignment = taRightJustify
      Caption = 'Magasin LET'
    end
    object EditRef: TEdit
      Left = 175
      Top = 93
      Width = 234
      Height = 21
      TabOrder = 0
      TextHint = 'Saisir la r'#233'f'#233'rence'
    end
    object NumberQnt: TNumberBox
      Left = 175
      Top = 133
      Width = 90
      Height = 21
      TabOrder = 1
      Value = 1.000000000000000000
    end
    object ComboDeploy: TDBComboBox
      Left = 175
      Top = 174
      Width = 145
      Height = 21
      Hint = 'Saisir le service de d'#233'ploiement'
      DataField = 'N_serv'
      DataSource = DM.SrcDeploy
      TabOrder = 2
    end
    object ComboLet: TDBComboBox
      Left = 175
      Top = 214
      Width = 145
      Height = 21
      DataField = 'N_mag_LET'
      DataSource = DM.SrcLet
      TabOrder = 3
    end
    object BtnConfirm: TButton
      Left = 144
      Top = 264
      Width = 265
      Height = 25
      Caption = 'Cr'#233'er'
      ModalResult = 1
      TabOrder = 4
      OnClick = BtnConfirmClick
    end
    object BtnCancel: TButton
      Left = 17
      Top = 264
      Width = 121
      Height = 25
      Caption = 'Annuler'
      ModalResult = 3
      TabOrder = 5
    end
  end
end
