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
    LV: TListView;
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
var
col : TListColumn; line : TListItem;
  I: Integer;
begin
  CBDocType.ItemIndex := 0;
  col := LV.Columns.Add;
  col.Caption := 'Num�ro';
  col := LV.Columns.Add;
  col.Caption := 'R�f�rence courier';
  col := LV.Columns.Add;
  col.Caption := 'Date de r�alisation organisme';
  col := LV.Columns.Add;
  col.Caption := 'Adresse';
  col := LV.Columns.Add;
  col.Caption := 'T�l�phone';
  col := LV.Columns.Add;
  col.Caption := 'Email';
  col := LV.Columns.Add;
  col.Caption := 'Fax';
  col := LV.Columns.Add;
  col.Caption := 'Type de R�seaux';
  col := LV.Columns.Add;
  col.Caption := 'Travaille effectu� D�signation';
  col := LV.Columns.Add;
  col.Caption := 'Marque';
  col := LV.Columns.Add;
  col.Caption := 'Quantit�';
  col := LV.Columns.Add;
  col.Caption := 'Observation';
  for I := 1 to 10 do
    begin
      line := LV.Items.Add;
      line.Caption := i.ToString;
      line.SubItems.Add('R�f�rence ' + i.ToString);
      line.SubItems.Add('Date ' + i.ToString);
      line.SubItems.Add('Adresse ' + i.ToString);
      line.SubItems.Add('T�l�phone ' + i.ToString);
      line.SubItems.Add('Email ' + i.ToString);
      line.SubItems.Add('Fax ' + i.ToString);
      line.SubItems.Add('Type ' + i.ToString);
      line.SubItems.Add('Travaille ' + i.ToString);
      line.SubItems.Add('Marque ' + i.ToString);
      line.SubItems.Add('Quantit� ' + i.ToString);
      line.SubItems.Add('Observation ' + i.ToString);
    end;
end;

end.
