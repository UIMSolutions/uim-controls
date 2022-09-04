module uim.controls.figures.caption;

@safe: 
import uim.controls;

class DUIMFigureCaptionControl : DUIMControl {
  mixin(ControlThis!("UIMFigureCaptionControl"));

  override void initialize() {
    super.initialize;

    this
      .classes("figure-caption");
  }

  override void beforeH5(STRINGAA options = null) {
    super.beforeH5(options);

  }

  override DH5Obj[] toH5(STRINGAA options = null) {
    super.toH5(options);

    return [H5Div(myId, myClasses, myAttributes, myContent)].toH5;
  }
}
mixin(ControlCalls!("UIMFigureCaptionControl", "DUIMFigureCaptionControl"));
mixin(ControlCalls!("UIMFigureCaption", "DUIMFigureCaptionControl"));

version(test_uim_controls) { unittest {
  assert(UIMFigureCaption);
  assert(UIMFigureCaption.noId == `<div class="figure-caption"></div>`);
}}