unit Main;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.Imaging.pngimage,
  Vcl.StdCtrls, Vcl.WinXCtrls, VCLTee.TeCanvas, Vcl.ComCtrls, Data.DB,
  Vcl.Grids, Vcl.DBGrids;

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
    DBGrid: TDBGrid;
    procedure CBDocTypeChange(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure BtnEditClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  MainForm: TMainForm;

implementation

{$R *.dfm}

uses DataModuleUnit, NewDodationUnit;

procedure TMainForm.BtnEditClick(Sender: TObject);
begin
  case CBDocType.ItemIndex of
    0: ;
    1: NewDodationForm.ShowModal;
    2: ;
  end;
end;

procedure TMainForm.CBDocTypeChange(Sender: TObject);
var
combo : TComboBox;
begin
  combo := TComboBox (Sender);
  //ShowMessage(combo.Items[combo.ItemIndex]);
  case combo.ItemIndex of
    0: DBGrid.DataSource := DM.SrcPv;
    1: DBGrid.DataSource := DM.SrcDodation;
    2: DBGrid.DataSource := DM.SrcDecharge;
  end;
end;

procedure TMainForm.FormActivate(Sender: TObject);
begin
  CBDocType.ItemIndex := 0;
  DBGrid.DataSource := DM.SrcPv;
end;

end.
