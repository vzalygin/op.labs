﻿object NewRecordForm: TNewRecordForm
  Left = 0
  Top = 0
  Caption = #1044#1086#1073#1072#1074#1083#1077#1085#1080#1077' '#1079#1072#1087#1080#1089#1080
  ClientHeight = 315
  ClientWidth = 398
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  TextHeight = 15
  object Фамилия: TLabel
    Left = 40
    Top = 56
    Width = 51
    Height = 15
    Caption = #1060#1072#1084#1080#1083#1080#1103
  end
  object Имя: TLabel
    Left = 40
    Top = 112
    Width = 24
    Height = 15
    Caption = #1048#1084#1103
  end
  object Телефон: TLabel
    Left = 40
    Top = 168
    Width = 48
    Height = 15
    Caption = #1058#1077#1083#1077#1092#1086#1085
  end
  object Адрес: TLabel
    Left = 40
    Top = 224
    Width = 33
    Height = 15
    Caption = #1040#1076#1088#1077#1089
  end
  object LastNameInput: TEdit
    Left = 216
    Top = 53
    Width = 121
    Height = 23
    Hint = #1060#1072#1084#1080#1083#1080#1103
    TabOrder = 0
  end
  object WriteButton: TButton
    Left = 104
    Top = 272
    Width = 75
    Height = 25
    Caption = #1047#1072#1087#1080#1089#1072#1090#1100
    TabOrder = 1
    OnClick = WriteButtonClick
  end
  object NameInput: TEdit
    Left = 216
    Top = 109
    Width = 121
    Height = 23
    TabOrder = 2
  end
  object PhoneInput: TEdit
    Left = 216
    Top = 165
    Width = 121
    Height = 23
    TabOrder = 3
  end
  object AddrInput: TEdit
    Left = 216
    Top = 221
    Width = 121
    Height = 23
    TabOrder = 4
  end
  object ExitButton: TButton
    Left = 216
    Top = 272
    Width = 75
    Height = 25
    Caption = #1050#1086#1085#1077#1094
    TabOrder = 5
    OnClick = ExitButtonClick
  end
end
