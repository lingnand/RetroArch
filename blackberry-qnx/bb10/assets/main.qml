import bb.cascades 1.0
import bb.cascades.pickers 1.0

TabbedPane {
    id: tab
    Tab {
        title: "Main Menu"
        MainMenu
        {

        }
    }
    Tab { 
        title: "General"
        General
        {
            
        }
    }
    Tab {
        title: "Input"
        Controllers
        {

        }
    }
    
    Tab {
        title: "Display"
        VideoSettings
        {
        
        }
    }
}
