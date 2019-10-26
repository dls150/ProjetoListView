object frmListaContatos: TfrmListaContatos
  Left = 0
  Top = 0
  Caption = 'Lista de Contatos'
  ClientHeight = 216
  ClientWidth = 583
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Panel2: TPanel
    Left = 207
    Top = 0
    Width = 376
    Height = 216
    Align = alRight
    Caption = 'Panel2'
    Padding.Left = 5
    Padding.Top = 5
    Padding.Right = 5
    Padding.Bottom = 5
    TabOrder = 0
    object lvlLista: TListView
      Left = 0
      Top = 6
      Width = 369
      Height = 204
      Columns = <
        item
          Caption = 'Nome'
          Width = 160
        end
        item
          Alignment = taRightJustify
          Caption = 'E-mail'
          Width = 200
        end>
      TabOrder = 0
      ViewStyle = vsReport
      OnDeletion = lvlListaDeletion
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 201
    Height = 216
    Align = alLeft
    Caption = 'Panel1'
    Padding.Left = 5
    Padding.Top = 5
    Padding.Right = 5
    Padding.Bottom = 5
    TabOrder = 1
    ExplicitLeft = 6
    ExplicitTop = 6
    ExplicitHeight = 204
    object lblNome: TLabel
      Left = 6
      Top = 6
      Width = 189
      Height = 13
      Align = alTop
      Caption = 'Nome:'
      ExplicitWidth = 31
    end
    object lblEmail: TLabel
      Left = 6
      Top = 40
      Width = 189
      Height = 13
      Align = alTop
      Caption = 'E-mail:'
      ExplicitWidth = 32
    end
    object edtNome: TEdit
      Left = 6
      Top = 19
      Width = 189
      Height = 21
      Align = alTop
      TabOrder = 0
    end
    object edtEmail: TEdit
      Left = 6
      Top = 53
      Width = 189
      Height = 21
      Align = alTop
      TabOrder = 1
    end
    object btnAdicionar: TButton
      Left = 6
      Top = 105
      Width = 189
      Height = 35
      Align = alBottom
      Caption = 'Adicionar'
      TabOrder = 2
      OnClick = btnAdicionarClick
      ExplicitTop = 93
    end
    object btnRemover: TButton
      Left = 6
      Top = 140
      Width = 189
      Height = 35
      Align = alBottom
      Caption = 'Remover'
      TabOrder = 3
      OnClick = btnRemoverClick
      ExplicitTop = 128
    end
    object btnExibir: TButton
      Left = 6
      Top = 175
      Width = 189
      Height = 35
      Align = alBottom
      Caption = 'Exibir'
      TabOrder = 4
      OnClick = btnExibirClick
      ExplicitTop = 163
    end
  end
end
