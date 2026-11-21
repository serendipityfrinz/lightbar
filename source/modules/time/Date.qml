import Quickshell
import QtQuick

import "../../config/"

Item {
  height: dateText.height
  width: dateText.width

  Text {
    id: dateText
    text: Qt.formatDateTime(clock.date, "MMMM dd, yyyy")
    color: Config.useMatugen ? Theme.primary : Config.primary
    font.pointSize: 16
    font.family: Config.font
    font.variableAxes: Config.variableAxes ? Config.variableAxes : null
  }

  SystemClock {
    id: clock
    precision: SystemClock.Hours
  }
}
