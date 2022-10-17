module uim.controls.enums.avatar;

// Possible background color options for the UIMAvatarControl.
enum UIMAvatarColors : string {
  Accent1 = "Accent1", // Accent1
  Accent2 = "Accent2", // Accent2
  Accent3 = "Accent3", // Accent3
  Accent4 = "Accent4", // Accent4
  Accent5 = "Accent5", // Accent5
  Accent6 = "Accent6", // Accent6
  Accent7 = "Accent7", // Accent7
  Accent8 = "Accent8", // Accent8
  Accent9 = "Accent9", // Accent9
  Placeholder = "Placeholder", // Recommended when used as a placeholder (no image or initials are provided).
  Random = "Random", // Random color, chosen from the accent options (Accent1 to Accent10)
  TileIcon = "TileIcon", // Recommended when used as an icon in a tile
  Transparent = "Transparent", // Transparent
}

// Types of image size and position that determine how an image fits in the sap.m.Avatar control area.
enum UIMAvatarImageFitTypes : string {
  Contain = "Contain", // The image is scaled to the largest size so that both its width and height can fit in the control area.
  Cover = "Cover", // The image is scaled to be large enough so that the control area is completely covered.
}

// Types of shape for the UIMAvatar control.
enum UIMAvatarShapes : string {
  Circle = "Circle", // Circular shape.
  Square = "Square" // Square shape.
}

// Predefined sizes for the UIMAvatar control.
enum AvatarSize : string {
  Custom = "Custom", // Custom size
  XL = "XL", // XL
  L = "L", // L
  M = "M", // M
  S = "S", // S
  XS = "XS" // XS
}

// Types of UIMAvatar based on the displayed content.
enum UIMAvatarTypes : string {
  Icon = "Icon", // The displayed content is an icon.
  Image = "Image", // The displayed content is an image.
  Initials = "Initials" // The displayed content is initials.
}
