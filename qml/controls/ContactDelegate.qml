import QtQuick 2.11

Item {
    id: contactDelegate

    implicitWidth: 360 * dp
    implicitHeight: 56 * dp

    property alias name: label.text

    Rectangle {
        id: photoPlaceholder
        anchors.left: parent.left
        anchors.verticalCenter: parent.verticalCenter
        anchors.leftMargin: 16 * dp
        width: 40 * dp
        height: 40 * dp
        radius: 20 * dp
        color: palette.black
        opacity: 0.38
    }

    Label {
        id: label
        anchors.top: parent.top
        anchors.bottom: parent.bottom
        anchors.left: photoPlaceholder.right
        anchors.right: parent.right
        anchors.leftMargin: 8 * dp
        anchors.rightMargin: 8 * dp
        verticalAlignment: Text.AlignVCenter
        font.pixelSize: 14 * dp
    }
}
