module web.controls.lists.items.badge;

@safe: 
import web.controls;

// Simple listitem with a badge at start or end or both. 
class DUIMBadgeListItemControl : DUIMControl {
  mixin(ControlThis!("UIMBadgeListItemControl"));

  mixin(OProperty!("string", "badgePosition")); // default right. Other values are left and both
  mixin(OProperty!("string", "badgeContent"));
  mixin(OProperty!("string", "badgeColor"));

  override void initialize() {
    super.initialize;
    
    this
      .addClasses(["d-flex", "justify-content-between", "align-items-center"]);
  }

  override void beforeH5(STRINGAA options = null) {
    super.beforeH5(options);
    
    auto myBadge = BS5Badge.color(badgeColor).content(badgeContent);
    switch(badgePosition) {
      case "left": myContent = myBadge~this.content; break;
      case "both": myContent = myBadge~this.content~myBadge; break;
      default: myContent = myBadge~this.content; break;
    }
  }
}
mixin(ControlCalls!("UIMBadgeListItemControl", "DUIMBadgeListItemControl"));
mixin(ControlCalls!("UIMBadgeListItem", "DUIMBadgeListItemControl"));
