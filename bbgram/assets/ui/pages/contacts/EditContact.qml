import bb.cascades 1.2
import bbgram.types.lib 0.1

Sheet {
    id: me
    
    property User user
    
    Page {
        titleBar: TitleBar {
            title: "Edit Contact"
            acceptAction: ActionItem {
                title: "Done"
                onTriggered: {
                    _owner.updateContact(user, firstName.text, lastName.text)
                }
            }
            dismissAction: ActionItem {
                title: "Cancel"
                onTriggered: {
                    me.close()
                }
            }
        }
        Container {
            leftPadding: 20
            rightPadding: 20
            topPadding: 20
            bottomPadding: 20
            
            Container {
                layout: StackLayout {
                    orientation: LayoutOrientation.LeftToRight
                }
                ImageView {
                    verticalAlignment: VerticalAlignment.Center
                    
                    image: user.photo
                    //imageSource: "asset:///images/placeholders/user_placeholder_purple.png"
                    scalingMethod: ScalingMethod.AspectFit
                    preferredHeight: 180
                    preferredWidth: 180
                } 
                
                Container {
                    leftPadding: 20
                    TextField {
                        id: firstName
                        text: user.firstName
                        hintText: ""
                    }
                    TextField {
                        id: lastName
                        text: user.lastName
                        hintText: ""
                    }
                }
            }   
        }        
    }
}