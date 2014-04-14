import bb.cascades 1.0
import bb.system 1.0

Page
{
    titleBar: TitleBar {
        id: videosettings
        kind: TitleBarKind.Default
        title: "Video Settings"
       
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
                if (dropdown_orient.selectedIndex == 0)
                {
                    RetroArch.updateOptions("orientation", "portrait");
                }
                else 
                {
                    RetroArch.updateOptions("orientation", "landscape");
                }
                
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
                    text: "Emulation Orientation"
                    layoutProperties: StackLayoutProperties {     
                    }
                }
                DropDown
                {
                    layoutProperties: StackLayoutProperties {
                        
                    }
                    horizontalAlignment: HorizontalAlignment.Left
                    id: dropdown_orient
                    objectName: "dropdown_orientation"
                    title: "Orientation"
                    
                    Option {
                        text: "Portrait"
                        value: String("portrait")
                    }
                    
                    Option {
                        text: "Landscape"
                        value: String("landscape")
                    }
                }

               

            
            }}
    }
}