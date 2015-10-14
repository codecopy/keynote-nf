object Form_Hyperlink: TForm_Hyperlink
  Left = 354
  Top = 414
  ActiveControl = RG_LinkType
  BorderStyle = bsDialog
  Caption = 'Insert hyperlink'
  ClientHeight = 157
  ClientWidth = 480
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = True
  Position = poScreenCenter
  OnActivate = FormActivate
  OnCloseQuery = FormCloseQuery
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Button_OK: TButton
    Left = 10
    Top = 125
    Width = 75
    Height = 25
    Caption = 'OK'
    Default = True
    ModalResult = 1
    TabOrder = 0
  end
  object Button_Cancel: TButton
    Left = 90
    Top = 125
    Width = 75
    Height = 25
    Cancel = True
    Caption = 'Cancel'
    ModalResult = 2
    TabOrder = 1
  end
  object RG_LinkType: TRadioGroup
    Left = 5
    Top = 0
    Width = 136
    Height = 116
    Caption = ' &Link to...'
    TabOrder = 2
  end
  object GroupBox1: TGroupBox
    Left = 145
    Top = 0
    Width = 331
    Height = 116
    TabOrder = 3
    object Label1: TLabel
      Left = 10
      Top = 17
      Width = 228
      Height = 13
      Caption = '&Address (URL, email address, filename or folder):'
      FocusControl = Edit_URL
    end
    object LB_Text: TLabel
      Left = 10
      Top = 70
      Width = 84
      Height = 13
      Caption = '&Text (description):'
      FocusControl = Edit_Text
    end
    object Edit_Text: TEdit
      Left = 10
      Top = 85
      Width = 311
      Height = 21
      TabOrder = 3
    end
    object Edit_URL: TEdit
      Left = 10
      Top = 32
      Width = 311
      Height = 21
      TabOrder = 0
    end
    object Btn_File: TButton
      Left = 185
      Top = 57
      Width = 65
      Height = 21
      Caption = '&File...'
      TabOrder = 1
      OnClick = Btn_FileClick
    end
    object Btn_Dir: TButton
      Left = 255
      Top = 57
      Width = 65
      Height = 21
      Caption = 'F&older...'
      TabOrder = 2
      OnClick = Btn_DirClick
    end
  end
  object OpenDlg: TOpenDialog
    Filter = 'All files (*.*)|*.*'
    Options = [ofHideReadOnly, ofPathMustExist, ofFileMustExist]
    Title = 'Select file'
    Left = 275
    Top = 125
  end
  object DirDlg: TdfsBrowseDirectoryDlg
    Options = [bfDirectoriesOnly]
    ShowSelectionInStatus = True
    Left = 310
    Top = 125
  end
end
