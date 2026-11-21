import Quickshell
import QtQuick

import "../../config/"

Row {
  id: root
  spacing: 20

  Date {
    anchors.verticalCenter: parent.verticalCenter
  }

  Text {
    id: separator
    text: "|"
    y: ((parent.height - height) / 2)
    color: Config.useMatugen ? Theme.outline : Config.outline
    font.pointSize: 16
    font.family: Config.font
    font.variableAxes: Config.variableAxes ? Config.variableAxes : null
  }

  Clock {
    anchors.verticalCenter: parent.verticalCenter
  }
}
