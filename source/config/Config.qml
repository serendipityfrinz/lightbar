pragma Singleton
import QtQuick

// The configuration of lightbar.
// Change the variables inside QtObject{}.

QtObject {
  /* This is the default configuration. 
   * Delete this comment or all comments
   * and edit the variables however you want. */
  
  // The switch for the wallpaper widgets.
  property bool wallpaperWidgets_enabled: false

  // Basically a switch to use automatic color
  // generation based on wallpaper or not.
  property bool useMatugen: false

  // The color palette used if useMatugen is false.
  readonly property color primary: "#ffb4a7"
  readonly property color on_primary: "#561e16"
  readonly property color primary_container: "#73342a"
  readonly property color on_primary_container: "#ffdad4"
  readonly property color secondary: "#e7bdb6"
  readonly property color on_secondary: "#442925"
  readonly property color secondary_container: "#5d3f3a"
  readonly property color on_secondary_container: "#ffdad4"
  readonly property color tertiary: "#dec48c"
  readonly property color on_tertiary: "#3e2e04"
  readonly property color tertiary_container: "#564419"
  readonly property color on_tertiary_container: "#fbe0a6"
  readonly property color on_surface: "#f1dfdb"
  readonly property color surface: "#1a1110"
  readonly property color surface_container: "#271d1c"
  readonly property color outline: "#a08c89"
  readonly property color outline_variant: "#534341"
  readonly property color error: "#ffb4ab"
  readonly property color on_error: "#690005"
  readonly property color success: "#4ade80"
  readonly property color on_success: "#052e16"

  // The font to use (you should replace it with your own)
  property string font: "JetBrainsMono Nerd Font"

  // The font variable axes. You can put something like
  // { "wght": <a_number> } if you want.
  property var variableAxes: ""
}
