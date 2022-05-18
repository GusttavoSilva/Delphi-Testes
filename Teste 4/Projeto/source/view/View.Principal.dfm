object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 457
  ClientWidth = 590
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  OnClose = FormClose
  OnCreate = FormCreate
  TextHeight = 15
  object Label1: TLabel
    Left = 24
    Top = 11
    Width = 179
    Height = 15
    Caption = 'Digite a frase que deseja adiconar!'
  end
  object Label2: TLabel
    Left = 304
    Top = 11
    Width = 168
    Height = 15
    Caption = 'Digite a frase que deseja buscar!'
  end
  object edt_AddPhrases: TEdit
    Left = 24
    Top = 32
    Width = 233
    Height = 33
    TabOrder = 0
  end
  object btn_AddPhrases: TButton
    Left = 96
    Top = 71
    Width = 89
    Height = 25
    Caption = 'Adicionar'
    TabOrder = 1
    OnClick = btn_AddPhrasesClick
  end
  object Memo1: TMemo
    Left = 24
    Top = 102
    Width = 233
    Height = 211
    ReadOnly = True
    TabOrder = 2
  end
  object Memo2: TMemo
    Left = 304
    Top = 102
    Width = 233
    Height = 211
    ReadOnly = True
    TabOrder = 3
  end
  object btn_SearchInPhrases: TButton
    Left = 376
    Top = 71
    Width = 89
    Height = 25
    Caption = 'Buscar'
    TabOrder = 4
    OnClick = btn_SearchInPhrasesClick
  end
  object edt_SearchInPhrases: TEdit
    Left = 304
    Top = 32
    Width = 233
    Height = 33
    TabOrder = 5
  end
end
