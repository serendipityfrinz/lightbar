import Quickshell
import QtQuick

import "../config/"
import "./time/"

PanelWindow {
  id: root
  implicitHeight: 45

  anchors {
    top: true
    left: true
    right: true
  }

  color: "transparent"

  Rectangle {
    id: mainRect
    anchors.fill: parent
    color: Config.useMatugen ? Theme.surface_container : Config.surface_container
    border.color: Config.useMatugen ? Theme.outline_variant : Config.outline_variant
    border.width: 2

    Loader {
      asynchronous: true
      visible: status === Loader.Ready
      anchors.left: parent.left
      anchors.verticalCenter: parent.verticalCenter
      anchors.margins: 10

      sourceComponent: Workspaces {
        bar: root
      }
    }

    Loader {
      asynchronous: true
      visible: status === Loader.Ready
      x: (parent.width - width) / 2
      anchors.verticalCenter: parent.verticalCenter

      sourceComponent: Time {}
    }
  }
}
