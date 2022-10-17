object FindForm: TFindForm
  Left = 0
  Top = 0
  Caption = #1055#1086#1080#1089#1082' '#1087#1086' '#1092#1072#1084#1080#1083#1080#1080
  ClientHeight = 209
  ClientWidth = 280
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  TextHeight = 15
  object Фамилия: TLabel
    Left = 8
    Top = 8
    Width = 51
    Height = 15
    Caption = #1060#1072#1084#1080#1083#1080#1103
  end
  object Label1: TLabel
    Left = 8
    Top = 48
    Width = 24
    Height = 15
    Caption = #1048#1084#1103
  end
  object Label2: TLabel
    Left = 8
    Top = 88
    Width = 48
    Height = 15
    Caption = #1058#1077#1083#1077#1092#1086#1085
  end
  object Label3: TLabel
    Left = 8
    Top = 125
    Width = 33
    Height = 15
    Caption = #1040#1076#1088#1077#1089
  end
  object FindButton: TButton
    Left = 56
    Top = 165
    Width = 75
    Height = 25
    Caption = #1053#1072#1081#1090#1080
    TabOrder = 0
    OnClick = FindButtonClick
  end
  object Button1: TButton
    Left = 150
    Top = 165
    Width = 75
    Height = 25
    Caption = #1050#1086#1085#1077#1094
    TabOrder = 1
    OnClick = Button1Click
  end
  object LastNameInput: TEdit
    Left = 104
    Top = 8
    Width = 121
    Height = 23
    TabOrder = 2
  end
  object NameInput: TEdit
    Left = 104
    Top = 45
    Width = 121
    Height = 23
    Hint = #1060#1072#1084#1080#1083#1080#1103
    TabOrder = 3
  end
  object PhoneInput: TEdit
    Left = 104
    Top = 85
    Width = 121
    Height = 23
    TabOrder = 4
  end
  object AddrInput: TEdit
    Left = 104
    Top = 122
    Width = 121
    Height = 23
    TabOrder = 5
  end
end
