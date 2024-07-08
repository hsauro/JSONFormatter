object frmMain: TfrmMain
  Left = 0
  Top = 0
  Caption = 'JSON Formatter'
  ClientHeight = 1281
  ClientWidth = 1465
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -18
  Font.Name = 'Segoe UI'
  Font.Style = []
  Menu = MainMenu
  Position = poMainFormCenter
  OnCreate = FormCreate
  PixelsPerInch = 144
  TextHeight = 25
  object pnlTop: TPanel
    Left = 0
    Top = 0
    Width = 1465
    Height = 62
    Margins.Left = 5
    Margins.Top = 5
    Margins.Right = 5
    Margins.Bottom = 5
    Align = alTop
    TabOrder = 0
    object btnFormat: TSpeedButton
      Left = 259
      Top = 12
      Width = 78
      Height = 33
      Margins.Left = 5
      Margins.Top = 5
      Margins.Right = 5
      Margins.Bottom = 5
      Caption = 'Format'
      OnClick = btnFormatClick
    end
    object btnSave: TSpeedButton
      Left = 174
      Top = 12
      Width = 78
      Height = 33
      Margins.Left = 5
      Margins.Top = 5
      Margins.Right = 5
      Margins.Bottom = 5
      Caption = 'Save'
      OnClick = btnSaveClick
    end
    object btnNew: TSpeedButton
      Left = 2
      Top = 12
      Width = 78
      Height = 33
      Margins.Left = 5
      Margins.Top = 5
      Margins.Right = 5
      Margins.Bottom = 5
      Caption = 'New'
      OnClick = btnNewClick
    end
    object btnOpen: TSpeedButton
      Left = 88
      Top = 12
      Width = 78
      Height = 33
      Margins.Left = 5
      Margins.Top = 5
      Margins.Right = 5
      Margins.Bottom = 5
      Caption = 'Open'
      OnClick = btnOpenClick
    end
  end
  object pnlBottom: TPanel
    Left = 0
    Top = 1219
    Width = 1465
    Height = 62
    Margins.Left = 5
    Margins.Top = 5
    Margins.Right = 5
    Margins.Bottom = 5
    Align = alBottom
    TabOrder = 1
  end
  object SynEdit: TSynEdit
    Left = 0
    Top = 62
    Width = 1465
    Height = 1157
    Margins.Left = 5
    Margins.Top = 5
    Margins.Right = 5
    Margins.Bottom = 5
    Align = alClient
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -20
    Font.Name = 'Consolas'
    Font.Style = []
    Font.Quality = fqClearTypeNatural
    TabOrder = 2
    UseCodeFolding = False
    BookMarkOptions.LeftMargin = 3
    BookMarkOptions.Xoffset = 18
    ExtraLineSpacing = 3
    Gutter.Font.Charset = DEFAULT_CHARSET
    Gutter.Font.Color = clWindowText
    Gutter.Font.Height = -24
    Gutter.Font.Name = 'Consolas'
    Gutter.Font.Style = []
    Gutter.Font.Quality = fqClearTypeNatural
    Gutter.Bands = <
      item
        Kind = gbkMarks
        Width = 13
      end
      item
        Kind = gbkLineNumbers
      end
      item
        Kind = gbkFold
      end
      item
        Kind = gbkTrackChanges
      end
      item
        Kind = gbkMargin
        Width = 3
      end>
    SelectedColor.Alpha = 0.400000005960464500
    ExplicitTop = 55
  end
  object MainMenu: TMainMenu
    Left = 564
    Top = 532
    object mnuFile: TMenuItem
      Caption = 'File'
      object mnuNew: TMenuItem
        Caption = 'New'
        OnClick = mnuNewClick
      end
      object mnuOpen: TMenuItem
        Caption = 'Open...'
        OnClick = mnuOpenClick
      end
      object mnuSave: TMenuItem
        Caption = 'Save'
        OnClick = mnuSaveClick
      end
      object mnSaveAs: TMenuItem
        Caption = 'Save As...'
        OnClick = mnSaveAsClick
      end
      object blank1: TMenuItem
        Caption = '-'
      end
      object mnuQuit: TMenuItem
        Caption = 'Quit'
        OnClick = mnuQuitClick
      end
    end
    object Help1: TMenuItem
      Caption = 'Help'
      object mnuAbout: TMenuItem
        Caption = 'About'
        OnClick = mnuAboutClick
      end
    end
  end
  object OpenDialog: TOpenDialog
    Filter = 'JSON file|*.json|Any file|*.*'
    Left = 572
    Top = 332
  end
  object SaveDialog: TSaveDialog
    Filter = 'JSON file|*.json|Any file|*.*'
    Left = 672
    Top = 416
  end
end
