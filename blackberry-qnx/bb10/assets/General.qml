import bb.cascades 1.0
import bb.system 1.0
import bb.cascades.pickers 1.0

Page
{
   

    titleBar: TitleBar {
        id: gensettings
        kind: TitleBarKind.Default
        title: "General Settings"
       
    }
    
 
    actions: [
        ActionItem {
            title: "Save"
            ActionBar.placement: ActionBarPlacement.OnBar
            imageSource: "asset:///images/file.png"
            attachedObjects: [
                SystemToast {
                    id: settingsToast
                    body: "Settings saved successfully."
                }]
            onTriggered: {
                
                settingsToast.show();
                
                
            }
        }
    ]
     
    Container
    {     
        Container
        {
            preferredWidth: 650
            horizontalAlignment: HorizontalAlignment.Center

            Container 
            {
                topPadding: 50
                horizontalAlignment: HorizontalAlignment.Center
                layout: StackLayout 
                
                {
                    orientation: LayoutOrientation.TopToBottom
                }
                
                Label {
                    text: "System (BIOS) Path"
                    layoutProperties: StackLayoutProperties {     
                    }
                }
                Container 
                {
                    topPadding: 10
                    horizontalAlignment: HorizontalAlignment.Center
                    layout: StackLayout 
                    
                    {
                        orientation: LayoutOrientation.LeftToRight
                    }
                DropDown
                {
                    id: folderName
                    objectName: "dropdown_sysFolderName"
                    verticalAlignment: VerticalAlignment.Center
                    horizontalAlignment: HorizontalAlignment.Center
                    preferredWidth: 500
                    enabled: false
                    title: if(picker.selectedFolder)
                        picker.selectedFolder
                    else
                        "Folder"
                }
                
                ImageButton {
                    horizontalAlignment: HorizontalAlignment.Right
                    defaultImageSource: "asset:///images/file.png"
                    onClicked: {
                        picker.open();
                    }
                }
            }
                
            Label {
                text: "ROM Home Path"
                layoutProperties: StackLayoutProperties {}
            }
            
            
            Container 
            {
                topPadding: 10
                horizontalAlignment: HorizontalAlignment.Center
                layout: StackLayout 
                
                {
                    orientation: LayoutOrientation.LeftToRight
                }
                DropDown
                {
                    id: folderName2
                    objectName: "dropdown_romFolderName"
                    verticalAlignment: VerticalAlignment.Center
                    horizontalAlignment: HorizontalAlignment.Center
                    preferredWidth: 500
                    enabled: false
                    title: if(picker2.selectedFolder)
                        picker2.selectedFolder
                    else
                        "Folder"
                }
                
                ImageButton {
                    horizontalAlignment: HorizontalAlignment.Right
                    defaultImageSource: "asset:///images/file.png"
                    onClicked: {
                        picker2.open();
                    }
                }
            }    
                
        }
    }
    attachedObjects: [
        FilePicker {
            id: picker
            
            property string selectedFolder
            
            title: "System Directory"
            mode: FilePickerMode.SaverMultiple
            
          
            onFileSelected: {
                if(selectedFiles[0].substr(0, 21) == "/accounts/1000/shared")
                {
                    selectedFolder = "device: ";
                }
                
                else
                {
                    selectedFolder = "sdcard: ";

                }
                selectedFolder += selectedFiles[0].substr(selectedFiles[0].lastIndexOf("/"));
                RetroArch.updateOptions("system_path", selectedFiles[0]);             
             }
            },
        
            FilePicker {
                id: picker2
                            
                property string selectedFolder
                            
                title: "ROM Home Directory"
                mode: FilePickerMode.SaverMultiple
                
                            
                            
                onFileSelected: {
                    if(selectedFiles[0].substr(0, 21) == "/accounts/1000/shared")
                    {
                        selectedFolder = "device: ";
                    }
                                
                    else
                    {
                         selectedFolder = "sdcard: ";
                                
                    }
                    selectedFolder += selectedFiles[0].substr(selectedFiles[0].lastIndexOf("/"));
                    RetroArch.updateOptions("rom_path", selectedFiles[0]);   
                              
                }
            }
        ]
            
    }
        
}             

            
            
    