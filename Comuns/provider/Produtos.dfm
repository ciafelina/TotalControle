object FormProdutos: TFormProdutos
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Produtos'
  ClientHeight = 394
  ClientWidth = 817
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
  object PagListagem: TPageControl
    Left = 0
    Top = 0
    Width = 817
    Height = 394
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
        809
        364)
      object lblTitulo: TLabel
        Left = 12
        Top = 24
        Width = 172
        Height = 15
        Caption = 'Pesquisar: Desci'#231#227'o de Produto'
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
        Top = 88
        Width = 809
        Height = 276
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
            FieldName = 'CodProduto'
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'DescProduto'
            Title.Caption = 'Descri'#231#227'o de Produto'
            Width = 177
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CodigoBarra'
            Title.Caption = 'Codigo de Barra'
            Width = 102
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CustoCompra'
            Title.Caption = 'Pre'#231'o de Compra'
            Width = 101
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CustoVenda'
            Title.Caption = 'Pre'#231'o de Venda'
            Width = 96
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'QuantEstoque'
            Title.Caption = 'Estoque'
            Width = 54
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PermiteMovEstoque'
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'NCM'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CEST'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CFOP'
            Width = 45
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'DataCadastro'
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'Ativo'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CodGrupo'
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'AliquotaICMS'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'AliquotaIPI'
            Visible = True
          end>
      end
      object Pesquisa: TEdit
        Left = 190
        Top = 22
        Width = 443
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
        Left = 853
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
        Left = 684
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
    end
    object PagManutencao: TTabSheet
      Caption = 'Manuten'#231#227'o'
      ImageIndex = 1
      inline FrameBtns: TFrmFrameToolBar
        Left = 0
        Top = 335
        Width = 809
        Height = 29
        Align = alBottom
        TabOrder = 0
        ExplicitTop = 335
        ExplicitWidth = 809
        ExplicitHeight = 29
        inherited TollBar: TToolBar
          Width = 809
          ExplicitWidth = 809
        end
        inherited DataSet: TActionList
          inherited dtstnsrt: TDataSetInsert
            DataSource = DSQueryProdutos
          end
          inherited dtstdlt: TDataSetDelete
            DataSource = DSQueryProdutos
          end
          inherited dtstdt: TDataSetEdit
            DataSource = DSQueryProdutos
          end
          inherited dtstpst: TDataSetPost
            DataSource = DSQueryProdutos
          end
          inherited dtstcncl: TDataSetCancel
            DataSource = DSQueryProdutos
          end
        end
      end
      object grp1: TGroupBox
        Left = 16
        Top = 3
        Width = 769
        Height = 150
        Caption = 'Informa'#231#245'es Gerais'
        TabOrder = 1
        object lbl1: TLabel
          Left = 16
          Top = 24
          Width = 101
          Height = 15
          Caption = 'Codigo de Produto'
        end
        object CodProduto: TDBText
          Left = 27
          Top = 47
          Width = 69
          Height = 17
          DataField = 'CodProduto'
          DataSource = DSQueryProdutos
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object lbl2: TLabel
          Left = 153
          Top = 24
          Width = 114
          Height = 15
          Caption = 'Descri'#231#227'o do Produto'
        end
        object lbl21: TLabel
          Left = 313
          Top = 53
          Width = 114
          Height = 15
          Caption = 'Descri'#231#227'o do Produto'
        end
        object lbl3: TLabel
          Left = 556
          Top = 24
          Width = 127
          Height = 15
          Caption = 'EAN / Codigo de  Barras'
        end
        object lbl4: TLabel
          Left = 16
          Top = 75
          Width = 28
          Height = 15
          Caption = 'Ativo'
        end
        object lbl41: TLabel
          Left = 93
          Top = 75
          Width = 75
          Height = 15
          Caption = 'Codigo Grupo'
        end
        object lbl411: TLabel
          Left = 456
          Top = 75
          Width = 42
          Height = 15
          Caption = 'Estoque'
        end
        object lbl42: TLabel
          Left = 556
          Top = 75
          Width = 176
          Height = 15
          Caption = 'Permite Movimento sem Estoque'
        end
        object DBDescProduto: TDBEdit
          Left = 153
          Top = 45
          Width = 368
          Height = 23
          CharCase = ecUpperCase
          DataField = 'DescProduto'
          DataSource = DSQueryProdutos
          Enabled = False
          TabOrder = 0
        end
        object DBCodigoBarra: TDBEdit
          Left = 556
          Top = 45
          Width = 200
          Height = 23
          CharCase = ecUpperCase
          DataField = 'CodigoBarra'
          DataSource = DSQueryProdutos
          Enabled = False
          TabOrder = 1
        end
        object DBAtivo: TDBComboBox
          Left = 16
          Top = 96
          Width = 58
          Height = 23
          DataField = 'Ativo'
          DataSource = DSQueryProdutos
          Enabled = False
          Items.Strings = (
            'SIM'
            'N'#194'O')
          TabOrder = 2
        end
        object DBCodGrupo: TDBEdit
          Left = 93
          Top = 96
          Width = 57
          Height = 23
          CharCase = ecUpperCase
          DataField = 'CodGrupo'
          DataSource = DSQueryProdutos
          Enabled = False
          TabOrder = 3
        end
        object DescGrupo: TPanel
          Left = 156
          Top = 96
          Width = 282
          Height = 23
          TabOrder = 4
        end
        object DBQuantEstoque: TDBEdit
          Left = 456
          Top = 96
          Width = 65
          Height = 23
          CharCase = ecUpperCase
          DataField = 'QuantEstoque'
          DataSource = DSQueryProdutos
          Enabled = False
          TabOrder = 5
        end
        object DBPermiteMovEstoque: TDBComboBox
          Left = 556
          Top = 96
          Width = 77
          Height = 23
          DataField = 'PermiteMovEstoque'
          DataSource = DSQueryProdutos
          Enabled = False
          Items.Strings = (
            'SIM'
            'N'#194'O')
          TabOrder = 6
        end
      end
      object grp2: TGroupBox
        Left = 16
        Top = 168
        Width = 241
        Height = 89
        Caption = 'Fabrica'#231#227'o'
        TabOrder = 2
        object lbl412: TLabel
          Left = 16
          Top = 26
          Width = 82
          Height = 15
          Caption = 'Custo de Venda'
        end
        object lbl4121: TLabel
          Left = 120
          Top = 26
          Width = 93
          Height = 15
          Caption = 'Custo de Compra'
        end
        object DBCustoVenda: TDBEdit
          Left = 16
          Top = 47
          Width = 57
          Height = 23
          CharCase = ecUpperCase
          DataField = 'CustoVenda'
          DataSource = DSQueryProdutos
          Enabled = False
          TabOrder = 0
        end
        object DBCustoCompra: TDBEdit
          Left = 120
          Top = 47
          Width = 57
          Height = 23
          CharCase = ecUpperCase
          DataField = 'CustoCompra'
          DataSource = DSQueryProdutos
          Enabled = False
          TabOrder = 1
        end
      end
      object grp21: TGroupBox
        Left = 263
        Top = 174
        Width = 522
        Height = 139
        Caption = 'Fabrica'#231#227'o'
        TabOrder = 3
        object lbl4122: TLabel
          Left = 16
          Top = 18
          Width = 28
          Height = 15
          Caption = 'NCM'
        end
        object lbl41211: TLabel
          Left = 127
          Top = 18
          Width = 26
          Height = 15
          Caption = 'CEST'
        end
        object lbl412111: TLabel
          Left = 224
          Top = 18
          Width = 30
          Height = 15
          Caption = 'CFOP'
        end
        object lbl41221: TLabel
          Left = 16
          Top = 74
          Width = 79
          Height = 15
          Caption = 'Aliquotal ICMS'
        end
        object lbl41222: TLabel
          Left = 133
          Top = 74
          Width = 64
          Height = 15
          Caption = 'Aliquotal IPI'
        end
        object DBNCM: TDBEdit
          Left = 16
          Top = 39
          Width = 98
          Height = 23
          CharCase = ecUpperCase
          DataField = 'NCM'
          DataSource = DSQueryProdutos
          Enabled = False
          TabOrder = 0
        end
        object DBCEST: TDBEdit
          Left = 127
          Top = 39
          Width = 81
          Height = 23
          CharCase = ecUpperCase
          DataField = 'CEST'
          DataSource = DSQueryProdutos
          Enabled = False
          TabOrder = 1
        end
        object DBCFOP: TDBEdit
          Left = 222
          Top = 39
          Width = 81
          Height = 23
          CharCase = ecUpperCase
          DataField = 'CFOP'
          DataSource = DSQueryProdutos
          Enabled = False
          TabOrder = 2
        end
        object DescCFOP: TPanel
          Left = 309
          Top = 39
          Width = 201
          Height = 23
          TabOrder = 3
        end
        object DBAliquotaICMS: TDBEdit
          Left = 16
          Top = 95
          Width = 98
          Height = 23
          CharCase = ecUpperCase
          DataField = 'AliquotaICMS'
          DataSource = DSQueryProdutos
          Enabled = False
          TabOrder = 4
        end
        object DBAliquotaIPI: TDBEdit
          Left = 133
          Top = 95
          Width = 98
          Height = 23
          CharCase = ecUpperCase
          DataField = 'AliquotaIPI'
          DataSource = DSQueryProdutos
          Enabled = False
          TabOrder = 5
        end
      end
    end
    object Fiscal: TTabSheet
      Caption = 'Controle de Estoque'
      ImageIndex = 2
      DesignSize = (
        809
        364)
      object lblTitulo1: TLabel
        Left = 4
        Top = 24
        Width = 177
        Height = 15
        Caption = 'Pesquisar: Descri'#231#227'o de Produto'
        Color = clNone
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -12
        Font.Name = 'Segoe UI'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
      end
      object pnl3: TPanel
        Left = 0
        Top = 320
        Width = 809
        Height = 44
        Align = alBottom
        BevelInner = bvLowered
        TabOrder = 0
        DesignSize = (
          809
          44)
        object btn2: TSpeedButton
          Left = 19
          Top = 9
          Width = 141
          Height = 27
          Caption = 'Marcar Todos'
          Glyph.Data = {
            42090000424D4209000000000000420000002800000018000000180000000100
            20000300000000090000B1000000B100000000000000000000000000FF0000FF
            0000FF0000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            000000000000000000000000000000000000000000000000000091EEAE2C8FEF
            B0C18EF1AA120000000000000000000000000000000000FF00014491009D468F
            0062000000000000000000000000000000000000000000000000000000000000
            000000000000000000000000000000000000000000008FF0AD228FEFB0E68FEF
            B0FF8FEEB0C895EAAA0C0000000000000000000000004591008D459000FF4590
            00FC468F00540000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000008BF3AE168FEFB0D98FEFB0FF8FEF
            B0FF8FEFB0FF8FEFAFBD80DFBF0800000000468F0080459000FF459000FF4590
            00FF459000F94490004700000000000000000000000000000000000000000000
            000000000000000000000000000088EEAA0F8FEFB0CF8FEFB0FF8FEFB0FF8FEF
            B0FF8FEFB0FF8FEFB0FF8FEFB0B14792056C459000FF459000FF459000FF4590
            00FF459000FF459000F5458F003B000000000000000000000000000000000000
            000000000000000000008BE8B90B8FF0B0C68FEFB0FF8FEFB0FF8FEFB0FF8FEF
            B0FD8FEFB0FF8FEFB0FF74CD70FF459101FE459000FF459000FF459000FD4590
            00FF459000FF459000FF459000ED448E002D0000000000000000000000000000
            000000000000000000008FEFAF408FEFB0FF8FEFB0FF8FEFB0FF8FEFB09490F1
            B0378FEFB0F48FEFB0FF55A427FF459000FF459000FF459000DF478F00324590
            00AE459000FF459000FF459000FF459000E6478E002400000000000000000000
            00000000000000000000000000008FEFB0AA8FEFB0F88FF0B064000000000000
            00008FEFB1528FEFB0FD80DC8DFF469102FF56A72AFF83E0948C00000000398E
            0009459000CA459000FF459000FF459000FF459000E24491001E000000000000
            00000000000000000000000000008EECB31B8EF1AF3600000000000000000000
            0000000000008FEEB1798FEFB0FF79D27BFF8EEDADFF8FEFB0FF8EEFAF730000
            00004992001C459000E5459000FF459000FF459000FF459000D5408C00140000
            0000000000000000000000000000000000000000000000000000000000000000
            000000000000000000008FEFB0A28FEFB0FF8FEFB0FF8FEFB0FF8FEFB0FE8FF0
            AF6600000000478F0032459000F4459000FF459000FF459000FF459000CF408F
            0010000000000000000000000000000000000000000000000000000000000000
            0000000000000000000092FFB6078FEFB0C48FEFB0FF8FEFB0FF8FEFB0FF8FF0
            B1B6000000000000000045900055459000FE459000FF459000FF459000F64690
            0037000000000000000000000000000000000000000000000000000000000000
            000000000000000000000000000094F2AE138FEFB0DC8FEFB0FF8FF0B0C695EA
            AA0C0000000000000000000000004591007D459000FF459000FA4690004C0000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000008FECAE298FEFB0C196F0B4110000
            000000000000000000000000000000FF0001469000A146910058000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            00000000000000000000000000000000000000000000FFFFFF01000000000000
            00000000000000000000000000000000000000FF000100000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            000000000000}
          OnClick = btn2Click
        end
        object btn3: TSpeedButton
          Left = 200
          Top = 9
          Width = 141
          Height = 27
          Caption = 'Desmarcar Todos'
          Glyph.Data = {
            42090000424D4209000000000000420000002800000018000000180000000100
            20000300000000090000B1000000B100000000000000000000000000FF0000FF
            0000FF0000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            00000000000000000000000000005555FF036666DF506666DF505555FF030000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            000000000000000000006464E04A6666E0D86565E0FF6565E0FF6565E0D76565
            E049000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            00008080FF026565DF906565E0FF6565E0FF6565E0FF6565E0FF6565E0FF6565
            E0FE6565E08E8080FF0200000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            00006666E09E6565E0FF6565E0FF6565E0FF6565E0FF6565E0FF6565E0FF6565
            E0FF6565E0FF6666E09E00000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000006565
            E06A6565E0FF6565E0FF6565E0FF6565E0FF6565E0FF6565E0FF6565E0FF6565
            E0FF6565E0FF6565E0FF6565DF68000000000000000000000000000000000000
            00000000000000000000000000000000000000000000000000006666E0196565
            E0F56565E0FF6565E0FF6565E0FF6565E0FF6565E0FF6565E0FF6565E0FF6565
            E0FF6565E0FF6565E0FF6565E0F76464E41C0000000000000000000000000000
            00000000000000000000000000000000000000000000000000006565E0956565
            E0FF6565E0FF6565E0FF6565E0FF6565E0FF6565E0FF6565E0FF6565E0FF6565
            E0FF6565E0FF6565E0FF6565E0FF6666E0940000000000000000000000000000
            000000000000000000000000000000000000000000006666E60A6565E0F46565
            E0FF6565E0FF4F4BD7FF3028CCFF6363DFFF6565E0FF6565E0FF6363DFFF3028
            CCFF4F4BD7FF6565E0FF6565E0FF6565E0F55D5DE80B00000000000000000000
            000000000000000000000000000000000000000000006565E0536565E0FF6565
            E0FF4F4CD7FF1408C0FF1104BFFF2D25CAFF6363DFFF6363DFFF2D25CAFF1104
            BFFF1408C0FF4F4CD7FF6565E0FF6565E0FF6464E05200000000000000000000
            000000000000000000000000000000000000000000006666E18F6565E0FF6565
            E0FF5B59DCFF1C10C3FF1104BFFF1104BFFF2D25CAFF2D25CAFF1104BFFF1104
            BFFF1C10C3FF5B59DCFF6565E0FF6565E0FF6464E08C00000000000000000000
            000000000000000000000000000000000000000000006565E0B66565E0FF6565
            E0FF6565E0FF5B59DCFF1C10C4FF1104BFFF1104BFFF1104BFFF1104BFFF1B10
            C3FF5A59DBFF6565E0FF6565E0FF6565E0FF6565E0B500000000000000000000
            000000000000000000000000000000000000000000006565E1C96565E0FF6565
            E0FF6565E0FF6565E0FF5958DBFF1306C0FF1104BFFF1104BFFF1306C0FF5958
            DBFF6565E0FF6565E0FF6565E0FF6565E0FF6565E1C900000000000000000000
            000000000000000000000000000000000000000000006464E0CB6565E0FF6565
            E0FF6565E0FF6464DFFF2F27CBFF1104BFFF1104BFFF1104BFFF1104BFFF2C24
            CAFF6363E0FF6565E0FF6565E0FF6565E0FF6464E0CB00000000000000000000
            000000000000000000000000000000000000000000006464E0CB6565E0FF6565
            E0FF6363DFFF2C24CAFF1104BFFF1104BFFF1C10C3FF1C10C3FF1104BFFF1104
            BFFF2C24CAFF6363DFFF6565E0FF6565E0FF6464E0CB00000000000000000000
            000000000000000000000000000000000000000000006464E0CB6565E0FF6565
            E0FF4742D4FF1104BFFF1104BFFF1C10C3FF5B59DCFF5B59DCFF1C10C3FF1104
            BFFF1104BFFF4742D4FF6565E0FF6565E0FF6464E0CB00000000000000000000
            000000000000000000000000000000000000000000006464E0CB6565E0FF6565
            E0FF6565E0FF3932CFFF1B10C3FF5A59DCFF6565E0FF6565E0FF5B59DCFF1C10
            C4FF362FCEFF6565E0FF6565E0FF6565E0FF6464E0CB00000000000000000000
            000000000000000000000000000000000000000000006464E0CB6565E0FF6565
            E0FF6565E0FF6565E0FF5F5EDDFF6565E0FF6565E0FF6565E0FF6565E0FF5F5E
            DDFF6565E0FF6565E0FF6565E0FF6565E0FF6464E0CB00000000000000000000
            000000000000000000000000000000000000000000006464E0CB6565E0FF6565
            E0FF6565E0FF6565E0FF6565E0FF6565E0FF6565E0FF6565E0FF6565E0FF6565
            E0FF6565E0FF6565E0FF6565E0FF6565E0FF6464E0CB00000000000000000000
            000000000000000000000000000000000000000000006464E0CB6565E0FF6565
            E0FF6565E0FF6565E0FF6565E0FF6565E0FF6565E0FF6565E0FF6565E0FF6565
            E0FF6565E0FF6565E0FF6565E0FF6565E0FF6464E0CB00000000000000000000
            000000000000000000000000000000000000000000006565E1656565E0BD6565
            E0F86565E0FF6565E0FF6565E0FF6565E0FF6565E0FF6565E0FF6565E0FF6565
            E0FF6565E0FF6565E0FF6565E0F86565E0BD6565E16500000000000000000000
            0000000000000000000000000000000000000000000000000000000000006666
            E60A6565E1446565DF886565E0CC6565E0FE6565E0FF6565E0FF6565E0FF6666
            E0DD6666DF996666E1556D6DDB0E000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            00000000000000000000000000006161DC1D6464E0636464E0636161DC1D0000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            000000000000}
          OnClick = btn3Click
        end
        object btn1: TBitBtn
          Left = 1183
          Top = 4
          Width = 38
          Height = 37
          Hint = 'Auditoria'
          Anchors = [akTop, akRight]
          Glyph.Data = {
            76010000424D7601000000000000760000002800000020000000100000000100
            04000000000000010000130B0000130B00001000000000000000000000000000
            800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
            FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00300000000000
            003337777777777777F330FFFFFFFFFFF03337F3333FFF3337F330FFFF000FFF
            F03337F33377733337F330FFFFF0FFFFF03337F33337F33337F330FFFF00FFFF
            F03337F33377F33337F330FFFFF0FFFFF03337F33337333337F330FFFFFFFFFF
            F03337FFF3F3F3F3F7F33000F0F0F0F0F0333777F7F7F7F7F7F330F0F000F070
            F03337F7F777F777F7F330F0F0F0F070F03337F7F7373777F7F330F0FF0FF0F0
            F03337F733733737F7F330FFFFFFFF00003337F33333337777F330FFFFFFFF0F
            F03337FFFFFFFF7F373330999999990F033337777777777F733330FFFFFFFF00
            333337FFFFFFFF77333330000000000333333777777777733333}
          NumGlyphs = 2
          ParentShowHint = False
          ShowHint = True
          TabOrder = 0
        end
      end
      object dbgrd2: TDBGrid
        Left = 0
        Top = 72
        Width = 809
        Height = 248
        Align = alBottom
        DataSource = DSQueryEstoque
        TabOrder = 1
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -12
        TitleFont.Name = 'Segoe UI'
        TitleFont.Style = []
        OnDrawColumnCell = dbgrd2DrawColumnCell
        OnTitleClick = dbgrd2TitleClick
        Columns = <
          item
            Expanded = False
            FieldName = 'CodProduto'
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'DescProduto'
            ReadOnly = True
            Title.Caption = 'Descri'#231#227'o de Produto'
            Width = 201
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'DescGrupo'
            ReadOnly = True
            Title.Caption = 'Descri'#231#227'o de Grupo'
            Width = 255
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'QuantEstoque'
            Title.Caption = 'Estoque'
            Width = 57
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PermiteMovEstoque'
            Title.Caption = 'Permite Movimento de Estoque'
            Width = 176
            Visible = True
          end>
      end
      object PesquisaEstoque: TEdit
        Left = 191
        Top = 22
        Width = 422
        Height = 21
        Anchors = [akLeft, akTop, akRight]
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 2
        OnChange = PesquisaEstoqueChange
      end
      object chkTodos11: TCheckBox
        Left = 676
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
        TabOrder = 3
        OnClick = chkTodos11Click
      end
    end
    object ImportaExcel: TTabSheet
      Caption = 'Importa Excel'
      ImageIndex = 3
      DesignSize = (
        809
        364)
      object lblTitulo11: TLabel
        Left = 3
        Top = 24
        Width = 114
        Height = 15
        Caption = 'Selecione o Arquivo:'
        Color = clNone
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -12
        Font.Name = 'Segoe UI'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
      end
      object btnSBAparencia: TSpeedButton
        Left = 717
        Top = 21
        Width = 30
        Height = 21
        Hint = 'Alterar apar'#234'ncia do sistema'
        Align = alCustom
        Flat = True
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Calibri'
        Font.Style = []
        Glyph.Data = {
          36090000424D3609000000000000360000002800000018000000180000000100
          20000000000000090000C30E0000C30E00000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000000000000000000000000000EBE6
          E3AEECE7E4FDECE7E4FEECE7E4FEECE7E4FEECE7E4FEECE7E4FEECE7E4FEECE7
          E4FEECE7E4FEECE7E4FEE6E1DEFDE1DCD9FDE1DCD9FDE1DCD9FDE1DCD9FDE1DC
          D9FDE1DCD9FDE1DCD9FDE1DCD9FDE1DCD9FCE0DBD8AD0000000000000000EBE7
          E4FDECE7E4FEECE7E4FEECE7E4FEECE7E4FEECE7E4FEECE7E4FEECE7E4FEECE7
          E4FEECE7E4FEECE7E4FEE9E4E1FDE1DCD9FDE1DCD9FDE1DCD9FDE1DCD9FDE1DC
          D9FDE1DCD9FDE1DCD9FDE1DCD9FDE1DCD9FDE1DCD9FC0000000000000000ECE7
          E4FEECE7E4FEFDFDFDFEFDFDFDFEFDFDFDFEFDFDFDFEFDFDFDFEFDFDFDFEFDFD
          FDFEFDFDFDFEFDFDFDFEFDFDFDFEFDFDFDFEFDFDFDFEFDFDFDFEFDFDFDFEFDFD
          FDFEFDFDFDFEFDFDFDFEFDFDFDFEE1DCD9FCE1DCD9FD0000000000000000ECE7
          E4FEECE7E4FEFDFDFDFEB7CE70FD99BA35FE99BA35FE99BA35FE99BA35FE99BA
          35FE99BA35FE99BA35FE99BA35FE99BA35FE99BA35FE99BA35FE99BA35FE99BA
          35FEC6D890FDFDFDFDFEFDFDFDFEE1DCD9FCE1DCD9FD0000000000000000ECE7
          E4FEECE7E4FEFDFDFDFEEDF2DEFD9ABB38FD99BA35FE99BA35FE99BA35FE99BA
          35FE99BA35FE99BA35FE99BA35FE99BA35FE99BA35FE99BA35FE99BA35FEAEC8
          60FDFBFBF9FDFDFDFDFEFDFDFDFEE1DCD9FCE1DCD9FD0000000000000000ECE7
          E4FEECE7E4FEFDFDFDFEFDFDFDFEC4D68BFD99BA35FE99BA35FE99BA35FE99BA
          35FE99BA35FE99BA35FE99BA35FE99BA35FE99BA35FE99BA35FE9FBE42FDF0F4
          E4FDFDFDFDFEFDFDFDFEFDFDFDFEE1DCD9FCE1DCD9FD0000000000000000ECE7
          E4FEECE7E4FEFDFDFDFEFDFDFDFEF5F8EEFDA0BE43FD99BA35FE99BA35FE99BA
          35FE99BA35FE99BA35FEA3C049FDB1CA66FD99BA35FE99BA35FEDDE7BDFDFDFD
          FDFEFDFDFDFEFDFDFDFEFDFDFDFEE1DCD9FCE1DCD9FD0000000000000000ECE7
          E4FEECE7E4FEFDFDFDFEFDFDFDFEFDFDFDFED1DFA6FD99BA35FE99BA35FE99BA
          35FE99BA35FE9ABA37FDE4ECCBFDF3F6EAFDA2C048FDC3D68AFDFDFDFDFEFDFD
          FDFEFDFDFDFEFDFDFDFEFDFDFDFEE1DCD9FCE1DCD9FD0000000000000000ECE7
          E4FEECE7E4FEFDFDFDFEFDFDFDFEFDFDFDFEFAFBF8FDA8C453FD99BA35FE99BA
          35FE99BA35FECDDC9CFDFDFDFDFDFDFDFDFDE8EFD4FDFAFBF7FDFDFDFDFEFDFD
          FDFEFDFDFDFEFDFDFDFEFDFDFDFEE1DCD9FCE1DCD9FD0000000000000000ECE7
          E4FEECE7E4FEFDFDFDFEFDFDFDFEFDFDFDFEFDFDFDFEDEE8C0FD99BA35FE99BA
          35FEB4CC6CFDFCFCFBFDFDFDFDFEFDFDFDFEFDFDFDFEFCFCFCFDD3F0FCFDD6F1
          FCFDFDFDFDFEFDFDFDFEFDFDFDFEE1DCD9FCE1DCD9FD0000000000000000ECE7
          E4FEECE7E4FEFDFDFDFEFDFDFDFEFDFDFDFEFDFDFDFEFCFCFCFDB3CB69FDA3C1
          4AFDF4F7ECFDFDFDFDFEFDFDFDFEFDFDFDFEFDFDFDFEB4E7FCFD54CCFDFE54CC
          FDFEBDEAFCFDFDFDFDFEFDFDFDFEE1DCD9FCE1DCD9FD0000000000000000ECE7
          E4FEECE7E4FEFDFDFDFEFDFDFDFEFDFDFDFEFDFDFDFEFDFDFDFEEAF0D8FDE5EC
          CDFDFDFDFDFEFDFDFDFEFDFDFDFEFDFDFDFEFDFDFDFE91DDFCFD54CCFDFE54CC
          FDFE9AE0FCFDFDFDFDFEFDFDFDFEE1DCD9FCE1DCD9FD0000000000000000ECE7
          E4FEECE7E4FEFDFDFDFEFDFDFDFEFDFDFDFEFDFDFDFEFDFDFDFEFDFDFDFEFDFD
          FDFEFDFDFDFEFDFDFDFEFDFDFDFEFDFDFDFEFDFDFDFEDCF3FCFD6CD3FCFD6FD4
          FCFDE1F5FCFDFDFDFDFEFDFDFDFEE1DCD9FCE1DCD9FD0000000000000000ECE7
          E4FEECE7E4FEFDFDFDFEFDFDFDFEFDFDFDFEFDFDFDFEFDFDFDFEFDFDFDFEFDFD
          FDFEFDFDFDFEFDFDFDFEFDFDFDFEFDFDFDFEFDFDFDFEFDFDFDFEFDFDFDFEFDFD
          FDFEFDFDFDFEFDFDFDFEFDFDFDFEE1DCD9FCE1DCD9FD0000000000000000ECE7
          E4FEECE7E4FEECE7E4FEECE7E4FEECE7E4FEECE7E4FEECE7E4FEECE7E4FEECE7
          E4FEECE7E4FEECE7E4FEECE7E4FEECE7E4FEECE7E4FEECE7E4FEE6E1DEFDE1DC
          D9FDE1DCD9FDE1DCD9FDE1DCD9FDE1DCD9FDE1DCD9FD0000000000000000ECE7
          E4FEECE7E4FEECE7E4FEECE7E4FEECE7E4FEECE7E4FEECE7E4FEECE7E4FEECE7
          E4FEECE7E4FEECE7E4FEECE7E4FEECE7E4FEECE7E4FEECE7E4FEE9E4E1FDE1DC
          D9FDE1DCD9FDE1DCD9FDE1DCD9FDE1DCD9FDE1DCD9FD0000000000000000DA87
          4AFEDA874AFEDA874AFEDA874AFEDA874AFEDA874AFEDA874AFEDA874AFEDA87
          4AFEDA874AFEDA874AFEDA874AFEDA874AFEDA874AFEDA874AFED98649FDD081
          46FDD08146FDD08146FDD08146FDD08146FDD08146FD0000000000000000DA87
          4AFEDA874AFEDA874AFEDA874AFEDA874AFEDA874AFEDA874AFEDA874AFEDA87
          4AFEDA874AFEDA874AFEDA874AFEDA874AFEDA874AFEDA874AFEDA874AFED382
          47FDD08146FDD08146FDD08146FDD08146FDD08146FD0000000000000000DA87
          49FDDA874AFEDA874AFEDA874AFEDA874AFEDA874AFEDA874AFEDA874AFEDA87
          4AFEDA874AFEDA874AFEDA874AFEDA874AFEDA874AFEDA874AFEDA874AFED584
          48FDD08146FDD08146FDD08146FDD08146FDCF8146FC0000000000000000D986
          49AEDA874AFDDA874AFEDA874AFEDA874AFEDA874AFEDA874AFEDA874AFEDA87
          4AFEDA874AFEDA874AFEDA874AFEDA874AFEDA874AFEDA874AFEDA874AFED886
          49FDD08146FDD08146FDD08146FDCF8046FCCF8045AD00000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
        ParentFont = False
        OnClick = btnSBAparenciaClick
      end
      object edt1: TEdit
        Left = 123
        Top = 22
        Width = 590
        Height = 21
        Anchors = [akLeft, akTop, akRight]
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
      end
      object pnl: TPanel
        Left = 0
        Top = 309
        Width = 809
        Height = 55
        Align = alBottom
        TabOrder = 1
        object pnl32: TPanel
          Left = 125
          Top = 8
          Width = 185
          Height = 41
          TabOrder = 0
          object btn12: TSpeedButton
            Left = 1
            Top = 1
            Width = 183
            Height = 39
            Align = alClient
            Caption = 'Realizar Inclus'#227'o'
            Flat = True
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'Segoe UI'
            Font.Style = [fsBold]
            Glyph.Data = {
              42100000424D4210000000000000420000002800000020000000200000000100
              20000300000000100000EC000000EC00000000000000000000000000FF0000FF
              0000FF0000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              000000000000000000000000000000000000452B0030422A007F432B01BD422B
              01D7432B01F3432B01F3422B01D7432B01BD422A007F452B0030000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              00000000000000000001442C0052432B01D6432B01FF432B01FF432B01FF432B
              01FF432B01FF432B01FF432B01FF432B01FF432B01FF432B01FF432B01D6422C
              0051000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000462E0021432B01C5432B01FF432B01FF3E391CFF2E6469FF208EB3FF1AA1
              D3FF14B0F0FF14B0F0FF1AA1D3FF218EB2FF2E6469FF3E391CFF432B01FF432B
              01FF422B01C44229001F00000000000000000000000000000000000000000000
              000000000000000000000000000000000000000000000000000000000000412B
              003B432B01E8432B01FF3F3615FF277A8EFF13B5F8FF12B7FCFF12B7FCFF12B7
              FCFF12B7FCFF12B7FCFF12B7FCFF12B7FCFF12B7FCFF13B5F8FF267F97FF3E39
              1AFF432B01FF432B01EC432B0041000000000000000000000000000000000000
              00000000000000000000000000000000000000000000000000004229003E432B
              01F9432B01FF34554CFF15AFEEFF12B7FCFF12B7FCFF12B7FCFF12B7FCFF12B7
              FCFF12B7FCFF12B7FCFF12B7FCFF12B7FCFF12B7FCFF12B7FCFF12B7FCFF15AF
              EDFF34544BFF432B01FF432B01F9432A003D0000000000000000000000000000
              0000000000000000000000000000000000000000000040280020422B01EA432B
              01FF2F676CFF13B6FAFF12B7FCFF12B7FCFF12B7FCFF12B7FCFF12B7FCFF12B7
              FCFF12B7FCFF12B7FCFF12B7FCFF12B7FCFF12B7FCFF12B7FCFF12B7FCFF12B7
              FCFF13B6FAFF2F666BFF432B01FF422B01EA4229001F00000000000000000000
              00000000000000000000000000000000000000000001432B01C5432B01FF3455
              4DFF13B6FAFF12B7FCFF12B7FCFF12B7FCFF12B7FCFF12B7FCFF12B7FCFF12B7
              FCFF12B7FCFF12B7FCFF12B7FCFF12B7FCFF12B7FCFF12B7FCFF12B7FCFF12B7
              FCFF12B7FCFF13B6FAFF34544BFF432B01FF422B01C400000000000000000000
              000000000000000000000000000000000000442B0053432B01FF3E3A1AFF14B0
              EFFF12B7FCFF12B7FCFF12B7FCFF12B7FCFF12B7FCFF12B7FCFF12B7FCFF12B7
              FCFF12B7FCFF12B7FCFF12B7FCFF12B7FCFF12B7FCFF12B7FCFF12B7FCFF12B7
              FCFF12B7FCFF12B7FCFF15AFEDFF3F3819FF432B01FF422C0051000000000000
              000000000000000000000000000000000001432B01D8432B01FF268098FF12B7
              FCFF12B7FCFF12B7FCFF12B7FCFF12B7FCFF12B7FCFF12B7FCFF12B7FCFF12B7
              FCFF374C3CFF374D3DFF12B7FCFF12B7FCFF12B7FCFF12B7FCFF12B7FCFF12B7
              FCFF12B7FCFF12B7FCFF12B7FCFF267E96FF432B01FF432B01D6000000000000
              000000000000000000000000000042290032432B01FF3E3A1DFF13B5F8FF12B7
              FCFF12B7FCFF12B7FCFF12B7FCFF12B7FCFF12B7FCFF12B7FCFF12B7FCFF12B7
              FCFF432B01FF432B01FF12B7FCFF12B7FCFF12B7FCFF12B7FCFF12B7FCFF12B7
              FCFF12B7FCFF12B7FCFF12B7FCFF13B5F8FF3E391CFF432B01FF452B00300000
              0000000000000000000000000000432B0281432B01FF2F666BFF12B7FCFF12B7
              FCFF12B7FCFF12B7FCFF12B7FCFF12B7FCFF12B7FCFF12B7FCFF12B7FCFF12B7
              FCFF432B01FF432B01FF12B7FCFF12B7FCFF12B7FCFF12B7FCFF12B7FCFF12B7
              FCFF12B7FCFF12B7FCFF12B7FCFF12B7FCFF2F6468FF432B01FF432B007E0000
              0000000000000000000000000000432B01BE432B01FF208FB4FF12B7FCFF12B7
              FCFF12B7FCFF12B7FCFF12B7FCFF12B7FCFF12B7FCFF12B7FCFF12B7FCFF12B7
              FCFF432B01FF432B01FF12B7FCFF12B7FCFF12B7FCFF12B7FCFF12B7FCFF12B7
              FCFF12B7FCFF12B7FCFF12B7FCFF12B7FCFF218EB2FF432B01FF432B01BD0000
              0000000000000000000000000000432B01D9432B01FF19A2D6FF12B7FCFF12B7
              FCFF12B7FCFF12B7FCFF12B7FCFF12B7FCFF12B7FCFF12B7FCFF12B7FCFF12B7
              FCFF432B01FF432B01FF12B7FCFF12B7FCFF12B7FCFF12B7FCFF12B7FCFF12B7
              FCFF12B7FCFF12B7FCFF12B7FCFF12B7FCFF1AA1D3FF432B01FF422B01D70000
              0000000000000000000000000000432B01F2432B01FF14B0EFFF12B7FCFF12B7
              FCFF12B7FCFF12B7FCFF12B7FCFF374C3CFF432B01FF432B01FF432B01FF432B
              01FF432B01FF432B01FF432B01FF432B01FF432B01FF432B01FF374D3DFF12B7
              FCFF12B7FCFF12B7FCFF12B7FCFF12B7FCFF14B0EFFF432B01FF432B01F20000
              0000000000000000000000000000432B01F2432B01FF14B0EFFF12B7FCFF12B7
              FCFF12B7FCFF12B7FCFF12B7FCFF384B3AFF432B01FF432B01FF432B01FF432B
              01FF432B01FF432B01FF432B01FF432B01FF432B01FF432B01FF374C3CFF12B7
              FCFF12B7FCFF12B7FCFF12B7FCFF12B7FCFF14B0EFFF432B01FF432B01F20000
              0000000000000000000000000000432B01DA432B01FF19A2D7FF12B7FCFF12B7
              FCFF12B7FCFF12B7FCFF12B7FCFF12B7FCFF12B7FCFF12B7FCFF12B7FCFF12B7
              FCFF432B01FF432B01FF12B7FCFF12B7FCFF12B7FCFF12B7FCFF12B7FCFF12B7
              FCFF12B7FCFF12B7FCFF12B7FCFF12B7FCFF19A2D5FF432B01FF432B01D80000
              0000000000000000000000000000432B01BF432B01FF208FB4FF12B7FCFF12B7
              FCFF12B7FCFF12B7FCFF12B7FCFF12B7FCFF12B7FCFF12B7FCFF12B7FCFF12B7
              FCFF432B01FF432B01FF12B7FCFF12B7FCFF12B7FCFF12B7FCFF12B7FCFF12B7
              FCFF12B7FCFF12B7FCFF12B7FCFF12B7FCFF218EB2FF432B01FF432B01BD0000
              0000000000000000000000000000432B0282432B01FF2E676DFF12B7FCFF12B7
              FCFF12B7FCFF12B7FCFF12B7FCFF12B7FCFF12B7FCFF12B7FCFF12B7FCFF12B7
              FCFF432B01FF432B01FF12B7FCFF12B7FCFF12B7FCFF12B7FCFF12B7FCFF12B7
              FCFF12B7FCFF12B7FCFF12B7FCFF12B7FCFF2E656AFF432B01FF442C00800000
              000000000000000000000000000042290032432B01FF3D3B1EFF13B6F9FF12B7
              FCFF12B7FCFF12B7FCFF12B7FCFF12B7FCFF12B7FCFF12B7FCFF12B7FCFF12B7
              FCFF432B01FF432B01FF12B7FCFF12B7FCFF12B7FCFF12B7FCFF12B7FCFF12B7
              FCFF12B7FCFF12B7FCFF12B7FCFF13B5F8FF3E391CFF432B01FF452B00300000
              000000000000000000000000000000000001432B01D8432B01FF25819AFF12B7
              FCFF12B7FCFF12B7FCFF12B7FCFF12B7FCFF12B7FCFF12B7FCFF12B7FCFF12B7
              FCFF384B3AFF374C3CFF12B7FCFF12B7FCFF12B7FCFF12B7FCFF12B7FCFF12B7
              FCFF12B7FCFF12B7FCFF12B7FCFF267F97FF432B01FF432B01D6000000000000
              000000000000000000000000000000000000432B0054432B01FF3E391CFF14B0
              EFFF12B7FCFF12B7FCFF12B7FCFF12B7FCFF12B7FCFF12B7FCFF12B7FCFF12B7
              FCFF12B7FCFF12B7FCFF12B7FCFF12B7FCFF12B7FCFF12B7FCFF12B7FCFF12B7
              FCFF12B7FCFF12B7FCFF15AFEEFF3E391AFF432B01FF442C0052000000000000
              00000000000000000000000000000000000000000001432C01C7432B01FF3556
              4EFF13B6FAFF12B7FCFF12B7FCFF12B7FCFF12B7FCFF12B7FCFF12B7FCFF12B7
              FCFF12B7FCFF12B7FCFF12B7FCFF12B7FCFF12B7FCFF12B7FCFF12B7FCFF12B7
              FCFF12B7FCFF13B6FAFF34554DFF432B01FF432B01C500000001000000000000
              00000000000000000000000000000000000000000000462E0021432B01EB432B
              01FF2E676DFF13B6FAFF12B7FCFF12B7FCFF12B7FCFF12B7FCFF12B7FCFF12B7
              FCFF12B7FCFF12B7FCFF12B7FCFF12B7FCFF12B7FCFF12B7FCFF12B7FCFF12B7
              FCFF13B6FAFF2F676CFF432B01FF422B01EA462E002100000000000000000000
              00000000000000000000000000000000000000000000000000004229003E432B
              01F9432B01FF35564EFF14B0EFFF12B7FCFF12B7FCFF12B7FCFF12B7FCFF12B7
              FCFF12B7FCFF12B7FCFF12B7FCFF12B7FCFF12B7FCFF12B7FCFF12B7FCFF14B0
              EFFF34554DFF432B01FF432B01F94229003E0000000000000000000000000000
              000000000000000000000000000000000000000000000000000000000000412B
              003B432B01E9432B01FF3E391CFF267F97FF13B5F8FF12B7FCFF12B7FCFF12B7
              FCFF12B7FCFF12B7FCFF12B7FCFF12B7FCFF12B7FCFF13B6FAFF2288A8FF3D3C
              20FF432B01FF432B01EC432B0041000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000462E0021432C01C7432B01FF432B01FF3D3B1EFF2F676CFF208FB5FF1AA1
              D4FF14B1F1FF14B1F1FF1AA1D4FF208FB4FF2F666BFF3E3A1DFF432B01FF432B
              01FF432B01C54028002000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              00000000000000000001432B0054432B01D8432B01FF432B01FF432B01FF432B
              01FF432B01FF432B01FF432B01FF432B01FF432B01FF432B01FF432B01D8442B
              0053000000010000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              00000000000000000000000000000000000042290032432B0281432B01BF422B
              01D7432B01F4432B01F4422B01D7432B01BF432B028142290032000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              000000000000}
            ParentFont = False
            OnClick = btn12Click
            ExplicitLeft = 0
            ExplicitTop = -2
          end
        end
        object pnl31: TPanel
          Left = 455
          Top = 8
          Width = 185
          Height = 41
          TabOrder = 1
          object btn11: TSpeedButton
            Left = 1
            Top = 1
            Width = 183
            Height = 39
            Align = alClient
            Caption = 'Limpar Dados '
            Flat = True
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'Segoe UI'
            Font.Style = [fsBold]
            Glyph.Data = {
              42100000424D4210000000000000420000002800000020000000200000000100
              20000300000000100000DD000000DD00000000000000000000000000FF0000FF
              0000FF000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00E7BD
              3B6CE7BD3D8BFFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
              FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
              FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00E8BD3C9AE9BD
              3C5DFFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00EABF400CE8BD
              3DECE8BD3CFAE6BD3A1FFFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
              FF00FFFFFF00FFFFFF0080E6FF0A80DBFF0EFFFFFF00FFFFFF00FFFFFF00FFFF
              FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00E7BE3B2BE8BD3CFEE9BD
              3CE3D5AA2B06FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00E8BC3C91E8BD
              3CFFE8BD3CFFE8BD3CAFFFFF0001FFFFFF00FFFFFF00FFFFFF00AAFFFF0385E3
              FF6D85E2FFCD85E2FFEB85E2FFFF85E2FFFC85E2FFC473D5FD874AB7F460FFFF
              FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFBF4004E8BD3CBCE8BD3CFFE8BD
              3CFFE9BC3D7EFFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00E8BD3CD6E8BD
              3CFFE8BD3CFFE8BD3CF0FFCC3305FFFFFF00FFFFFF0084E2FF3485E2FFCD85E2
              FFFF85E2FFFF85E2FFFF85E2FFFF85E2FFFF74D5FCFF2FA3F2FF47B4F5FF83DF
              FDA880E3FF12FFFFFF00FFFFFF00FFFFFF00EFBF4010E8BD3CF5E8BD3CFFE8BD
              3CFFE8BE3CBFFFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00E9BC3A39E8BD
              3CFFE8BD3CFFE8BD3C59FFFFFF00FFFFFF0083E0FF4285E2FFF585E2FFFF85E2
              FFFF85E2FFFF85E2FFFF85E2FFFF6ACEFBFF299FF1FF55BFF8FF85E2FFFF85E2
              FFFF85E2FFE685E0FF4BFFFFFF00FFFFFF00FFFFFF00E9BD3D69E8BD3CFFE8BD
              3CFDE7BE3B2BFFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00E7BC
              3CB8E8BD3CD5FF800002FFFFFF0083E0FF4285E2FFF585E2FFFF85E2FFFF85E2
              FFFF85E2FFFF85E2FFFF68CDFBFF299EF1FF64CAFAFF85E2FFFF85E2FFFF85E2
              FFFF85E2FFFF85E2FFFF6BD0FCA40080FF02FFFFFF00D5AA2B06E8BD3CE1E8BE
              3DA8FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00ECBD
              391BE6BB3E29FFFFFF0083E0FF4285E2FFF585E2FFFF85E2FFFF85E2FFFF85E2
              FFFF85E2FFFF85E2FFFF75D7FDFF74D5FCFF85E2FFFF85E2FFFF85E2FFFF85E2
              FFFF7EDDFEFF4AB7F6FF2AA0F1FF59C2F9AAFFFFFF00FFFFFF00E9BE3C2FE6BF
              4014FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
              FF00FFFFFF0083E0FF4285E2FFF585E2FFFF85E2FFFF85E2FFFF85E2FFFF85E2
              FFFF85E2FFFF85E2FFFF85E2FFFF85E2FFFF85E2FFFF85E2FFFF85E2FFFF67CC
              FAFF2DA1F1FF54BEF7FF82E0FFFF85E2FFFF85E3FF6DFFFFFF00FFFFFF00FFFF
              FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
              FF0065CEFB727BDCFDF785E2FFFF85E2FFFF85E2FFFF85E2FFFF85E2FFFF85E2
              FFFF85E2FFFF85E2FFFF85E2FFFF85E2FFFF85E2FFFF85E2FFFF66CBFAFF2A9F
              F1FF6CD0FBFF85E2FFFF85E2FFFF85E2FFFF85E2FFFE84E1FF55FFFFFF00FFFF
              FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0071B3
              CC8C50C1F5FF51C4F8FF7BDCFEFF85E2FFFF85E2FFFF85E2FFFF85E2FFFF85E2
              FFFF85E2FFFF85E2FFFF85E2FFFF85E2FFFF85E2FFFF85E2FFFF5FC6F9FF6FD2
              FCFF85E2FFFF85E2FFFF85E2FFFF85E2FFFF85E2FFFF85E2FFED80E3FF12FFFF
              FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0076A9BB978B7B
              6FFF76929CFF4EC0F5FF51C4F8FF7BDCFEFF85E2FFFF85E2FFFF85E2FFFF85E2
              FFFF85E2FFFF85E2FFFF85E2FFFF85E2FFFF85E2FFFF85E2FFFF85E2FFFF85E2
              FFFF85E2FFFF85E2FFFF74D6FCFF4EBAF6FF3AABF3FF2CA1F1FF3AACF3DAFFFF
              FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0076A9BB978B7B6FFF8D78
              69FF8D7869FF76929CFF4EC0F5FF51C4F8FF5AC3F9FF57C0F8FF85E2FFFF85E2
              FFFF85E2FFFF85E2FFFF85E2FFFF85E2FFFF85E2FFFF85E2FFFF85E2FFFF85E2
              FFFF80DFFEFF49B6F6FF299EF1FF4BB7F6FF65CBFAFF72D4FCFF70D3FCFD83E5
              FF27FFFFFF00FFFFFF00FFFFFF00FFFFFF0075AFC5308A7B6FFF8D7869FF8D78
              69FF8D7869FF8D7869FF76929CFF3EB1F2FF279EF1FF6ACFFBFF85E2FFFF85E2
              FFFF85E2FFFF85E2FFFF85E2FFFF85E2FFFF85E2FFFF85E2FFFF85E2FFFF85E2
              FFFF5DC4F9FF43B2F5FF7ADAFDFF85E2FFFF85E2FFFF85E2FFFF85E2FFFF85E1
              FF80FFFFFF00FFFFFF00FFFFFF00FFFFFF0076A8BB998D7869FF8D7869FF8D78
              69FF8D7869FF8D7869FF8D7869FF698699FF46B8F4FF51C3F8FF7BDCFEFF85E2
              FFFF5DC5F9FF48B5F6FF85E2FFFF85E2FFFF85E2FFFF85E2FFFF85E2FFFF85E2
              FFFF85E2FFFF85E2FFFF85E2FFFF85E2FFFF85E2FFFF85E2FFFF85E2FFFF85E1
              FFCFFFFFFF00FFFFFF00FFFFFF00FFFFFF008EAAC609848682FE8D7869FF8D78
              69FF8D7869FF8D7869FF8D7869FF8D7869FF76929CFF4EC0F5FF51C3F8FF57C1
              F8FF2BA0F1FF72D4FCFF85E2FFFF85E2FFFF85E2FFFF85E2FFFF85E2FFFF85E2
              FFFF85E2FFFF85E2FFFF85E2FFFF85E2FFFF85E2FFFF85E2FFFF85E2FFFF85E2
              FFF4FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0072B0C63A848682FE8D78
              69FF8D7869FF8D7869FF8D7869FF8D7869FF8D7869FF76929CFF3DB0F2FF279E
              F1FF6ACFFBFF85E2FFFF85E2FFFF85E2FFFF85E2FFFF85E2FFFF85E2FFFF85E2
              FFFF85E2FFFF85E2FFFF85E2FFFF85E2FFFF85E2FFFF85E2FFFF85E2FFF584E2
              FF9EFFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0072B0C63A8486
              82FE8D7869FF8D7869FF8D7869FF8D7869FF8D7869FF8D7869FF69869AFF46B9
              F4FF51C3F8FF7ADCFDFF85E2FFFF85E2FFFF85E2FFFF85E2FFFF85E2FFFF85E2
              FFFF85E2FFFF85E2FFFF85E2FFFF85E2FFFF85E2FFDE85E1FF5680D5FF06FFFF
              FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0072B0
              C63A85847EFE8D7869FF8D7869FF8D7869FF8D7869FF8D7869FF8D7869FF7692
              9CFF4EC0F5FF51C3F8FF59C3F8FF75D6FCFF85E2FFFF85E2FFFF85E2FFFF85E2
              FFFF85E2FFFF85E2FFFF85E2FFFE84E2FF8592DBFF07FFFFFF00FFFFFF00FFFF
              FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF008472
              611D816C5BF68A7566FF8D7869FF8D7869FF8D7869FF8D7869FF8D7869FF8D78
              69FF76929CFF3CAFF2FF289EF1FF6ED3FBFF85E2FFFF85E2FFFF85E2FFFF85E2
              FFFF85E2FFFF85E2FFEF84E1FF4DFFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
              FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00806D5B1C816A
              59F37E6756FF7F6858FF8A7566FF8D7869FF8D7869FF8D7869FF8D7869FF8D78
              69FF8D7869FF69869AFF47B9F4FF51C3F8FF7ADCFDFF85E2FFFF85E2FFFF85E2
              FFFF85E2FFD183E2FF23FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
              FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF008877660F8D7768CA826B
              5BFF7E6756FF7E6756FF7F6858FF8A7566FF8D7869FF8D7869FF8D7869FF8D78
              69FF8D7869FF8D7869FF76929CFF4EC0F5FF51C3F8FF7ADCFDFF85E2FFFF86E2
              FFA680E6FF0AFFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
              FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF008877660F8E7869C88D7869FF8C77
              68FF826B5BFF7E6756FF7E6756FF7F6858FF8A7668FF8D7869FF8D7869FF8D78
              69FF8D7869FF8D7869FF8D7869FF76929CFF4EC0F5FF51C3F8FF7DDDFD9FFFFF
              FF01FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
              FF00FFFFFF00FFFFFF00FFFFFF008877660F8E7869C88D7869FF8D7869FF8D78
              69FF8C7768FF826B5BFF7E6756FF816A5AF2799EA84C848682FE8D7869FF8D78
              69FF8D7869FF8D7869FF8D7869FF8D7869FF76929CFF61CDFBC2FFFFFF00FFFF
              FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
              FF00FFFFFF00FFFFFF008877660F8E7869C88D7869FF8D7869FF8D7869FF8D78
              69FF8D7869FF8C7768FF836D5CE58F705C19FFFFFF0072B0C63A848682FE8D78
              69FF8D7869FF8D7869FF8D7869FF8D786AFF77A3B3D6FFFFFF00FFFFFF00FFFF
              FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
              FF00FFFFFF008877660F8E7869C88D7869FF8D7869FF8D7869FF8D7869FF8D78
              69FF8D7869FF8D7869C395806A0CFFFFFF00FFFFFF00FFFFFF0072B0C63A8486
              82FE8D7869FF8D7869FF8D786AFF78A2B1D1FFFFFF00FFFFFF00FFFFFF00FFFF
              FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
              FF00FFFFFF008D7869B78D7869FF8D7869FF8D7869FF8D7869FF8D7869FF8D78
              69FF8D7869C395806A0CFFFFFF00FFFFFF00E6BB3E29ECBD391BFFFFFF0072B0
              C63A7E9296F585847EFE77A4B4BEFFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
              FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
              FF00FFFFFF008D7869D48D7869FF8D7869FF8D7869FF8D7869FF8D7869FF8D78
              69C395806A0CFFFFFF00FFFFFF00FF800002E8BD3CD5E7BC3CB8FFFFFF00FFFF
              FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
              FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
              FF00FFFFFF00907669278D7869E68D7869FF8D7869FF8D7869FF8D7869C39580
              6A0CFFFFFF00FFFFFF00FFFFFF00E8BC3D58E8BD3CFFE8BD3CFFE9BC3A39FFFF
              FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
              FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
              FF00FFFFFF00FFFFFF008A7567258D7869E48D7869FF8D7869C395806A0CFFFF
              FF00FFFFFF00FFFFFF00FFFFFF00E8BD3CEFE8BD3CFFE8BD3CFFE8BD3CD6FFFF
              FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
              FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
              FF00FFFFFF00FFFFFF00FFFFFF0089766C1A8E7969619980660AFFFFFF00FFFF
              FF00FFFFFF00FFFFFF00FFFFFF00E8BD3CAEE8BD3CFFE8BD3CFFE8BC3C91FFFF
              FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
              FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
              FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
              FF00FFFFFF00FFFFFF00FFFFFF00E6BD3A1FE8BD3CFAE8BD3DECEABF400CFFFF
              FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
              FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
              FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
              FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00E7BD3D8BE7BD3B6CFFFFFF00FFFF
              FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
              FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
              FF00FFFFFF00}
            ParentFont = False
            OnClick = btn11Click
            ExplicitLeft = 0
            ExplicitTop = -2
          end
        end
      end
      object GridExcel: TStringGrid
        Left = 0
        Top = 64
        Width = 809
        Height = 245
        Align = alBottom
        Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goEditing, goFixedRowDefAlign]
        TabOrder = 2
        ColWidths = (
          64
          64
          64
          64
          65)
      end
    end
  end
  object Timer: TTimer
    Enabled = False
    OnTimer = TimerTimer
    Left = 685
    Top = 155
  end
  object QueryProdutos: TADOQuery
    Connection = frmViewBase.Base
    CursorType = ctStatic
    BeforeInsert = QueryProdutosBeforeInsert
    BeforeEdit = QueryProdutosBeforeEdit
    AfterPost = QueryProdutosAfterPost
    AfterCancel = QueryProdutosAfterCancel
    Parameters = <
      item
        Name = 'CodProduto'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    SQL.Strings = (
      'Select * from Produtos where CodProduto  = :CodProduto')
    Left = 688
    Top = 192
    object atncfldQueryProdutosCodProduto: TAutoIncField
      FieldName = 'CodProduto'
      ReadOnly = True
    end
    object strngfldQueryProdutosDescProduto: TStringField
      FieldName = 'DescProduto'
      Size = 255
    end
    object strngfldQueryProdutosCodigoBarra: TStringField
      FieldName = 'CodigoBarra'
      Size = 50
    end
    object bcdfldQueryProdutosCustoCompra: TBCDField
      FieldName = 'CustoCompra'
      Precision = 10
      Size = 2
    end
    object bcdfldQueryProdutosCustoVenda: TBCDField
      FieldName = 'CustoVenda'
      Precision = 10
      Size = 2
    end
    object intgrfldQueryProdutosQuantEstoque: TIntegerField
      FieldName = 'QuantEstoque'
    end
    object strngfldQueryProdutosPermiteMovEstoque: TStringField
      FieldName = 'PermiteMovEstoque'
      FixedChar = True
      Size = 1
    end
    object strngfldQueryProdutosNCM: TStringField
      FieldName = 'NCM'
      Size = 10
    end
    object strngfldQueryProdutosCEST: TStringField
      FieldName = 'CEST'
      Size = 10
    end
    object strngfldQueryProdutosCFOP: TStringField
      FieldName = 'CFOP'
      Size = 4
    end
    object strngfldQueryProdutosAliquotaICMS: TStringField
      FieldName = 'AliquotaICMS'
      Size = 6
    end
    object strngfldQueryProdutosAliquotaIPI: TStringField
      FieldName = 'AliquotaIPI'
      Size = 6
    end
    object dtfldQueryProdutosDataCadastro: TDateField
      FieldName = 'DataCadastro'
    end
    object strngfldQueryProdutosAtivo: TStringField
      FieldName = 'Ativo'
      FixedChar = True
      Size = 1
    end
    object intgrfldQueryProdutosCodGrupo: TIntegerField
      FieldName = 'CodGrupo'
    end
  end
  object QueryExcel: TADOQuery
    Connection = frmViewBase.Base
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'CodProduto'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    SQL.Strings = (
      'Select * from Produtos  where CodProduto = :CodProduto ')
    Left = 688
    Top = 224
    object atncfldQueryExcelCodProduto: TAutoIncField
      FieldName = 'CodProduto'
      ReadOnly = True
    end
    object strngfldQueryExcelDescProduto: TStringField
      FieldName = 'DescProduto'
      Size = 255
    end
    object strngfldQueryExcelCodigoBarra: TStringField
      FieldName = 'CodigoBarra'
      Size = 50
    end
    object bcdfldQueryExcelCustoCompra: TBCDField
      FieldName = 'CustoCompra'
      Precision = 10
      Size = 2
    end
    object bcdfldQueryExcelCustoVenda: TBCDField
      FieldName = 'CustoVenda'
      Precision = 10
      Size = 2
    end
    object intgrfldQueryExcelQuantEstoque: TIntegerField
      FieldName = 'QuantEstoque'
    end
    object strngfldQueryExcelPermiteMovEstoque: TStringField
      FieldName = 'PermiteMovEstoque'
      FixedChar = True
      Size = 1
    end
    object strngfldQueryExcelNCM: TStringField
      FieldName = 'NCM'
      Size = 10
    end
    object strngfldQueryExcelCEST: TStringField
      FieldName = 'CEST'
      Size = 10
    end
    object strngfldQueryExcelCFOP: TStringField
      FieldName = 'CFOP'
      Size = 4
    end
    object strngfldQueryExcelAliquotaICMS: TStringField
      FieldName = 'AliquotaICMS'
      Size = 6
    end
    object strngfldQueryExcelAliquotaIPI: TStringField
      FieldName = 'AliquotaIPI'
      Size = 6
    end
    object dtfldQueryExcelDataCadastro: TDateField
      FieldName = 'DataCadastro'
    end
    object strngfldQueryExcelAtivo: TStringField
      FieldName = 'Ativo'
      FixedChar = True
      Size = 1
    end
    object intgrfldQueryExcelCodGrupo: TIntegerField
      FieldName = 'CodGrupo'
    end
  end
  object DSQueryProdutos: TDataSource
    DataSet = QueryProdutos
    Left = 717
    Top = 192
  end
  object QueryListagem: TADOQuery
    Connection = frmViewBase.Base
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from Produtos')
    Left = 717
    Top = 155
    object atncfldQueryListagemCodProduto: TAutoIncField
      FieldName = 'CodProduto'
      ReadOnly = True
    end
    object strngfldQueryListagemDescProduto: TStringField
      FieldName = 'DescProduto'
      Size = 255
    end
    object strngfldQueryListagemCodigoBarra: TStringField
      FieldName = 'CodigoBarra'
      Size = 50
    end
    object bcdfldQueryListagemCustoCompra: TBCDField
      FieldName = 'CustoCompra'
      Precision = 10
      Size = 2
    end
    object bcdfldQueryListagemCustoVenda: TBCDField
      FieldName = 'CustoVenda'
      Precision = 10
      Size = 2
    end
    object intgrfldQueryListagemQuantEstoque: TIntegerField
      FieldName = 'QuantEstoque'
    end
    object strngfldQueryListagemPermiteMovEstoque: TStringField
      FieldName = 'PermiteMovEstoque'
      FixedChar = True
      Size = 1
    end
    object strngfldQueryListagemNCM: TStringField
      FieldName = 'NCM'
      Size = 10
    end
    object strngfldQueryListagemCEST: TStringField
      FieldName = 'CEST'
      Size = 10
    end
    object strngfldQueryListagemCFOP: TStringField
      FieldName = 'CFOP'
      Size = 4
    end
    object strngfldQueryListagemAliquotaICMS: TStringField
      FieldName = 'AliquotaICMS'
      Size = 6
    end
    object strngfldQueryListagemAliquotaIPI: TStringField
      FieldName = 'AliquotaIPI'
      Size = 6
    end
    object dtfldQueryListagemDataCadastro: TDateField
      FieldName = 'DataCadastro'
    end
    object strngfldQueryListagemAtivo: TStringField
      FieldName = 'Ativo'
      FixedChar = True
      Size = 1
    end
    object intgrfldQueryListagemCodGrupo: TIntegerField
      FieldName = 'CodGrupo'
    end
  end
  object DSQueryListagem: TDataSource
    DataSet = QueryListagem
    Left = 749
    Top = 155
  end
  object TimerEstoque: TTimer
    OnTimer = TimerEstoqueTimer
    Left = 676
    Top = 298
  end
  object QueryEstoque: TADOQuery
    Connection = frmViewBase.Base
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      
        'select Produtos.CodProduto,Produtos.DescProduto,Grupo.DescGrupo,' +
        'Produtos.QuantEstoque,Produtos.PermiteMovEstoque from Produtos'
      'left outer join Grupo on Produtos.CodProduto = Grupo.CodProduto')
    Left = 708
    Top = 298
    object atncfldQueryEstoqueCodProduto: TAutoIncField
      FieldName = 'CodProduto'
      ReadOnly = True
    end
    object QueryEstoqueDescProduto: TStringField
      FieldName = 'DescProduto'
      Size = 255
    end
    object QueryEstoqueDescGrupo: TStringField
      FieldName = 'DescGrupo'
      Size = 255
    end
    object QueryEstoqueQuantEstoque: TIntegerField
      FieldName = 'QuantEstoque'
    end
    object QueryEstoquePermiteMovEstoque: TStringField
      FieldName = 'PermiteMovEstoque'
      FixedChar = True
      Size = 1
    end
  end
  object DSQueryEstoque: TDataSource
    DataSet = QueryEstoque
    Left = 740
    Top = 298
  end
end
