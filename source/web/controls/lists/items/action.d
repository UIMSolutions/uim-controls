module uim.controls.lists.items.action;

@safe: 
import uim.controls;

// This control provides the text feature, which enables you to set a center aligned text. 
// This is a simple list item for triggering actions. 
class DUIMActionListItemControl : DUIMListItemControl {
  mixin(ControlThis!("UIMActionListItemControl"));

  override void initialize() {
    super.initialize;

    this
      .addClasses("list-group-action");
  }

  // Property 'text' defines the text that appears in the control.
  mixin(OProperty!("string", "text"));
}
mixin(ControlCalls!("UIMActionListItemControl", "DUIMActionListItemControl"));
mixin(ControlCalls!("UIMActionListItem", "DUIMActionListItemControl"));

version(test_uim_controls) { unittest {
  assert(UIMActionListItem);
  assert(UIMActionListItem.noId == `<li class="list-group-action list-group-item"></li>`); 
}}