Enumeration
  #Directory1 
  #WINDOW_1 
  #LISTVIEW_1 
  #LISTVIEW_2 
  #LISTVIEW_3 
  #TEXT_GADGET_1
  #TEXT_GADGET_2
  #TEXT_GADGET_3
EndEnumeration

#WINDOWS_FLAGS = #PB_Window_SystemMenu | #PB_Window_ScreenCentered

Directory$ = GetCurrentDirectory() + "DIRECTORY_101\"

NewList DirectoryContent.s()
If ExamineDirectory(#Directory1, Directory$, "*.txt")  
  While NextDirectoryEntry(#Directory1)
    If DirectoryEntryType(#Directory1) = #PB_DirectoryEntry_File
      ;Type$ = " [File] "
      AddElement(DirectoryContent()) 
      DirectoryContent() = DirectoryEntryName(#Directory1)
      ;SortList(DirectoryContent(),#PB_Sort_Descending)
      ;Else
      ;Type$ = " [Sub-Dir] "
    EndIf   
    
    ;AddElement(DirectoryContent()) 
    ;DirectoryContent() = DirectoryEntryName(#Directory1)  
  Wend
  FinishDirectory(#Directory1)
EndIf

If ExamineDirectory(#Directory1, Directory$, "*.pdf")  
  While NextDirectoryEntry(#Directory1)
    If DirectoryEntryType(#Directory1) = #PB_DirectoryEntry_File
      ;Type$ = " [File] "
      AddElement(DirectoryContent()) 
      DirectoryContent() = DirectoryEntryName(#Directory1)
      ;SortList(DirectoryContent(),#PB_Sort_Descending)
      ;Else
      ;Type$ = " [Sub-Dir] "
    EndIf   
    
    ;AddElement(DirectoryContent()) 
    ;DirectoryContent() = DirectoryEntryName(#Directory1)  
  Wend
  FinishDirectory(#Directory1)
EndIf

If ExamineDirectory(#Directory1, Directory$, "*.docx")  
  While NextDirectoryEntry(#Directory1)
    If DirectoryEntryType(#Directory1) = #PB_DirectoryEntry_File
      ;Type$ = " [File] "
      AddElement(DirectoryContent()) 
      DirectoryContent() = DirectoryEntryName(#Directory1)
      ;SortList(DirectoryContent(),#PB_Sort_Descending)
      ;Else
      ;Type$ = " [Sub-Dir] "
    EndIf   
    
    ;AddElement(DirectoryContent()) 
    ;DirectoryContent() = DirectoryEntryName(#Directory1)  
  Wend
  FinishDirectory(#Directory1)
EndIf


NewList DirectoryContent2.s()

;Directory2$ = GetCurrentDirectory() + "DIRECTORY_101\"
If ExamineDirectory(#Directory1, Directory$, "*.mp4")  
  While NextDirectoryEntry(#Directory1)
    If DirectoryEntryType(#Directory1) = #PB_DirectoryEntry_File
      ;Type$ = " [File] "
      AddElement(DirectoryContent2()) 
      DirectoryContent2() = DirectoryEntryName(#Directory1)
      ;Debug DirectoryContent2()
      ;SortList(DirectoryContent(),#PB_Sort_Descending)
      ;Else
      ;Type$ = " [Sub-Dir] "
    EndIf   
    
    ;AddElement(DirectoryContent()) 
    ;DirectoryContent() = DirectoryEntryName(#Directory1)  
  Wend
  FinishDirectory(#Directory1)
EndIf

If ExamineDirectory(#Directory1, Directory$, "*.avi")  
  While NextDirectoryEntry(#Directory1)
    If DirectoryEntryType(#Directory1) = #PB_DirectoryEntry_File
      ;Type$ = " [File] "
      AddElement(DirectoryContent2()) 
      DirectoryContent2() = DirectoryEntryName(#Directory1)
      ;Debug DirectoryContent2()
      ;SortList(DirectoryContent(),#PB_Sort_Descending)
      ;Else
      ;Type$ = " [Sub-Dir] "
    EndIf   
    
    ;AddElement(DirectoryContent()) 
    ;DirectoryContent() = DirectoryEntryName(#Directory1)  
  Wend
  FinishDirectory(#Directory1)
EndIf

NewList DirectoryContent3.s()

;Directory2$ = GetCurrentDirectory() + "DIRECTORY_101\"
If ExamineDirectory(#Directory1, Directory$, "*.png" ) 
  While NextDirectoryEntry(#Directory1)
    If DirectoryEntryType(#Directory1) = #PB_DirectoryEntry_File
      ;Type$ = " [File] "
      AddElement(DirectoryContent3()) 
      DirectoryContent3() = DirectoryEntryName(#Directory1)
      ;Debug DirectoryContent3()
      ;Debug DirectoryContent2()
      ;SortList(DirectoryContent(),#PB_Sort_Descending)
      ;Else
      ;Type$ = " [Sub-Dir] "
    EndIf   
    
    
    ;AddElement(DirectoryContent()) 
    ;DirectoryContent() = DirectoryEntryName(#Directory1)  
  Wend
  FinishDirectory(#Directory1)
EndIf

If ExamineDirectory(#Directory1, Directory$, "*.jpg" ) 
  While NextDirectoryEntry(#Directory1)
    If DirectoryEntryType(#Directory1) = #PB_DirectoryEntry_File
      ;Type$ = " [File] "
      AddElement(DirectoryContent3()) 
      DirectoryContent3() = DirectoryEntryName(#Directory1)
      ;Debug DirectoryContent3()
      ;Debug DirectoryContent2()
      ;SortList(DirectoryContent(),#PB_Sort_Descending)
      ;Else
      ;Type$ = " [Sub-Dir] "
    EndIf   
    
    
    ;AddElement(DirectoryContent()) 
    ;DirectoryContent() = DirectoryEntryName(#Directory1)  
  Wend
  FinishDirectory(#Directory1)
EndIf


If OpenWindow(#WINDOW_1, 0, 0, 720, 420, "Directory 101", #WINDOWS_FLAGS)
  
  TextGadget(#TEXT_GADGET_1, 5,5,200,30,"DOCUMENTS:")
  TextGadget(#TEXT_GADGET_2, 5,145,200,30,"VIDEOS:")
  TextGadget(#TEXT_GADGET_3, 5,285,200,30,"PICTURES:")
  
  ListViewGadget(#LISTVIEW_1, 10, 30, 700, 100) 
  ListViewGadget(#LISTVIEW_2, 10, 170, 700, 100)
  ListViewGadget(#LISTVIEW_3, 10, 310, 700, 100)
  
  SetGadgetFont(#WINDOW_1,FontID(LoadFont(#PB_Any,"Century Gothic", 12)))
  SetGadgetFont(#LISTVIEW_1,FontID(LoadFont(#PB_Any,"Century Gothic", 12)))
  SetGadgetFont(#LISTVIEW_2,FontID(LoadFont(#PB_Any,"Century Gothic", 12)))
  SetGadgetFont(#LISTVIEW_3,FontID(LoadFont(#PB_Any,"Century Gothic", 12))) 
  SetGadgetFont(#TEXT_GADGET_1,FontID(LoadFont(#PB_Any,"Comic Sans MS", 14)))
  SetGadgetFont(#TEXT_GADGET_2,FontID(LoadFont(#PB_Any,"Comic Sans MS", 14)))
  SetGadgetFont(#TEXT_GADGET_3,FontID(LoadFont(#PB_Any,"Comic Sans MS", 14)))
  
  ForEach DirectoryContent()
    AddGadgetItem(#LISTVIEW_1, -1, DirectoryContent()) 
    ;Debug DirectoryContent()
  Next
  
  ForEach DirectoryContent2()
    AddGadgetItem(#LISTVIEW_2, -1, DirectoryContent2()) 
    ;Debug DirectoryContent2()
  Next
  
  ForEach DirectoryContent3()
    AddGadgetItem(#LISTVIEW_3, -1, DirectoryContent3()) 
    ;Debug DirectoryContent2()
  Next  
  ;SetActiveGadget(#LISTVIEW_1)
  ;SetGadgetState(#LISTVIEW_1,0)
  
  ;RemoveGadgetItem(1,0)
  ;RemoveGadgetItem(1,1)  
  ;RemoveGadgetItem(1,2)
  
  Repeat
    Event = WaitWindowEvent()
    
    Select Event
        
      Case #PB_Event_Gadget
        Select EventGadget()
            
          Case #LISTVIEW_1 
            Select EventType()
              Case #PB_EventType_LeftClick
                SetGadgetState(#LISTVIEW_2,-1)
                SetGadgetState(#LISTVIEW_3,-1)                
                SetActiveGadget(#LISTVIEW_1)
                
              Case #PB_EventType_LeftDoubleClick
                SetGadgetState(#LISTVIEW_2,-1)
                SetGadgetState(#LISTVIEW_3,-1)
                SetActiveGadget(#LISTVIEW_1)
                
                path1.s = GetGadgetItemText(#LISTVIEW_1,(GetGadgetState(#LISTVIEW_1)))
                ;Debug path1
                pathComplete1.s = Directory$ + path1
                RunProgram(pathComplete1)
            EndSelect
            
          Case #LISTVIEW_2 
            Select EventType()
              Case #PB_EventType_LeftClick
                SetGadgetState(#LISTVIEW_1,-1)
                SetGadgetState(#LISTVIEW_3,-1)
                SetActiveGadget(#LISTVIEW_2)
                
                
              Case #PB_EventType_LeftDoubleClick
                SetActiveGadget(#LISTVIEW_2)
                SetGadgetState(#LISTVIEW_1,-1)
                SetGadgetState(#LISTVIEW_3,-1)
                path2.s = GetGadgetItemText(#LISTVIEW_2,(GetGadgetState(#LISTVIEW_2)))
                pathComplete2.s = Directory$ + path2                
                RunProgram(pathComplete2)
            EndSelect
            
          Case #LISTVIEW_3 
            Select EventType()
              Case #PB_EventType_LeftClick
                SetGadgetState(#LISTVIEW_2,-1)
                SetGadgetState(#LISTVIEW_1,-1)                
                SetActiveGadget(#LISTVIEW_3)
                
              Case #PB_EventType_LeftDoubleClick
                SetGadgetState(#LISTVIEW_1,-1)
                SetGadgetState(#LISTVIEW_2,-1)                
                SetActiveGadget(#LISTVIEW_3)
                
                path3.s = GetGadgetItemText(#LISTVIEW_3,(GetGadgetState(#LISTVIEW_3)))
                pathComplete3.s = Directory$ + path3                
                RunProgram(pathComplete3)
            EndSelect
            
        EndSelect
        
        
        
    EndSelect
  Until Event = #PB_Event_CloseWindow
EndIf
