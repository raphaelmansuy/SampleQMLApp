import QtQuick 2.11

Item {
 id: tabBar
 implicitWidth: 360 * dp
 implicitHeight: 48 * dp

 property alias model: repeater.model
 property int currentIndex: 0

 Rectangle {
     id: background
     anchors.fill: parent
     color: palette.cyan
 }

 Row {
     Repeater {
         id: repeater
         delegate: TabButton {
             width: (tabBar.width / repeater.model.count)
             height: tabBar.height
             text: model.text
             color: palette.white
             current: tabBar.currentIndex === index

             onClicked: {
                 tabBar.currentIndex = index
             }
         }
     }
 }

 Rectangle {
     id: indicator
     anchors.bottom: parent.bottom
     width:  (tabBar.width / repeater.model.count)
     height: 2 * dp
     x: tabBar.currentIndex * width
     color: palette.yellow
     Behavior on x {
         NumberAnimation {
             duration: 200
         }
     }
 }

 Rectangle {
     id: shadow
     anchors.left: parent.left
     anchors.right: parent.right
     anchors.top: background.bottom

     height: 12 * dp


     gradient: Gradient {
         GradientStop {
             position: 0.0; color: palette.shadow
         }
         GradientStop {
             position: 1.0; color: palette.transparent
         }
     }
 }
}
