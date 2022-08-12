module uim.controls.figures.caption;

@safe: 
import uim.controls;

class DUIMFigureCaptionControl : DUIMControl {
  mixin(ControlThis!("UIMFigureCaptionControl"));

  override void initialize() {
    super.initialize;
  }

  override void beforeH5(STRINGAA options = null) {
    super.beforeH5(options);

  }

  override DH5Obj[] toH5(STRINGAA options = null) {
    auto results = super.toH5(options);

    return results~
      H5Div(myId, myClasses, myAttributes, myContent);
  }
}
mixin(ControlCalls!("UIMFigureCaptionControl", "DUIMFigureCaptionControl"));
mixin(ControlCalls!("UIMFigureCaption", "DUIMFigureCaptionControl"));

version(test_uim_controls) { unittest {
    assert(UIMFigureCaption);

    auto control = UIMFigureCaption;
  }
}