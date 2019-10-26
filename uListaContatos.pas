unit uListaContatos;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.ComCtrls, uCliente;

type
  TfrmListaContatos = class(TForm)
    Panel1: TPanel;
    edtNome: TEdit;
    lblNome: TLabel;
    edtEmail: TEdit;
    lblEmail: TLabel;
    btnAdicionar: TButton;
    btnRemover: TButton;
    btnExibir: TButton;
    Panel2: TPanel;
    lvlLista: TListView;
    procedure lvlListaDeletion(Sender: TObject; Item: TListItem);
    procedure btnRemoverClick(Sender: TObject);
    procedure btnExibirClick(Sender: TObject);
    procedure btnAdicionarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmListaContatos: TfrmListaContatos;

implementation

{$R *.dfm}

procedure TfrmListaContatos.btnAdicionarClick(Sender: TObject);
var
  tempItem: TListItem;
  tempCliente: TCliente;
begin
  tempCliente       := TCliente.Create;
  tempCliente.Nome  := EdtNome.Text;
  tempCliente.Email := EdtEmail.Text;

  tempItem         := lvlLista.Items.Add;
  tempItem.Caption := tempCliente.Nome;
  tempItem.SubItems.Add(tempCliente.Email);
  tempItem.Data    := tempCliente;
end;

procedure TfrmListaContatos.btnExibirClick(Sender: TObject);
var
  tempCliente: TCliente;
begin
  if lvlLista.ItemIndex > -1 then
  begin
    tempCliente := lvlLista.Selected.Data;
    ShowMessage('Nome: '  + tempCliente.Nome + #13 +
                'E-mail: '+ tempCliente.Email);
  end;
end;

procedure TfrmListaContatos.btnRemoverClick(Sender: TObject);
begin
  if lvlLista.ItemIndex > -1 then
    lvlLista.Selected.Delete;
end;

procedure TfrmListaContatos.lvlListaDeletion(Sender: TObject; Item: TListItem);
begin
if Item.Data <> nil then
  begin
    TObject(Item.Data).Destroy;
    Item.Data := nil;
  end;
end;

end.
