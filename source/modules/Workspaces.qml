import Quickshell
import QtQuick
import Quickshell.Io

import "../config/"

Rectangle {
  property QsWindow bar
  id: root
  height: bar.height - 15
  width: wRow.width + 20
  color: Theme.surface
  anchors.verticalCenter: parent.verticalCenter
  radius: height / 2
  border.color: Theme.outline_variant
  border.width: 2

  Row {
    id: wRow
    spacing: 10
    anchors.centerIn: parent

    Repeater {
      model: dwlW.dWcount 

      delegate: Rectangle {
        required property int index
        required property var modelData
        property bool focused: dwlW.dW === index + 1
        property bool hasWin: dwlW.dO.includes(index + 1)

        height: 15
        width: focused ? 50 : 15
        radius: height / 2
        color: focused ? Theme.primary : hasWin ? Theme.outline : Theme.outline_variant

        Behavior on color {
          ColorAnimation {
            duration: 500
            easing.type: Easing.OutExpo
          }
        }

        Behavior on width {
          SpringAnimation {
            spring: 5
            damping: 0.3
          }
        }
      }
    }
  }

  Process {
    id: dwlW
    running: true
    command: [Quickshell.env("HOME") + "/.local/bin/dwlmsg-json"]
    property int dW: 0
    property int dWcount: 0
    property var dO: []

    stdout: SplitParser {
      onRead: data => {
        let w;

        try {
          w = JSON.parse(data.trim())
        } catch (e) {
          return;
        }

        dwlW.dW = w.selected[0]
        dwlW.dWcount = w.tagcount
        dwlW.dO = w.occupied
      }
    }
  }
}
