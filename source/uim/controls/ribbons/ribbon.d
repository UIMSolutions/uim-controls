module uim.controls.ribbons.ribbon;

@safe: 
import uim.controls;

class DUIMRibbonControl : DUIMControl {
  this() { super(); }

  mixin(OProperty!("string", "color"));
  mixin(OProperty!("string", "style"));
  mixin(OProperty!("string[]", "positions"));

  override void initialize() {
    super.initialize;
    this
      .classes(["ribbon"]);
  }

  override DH5Obj[] toH5(STRINGAA options = null) {
    string myId = this.id.dup;
    auto myClasses = this.classes.dup;
    auto myAttributes = this.attributes.dup;
    auto myContent = this.content.dup;

    positions.each!(position => myClasses ~= "ribbon-"~position);
    if (color) { myClasses ~= "bg-"~color; }
    if (style) { myClasses ~= "ribbon-"~style; }
    myClasses = myClasses.sort.uniq;

    return [
      H5Div(myId, myClasses, myAttributes, myContent)
    ].toH5;
  }
}
auto UIMRibbonControl() { return new DUIMRibbonControl; }