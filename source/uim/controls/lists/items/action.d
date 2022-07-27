module uim.controls.lists.items.action;

@safe: 
import uim.controls;

// This control provides the text feature, which enables you to set a center aligned text. 
// This is a simple list item for triggering actions. 
class DUIMActionListItemControl : DUIMControl {
  mixin(ControlThis!("UIMActionListItemControl"));

  override void initialize() {
    super.initialize;
  }

  override DH5Obj[] toH5(STRINGAA options = null) {
    return super.toH5(options);
  }
}
mixin(ControlCalls!("UIMActionListItemControl", "DUIMActionListItemControl"));
mixin(ControlCalls!("UIMActionListItem", "DUIMActionListItemControl"));
