object frm_NumberPerfect: Tfrm_NumberPerfect
  Left = 0
  Top = 0
  Caption = 'N'#250'meros Perfeitos'
  ClientHeight = 346
  ClientWidth = 324
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  TextHeight = 15
  object mem_ListNumber: TMemo
    Left = 24
    Top = 92
    Width = 281
    Height = 233
    ReadOnly = True
    TabOrder = 0
  end
  object btn_Verify: TButton
    Left = 120
    Top = 61
    Width = 75
    Height = 25
    Caption = 'Veriicar'
    TabOrder = 1
    OnClick = btn_VerifyClick
  end
  object edt_NumberVerifyPerfect: TLabeledEdit
    Left = 24
    Top = 32
    Width = 281
    Height = 23
    EditLabel.Width = 267
    EditLabel.Height = 15
    EditLabel.Caption = 'Digite os Numeros separado por ; (Ex.: 5;6;23;40;50;'
    TabOrder = 2
    Text = ''
  end
end
