unit ViewBase;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls;

type
  TfrmViewBase = class(TForm)
    pnl1: TPanel;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmViewBase: TfrmViewBase;

implementation

{$R *.dfm}

end.
