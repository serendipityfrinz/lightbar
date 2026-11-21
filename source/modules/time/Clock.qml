import Quickshell
import QtQuick

import "../../config/"

Item {
  height: clockText.height
  width: clockText.width

  Text {
    id: clockText
    text: Qt.formatDateTime(clock.date, "h:mm AP")
    color: Config.useMatugen ? Theme.tertiary : Config.tertiary
    font.pointSize: 16
    font.family: Config.font
    font.variableAxes: Config.variableAxes ? Config.variableAxes : null
  }

  SystemClock {
    id: clock
    precision: SystemClock.Minutes
  }
}
