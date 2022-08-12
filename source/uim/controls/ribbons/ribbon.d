module uim.controls.ribbons.ribbon;

@safe: 
import uim.controls;

class DUIMRibbonControl : DUIMControl {
  mixin(ControlThis!("UIMRibbon"));

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

    this
      .positions(positions.replace(["left"], ["start"]).replace(["rechts"], ["end"]))
      .positions.each!(position => myClasses ~= "ribbon-"~position);
    if (color) { myClasses ~= "bg-"~color.toLower; }
    if (style) { myClasses ~= "ribbon-"~style; }
    myClasses = myClasses.sort.array.uniq.array;

    return results~
      H5Div(myId, myClasses, myAttributes, myContent);
  }
}
mixin(ControlCalls!("UIMRibbonControl", "DUIMRibbonControl"));
mixin(ControlCalls!("UIMRibbon", "DUIMRibbonControl"));

version(test_uim_controls) { unittest {
    assert(UIMRibbon);

    auto control = UIMRibbon;
    // TODO
  }
}
