object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 283
  ClientWidth = 412
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  TextHeight = 15
  object lbl_ValueChange: TLabel
    Left = 32
    Top = 20
    Width = 78
    Height = 15
    Caption = 'Valor do Troco:'
  end
  object Button1: TButton
    Left = 260
    Top = 40
    Width = 115
    Height = 25
    Caption = 'Listar Trooco'
    TabOrder = 0
    OnClick = Button1Click
  end
  object mem_ListChange: TMemo
    Left = 32
    Top = 70
    Width = 361
    Height = 201
    ReadOnly = True
    TabOrder = 1
  end
  object edt_Value: TEdit
    Left = 32
    Top = 40
    Width = 121
    Height = 23
    TabOrder = 2
    Text = '0,00'
    OnExit = OnFormaterExit
  end
end
