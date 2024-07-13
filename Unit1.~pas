unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, DB, ZAbstractRODataset, ZAbstractDataset,
  ZDataset, ZAbstractConnection, ZConnection, StdCtrls;

type
  TForm1 = class(TForm)
    ZConnection1: TZConnection;
    ZQuery1: TZQuery;
    ds1: TDataSource;
    dbgrd1: TDBGrid;
    nm_kustomer: TLabel;
    telp: TLabel;
    alamat: TLabel;
    kota: TLabel;
    kode_pos: TLabel;
    edt1: TEdit;
    edt2: TEdit;
    edt3: TEdit;
    edt4: TEdit;
    edt5: TEdit;
    btn1: TButton;
    btn2: TButton;
    btn3: TButton;
    btn4: TButton;
    btn5: TButton;
    Label1: TLabel;
    ComboBox1: TComboBox;
    procedure FormShow(Sender: TObject);
    procedure posisiawal;
    procedure bersih;
    procedure btn1Click(Sender: TObject);
    procedure btn2Click(Sender: TObject);
    procedure dbgrd1CellClick(Column: TColumn);
    procedure btn5Click(Sender: TObject);
    procedure btn3Click(Sender: TObject);
    procedure btn4Click(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  id: String;

implementation

{$R *.dfm}

procedure TForm1.bersih;
begin
edt1.Clear;
edt2.Clear;
edt3.Clear;
edt4.Clear;
edt5.Clear;
end;

procedure TForm1.FormShow(Sender: TObject);
begin
posisiawal;
dbgrd1.Columns[0].Width:=10;
dbgrd1.Columns[1].Width:=100;
dbgrd1.Columns[2].Width:=100;
dbgrd1.Columns[3].Width:=100;
dbgrd1.Columns[4].Width:=100;
dbgrd1.Columns[5].Width:=50;
end;

procedure TForm1.posisiawal;
begin
bersih;

btn1.Enabled:= True;
btn2.Enabled:= False;
btn3.Enabled:= False;
btn4.Enabled:= False;
btn5.Enabled:= False;

edt1.Enabled:= False;
edt2.Enabled:= False;
edt3.Enabled:= False;
edt4.Enabled:= False;
edt5.Enabled:= False;
end;

procedure TForm1.btn1Click(Sender: TObject);
begin
bersih;
btn1.Enabled:= false;
btn2.Enabled:= True;
btn3.Enabled:= False;
btn4.Enabled:= False;
btn5.Enabled:= True;
edt1.Enabled:= True;
edt2.Enabled:= True;
edt3.Enabled:= True;
edt4.Enabled:= True;
edt5.Enabled:= True;
end;

procedure TForm1.btn2Click(Sender: TObject);
begin
if edt1.Text ='' then
  begin
  ShowMessage('NAMA KUSTOMER TIDAK BOLEH KOSONG!');
end else

if edt2.Text ='' then
  begin
  ShowMessage('No TELEPON TIDAK BOLEH KOSONG!');
end else

if edt3.Text ='' then
  begin
  ShowMessage('alamat TIDAK BOLEH KOSONG!');
end else

begin
ZQuery1.SQL.Clear;
ZQuery1.SQL.Add('insert into kustomer values(null,"'+edt1.Text+'","'+edt2.Text+'","'+edt3.Text+'","'+edt4.Text+'","'+edt5.Text+'")');
ZQuery1.ExecSQL ;
ZQuery1.SQL.Clear;
ZQuery1.SQL.Add('select * from kustomer');
ZQuery1.Open;
ShowMessage('DATA BARHASIL DISIMPAN!');
posisiawal;
end;
end;

procedure TForm1.dbgrd1CellClick(Column: TColumn);
begin
id:= ZQuery1.Fields[0].AsString; // DBGrid
edt1.Text:= ZQuery1.Fields[1].AsString;
edt2.Text:= ZQuery1.Fields[2].AsString;
edt3.Text:= ZQuery1.Fields[3].AsString;
edt4.Text:= ZQuery1.Fields[4].AsString;
edt5.Text:= ZQuery1.Fields[5].AsString;

edt1.Enabled:= True;
edt2.Enabled:= True;
edt3.Enabled:= True;
edt4.Enabled:= True;
edt5.Enabled:= True;

btn1.Enabled:= false;
btn2.Enabled:= False;
btn3.Enabled:= True;
btn4.Enabled:= True;
btn5.Enabled:= True;
end;

procedure TForm1.btn5Click(Sender: TObject);
begin
edt1.Clear;
edt2.Clear;
edt3.Clear;
edt4.Clear;
edt5.Clear;
end;

procedure TForm1.btn3Click(Sender: TObject);
var id:string;
begin
if (edt1.Text= '')or (edt2.Text ='')or(edt3.Text= '')or (edt4.Text ='')or (edt5.Text ='') then
  begin
  ShowMessage('INPUTAN WAJIB DIISI!');
end else

if (edt1.Text = ZQuery1.Fields[1].AsString) and (edt2.Text = ZQuery1.Fields[2].AsString) and (edt3.Text = ZQuery1.Fields[3].AsString) and (edt4.Text = ZQuery1.Fields[4].AsString) and (edt5.Text = ZQuery1.Fields[5].AsString) then
  begin
  ShowMessage('DATA TIDAK ADA PERUBAHAN');
  posisiawal;
end else

begin
id:= ZQuery1.Fields[0].AsString;
ZQuery1.SQL.Clear;
ZQuery1.SQL.Add('UPDATE kustomer SET nik = "'+ edt1.Text +'", nama = "'+ edt2.Text +'", telp = "'+ edt3.Text +'", email = "'+ edt4.Text +'", alamat = "'+ edt5.Text +'" WHERE id = "'+ id +'"');
ZQuery1.ExecSQL;

ZQuery1.SQL.Clear;
ZQuery1.SQL.Add('select * from kustomer');
ZQuery1.Open;
ShowMessage('DATA BERHASIL DIUPDATE!');
posisiawal;
end;
end;

procedure TForm1.btn4Click(Sender: TObject);
begin
id:= ZQuery1.Fields[0].AsString;
if MessageDlg('APAKAH YAKIN MENGHAPUS DATA INI?',mtWarning,[mbYes,mbNo],0)= mryes then
begin
  ZQuery1.SQL.Clear;
  ZQuery1.SQL.Add('DELETE FROM kustomer WHERE id="'+id+'"');
  ZQuery1.ExecSQL;
  ZQuery1.SQL.Clear;
  ZQuery1.SQL.Add('SELECT * FROM kustomer');
  ZQuery1.Open;
  ShowMessage('DATA BERHASIL DIHAPUS');
  posisiawal;
end else

begin
ShowMessage('DATA BATAL DIHAPUS');
posisiawal;
end;
end;

end.
