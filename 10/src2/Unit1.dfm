object MainForm: TMainForm
  Left = 0
  Top = 0
  Caption = #1047#1072#1087#1080#1089#1085#1072#1103' '#1082#1085#1080#1078#1082#1072
  ClientHeight = 236
  ClientWidth = 575
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  TextHeight = 15
  object InfoLabel: TLabel
    Left = 40
    Top = 44
    Width = 172
    Height = 15
    Caption = #1055#1088#1086#1075#1088#1072#1084#1084#1072' "'#1079#1072#1087#1080#1089#1085#1072#1103' '#1082#1085#1080#1078#1082#1072'"'
  end
  object NewRecordButton: TButton
    Left = 384
    Top = 40
    Width = 137
    Height = 25
    Caption = #1044#1086#1073#1072#1074#1083#1077#1085#1080#1077' '#1079#1072#1087#1080#1089#1077#1081
    TabOrder = 0
    OnClick = NewRecordButtonClick
  end
  object FindButton: TButton
    Left = 384
    Top = 96
    Width = 137
    Height = 25
    Caption = #1055#1086#1080#1089#1082' '#1087#1086' '#1092#1072#1084#1080#1083#1080#1080
    TabOrder = 1
    OnClick = FindButtonClick
  end
  object ExitButton: TButton
    Left = 384
    Top = 152
    Width = 137
    Height = 25
    Caption = #1047#1072#1074#1077#1088#1096#1077#1085#1080#1077' '#1088#1072#1073#1086#1090#1099
    TabOrder = 2
    OnClick = ExitButtonClick
  end
end
