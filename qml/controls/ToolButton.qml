import QtQuick 2.0

AbstractButton {
    id: toolButton

    implicitHeight: 24 * dp
    implicitWidth: 24 * dp

    property alias iconSource: image.source
    property alias iconWidth: image.width
    property alias iconHeight: image.height

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
        anchors.margins: -6 * dp
        color: palette.black
        opacity: 0
        radius: width / 2
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
    Image {
        id: image
        anchors.centerIn: parent
    }
}
