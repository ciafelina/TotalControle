object FormUsuarios: TFormUsuarios
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Usuarios'
  ClientHeight = 257
  ClientWidth = 840
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  FormStyle = fsMDIChild
  PopupMenu = frmViewBase.PopMenu1
  Position = poDesktopCenter
  Visible = True
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 15
  object pnl1: TPanel
    Left = 0
    Top = 0
    Width = 840
    Height = 257
    Align = alClient
    TabOrder = 0
    object PagListagem: TPageControl
      Left = 1
      Top = 1
      Width = 838
      Height = 255
      ActivePage = ts1
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
          830
          225)
        object lblTitulo: TLabel
          Left = 12
          Top = 24
          Width = 157
          Height = 15
          Caption = 'Pesquisar: Nome de Usuario:'
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
          Top = 69
          Width = 830
          Height = 156
          Align = alBottom
          DataSource = DSQueryListagem
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Segoe UI'
          Font.Style = []
          Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
          ParentFont = False
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
              FieldName = 'CodUsuario'
              Visible = False
            end
            item
              Expanded = False
              FieldName = 'Nome'
              Title.Caption = 'Nome de Usuario'
              Width = 179
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Email'
              Title.Caption = 'Email de Usuario'
              Width = 237
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Senha'
              Visible = False
            end
            item
              Expanded = False
              FieldName = 'Telefone'
              Width = 92
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'DataNascimento'
              Title.Caption = 'Nacimento'
              Width = 77
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'UserAtivo'
              Title.Caption = 'Ativo'
              Width = 53
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'DataCriacao'
              Title.Caption = 'Data de Criacao'
              Visible = False
            end
            item
              Expanded = False
              FieldName = 'UltimoLogin'
              Title.Caption = 'Ultimo Login '
              Width = 88
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'EstiloDeSistema'
              Visible = False
            end>
        end
        object Pesquisa: TEdit
          Left = 183
          Top = 22
          Width = 504
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
        object chkTodos: TCheckBox
          Left = 874
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
        end
        object Todos: TCheckBox
          Left = 705
          Top = 26
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
          TabOrder = 3
          OnClick = TodosClick
        end
        object DateEdit1: TJvDateEdit
          Left = 179
          Top = 22
          Width = 90
          Height = 21
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          NumGlyphs = 2
          ParentFont = False
          ShowNullDate = False
          TabOrder = 4
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
          Width = 100
          Height = 15
          Caption = 'Codigo de Usuario'
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
          Width = 96
          Height = 15
          Caption = 'Nome de Usuario'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clRed
          Font.Height = -12
          Font.Name = 'Segoe UI'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object dbtxtCodCliente: TDBText
          Left = 26
          Top = 35
          Width = 90
          Height = 13
          AutoSize = True
          DataField = 'CodUsuario'
          DataSource = DSQueryUsuarios
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
          Width = 91
          Height = 15
          Caption = 'Email de Usuario'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clRed
          Font.Height = -12
          Font.Name = 'Segoe UI'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object lbl6: TLabel
          Left = 550
          Top = 69
          Width = 49
          Height = 15
          Caption = 'Telefone'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Segoe UI'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object lbl3: TLabel
          Left = 392
          Top = 69
          Width = 86
          Height = 15
          Caption = 'Data de Cria'#231#227'o'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Segoe UI'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object lbl8: TLabel
          Left = 705
          Top = 69
          Width = 30
          Height = 15
          Caption = 'Ativo'
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
        object lbl32: TLabel
          Left = 240
          Top = 69
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
        object lbl31: TLabel
          Left = 16
          Top = 69
          Width = 96
          Height = 15
          Caption = 'Senha de Usuario'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clRed
          Font.Height = -12
          Font.Name = 'Segoe UI'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object DBNome: TDBEdit
          Left = 160
          Top = 35
          Width = 281
          Height = 23
          CharCase = ecUpperCase
          DataField = 'Nome'
          DataSource = DSQueryUsuarios
          Enabled = False
          TabOrder = 0
        end
        object DBEmail: TDBEdit
          Left = 476
          Top = 35
          Width = 333
          Height = 23
          DataField = 'Email'
          DataSource = DSQueryUsuarios
          Enabled = False
          TabOrder = 1
        end
        object DBTelefone: TDBEdit
          Left = 550
          Top = 90
          Width = 137
          Height = 23
          DataField = 'Telefone'
          DataSource = DSQueryUsuarios
          Enabled = False
          TabOrder = 2
        end
        inline FrameBtn: TFrmFrameToolBar
          Left = 0
          Top = 196
          Width = 830
          Height = 29
          Align = alBottom
          TabOrder = 3
          ExplicitTop = 196
          ExplicitWidth = 830
          ExplicitHeight = 29
          inherited TollBar: TToolBar
            Width = 830
            ExplicitWidth = 830
          end
        end
        object DBComboBox: TDBComboBox
          Left = 705
          Top = 90
          Width = 104
          Height = 23
          DataField = 'Ativo'
          DataSource = DSQueryUsuarios
          Enabled = False
          Items.Strings = (
            'True'
            'False')
          TabOrder = 4
        end
        object DBDataCricao: TJvDBDateEdit
          Left = 392
          Top = 90
          Width = 129
          Height = 23
          DataField = 'DataCriacao'
          DataSource = DSQueryUsuarios
          Enabled = False
          ShowNullDate = False
          TabOrder = 5
        end
        object DBDataNacimento: TJvDBDateEdit
          Left = 240
          Top = 90
          Width = 129
          Height = 23
          DataField = 'DataNascimento'
          DataSource = DSQueryUsuarios
          Enabled = False
          ShowNullDate = False
          TabOrder = 6
        end
        object EditSenha: TDBEdit
          Left = 16
          Top = 90
          Width = 209
          Height = 23
          DataField = 'Senha'
          DataSource = DSQueryUsuarios
          Enabled = False
          PasswordChar = '*'
          TabOrder = 7
        end
        object BtnAlteraSenha: TBitBtn
          Left = 14
          Top = 119
          Width = 164
          Height = 25
          Caption = 'Alterar Senha de Usuario'
          Enabled = False
          TabOrder = 8
          OnClick = BtnAlteraSenhaClick
        end
      end
    end
  end
  object PanelSenha: TPanel
    Left = 280
    Top = 41
    Width = 217
    Height = 160
    Color = 11777023
    ParentBackground = False
    TabOrder = 1
    Visible = False
    object lbl5: TLabel
      Left = 41
      Top = 18
      Width = 126
      Height = 17
      Caption = 'Digite a Nova Senha'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object edtNovaSenha: TEdit
      Left = 45
      Top = 47
      Width = 121
      Height = 23
      PasswordChar = '*'
      TabOrder = 0
    end
    object btn1: TBitBtn
      Left = 45
      Top = 84
      Width = 121
      Height = 25
      Caption = 'Salvar'
      TabOrder = 1
      OnClick = btn1Click
    end
  end
  object Timer: TTimer
    Enabled = False
    OnTimer = TimerTimer
    Left = 685
    Top = 155
  end
  object DSQueryUsuarios: TDataSource
    DataSet = QueryUsuarios
    Left = 725
    Top = 200
  end
  object QueryListagem: TADOQuery
    Connection = frmViewBase.Base
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      
        'select *, case when Ativo = 1 then '#39'SIM'#39' else '#39'N'#194'O'#39' end UserAtiv' +
        'o from Usuarios')
    Left = 717
    Top = 155
    object intgrfldQueryListagemCodUsuario: TIntegerField
      FieldName = 'CodUsuario'
    end
    object wdstrngfldQueryListagemNome: TWideStringField
      FieldName = 'Nome'
      Size = 100
    end
    object wdstrngfldQueryListagemEmail: TWideStringField
      FieldName = 'Email'
      Size = 255
    end
    object wdstrngfldQueryListagemSenha: TWideStringField
      FieldName = 'Senha'
      Size = 255
    end
    object wdstrngfldQueryListagemTelefone: TWideStringField
      FieldName = 'Telefone'
      Size = 15
    end
    object dtfldQueryListagemDataNascimento: TDateField
      FieldName = 'DataNascimento'
    end
    object blnfldQueryListagemAtivo: TBooleanField
      FieldName = 'Ativo'
    end
    object dtmfldQueryListagemDataCriacao: TDateTimeField
      FieldName = 'DataCriacao'
    end
    object dtmfldQueryListagemUltimoLogin: TDateTimeField
      FieldName = 'UltimoLogin'
    end
    object strngfldQueryListagemEstiloDeSistema: TStringField
      FieldName = 'EstiloDeSistema'
      Size = 50
    end
    object strngfldQueryListagemUserAtivo: TStringField
      FieldName = 'UserAtivo'
      ReadOnly = True
      Size = 3
    end
  end
  object DSQueryListagem: TDataSource
    DataSet = QueryListagem
    Left = 749
    Top = 155
  end
  object QueryUsuarios: TADOQuery
    Connection = frmViewBase.Base
    CursorType = ctStatic
    BeforeInsert = QueryUsuariosBeforeInsert
    AfterInsert = QueryUsuariosAfterInsert
    BeforeEdit = QueryUsuariosBeforeEdit
    AfterPost = QueryUsuariosAfterPost
    AfterCancel = QueryUsuariosAfterCancel
    Parameters = <
      item
        Name = 'CodUsuario'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    SQL.Strings = (
      'select * from Usuarios where CodUsuario = :CodUsuario')
    Left = 693
    Top = 200
    object intgrfldQueryUsuariosCodUsuario: TIntegerField
      FieldName = 'CodUsuario'
    end
    object wdstrngfldQueryUsuariosNome: TWideStringField
      FieldName = 'Nome'
      Size = 100
    end
    object wdstrngfldQueryUsuariosEmail: TWideStringField
      FieldName = 'Email'
      Size = 255
    end
    object wdstrngfldQueryUsuariosSenha: TWideStringField
      FieldName = 'Senha'
      Size = 255
    end
    object wdstrngfldQueryUsuariosTelefone: TWideStringField
      FieldName = 'Telefone'
      Size = 15
    end
    object dtfldQueryUsuariosDataNascimento: TDateField
      FieldName = 'DataNascimento'
    end
    object blnfldQueryUsuariosAtivo: TBooleanField
      FieldName = 'Ativo'
    end
    object dtmfldQueryUsuariosDataCriacao: TDateTimeField
      FieldName = 'DataCriacao'
    end
    object dtmfldQueryUsuariosUltimoLogin: TDateTimeField
      FieldName = 'UltimoLogin'
    end
    object strngfldQueryUsuariosEstiloDeSistema: TStringField
      FieldName = 'EstiloDeSistema'
      Size = 50
    end
  end
  object QueryOperacoes: TADOQuery
    Connection = frmViewBase.Base
    Parameters = <>
    Left = 637
    Top = 155
  end
end
