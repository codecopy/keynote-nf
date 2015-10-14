object Form_Export: TForm_Export
  Left = 307
  Top = 234
  HelpContext = 590
  BorderStyle = bsDialog
  Caption = 'Export notes'
  ClientHeight = 323
  ClientWidth = 289
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
  OnKeyDown = FormKeyDown
  PixelsPerInch = 96
  TextHeight = 13
  object Label_Status: TLabel
    Left = 20
    Top = 270
    Width = 72
    Height = 16
    Caption = '(no info)'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clHighlight
    Font.Height = -13
    Font.Name = 'Courier New'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Button_OK: TButton
    Left = 15
    Top = 290
    Width = 75
    Height = 25
    Hint = 'Begin exporting notes'
    Caption = 'E&xport'
    Default = True
    TabOrder = 0
    OnClick = Button_OKClick
  end
  object Button_Cancel: TButton
    Left = 95
    Top = 290
    Width = 75
    Height = 25
    Hint = 'Cancel and close this dialog box'
    Caption = 'Cancel'
    ModalResult = 2
    TabOrder = 1
    OnClick = Button_CancelClick
  end
  object GroupBox_Source: TGroupBox
    Left = 5
    Top = 5
    Width = 276
    Height = 91
    Caption = ' Source: What to export? '
    TabOrder = 2
    object RB_Current: TRadioButton
      Left = 15
      Top = 20
      Width = 251
      Height = 17
      Hint = 'Click to export active note only'
      Caption = '&Current note'
      Checked = True
      TabOrder = 0
      TabStop = True
      OnClick = RB_SelectedClick
    end
    object RB_All: TRadioButton
      Left = 15
      Top = 40
      Width = 71
      Height = 17
      Hint = 'Click to export all notes in the file'
      Caption = '&All notes'
      TabOrder = 1
      OnClick = RB_SelectedClick
    end
    object RB_Selected: TRadioButton
      Left = 15
      Top = 60
      Width = 101
      Height = 17
      Hint = 'Click to export only selected notes'
      Caption = '&Selected notes'
      TabOrder = 2
      OnClick = RB_SelectedClick
    end
    object Button_Select: TButton
      Left = 125
      Top = 55
      Width = 131
      Height = 25
      Hint = 'Choose which notes to export'
      Caption = 'Select &Notes...'
      TabOrder = 3
      OnClick = Button_SelectClick
    end
  end
  object GroupBox_Target: TGroupBox
    Left = 5
    Top = 100
    Width = 276
    Height = 166
    Caption = ' Target: Where and how to export?  '
    TabOrder = 3
    object Label1: TLabel
      Left = 15
      Top = 20
      Width = 115
      Height = 13
      Caption = '&Format for exported files:'
      FocusControl = Combo_Format
    end
    object Label2: TLabel
      Left = 15
      Top = 80
      Width = 125
      Height = 13
      Caption = '&Directory for exported files:'
      FocusControl = Edit_Folder
    end
    object L_TreeHint: TLabel
      Left = 15
      Top = 60
      Width = 9
      Height = 13
      Caption = '...'
    end
    object Combo_Format: TComboBox
      Left = 15
      Top = 35
      Width = 251
      Height = 21
      Hint = 'Select format for exported files'
      Style = csDropDownList
      ItemHeight = 13
      TabOrder = 0
    end
    object CheckBox_PromptOverwrite: TCheckBox
      Left = 15
      Top = 120
      Width = 176
      Height = 17
      Hint = 'Warn if same-name files already exist'
      Caption = '&Prompt before overwriting files'
      Checked = True
      State = cbChecked
      TabOrder = 1
    end
    object Edit_Folder: TDirectoryEdit
      Left = 15
      Top = 95
      Width = 251
      Height = 21
      Hint = 'Folder where exported files will be put'
      DialogKind = dkWin32
      DialogOptions = [sdAllowCreate, sdPerformCreate, sdPrompt]
      NumGlyphs = 1
      ButtonWidth = 25
      TabOrder = 2
    end
    object CheckBox_Ask: TCheckBox
      Left = 15
      Top = 140
      Width = 201
      Height = 17
      Hint = 'Allow to specify name for each exported file'
      Caption = 'Ask for &Each individual file name'
      TabOrder = 3
    end
  end
  object Button_Help: TButton
    Left = 174
    Top = 290
    Width = 75
    Height = 25
    Caption = 'Help'
    TabOrder = 4
    OnClick = Button_HelpClick
  end
  object SaveDlg: TSaveDialog
    Options = [ofHideReadOnly, ofPathMustExist]
    Title = 'FIlename for exported note'
    Left = 235
    Top = 5
  end
end
