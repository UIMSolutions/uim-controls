module uim.controls.figures.figure;

@safe: 
import uim.controls;

class DUIMFigureControl : DUIMControl {
  mixin(ControlThis!("UIMFigureControl"));

  override void initialize() {
    super.initialize;
  }

  override void beforeH5(STRINGAA options = null) {
    super.beforeH5(options);

    this
      .clsses("figure")
  }

  override DH5Obj[] toH5(STRINGAA options = null) {
    auto results = super.toH5(options);

    return [H5Figure(myId, myClasses, myAttributes, myContent)].toH5;
}}
mixin(ControlCalls!("UIMFigureControl", "DUIMFigureControl"));
mixin(ControlCalls!("UIMFigure", "DUIMFigureControl"));

version(test_uim_controls) { unittest {
  assert(UIMFigure);
  assert(UIMFigure.noId == `<figure class="figure"></figure>`);
}}