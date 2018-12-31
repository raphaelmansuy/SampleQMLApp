import QtQuick 2.11
import QtQuick.Window 2.11
import QtQml.Models 2.3
import "controls"

ApplicationWindow {
    visible: true
    width: 360 * dp
    height: 640 * dp
    title: qsTr("Sketch QML Application")
    color: palette.white

    StatusBar {
        id: statusBar
        anchors.left: parent.left
        anchors.right: parent.right
        anchors.top: parent.top
    }

    ToolBar {
        id: toolBar
        anchors.left: parent.left
        anchors.right: parent.right
        anchors.top:  statusBar.bottom

        ToolButton {
            anchors.verticalCenter: parent.verticalCenter
            anchors.left: parent.left
            anchors.leftMargin: 16 * dp
            iconSource: "/assets/images/menu@3x.png"
            iconWidth: 18 * dp
            iconHeight: 12 * dp
        }

        Label {
            anchors.fill: parent
            anchors.leftMargin:  72 * dp

            verticalAlignment: Text.AlignVCenter
            text: qsTr("QML App")

            color: palette.white
            font.pixelSize: 20 * dp
            font.weight: Font.Medium
        }

        Row {
            anchors.verticalCenter: parent.verticalCenter
            anchors.right: parent.right
            anchors.rightMargin: 16 * dp

            ToolButton {
                iconSource: "/assets/images/search@3x.png"
                iconWidth: 18 * dp
                iconHeight: 18 * dp
            }

            ToolButton {
                iconSource: "/assets/images/more@3x.png"
                iconWidth: 4 * dp
                iconHeight: 16 * dp

            }


        }
    }

    TabBar {
        id: tabBar
        anchors.left: parent.left
        anchors.right: parent.right
        anchors.top: toolBar.bottom
        z: 2

        model: ListModel {
            ListElement { text: QT_TRID_NOOP("NO. ONE")}
            ListElement { text: QT_TRID_NOOP("ITEM TWO")}
            ListElement { text: QT_TRID_NOOP("ITEM THIRD")}
            ListElement { text: QT_TRID_NOOP("ITEM 4")}
        }

        onCurrentIndexChanged: tabView.currentIndex = tabBar.currentIndex

    }

    ListView {
        id: tabView
        anchors.left: parent.left
        anchors.right: parent.right
        anchors.top: tabBar.bottom
        anchors.bottom: navigationBar.top

        orientation: ListView.Horizontal
        snapMode: ListView.SnapOneItem

        highlightRangeMode: ListView.StrictlyEnforceRange
        highlightMoveDuration: 300

        onCurrentIndexChanged: tabBar.currentIndex = tabView.currentIndex

        model: ObjectModel {

            ListView {
                width: tabView.width
                height: tabView.height

                model: ListModel {

                    ListElement {  name: QT_TR_NOOP("Janet Perkins") }
                    ListElement {  name: QT_TR_NOOP("Joshua Jones") }
                    ListElement {  name: QT_TR_NOOP("Bernard Lermite") }
                    ListElement {  name: QT_TR_NOOP("Arnaud Xarseille") }
                    ListElement {  name: QT_TR_NOOP("Janet Perkins") }
                    ListElement {  name: QT_TR_NOOP("Joshua Jones") }
                    ListElement {  name: QT_TR_NOOP("Bernard Lermite") }
                    ListElement {  name: QT_TR_NOOP("Arnaud Parseille") }
                    ListElement {  name: QT_TR_NOOP("Janet Perkins") }
                    ListElement {  name: QT_TR_NOOP("Joshua Jones") }
                    ListElement {  name: QT_TR_NOOP("Bernard Lermite") }
                    ListElement {  name: QT_TR_NOOP("Arnaud Jarseille") }
                    ListElement {  name: QT_TR_NOOP("Janet Perkins") }
                    ListElement {  name: QT_TR_NOOP("Joshua Jones") }
                    ListElement {  name: QT_TR_NOOP("Bernard Lermite") }
                    ListElement {  name: QT_TR_NOOP("Arnaud Marseille") }

                }

                delegate: ContactDelegate {
                    name: model.name
                }
            }

            Item {
                width: tabView.width
                height: tabView.height

                Label {
                    anchors.centerIn: parent
                    text: "Tab 2"
                }

            }

            Item {
                width: tabView.width
                height: tabView.height

                Label {
                    anchors.centerIn: parent
                    text: "Tab 3"
                }

            }

            Item {
                width: tabView.width
                height: tabView.height

                Label {
                    anchors.centerIn: parent
                    text: "Tab 4"
                }

            }

        }
    }


    NavigationBar {
        id: navigationBar
        anchors.left: parent.left
        anchors.right: parent.right
        anchors.bottom: parent.bottom
    }


}
