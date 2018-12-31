import QtQuick 2.0

Item {
    id: abstractButton

    property alias pressed: mouseArea.pressed

    signal clicked()

    MouseArea {
        id: mouseArea

        anchors.fill: parent
        onClicked: abstractButton.clicked()
    }
}
