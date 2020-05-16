Enumeration
  #Directory2
EndEnumeration

Directory$ = GetCurrentDirectory() + "DIRECTORY_101\"
NewList DirectoryContent2.s()

If ExamineDirectory(#Directory2, Directory$, "*.mp4")  
  While NextDirectoryEntry(#Directory2)
    If DirectoryEntryType(#Directory2) = #PB_DirectoryEntry_File
      AddElement(DirectoryContent2()) 
      DirectoryContent2() = DirectoryEntryName(#Directory2)
    EndIf   
  Wend
  FinishDirectory(#Directory2)
EndIf

If ExamineDirectory(#Directory2, Directory$, "*.avi")  
  While NextDirectoryEntry(#Directory2)
    If DirectoryEntryType(#Directory2) = #PB_DirectoryEntry_File
      AddElement(DirectoryContent2()) 
      DirectoryContent2() = DirectoryEntryName(#Directory2)
    EndIf   
  Wend
  FinishDirectory(#Directory2)
EndIf

If ExamineDirectory(#Directory2, Directory$, "*.mkv")  
  While NextDirectoryEntry(#Directory2)
    If DirectoryEntryType(#Directory2) = #PB_DirectoryEntry_File
      AddElement(DirectoryContent2()) 
      DirectoryContent2() = DirectoryEntryName(#Directory2)
    EndIf   
  Wend
  FinishDirectory(#Directory2)
EndIf
; IDE Options = PureBasic 5.00 (Windows - x64)
; EnableXP