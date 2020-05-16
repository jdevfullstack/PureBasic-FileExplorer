Enumeration
  #Directory3
EndEnumeration

NewList DirectoryContent3.s()
Directory$ = GetCurrentDirectory() + "DIRECTORY_101\"

If ExamineDirectory(#Directory3, Directory$, "*.png") 
  While NextDirectoryEntry(#Directory3)
    If DirectoryEntryType(#Directory3) = #PB_DirectoryEntry_File
      AddElement(DirectoryContent3()) 
      DirectoryContent3() = DirectoryEntryName(#Directory3)
    EndIf   
  Wend
  FinishDirectory(#Directory3)
EndIf

If ExamineDirectory(#Directory3, Directory$, "*.jpg") 
  While NextDirectoryEntry(#Directory3)
    If DirectoryEntryType(#Directory3) = #PB_DirectoryEntry_File
      AddElement(DirectoryContent3()) 
      DirectoryContent3() = DirectoryEntryName(#Directory3)
    EndIf   
  Wend
  FinishDirectory(#Directory3)
EndIf

If ExamineDirectory(#Directory3, Directory$, "*.jpeg") 
  While NextDirectoryEntry(#Directory3)
    If DirectoryEntryType(#Directory3) = #PB_DirectoryEntry_File
      AddElement(DirectoryContent3()) 
      DirectoryContent3() = DirectoryEntryName(#Directory3)
    EndIf   
  Wend
  FinishDirectory(#Directory3)
EndIf
; IDE Options = PureBasic 5.00 (Windows - x64)
; EnableXP