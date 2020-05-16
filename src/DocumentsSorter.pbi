Enumeration
  #Directory1
EndEnumeration

NewList DirectoryContent1.s()
Directory$ = GetCurrentDirectory() + "DIRECTORY_101\"

If ExamineDirectory(#Directory1, Directory$, "*.txt")  
  While NextDirectoryEntry(#Directory1)
    If DirectoryEntryType(#Directory1) = #PB_DirectoryEntry_File
      AddElement(DirectoryContent1()) 
      DirectoryContent1() = DirectoryEntryName(#Directory1)
    EndIf   
  Wend
  FinishDirectory(#Directory1)
EndIf

If ExamineDirectory(#Directory1, Directory$, "*.pdf")  
  While NextDirectoryEntry(#Directory1)
    If DirectoryEntryType(#Directory1) = #PB_DirectoryEntry_File
      AddElement(DirectoryContent1()) 
      DirectoryContent1() = DirectoryEntryName(#Directory1)
    EndIf   
  Wend
  FinishDirectory(#Directory1)
EndIf

If ExamineDirectory(#Directory1, Directory$, "*.docx")  
  While NextDirectoryEntry(#Directory1)
    If DirectoryEntryType(#Directory1) = #PB_DirectoryEntry_File
      AddElement(DirectoryContent1()) 
      DirectoryContent1() = DirectoryEntryName(#Directory1)
    EndIf   
  Wend
  FinishDirectory(#Directory1)
EndIf
; IDE Options = PureBasic 5.00 (Windows - x64)
; EnableXP