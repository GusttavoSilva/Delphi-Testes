object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Substituir'
  ClientHeight = 303
  ClientWidth = 521
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  TextHeight = 15
  object lbl_OldText: TLabel
    Left = 24
    Top = 61
    Width = 148
    Height = 15
    Caption = 'Palava que dejesa substituir:'
  end
  object lbl_TextToChanged: TLabel
    Left = 24
    Top = 11
    Width = 112
    Height = 15
    Caption = 'Digite o texto abaixo:'
  end
  object lbl_NewText: TLabel
    Left = 319
    Top = 61
    Width = 72
    Height = 15
    Caption = 'Nova palavra:'
  end
  object btn_SendTextToReplace: TButton
    Left = 215
    Top = 128
    Width = 90
    Height = 41
    Caption = 'Substituir'
    TabOrder = 3
    OnClick = btn_SendTextToReplaceClick
  end
  object mem_TextChanged: TMemo
    Left = 24
    Top = 183
    Width = 481
    Height = 105
    ReadOnly = True
    TabOrder = 4
  end
  object edt_TextToChanged: TEdit
    Left = 24
    Top = 32
    Width = 481
    Height = 23
    TabOrder = 0
    Text = 'O rato roeu a roupa do rei de roma'
  end
  object edt_OldText: TEdit
    Left = 24
    Top = 82
    Width = 177
    Height = 23
    TabOrder = 1
    Text = 'ro'
  end
  object edt_NewText: TEdit
    Left = 319
    Top = 82
    Width = 186
    Height = 23
    TabOrder = 2
    Text = 'teste'
  end
end
