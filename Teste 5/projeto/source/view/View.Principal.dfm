object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 303
  ClientWidth = 711
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -16
  Font.Name = 'Tahoma'
  Font.Style = []
  TextHeight = 19
  object lblConjuntoA: TLabel
    Left = 56
    Top = 59
    Width = 86
    Height = 19
    Caption = 'Conjunto A '
  end
  object Label1: TLabel
    Left = 56
    Top = 99
    Width = 79
    Height = 19
    Caption = 'Conjunto B'
  end
  object lblQuantNumero: TLabel
    Left = 56
    Top = 186
    Width = 148
    Height = 19
    Caption = 'Qunatidade  Numero'
  end
  object lblQuantCarac: TLabel
    Left = 56
    Top = 219
    Width = 164
    Height = 19
    Caption = 'Qunatidade  Caracteres'
  end
  object Label2: TLabel
    Left = 56
    Top = 144
    Width = 85
    Height = 19
    Caption = 'InterCalar   '
  end
  object edtConjuntoA: TEdit
    Left = 148
    Top = 63
    Width = 121
    Height = 27
    TabOrder = 0
    Text = 'ABCDE*'
  end
  object EdtConjuntoB: TEdit
    Left = 148
    Top = 96
    Width = 121
    Height = 27
    TabOrder = 1
    Text = '123$'
  end
  object Button1: TButton
    Left = 288
    Top = 63
    Width = 201
    Height = 40
    Caption = 'Processar '
    TabOrder = 2
    OnClick = Button1Click
  end
  object edtResultado: TEdit
    Left = 148
    Top = 140
    Width = 181
    Height = 27
    TabOrder = 3
  end
end
