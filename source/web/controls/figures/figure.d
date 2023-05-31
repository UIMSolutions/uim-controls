module web.controls.figures.figure;

@safe: 
import web.controls;

class DUIMFigureControl : DUIMControl {
  mixin(ControlThis!("UIMFigureControl"));

  override void initialize() {
    super.initialize;

    this
      .classes("figure");
  }

  override void beforeH5(STRINGAA options = null) {
    super.beforeH5(options);

  }

  override DH5Obj[] toH5(STRINGAA options = null) {
    super.toH5(options);

    return [H5Figure(myId, myClasses, myAttributes, myContent)].toH5;
}}
mixin(ControlCalls!("UIMFigureControl", "DUIMFigureControl"));
mixin(ControlCalls!("UIMFigure", "DUIMFigureControl"));

version(test_uim_controls) { unittest {
  assert(UIMFigure);
  assert(UIMFigure.noId == `<figure class="figure"></figure>`);
}}