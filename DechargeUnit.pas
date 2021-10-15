unit DechargeUnit;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.DBCtrls,
  Vcl.NumberBox, Vcl.ExtCtrls;

type
  TDechargeForm = class(TForm)
    Panel: TPanel;
    Title: TLabel;
    Label1: TLabel;
    EditRef: TEdit;
    Label2: TLabel;
    NumberQnt: TNumberBox;
    ComboDeploy: TDBComboBox;
    Label3: TLabel;
    ComboLet: TDBComboBox;
    Label4: TLabel;
    BtnConfirm: TButton;
    BtnCancel: TButton;
    procedure FormShow(Sender: TObject);
    procedure BtnConfirmClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

const
  MODE_NEW = 0;
  MODE_EDIT = 1;

var
  DechargeForm: TDechargeForm;
  Mode: Integer;

implementation

{$R *.dfm}

uses DataModuleUnit, Main;



procedure TDechargeForm.BtnConfirmClick(Sender: TObject);
begin
  case Mode of
    MODE_NEW: begin

    end;
    MODE_EDIT: begin
      with DM.QueryDecharge do
      begin
        SQL.Clear;
        SQL.Add('UPDATE `decharge` SET `Ref` = '''+EditRef.Text+''', `Qtn` = '''+NumberQnt.Value.ToString+''', `Num_deploy` = '''+ComboDeploy.Items[ComboDeploy.ItemIndex]+''', `Num_mag_let` = '''+ComboLet.Items[ComboLet.ItemIndex]+''' WHERE `decharge`.`N_Dech` = '+MainForm.DBGrid.Fields[0].AsString+';');
        ExecSQL(true);
      end;
      with DM.DSDecharge do begin
        MergeChangeLog;
        ApplyUpdates(-1);
        Refresh;
      end;

    end;
  end;
end;

procedure TDechargeForm.FormShow(Sender: TObject);
var
  s : string;
begin
  with DM.DSDeploy do begin
    open;
    while not EOF do
    begin
      ComboDeploy.items.add(FieldByName('N_serv').AsString);
      next;
    end;
  end;
  with DM.DSLet do begin
    open;
    while not EOF do
    begin
      ComboLet.items.add(FieldByName('N_mag_LET').AsString);
      next;
    end;
  end;
  case Mode of
    MODE_NEW: begin
        s := 'Créer';
        BtnConfirm.Caption := s;
        s := s + ' décharge';
        Title.Caption := s;
        EditRef.Clear;
        NumberQnt.Value := 1;
    end;
    MODE_EDIT: begin
        s := 'Modifier';
        BtnConfirm.Caption := s;
        s := s + ' décharge';
        Title.Caption := s;
        EditRef.Text := MainForm.DBGrid.Fields[1].AsString;
        NumberQnt.Value := MainForm.DBGrid.Fields[2].AsInteger;
        ComboDeploy.ItemIndex := ComboDeploy.Items.IndexOf(MainForm.DBGrid.Fields[3].AsString);
        ComboLet.ItemIndex := ComboLet.Items.IndexOf(MainForm.DBGrid.Fields[4].AsString);
    end;
  end;

end;

end.
