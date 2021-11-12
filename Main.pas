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
    BtnEdit: TButton;
    BtnAdd: TButton;
    BtnPrint: TButton;
    SearchByName: TSearchBox;
    Image3: TImage;
    Panel1: TPanel;
    DBGrid: TDBGrid;
    ClearSearch: TImage;
    procedure CBDocTypeChange(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure BtnAddClick(Sender: TObject);
    procedure SearchByNameInvokeSearch(Sender: TObject);
    procedure SearchByNameChange(Sender: TObject);
    procedure ClearSearchClick(Sender: TObject);
    procedure BtnEditClick(Sender: TObject);
    procedure BtnPrintClick(Sender: TObject);
    procedure Image2Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  MainForm: TMainForm;

implementation

{$R *.dfm}

uses DataModuleUnit, NewDodationUnit, NewPvUnit, DechargeUnit, DisplayPvUnit,
  LoginScreen;

procedure TMainForm.BtnEditClick(Sender: TObject);
var
  s : string;
begin
  s := 'Modifier';
  case CBDocType.ItemIndex of
    0: begin
      NewPvForm.BtnConfirm.Caption := s;
      s := s + ' PV d''installation';
      NewPvForm.Title.Caption := s;
      NewPvForm.ShowModal;
    end;
    1: begin
      NewDodationForm.BtnConfirm.Caption := s;
      s := s + ' demande de dodation';
      NewDodationForm.Title.Caption := s;
      NewDodationForm.ShowModal;
    end;
    2: begin
      with DechargeForm do begin
        Mode := MODE_EDIT;
        ShowModal;
      end;
      
    end;
  end;
end;

procedure TMainForm.BtnPrintClick(Sender: TObject);
begin
  DisplayPvForm.ShowModal;
end;

procedure TMainForm.BtnAddClick(Sender: TObject);
var
  s : string;
begin
  s := 'Cr�er';
  //ShowMessage(DBGrid.Fields[2].AsString);
  case CBDocType.ItemIndex of
    0: begin
      NewPvForm.BtnConfirm.Caption := s;
      s := s + ' PV d''installation';
      NewPvForm.Title.Caption := s;
      NewPvForm.ShowModal;
    end;
    1: begin
      NewDodationForm.BtnConfirm.Caption := s;
      s := s + ' demande de dodation';
      NewDodationForm.Title.Caption := s;
      NewDodationForm.ShowModal;
    end;
    2: begin
      with DechargeForm do begin
        Mode := MODE_NEW;
        ShowModal;
      end;
      
    end;
  end;
end;


procedure TMainForm.CBDocTypeChange(Sender: TObject);
var
combo : TComboBox;
begin
  combo := TComboBox (Sender);
  case combo.ItemIndex of
    0: begin
      DBGrid.DataSource := DM.SrcPv;
      BtnAdd.Enabled := false;
      BtnEdit.Enabled := false;
      BtnPrint.Enabled := true;
      SearchByName.Enabled := true;
    end;
    1: begin
      DBGrid.DataSource := DM.SrcDodation;
      BtnAdd.Enabled := true;
      BtnEdit.Enabled := false;
      BtnPrint.Enabled := false;
      SearchByName.Enabled := false;
    end;
    2: begin
      DBGrid.DataSource := DM.SrcDecharge;
      BtnAdd.Enabled := false;
      BtnEdit.Enabled := true;
      BtnPrint.Enabled := false;
      SearchByName.Enabled := false;
    end;
  end;
end;

procedure TMainForm.ClearSearchClick(Sender: TObject);
begin
  SearchByName.Clear;
end;

procedure TMainForm.FormActivate(Sender: TObject);
begin
  CBDocType.ItemIndex := 0;
  DBGrid.DataSource := DM.SrcPv;
  BtnAdd.Enabled := false;
  BtnEdit.Enabled := false;
  BtnPrint.Enabled := true;
  SearchByName.Enabled := true;
end;



procedure TMainForm.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Login.Show;
end;

procedure TMainForm.Image2Click(Sender: TObject);
begin
  Self.Close;
end;

procedure TMainForm.SearchByNameChange(Sender: TObject);
begin
  if SearchByName.Text = '' then
    ClearSearch.visible := false
  else
    ClearSearch.visible := true;

end;

procedure TMainForm.SearchByNameInvokeSearch(Sender: TObject);
begin
  if SearchByName.Text = '' then begin

  end else begin
    with DM.QueryClient do begin
      Close;
      SQL.Text := 'select N_cl from `client` where Nom_cl like ''%'+SearchByName.Text+'%''';
      open;
      First;
      DM.DSPv.Locate('Num_cl', FieldByName('N_cl').AsString, []);
    end;
  end;

end;

end.
