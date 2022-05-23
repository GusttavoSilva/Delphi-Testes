object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 420
  ClientWidth = 492
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  TextHeight = 15
  object conectLimit: TLabeledEdit
    Left = 152
    Top = 27
    Width = 153
    Height = 23
    EditLabel.Width = 166
    EditLabel.Height = 15
    EditLabel.Caption = 'Informe o n'#250'mero de conex'#245'es'
    NumbersOnly = True
    TabOrder = 0
    Text = ''
  end
  object btn_NumberConnections: TButton
    Left = 191
    Top = 54
    Width = 75
    Height = 25
    Caption = 'Confirmar'
    TabOrder = 1
    OnClick = btn_NumberConnectionsClick
  end
  object mem_Connections: TMemo
    Left = 8
    Top = 218
    Width = 209
    Height = 177
    ReadOnly = True
    TabOrder = 2
  end
  object btn_SaveConnection: TButton
    Left = 54
    Top = 187
    Width = 75
    Height = 25
    Caption = 'Adicionar'
    TabOrder = 3
    OnClick = btn_SaveConnectionClick
  end
  object edt_ConnectionOne: TLabeledEdit
    Left = 40
    Top = 94
    Width = 121
    Height = 23
    EditLabel.Width = 56
    EditLabel.Height = 15
    EditLabel.Caption = 'Conex'#227'o 1'
    NumbersOnly = True
    TabOrder = 4
    Text = ''
  end
  object edt_ConnectionTwo: TLabeledEdit
    Left = 40
    Top = 146
    Width = 121
    Height = 23
    EditLabel.Width = 56
    EditLabel.Height = 15
    EditLabel.Caption = 'Conex'#227'o 2'
    NumbersOnly = True
    TabOrder = 5
    Text = ''
  end
  object btn_ListConnection: TButton
    Left = 304
    Top = 187
    Width = 105
    Height = 25
    Caption = 'Verificar Conex'#227'o'
    TabOrder = 6
    OnClick = btn_ListConnectionClick
  end
  object mem_ListConnect: TMemo
    Left = 240
    Top = 218
    Width = 233
    Height = 177
    ReadOnly = True
    TabOrder = 7
  end
  object edt_ConfConnectionOne: TLabeledEdit
    Left = 297
    Top = 94
    Width = 121
    Height = 23
    EditLabel.Width = 56
    EditLabel.Height = 15
    EditLabel.Caption = 'Conex'#227'o 1'
    NumbersOnly = True
    TabOrder = 8
    Text = ''
  end
  object edt_ConfConnectionTwo: TLabeledEdit
    Left = 297
    Top = 146
    Width = 121
    Height = 23
    EditLabel.Width = 56
    EditLabel.Height = 15
    EditLabel.Caption = 'Conex'#227'o 2'
    NumbersOnly = True
    TabOrder = 9
    Text = ''
  end
end
