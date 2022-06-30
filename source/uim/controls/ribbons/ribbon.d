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
    auto results = super.toH5(options);

    positions.each!(position => myClasses ~= "ribbon-"~position);
    if (color) { myClasses ~= "bg-"~color; }
    if (style) { myClasses ~= "ribbon-"~style; }
    myClasses = myClasses.sort.array.uniq.array;

    return results~
      H5Div(myId, myClasses, myAttributes, myContent);
  }
}
auto UIMRibbonControl() { return new DUIMRibbonControl; }
auto UIMRibbon() { return new DUIMRibbonControl; }