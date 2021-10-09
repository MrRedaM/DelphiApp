unit Main;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.Imaging.pngimage,
  Vcl.StdCtrls, Vcl.WinXCtrls, VCLTee.TeCanvas, Vcl.ComCtrls;

type
  TMainForm = class(TForm)
    Header: TPanel;
    ToolPanel: TPanel;
    ListPanel: TPanel;
    Image1: TImage;
    Image2: TImage;
    CBDocType: TComboBox;
    Label1: TLabel;
    BtnAdd: TButton;
    BtnEdit: TButton;
    Button1: TButton;
    SearchByName: TSearchBox;
    Image3: TImage;
    Panel1: TPanel;
    ListView: TListView;
    procedure CBDocTypeChange(Sender: TObject);
    procedure FormActivate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  MainForm: TMainForm;

implementation

{$R *.dfm}

procedure TMainForm.CBDocTypeChange(Sender: TObject);
begin
  ShowMessage('Changed!');
end;

procedure TMainForm.FormActivate(Sender: TObject);
begin
  ShowMessage('Activate!');
end;

end.
