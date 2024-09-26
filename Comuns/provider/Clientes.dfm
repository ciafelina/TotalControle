object FormClientes: TFormClientes
  Left = 0
  Top = 0
  Caption = 'Clientes'
  ClientHeight = 357
  ClientWidth = 800
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  FormStyle = fsMDIChild
  Position = poDesktopCenter
  Visible = True
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 15
  object lbl3: TLabel
    Left = 24
    Top = 22
    Width = 80
    Height = 15
    Caption = 'Codigo Cliente'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clRed
    Font.Height = -12
    Font.Name = 'Segoe UI'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object lbl7: TLabel
    Left = 493
    Top = 94
    Width = 20
    Height = 15
    Caption = 'CEP'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clRed
    Font.Height = -12
    Font.Name = 'Segoe UI'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object pnl1: TPanel
    Left = 0
    Top = 0
    Width = 800
    Height = 357
    Align = alClient
    TabOrder = 0
    object PagListagem: TPageControl
      Left = 1
      Top = 1
      Width = 798
      Height = 355
      ActivePage = PagManutencao
      Align = alClient
      TabOrder = 0
      object ts1: TTabSheet
        Caption = 'Listagem'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Segoe UI'
        Font.Style = [fsBold]
        ParentFont = False
        DesignSize = (
          790
          325)
        object lblTitulo: TLabel
          Left = 12
          Top = 24
          Width = 154
          Height = 15
          Caption = 'Pesquisar: Nome do Cliente:'
          Color = clNone
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clRed
          Font.Height = -12
          Font.Name = 'Segoe UI'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
        end
        object dbgrd1: TDBGrid
          Left = 0
          Top = 67
          Width = 790
          Height = 258
          Align = alBottom
          DataSource = DSQueryListagem
          Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
          ReadOnly = True
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -12
          TitleFont.Name = 'Segoe UI'
          TitleFont.Style = [fsBold]
          OnCellClick = dbgrd1CellClick
          OnDrawColumnCell = dbgrd1DrawColumnCell
          OnTitleClick = dbgrd1TitleClick
          Columns = <
            item
              Expanded = False
              FieldName = 'CodCliente'
              Visible = False
            end
            item
              Expanded = False
              FieldName = 'Nome'
              Title.Caption = 'Nome do Cliente'
              Width = 155
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Email'
              Title.Caption = 'Email '
              Width = 133
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Telefone'
              Width = 75
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'DataNascimento'
              Title.Caption = 'Data de Nascimento'
              Width = 117
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Endereco'
              Title.Caption = 'Endere'#231'o'
              Width = 133
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Cidade'
              Width = 128
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Estado'
              Title.Caption = 'UF'
              Width = 26
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'CEP'
              Width = 83
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'DataCadastro'
              Visible = False
            end>
        end
        object Pesquisa: TEdit
          Left = 205
          Top = 22
          Width = 380
          Height = 21
          Anchors = [akLeft, akTop, akRight]
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 1
          OnChange = PesquisaChange
        end
        object Todos: TCheckBox
          Left = 658
          Top = 24
          Width = 106
          Height = 17
          Hint = 
            'S'#243' ir'#225' mostrar os primeiros 1000 registros, '#13#10'caso o registro pr' +
            'ocurado n'#227'o esteja entre'#13#10'eles utilize os filtros clicando na co' +
            'luna '#13#10'referente ao tipo de informa'#231#227'o que deseja '#13#10'procurar e d' +
            'epois a digite no campo ao lado.'
          Anchors = [akTop, akRight]
          Caption = 'LISTAR TODOS'
          ParentShowHint = False
          ShowHint = True
          TabOrder = 2
          OnClick = TodosClick
        end
        object DateEdit1: TJvDateEdit
          Left = 191
          Top = 22
          Width = 148
          Height = 21
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          NumGlyphs = 2
          ParentFont = False
          ShowNullDate = False
          TabOrder = 3
          Visible = False
          OnChange = DateEdit1Change
        end
      end
      object PagManutencao: TTabSheet
        Caption = 'Manuten'#231#227'o'
        ImageIndex = 1
        object lbl1: TLabel
          Left = 16
          Top = 14
          Width = 80
          Height = 15
          Caption = 'Codigo Cliente'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clRed
          Font.Height = -12
          Font.Name = 'Segoe UI'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object lbl2: TLabel
          Left = 160
          Top = 14
          Width = 93
          Height = 15
          Caption = 'Nome do Cliente'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clRed
          Font.Height = -12
          Font.Name = 'Segoe UI'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object CodCliente: TDBText
          Left = 30
          Top = 35
          Width = 62
          Height = 13
          AutoSize = True
          DataField = 'CodCliente'
          DataSource = DSQueryCliente
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clRed
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object lbl4: TLabel
          Left = 476
          Top = 14
          Width = 88
          Height = 15
          Caption = 'Email do Cliente'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Segoe UI'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object lbl5: TLabel
          Left = 169
          Top = 71
          Width = 107
          Height = 15
          Caption = 'Data de Nacimento'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Segoe UI'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object lbl6: TLabel
          Left = 16
          Top = 70
          Width = 49
          Height = 15
          Caption = 'Telefone'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clRed
          Font.Height = -12
          Font.Name = 'Segoe UI'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label1: TLabel
          Left = 327
          Top = 70
          Width = 20
          Height = 15
          Caption = 'CEP'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clRed
          Font.Height = -12
          Font.Name = 'Segoe UI'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object lbl8: TLabel
          Left = 443
          Top = 70
          Width = 52
          Height = 15
          Caption = 'Endere'#231'o'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Segoe UI'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object lbl81: TLabel
          Left = 16
          Top = 126
          Width = 37
          Height = 15
          Caption = 'Cidade'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Segoe UI'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object lbl82: TLabel
          Left = 169
          Top = 150
          Width = 3
          Height = 15
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clRed
          Font.Height = -12
          Font.Name = 'Segoe UI'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object DbEstado: TDBText
          Left = 276
          Top = 151
          Width = 52
          Height = 15
          AutoSize = True
          DataField = 'Estado'
          DataSource = DSQueryCliente
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Segoe UI'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object dbedtCliNome: TDBEdit
          Left = 160
          Top = 35
          Width = 281
          Height = 23
          DataField = 'Nome'
          DataSource = DSQueryCliente
          TabOrder = 0
        end
        object dbtEmail: TDBEdit
          Left = 476
          Top = 35
          Width = 281
          Height = 23
          DataField = 'Email'
          DataSource = DSQueryCliente
          TabOrder = 1
        end
        object DBTelefone: TDBEdit
          Left = 16
          Top = 91
          Width = 137
          Height = 23
          DataField = 'Telefone'
          DataSource = DSQueryCliente
          TabOrder = 2
        end
        object jvdbdtdtCliNascimento: TJvDBDateEdit
          Left = 169
          Top = 92
          Width = 132
          Height = 21
          DataField = 'DataNascimento'
          DataSource = DSQueryCliente
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          NumGlyphs = 2
          ParentFont = False
          ShowNullDate = False
          TabOrder = 3
        end
        object dbedtTelefone: TDBEdit
          Left = 327
          Top = 91
          Width = 90
          Height = 23
          DataField = 'CEP'
          DataSource = DSQueryCliente
          TabOrder = 4
        end
        object dbedtCEP: TDBEdit
          Left = 443
          Top = 91
          Width = 246
          Height = 23
          DataField = 'Endereco'
          DataSource = DSQueryCliente
          ReadOnly = True
          TabOrder = 5
        end
        object dbedtCEP1: TDBEdit
          Left = 16
          Top = 147
          Width = 246
          Height = 23
          DataField = 'Cidade'
          DataSource = DSQueryCliente
          ReadOnly = True
          TabOrder = 6
        end
      end
    end
  end
  object DSQueryListagem: TDataSource
    DataSet = QueryListagem
    Left = 749
    Top = 155
  end
  object QueryListagem: TADOQuery
    Connection = frmViewBase.Base
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from Clientes')
    Left = 717
    Top = 155
    object atncfldQueryListagemCodCliente: TAutoIncField
      FieldName = 'CodCliente'
      ReadOnly = True
    end
    object wdstrngfldQueryListagemNome: TWideStringField
      FieldName = 'Nome'
      Size = 100
    end
    object wdstrngfldQueryListagemEmail: TWideStringField
      FieldName = 'Email'
      Size = 255
    end
    object wdstrngfldQueryListagemTelefone: TWideStringField
      FieldName = 'Telefone'
      Size = 15
    end
    object dtfldQueryListagemDataNascimento: TDateField
      FieldName = 'DataNascimento'
    end
    object wdstrngfldQueryListagemEndereco: TWideStringField
      FieldName = 'Endereco'
      Size = 255
    end
    object wdstrngfldQueryListagemCidade: TWideStringField
      FieldName = 'Cidade'
      Size = 100
    end
    object wdstrngfldQueryListagemEstado: TWideStringField
      FieldName = 'Estado'
      Size = 100
    end
    object wdstrngfldQueryListagemCEP: TWideStringField
      FieldName = 'CEP'
      Size = 10
    end
    object dtmfldQueryListagemDataCadastro: TDateTimeField
      FieldName = 'DataCadastro'
    end
  end
  object TimerCli: TTimer
    Enabled = False
    OnTimer = TimerCliTimer
    Left = 685
    Top = 155
  end
  object QueryCliente: TADOQuery
    Connection = frmViewBase.Base
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'CodCliente'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    SQL.Strings = (
      'Select * from Clientes where CodCliente = :CodCliente')
    Left = 688
    Top = 192
    object atncfldQueryClienteCodCliente: TAutoIncField
      FieldName = 'CodCliente'
      ReadOnly = True
    end
    object wdstrngfldQueryClienteNome: TWideStringField
      FieldName = 'Nome'
      Size = 100
    end
    object wdstrngfldQueryClienteEmail: TWideStringField
      FieldName = 'Email'
      Size = 255
    end
    object wdstrngfldQueryClienteTelefone: TWideStringField
      FieldName = 'Telefone'
      Size = 15
    end
    object dtfldQueryClienteDataNascimento: TDateField
      FieldName = 'DataNascimento'
    end
    object wdstrngfldQueryClienteEndereco: TWideStringField
      FieldName = 'Endereco'
      Size = 255
    end
    object wdstrngfldQueryClienteCidade: TWideStringField
      FieldName = 'Cidade'
      Size = 100
    end
    object wdstrngfldQueryClienteEstado: TWideStringField
      FieldName = 'Estado'
      Size = 100
    end
    object wdstrngfldQueryClienteCEP: TWideStringField
      FieldName = 'CEP'
      Size = 10
    end
    object dtmfldQueryClienteDataCadastro: TDateTimeField
      FieldName = 'DataCadastro'
    end
  end
  object DSQueryCliente: TDataSource
    DataSet = QueryCliente
    Left = 717
    Top = 192
  end
end
