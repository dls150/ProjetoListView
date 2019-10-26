unit uListaContatos;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls;

type
  TfrmListaContatos = class(TForm)
    Panel1: TPanel;
    edtNome: TEdit;
    lblNome: TLabel;
    edtEmail: TEdit;
    lblEmail: TLabel;
    btnCadastrar: TButton;
    btnRemover: TButton;
    btnListar: TButton;
    Panel2: TPanel;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmListaContatos: TfrmListaContatos;

implementation

{$R *.dfm}

end.
