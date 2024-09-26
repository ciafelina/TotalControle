unit Clientes;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.ExtCtrls, Data.Win.ADODB, Vcl.StdCtrls, Vcl.Grids, Vcl.DBGrids, Vcl.ComCtrls, Vcl.Mask, JvExMask, JvToolEdit, Vcl.DBCtrls;

type
  TFormClientes = class(TForm)
    pnl1: TPanel;
    PagListagem: TPageControl;
    ts1: TTabSheet;
    PagManutencao: TTabSheet;
    dbgrd1: TDBGrid;
    lblTitulo: TLabel;
    Pesquisa: TEdit;
    DSQueryListagem: TDataSource;
    QueryListagem: TADOQuery;
    TimerCli: TTimer;
    Todos: TCheckBox;
    DateEdit1: TJvDateEdit;
    pnl2: TPanel;
    QueryCliente: TADOQuery;
    DSQueryCliente: TDataSource;
    lbl1: TLabel;
    lbl2: TLabel;
    dbedtCliNome: TDBEdit;
    atncfldQueryListagemCodCliente: TAutoIncField;
    wdstrngfldQueryListagemNome: TWideStringField;
    wdstrngfldQueryListagemEmail: TWideStringField;
    wdstrngfldQueryListagemTelefone: TWideStringField;
    dtfldQueryListagemDataNascimento: TDateField;
    wdstrngfldQueryListagemEndereco: TWideStringField;
    wdstrngfldQueryListagemCidade: TWideStringField;
    wdstrngfldQueryListagemEstado: TWideStringField;
    wdstrngfldQueryListagemCEP: TWideStringField;
    dtmfldQueryListagemDataCadastro: TDateTimeField;
    atncfldQueryClienteCodCliente: TAutoIncField;
    wdstrngfldQueryClienteNome: TWideStringField;
    wdstrngfldQueryClienteEmail: TWideStringField;
    wdstrngfldQueryClienteTelefone: TWideStringField;
    dtfldQueryClienteDataNascimento: TDateField;
    wdstrngfldQueryClienteEndereco: TWideStringField;
    wdstrngfldQueryClienteCidade: TWideStringField;
    wdstrngfldQueryClienteEstado: TWideStringField;
    wdstrngfldQueryClienteCEP: TWideStringField;
    dtmfldQueryClienteDataCadastro: TDateTimeField;
    lbl3: TLabel;
    CodCliente: TDBText;
    dbtEmail: TDBEdit;
    DBTelefone: TDBEdit;
    lbl4: TLabel;
    lbl5: TLabel;
    procedure TimerCliTimer(Sender: TObject);
    procedure dbgrd1TitleClick(Column: TColumn);
    procedure TodosClick(Sender: TObject);
    procedure PesquisaChange(Sender: TObject);
    procedure DateEdit1Change(Sender: TObject);
    procedure dbgrd1DrawColumnCell(Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure dbgrd1CellClick(Column: TColumn);
  private
    { Private declarations }
    CampoFiltrado : string;
    ColunaFiltrada: TColumn;
  public
    { Public declarations }
  end;

var
  FormClientes: TFormClientes;

implementation

uses
  ViewBase;

{$R *.dfm}

procedure TFormClientes.DateEdit1Change(Sender: TObject);
begin
    TimerCli.Enabled  := false;
    TimerCli.Enabled  := True;
end;

procedure TFormClientes.dbgrd1CellClick(Column: TColumn);
begin
  QueryCliente.Close;
  QueryCliente.Parameters.ParamByName('CliCodigo').Value := dbgrd1.DataSource.DataSet.FieldByName('CliCodigo').AsInteger;
  QueryCliente.Open;
end;

procedure TFormClientes.dbgrd1DrawColumnCell(Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
  if gdSelected in State then
  begin
    dbgrd1.Canvas.Brush.Color := clHighlight;
    dbgrd1.Canvas.Font.Color := clHighlightText;
  end
  else
  begin
    dbgrd1.Canvas.Brush.Color := clWindow;
    dbgrd1.Canvas.Font.Color := clBlack;
  end;

  // Desenha a célula normalmente
  dbgrd1.DefaultDrawColumnCell(Rect, DataCol, Column, State);
end;

procedure TFormClientes.dbgrd1TitleClick(Column: TColumn);
begin
  ColunaFiltrada := Column;
  if Column.Field.FieldName <> CampoFiltrado then
    begin
      CampoFiltrado := Column.Field.FieldName;
    end;


  if Column.Field.FieldName = 'DataNascimento' then
    begin
      Pesquisa.Visible := false;
      DateEdit1.Visible := true;
    end
  else
  begin
    Pesquisa.Visible := true;
    DateEdit1.Visible := false;
  end;


  if Assigned(ColunaFiltrada) then
    ColunaFiltrada.Title.Caption := StringReplace(ColunaFiltrada.Title.Caption, ' ↑', '', [rfReplaceAll]);

  ColunaFiltrada := Column;

  ColunaFiltrada.Title.Caption := ColunaFiltrada.Title.Caption;
  lblTitulo.Caption := 'Pesquisar: ' +Column.Title.Caption;

  lblTitulo.Width := lblTitulo.Canvas.TextWidth(lblTitulo.Caption);

  Pesquisa.Left := lblTitulo.Left + lblTitulo.Width + 10;
  Pesquisa.Width := 540;

  dbgrd1.Invalidate;


end;

procedure TFormClientes.PesquisaChange(Sender: TObject);
begin
    TimerCli.Enabled  := false;
   TimerCli.Enabled  := True;
end;

procedure TFormClientes.TimerCliTimer(Sender: TObject);
begin
  TimerCli.Enabled := false;

  if Todos.Checked then
    begin
      QueryListagem.Close;
      QueryListagem.SQL.Clear;
      QueryListagem.SQL.Add('select * from Clientes');
      QueryListagem.Open;
    end
  else
    begin
      if (Pesquisa.Text <> '') or (DateEdit1.Text <> ' / / ')  then
        begin
          QueryListagem.Close;
          QueryListagem.SQL.Clear;
          QueryListagem.SQL.Add('select * from Clientes where (1=1)');

        if CampoFiltrado = 'Nome' then
            QueryListagem.SQL.Add(' and Nome like ''%'+Pesquisa.Text+'%''')

        else if CampoFiltrado = 'Email' then
          QueryListagem.SQL.Add(' and Email like ''%'+Pesquisa.Text+'%''')

        else if CampoFiltrado = 'Telefone' then
          QueryListagem.SQL.Add(' and Telefone like ''%'+Pesquisa.Text+'%''')

        else if CampoFiltrado = 'DataNascimento' then
          QueryListagem.SQL.Add(' and DataNascimento >=+ '+ DateToStr(DateEdit1.Date))

        else if CampoFiltrado = 'Cidade' then
          QueryListagem.SQL.Add(' and Cidade like ''%'+Pesquisa.Text+'%''')

        else if CampoFiltrado = 'Estado' then
          QueryListagem.SQL.Add(' and Estado like ''%'+Pesquisa.Text+'%''')

        else if CampoFiltrado = 'CEP' then
          QueryListagem.SQL.Add(' and CEP like ''%'+Pesquisa.Text+'%''');


        QueryListagem.Open;
        end;


    end;

end;

procedure TFormClientes.TodosClick(Sender: TObject);
begin
  TimerCli.Enabled  := false;
  TimerCli.Enabled  := True;
end;

end.
