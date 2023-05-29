module uim.controls.enums;

public import uim.controls.enums.avatar;
public import uim.controls.enums.badge;
public import uim.controls.enums.dialog;

// Available Background Design.
enum UIMBackgroundDesigns : string {
  Solid = "Solid", // A solid background color dependent on the theme.
  Translucent = "Translucent", // A translucent background depending on the opacity value of the theme.
  Transparent = "Transparent" // Transparent background.
}

// Types of the Bar design.
enum UIMBarDesigns : string { 
  Auto = "Auto", // The Bar can be inserted into other controls and if the design is "Auto" then it inherits the design from parent control.
  Footer = "Footer", // The bar will be styled like a footer of the page.
  Header = "Header", // The bar will be styled like a header of the page.
  SubHeader = "SubHeader" // The bar will be styled like a subheader of the page.
}

// Variations of the sap.m.Breadcrumbs separators.
enum UIMBreadcrumbsSeparatorStyles : string {
  BackSlash = "BackSlash", // The separator will appear as "\"
  DoubleBackSlash = "DoubleBackSlash", // The separator will appear as "\\"
  DoubleGreaterThan = "DoubleGreaterThan", // The separator will appear as ">>"
  DoubleSlash = "DoubleSlash", // The separator will appear as "//"
  GreaterThan = "GreaterThan", // The separator will appear as ">"
  Slash = "Slash" // The separator will appear as "/"
}

// Different predefined button types for the sap.m.Button.
enum UIMButtonTypes : string {
  Accept = "Accept", // Accept type
  Attention = "Attention", // Attention type
  Back = "Back", // Back type (back navbar button for header)
  Critical = "Critical", // Critical type Note: To be used only in controls of type sap.m.Button. When the button opens a sap.m.MessagePopover list, use this ButtonType if the message with the highest severity is Warning type.
  Default = "Default", // Default type (no special styling)
  Emphasized = "Emphasized", // Emphasized type
  Ghost = "Ghost", // Ghost type
  Negative = "Negative", // Negative type - Note: To be used only in controls of type sap.m.Button. When the button opens a sap.m.MessagePopover list, use this ButtonType if the message with the highest severity is Error type.
  Neutral = "Neutral", // Neutral type - Note: To be used only in controls of type sap.m.Button. When the button opens a sap.m.MessagePopover list, use this ButtonType if the message with the highest severity is Information type.
  Reject = "Reject", // Reject style
  Success = "Success", // Success type - Note: To be used only in controls of type sap.m.Button. When the button opens a sap.m.MessagePopover list, use this ButtonType if the message with the highest severity is Success type.
  Transparent = "Transparent", // Transparent type
  Unstyled = "Unstyled", // Unstyled type (no styling)
  Up = "Up", // Up type (up navbar button for header)
}

// Carousel arrows align.
enum UIMCarouselArrowsPlacements : string {
  Content = "Content", // Carousel arrows are placed on the sides of the current Carousel page.
  PageIndicator = "PageIndicator", //Carousel arrows are placed on the sides of the page indicator of the Carousel.
}

// Available deviation markers for the NumericContent control.
enum UIMDeviationIndicators : string {
  Down = "Down", // The actual value is less than the target value.
  None = "None", // No value.
  Up = "Up" // The actual value is more than the target value.
}

// Enum for the state of UIMDraftIndicator control.
enum UIMDraftIndicatorState : string {
  Clear = "Clear", // This is the default value for DraftIndicatorState type. 
  Saved = "Saved", // Indicates that the draft is already saved 
  Saving = "Saving" // Indicates that the draft currently is being saved
}

// Modes in which a control will render empty indicator if its content is empty.
enum UIMEmptyIndicatorMode : string {
  Auto = "Auto", // Empty indicator will be rendered depending on the context in which the control is placed. 
  Off = "Off", // Empty indicator is never rendered.
  On = "On" // Empty indicator is rendered always when the control's content is empty.
}

// Expandable text overflow mode
enum UIMExpandableTextOverflowMode : string {
  InPlace = "InPlace", // 
  Popover = "Popover" // 
}

