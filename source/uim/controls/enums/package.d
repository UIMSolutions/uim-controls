module uim.controls.enums;

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

// Types of the Bar design.
enum UIMBarDesigns : string { 
  Auto = "Auto", // The Bar can be inserted into other controls and if the design is "Auto" then it inherits the design from parent control.
  Footer = "Footer", // The bar will be styled like a footer of the page.
  Header = "Header", // The bar will be styled like a header of the page.
  SubHeader = "SubHeader" // The bar will be styled like a subheader of the page.
}

// Types of shape for the UIMAvatar control.
enum UIMAvatarShapes : string {
  Circle = "Circle", // Circular shape.
  Square = "Square" // Square shape.
}

// Types of image size and position that determine how an image fits in the sap.m.Avatar control area.
enum UIMAvatarImageFitTypes : string {
  Contain = "Contain", // The image is scaled to the largest size so that both its width and height can fit in the control area.
  Cover = "Cover", // The image is scaled to be large enough so that the control area is completely covered.
}

// Types of UIMAvatar based on the displayed content.
enum UIMAvatarTypes : string {
  Icon = "Icon", // The displayed content is an icon.
  Image = "Image", // The displayed content is an image.
  Initials = "Initials" // The displayed content is initials.
}

// Available Background Design.
enum UIMBackgroundDesigns : string {
  Solid = "Solid", // A solid background color dependent on the theme.
  Translucent = "Translucent", // A translucent background depending on the opacity value of the theme.
  Transparent = "Transparent" // Transparent background.
}

// Types of animation performed by sap.m.BadgeEnabler.
enum UIMBadgeAnimationType : string {
  Full = "Full", // Badge indicator will perform Appear,Update,and Disappear animation.
  None = "None", // No animation is performed.
  Update = "Update", // Badge indicator will perform only Update animation (suitable for controls, which invalidate often).
}

// Types of state of sap.m.BadgeEnabler to expose its current state.
enum UIMBadgeStates : string {
  Appear = "Appear", // Informing interested parties that the badge has appeared.
  Disappear = "Disappear", // Informing interested parties that the badge has disappeared.
  Updated = "Updated" // Informing interested parties that the badge has been updated.
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