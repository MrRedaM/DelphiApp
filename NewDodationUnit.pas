unit NewDodationUnit;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.DBCtrls;

type
  TNewDodationForm = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    EditCmd: TEdit;
    Label3: TLabel;
    Label4: TLabel;
    Button1: TButton;
    Button2: TButton;
    ComboComm: TDBComboBox;
    ComboCentral: TDBComboBox;
    procedure FormShow(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  NewDodationForm: TNewDodationForm;

implementation

{$R *.dfm}

uses DataModuleUnit;

procedure TNewDodationForm.Button1Click(Sender: TObject);
begin
  with DM.QueryDodation do
  begin
    SQL.Clear;
    SQL.Add('INSERT INTO `demande_dodation` (`N_Dem_Dot`, `N_Cmd`, `Num_srv_com`, `Num_mag_cen`)');
    SQL.Add('VALUES (NULL, '+EditCmd.Text+', '+ComboComm.Items[ComboComm.ItemIndex]+', '+ComboCentral.Items[ComboCentral.ItemIndex]+')');
    ExecSQL(true);
  end;
  with DM.DSDodation do begin
    MergeChangeLog;
    ApplyUpdates(-1);
    Refresh;
  end;
end;

procedure TNewDodationForm.FormShow(Sender: TObject);
begin
  EditCmd.Clear;
with DM.DSComm do begin
    open;
    while not EOF do
    begin
      ComboComm.items.add(FieldByName('N_srv').AsString);
      next;
    end;
  end;
  ComboComm.ItemIndex := 0;
with DM.DSCentral do begin
    open;
    while not EOF do
    begin
      ComboCentral.items.add(FieldByName('N_mag_Cen').AsString);
      next;
    end;
  end;
  ComboCentral.ItemIndex := 0;
end;

end.
