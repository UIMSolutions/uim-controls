module uim.controls.empties.empty;

@safe: 
import uim.controls;

class DUIMEmptyControl : DUIMControl {
  mixin(ControlThis!("UIMEmptyControl"));

  mixin(OProperty!("string", "color"));

  mixin(AddContent!("Icon", "UIMEmptyIcon"));
  mixin(AddContent!("Title", "UIMEmptyTitle"));
  mixin(AddContent!("Header", "UIMEmptyHeader"));
  mixin(AddContent!("Subtitle", "UIMEmptySubtitle"));
  mixin(AddContent!("Action", "UIMEmptyAction"));
  mixin(AddContent!("Image", "UIMEmptyImage"));

  override void initialize() {
    super.initialize;

    this
      .classes(["empty"]);
  }

  override void beforeH5(STRINGAA options = null) {
    super.beforeH5(options);

    if (color) myClasses ~= "bg-"~color;
  }

  override DH5Obj[] toH5(STRINGAA options = null) {
    super.toH5(options);

    return [H5Div(myId, myClasses, myAttributes, myContent)].toH5;
  }
}
mixin(ControlCalls!("UIMEmptyControl", "DUIMEmptyControl"));
mixin(ControlCalls!("UIMEmpty", "DUIMEmptyControl"));

unittest {
  assert(UIMEmpty);
  assert(UIMEmpty.id(null) == `<div class="empty"></div>`);
  writeln(UIMEmpty.id(null)(UIMEmptyIcon));
  assert(UIMEmpty.id(null)(UIMEmptyIcon) == `<div class="empty"><div class="empty-icon"></div></div>`);
}
