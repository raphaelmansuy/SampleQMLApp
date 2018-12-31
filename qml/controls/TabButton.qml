import QtQuick 2.11

AbstractButton {

    id: tabButton

    property alias text: label.text
    property alias color: label.color
    property bool current: false

    onPressedChanged: {
        if(pressed) {
            clickAnimation.stop()
            background.opacity = 0.10
        } else {
            clickAnimation.restart()
        }
    }

    Rectangle {
        id: background
        anchors.fill: parent
        color: palette.black
        opacity: 0
    }



    NumberAnimation {
        id: clickAnimation
        target: background
        property: "opacity"
        from: 0.10
        to: 0.0
        duration: 200
        loops: 1
        running: false
    }

    Label {
        id: label
        anchors.fill: parent
        verticalAlignment: Text.AlignVCenter
        horizontalAlignment: Text.AlignHCenter

        font.pixelSize: 14 * dp
        font.weight:  Font.Medium

        opacity: tabButton.current ? 1.0 : 0.7
    }

}
