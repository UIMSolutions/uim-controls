module web.controls.enums.badge;

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