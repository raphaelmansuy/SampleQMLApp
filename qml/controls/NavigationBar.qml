import QtQuick 2.11

Item {
    id: navigationBar
    implicitHeight: 48 * dp
    implicitWidth: 360 * dp

    Rectangle {
        id: background
        anchors.fill: parent
        color: palette.black

    }

    Image {
        id: back
        width: 15 * dp
        height: 17 * dp
        source: "/assets/images/back.svg"
        anchors.left: parent.left
        anchors.leftMargin: 72 * dp
        anchors.verticalCenter: parent.verticalCenter

        smooth: true
        antialiasing: true
        sourceSize.width: this.width
        sourceSize.height: this.height
    }

    Image {
        id: home
        width: 16 * dp
        height: 16 * dp
        source: "/assets/images/home.svg"
        anchors.centerIn: parent
        smooth: true
        antialiasing: true
        sourceSize.width: this.width
        sourceSize.height: this.height
    }

    Image {
        id: recent
        width: 15 * dp
        height: 17 * dp
        source: "/assets/images/recent.svg"
        anchors.right:  parent.right
        anchors.rightMargin: 72 * dp
        anchors.verticalCenter: parent.verticalCenter

        smooth: true
        antialiasing: true
        sourceSize.width: this.width
        sourceSize.height: this.height
    }
}
