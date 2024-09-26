unit ViewBase;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls, Vcl.Buttons, Data.DB, Data.Win.ADODB,
  Grids, DBGrids, Vcl.Themes, Vcl.Menus;

type
  TfrmViewBase = class(TForm)
    pnl1: TPanel;
    pnl3: TPanel;
    pnl21: TPanel;
    pnl2: TPanel;
    pnl4: TPanel;
    nbMenu_Notebook: TNotebook;
    btn4: TSpeedButton;
    bvl: TBevel;
    Base: TADOConnection;
    btnSBAparencia: TSpeedButton;
    QueryConsulta: TADOQuery;
    mm1: TMainMenu;
    Clientes1: TMenuItem;
    clietnes1: TMenuItem;
    procedure btn4Click(Sender: TObject);
    procedure btnSBAparenciaClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure Cliente1Click(Sender: TObject);
    procedure Clientes1Click(Sender: TObject);
    procedure clietnes1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    vCodUsuario: Integer;
  end;

var
  frmViewBase: TfrmViewBase;

implementation

uses
  Clientes, Aparencia;

{$R *.dfm}

procedure TfrmViewBase.btn4Click(Sender: TObject);
var
  i: Integer;
begin
  FormClientes:= TFormClientes.Create(Self);
  FormClientes.Show;
end;

procedure TfrmViewBase.btnSBAparenciaClick(Sender: TObject);
begin
  if (FormClientes = nil) then
    FormClientes := TFormClientes.create(self);
  FormClientes.Show;

end;

procedure TfrmViewBase.Cliente1Click(Sender: TObject);
begin
    if (FormClientes = nil) then
    FormClientes := TFormClientes.create(self);
  FormClientes.Show;
end;

procedure TfrmViewBase.Clientes1Click(Sender: TObject);
begin
      if (FormClientes = nil) then
    FormClientes := TFormClientes.create(self);
  FormClientes.Show;
end;

procedure TfrmViewBase.clietnes1Click(Sender: TObject);
begin
        if (FormClientes = nil) then
    FormClientes := TFormClientes.create(self);
  FormClientes.Show;
end;

procedure TfrmViewBase.FormActivate(Sender: TObject);
begin
  vCodUsuario := 1;
  QueryConsulta.Close;
  QueryConsulta.SQL.Clear;
  QueryConsulta.SQL.Add('select EstiloDeSistema from Usuarios where CodUsuario = '+ IntToStr(vCodUsuario));
  QueryConsulta.Open;

  TStyleManager.TrySetStyle(QueryConsulta.FieldByName('EstiloDeSistema').AsString);
end;

end.
