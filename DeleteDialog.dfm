object DeleteDialogForm: TDeleteDialogForm
  Left = 0
  Top = 0
  Caption = 'Suppression'
  ClientHeight = 117
  ClientWidth = 407
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Segoe UI'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  PixelsPerInch = 96
  TextHeight = 13
  object DodId: TLabel
    Left = 64
    Top = 48
    Width = 3
    Height = 13
    Visible = False
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 407
    Height = 117
    Align = alClient
    Caption = 'Panel1'
    Padding.Left = 16
    Padding.Top = 16
    Padding.Right = 16
    Padding.Bottom = 16
    ShowCaption = False
    TabOrder = 0
    object Message: TLabel
      AlignWithMargins = True
      Left = 17
      Top = 17
      Width = 373
      Height = 42
      Margins.Left = 0
      Margins.Top = 0
      Margins.Right = 0
      Margins.Bottom = 16
      Align = alTop
      Alignment = taCenter
      Caption = 'Voulez-vous vraiment supprimer cette demande de dodation?'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      WordWrap = True
      ExplicitWidth = 358
    end
    object Mode: TLabel
      Left = 16
      Top = 48
      Width = 30
      Height = 13
      Caption = 'Mode'
      Visible = False
    end
    object Button1: TButton
      Left = 17
      Top = 75
      Width = 177
      Height = 25
      Align = alLeft
      Caption = 'Annuler'
      ModalResult = 3
      TabOrder = 0
    end
    object Button2: TButton
      Left = 200
      Top = 75
      Width = 190
      Height = 25
      Align = alRight
      Caption = 'Supprimer'
      ModalResult = 1
      TabOrder = 1
      OnClick = Button2Click
    end
  end
end