// FacetFilterList data types.
enum UIMFacetFilterListDataType : string {
  Boolean = "Boolean", // An input control for specifying a Boolean value
  Date = "Date", // An input control for specifying a date value. The user can select a month, day of the month, and year.
  DateTime = "DateTime", // An input control for specifying a date and time value. The user can select a month, day of the month, year, and time of day.
  Float = "Float", // An input control for specifying a Float value
  Integer = "Integer", // An input control for specifying an Integer value
  String = "String", // An input control for specifying a String value
  Time = "Time" // An input control for specifying a time value. The user can select the hour, minute, and optionally AM or PM.
}

// Used by the FacetFilter control to adapt its design according to type.
enum UIMFacetFilterType : string {
  Light = "Light", // Forces FacetFilter to display in light mode
  Simple = "Simple" // Forces FacetFilter to display facet lists as a row of buttons, one button per facet.
}

// Available options for the layout of container lines along the cross axis of the flexbox layout.
enum UIMFlexAlignContent : string {
  Center = "Center", // Line are packed toward the center of the line.
  End = "End", // Lines are packed toward the end of the line.
  Inherit = "Inherit", // Inherits the value from its parent.
  SpaceAround = "SpaceAround", // Lines are evenly distributed in the line, with half-size spaces on either end.
  SpaceBetween = "SpaceBetween", // Lines are evenly distributed in the line.
  Start = "Start", // Lines are packed toward the start of the line.
  Stretch = "Stretch" // Lines stretch to take up the remaining space  
}

// Available options for the layout of all elements along the cross axis of the flexbox layout.
enum UIMFlexAlignItems : string {
  Baseline = "Baseline", // If the flex item`s inline axes are the same as the cross axis, this value is identical to "Start".
  Center = "Center", // The flex item's margin boxes are centered in the cross axis within the line.
  End = "End", // The cross-start margin edges of the flex items are placed flush with the cross-end edge of the line.
  Inherit = "Inherit", // Inherits the value from its parent
  Start = "Start", // The cross-start margin edges of the flex items are placed flush with the cross-start edge of the line.
  Stretch = "Stretch" // Make the cross size of the item's margin boxes as close to the same size as the line as possible. 
}

// Available options for the layout of individual elements along the cross axis of the flexbox layout overriding the default alignment.
enum UIMFlexAlignSelf : string {
  Auto = "Auto", // Takes up the value of alignItems from the parent FlexBox
  Baseline = "Baseline", // If the flex item's inline axis is the same as the cross axis, this value is identical to "Start".
  Center = "Center", // The flex item's margin box is centered in the cross axis within the line
  End = "End", // The cross-start margin edges of the flex item is placed flush with the cross-end edge of the line.
  Inherit = "Inherit", // Inherits the value from its parent
  Start = "Start", // The cross-start margin edges of the flex item is placed flush with the cross-start edge of the line.
  Stretch = "Stretch" // Make the cross size of the item's margin box as close to the same size as the line as possible.
}

// Available directions for flex layouts.
enum UIMFlexDirection : string {
  Column = "Column", // Flex items are laid out along the direction of the block axis (usually top to bottom).
  ColumnReverse = "ColumnReverse", // Flex items are laid out along the reverse direction of the block axis (usually bottom to top).
  Inherit = "Inherit", // Inherits the value from its parent.
  Row = "Row", // Flex items are laid out along the direction of the inline axis (text direction)
  RowReverse = "RowReverse" // Flex items are laid out along the reverse direction of the inline axis (against the text direction).
}

// Configuration options for the direction of texts.
enum UIMTextDirections : string {
  Inherit = "Inherit", // Inherits the direction from its parent control/container.
  LTR = "LTR", // Specifies left-to-right text direction.
  RTL = "RTL" // Specifies right-to-left text direction.
}

enum UIMTitleAlignments {
  Auto = "Auto", // The default type (if specified in the theme)
  Center = "Center", // Explicitly sets the alignment to the center
  None = "None", // Disables an automatic title alignment depending on theme Mostly used in sap.m.Bar
  Start = "STart" // Explicitly sets the alignment to the start (left or right depending on LTR/RTL)
}
