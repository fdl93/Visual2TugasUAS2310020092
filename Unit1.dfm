object Form1: TForm1
  Left = 220
  Top = 190
  Width = 534
  Height = 519
  Caption = 'Form1'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object nm_kustomer: TLabel
    Left = 32
    Top = 24
    Width = 17
    Height = 13
    Caption = 'NIK'
  end
  object telp: TLabel
    Left = 32
    Top = 64
    Width = 29
    Height = 13
    Caption = 'NAMA'
  end
  object alamat: TLabel
    Left = 32
    Top = 104
    Width = 23
    Height = 13
    Caption = 'TELP'
  end
  object kota: TLabel
    Left = 32
    Top = 144
    Width = 30
    Height = 13
    Caption = 'EMAIL'
  end
  object kode_pos: TLabel
    Left = 32
    Top = 184
    Width = 40
    Height = 13
    Caption = 'ALAMAT'
  end
  object Label1: TLabel
    Left = 32
    Top = 216
    Width = 41
    Height = 13
    Caption = 'MEMBER'
  end
  object dbgrd1: TDBGrid
    Left = 32
    Top = 344
    Width = 457
    Height = 120
    DataSource = ds1
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    OnCellClick = dbgrd1CellClick
    Columns = <
      item
        Expanded = False
        FieldName = 'id'
        Title.Alignment = taCenter
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'nama'
        Title.Alignment = taCenter
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'telp'
        Title.Alignment = taCenter
        Width = 100
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'email'
        Title.Alignment = taCenter
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'alamat'
        Title.Alignment = taCenter
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'member'
        Title.Alignment = taCenter
        Visible = True
      end>
  end
  object edt1: TEdit
    Left = 168
    Top = 20
    Width = 320
    Height = 21
    TabOrder = 1
    Text = 'edt1'
  end
  object edt2: TEdit
    Left = 168
    Top = 60
    Width = 320
    Height = 21
    TabOrder = 2
    Text = 'edt2'
  end
  object edt3: TEdit
    Left = 168
    Top = 100
    Width = 320
    Height = 21
    TabOrder = 3
    Text = 'edt3'
  end
  object edt4: TEdit
    Left = 168
    Top = 140
    Width = 320
    Height = 21
    TabOrder = 4
    Text = 'edt4'
  end
  object edt5: TEdit
    Left = 168
    Top = 180
    Width = 320
    Height = 21
    TabOrder = 5
    Text = 'edt5'
  end
  object btn1: TButton
    Left = 32
    Top = 248
    Width = 75
    Height = 49
    Caption = 'Baru'
    TabOrder = 6
    OnClick = btn1Click
  end
  object btn2: TButton
    Left = 128
    Top = 248
    Width = 75
    Height = 49
    Caption = 'Simpan'
    TabOrder = 7
    OnClick = btn2Click
  end
  object btn3: TButton
    Left = 224
    Top = 248
    Width = 75
    Height = 49
    Caption = 'Edit'
    TabOrder = 8
    OnClick = btn3Click
  end
  object btn4: TButton
    Left = 320
    Top = 248
    Width = 75
    Height = 49
    Caption = 'Hapus'
    TabOrder = 9
    OnClick = btn4Click
  end
  object btn5: TButton
    Left = 416
    Top = 248
    Width = 75
    Height = 49
    Caption = 'Batal'
    TabOrder = 10
    OnClick = btn5Click
  end
  object ComboBox1: TComboBox
    Left = 168
    Top = 208
    Width = 145
    Height = 21
    ItemHeight = 13
    TabOrder = 11
    Text = 'PILIH--'
    Items.Strings = (
      'IYA'
      'TIDAK')
  end
  object ZConnection1: TZConnection
    ControlsCodePage = cGET_ACP
    Properties.Strings = (
      'RawStringEncoding=DB_CP')
    Connected = True
    DisableSavepoints = False
    HostName = 'localhost'
    Port = 3306
    Database = 'penjualan'
    User = 'root'
    Protocol = 'mysql'
    LibraryLocation = 'C:\Users\Asus\Downloads\libmysql.dll'
    Left = 32
    Top = 312
  end
  object ZQuery1: TZQuery
    Connection = ZConnection1
    Active = True
    SQL.Strings = (
      'select * from kustomer')
    Params = <>
    Left = 96
    Top = 312
  end
  object ds1: TDataSource
    DataSet = ZQuery1
    Left = 152
    Top = 312
  end
end
