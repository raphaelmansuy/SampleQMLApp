import QtQuick 2.11
import QtQuick.Window 2.11
import "../components"

Window {
    id: applicationWindow
    property double dp: Screen.pixelDensity * 25.4 / 160
    readonly property Palette palette: Palette {
    }
}
