module uim.controls.dropdowns.item;

@safe: 
import uim.controls;

class DUIMDropdownItemControl : DUIMControl {
  this() { super(); }

  mixin(OProperty!("bool", "isDivider"));
  mixin(OProperty!("bool", "isHeader"));
  mixin(OProperty!("string", "link"));

  override void initialize() {
    super.initialize;
/* 
    this
      .classes(["carousel-item"]); */
  }

  override DH5Obj[] toH5(STRINGAA options = null) {
    string myId = this.id.dup;
    auto myClasses = this.classes.dup;
    auto myAttributes = this.attributes.dup;
    auto myContent = this.content.dup;

    return [
      BS5DropdownLink(myId, myClasses, myAttributes, myContent)
    ].toH5;
  }
}
auto UIMDropdownItemControl() { return new DUIMDropdownItemControl; }