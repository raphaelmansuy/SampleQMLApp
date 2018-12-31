import QtQuick 2.11

Item {
    id: statusBar
    implicitHeight: 24 * dp
    implicitWidth: 360 * dp

    Rectangle {
        id: background
        anchors.fill: parent
        color: palette.cyan


        Rectangle {
            anchors.fill: parent
            color: palette.black
            opacity: 0.10
        }
    }

    Row {
        anchors.verticalCenter: parent.verticalCenter
        anchors.right: parent.right
        anchors.rightMargin: 8 * dp
        anchors.leftMargin: 8 * dp


        Image {
            anchors.verticalCenter: parent.verticalCenter
            width: 16 * dp
            height: 12 * dp
            source: "/assets/images/wifi@3x.png"

        }

        HorizontalSpacer {
            width: 2 * dp
        }

        Image {
            anchors.verticalCenter: parent.verticalCenter
            width: 12 * dp
            height: 12 * dp
            source: "/assets/images/reception@3x.png"
        }

        HorizontalSpacer {
            width: 9 * dp
        }


        Image {
            anchors.verticalCenter: parent.verticalCenter
            width: 8 * dp
            height: 13 * dp
            source: "/assets/images/battery@3x.png"
       }

        HorizontalSpacer {
            width: 8 * dp
        }


        Label    {
            text: "12:30"
            color: palette.white
            font.weight: Font.Medium
            font.pixelSize:  14 * dp
        }

    }
}
