module uim.controls.progresses.bar;

@safe: 
import uim.controls;

class DUIMProgressBarControl : DUIMControl {
  mixin(ControlThis!("UIMProgressBarControl"));

  mixin(OProperty!("bool", "indeterminate"));
  mixin(OProperty!("bool", "hideLabel"));
  mixin(OProperty!("string", "color"));

  mixin(OProperty!("string", "width"));
  mixin(OProperty!("string", "valueNow"));
  mixin(OProperty!("string", "valueMin"));
  mixin(OProperty!("string", "valueMax"));
  mixin(OProperty!("string", "label"));
  
  override void initialize() {
    super.initialize;
    this
      .classes(["progress-bar"])
      .attributes(["role":"progressbar"]);
  }

  O value(this O)(string current, string min, string max) {
    this
      .valueNow(current)
      .valueMin(min)
      .valueMax(max);
  }

  override DH5Obj[] toH5(STRINGAA options = null) {
    auto results = super.toH5(options);

    if (indeterminate) { myClasses ~= "progress-bar-indeterminate"; }
    if (color) { myClasses ~= "bg-"~color.toLower; }
    if (width) { myAttributes["style"] = ("style" in myAttributes ? myAttributes["style"]~";" : "")~"width:"~width~";"; }
    if (valueNow) { myAttributes["aria-valuenow"] = valueNow; }
    if (valueMin) { myAttributes["aria-valuemin"] = valueMin; }
    if (valueMax) { myAttributes["aria-valuemax"] = valueMax; }
    if (label) { 
      myAttributes["aria-label"] = label;
      myContent ~= H5Span(hideLabel ? ["visually-hidden"] : null, label); 
    }

    return [H5Div(myId, myClasses, myAttributes, myContent)].toH5;
  }
}
mixin(ControlCalls!("UIMProgressBarControl", "DUIMProgressBarControl"));
mixin(ControlCalls!("UIMProgressBar", "DUIMProgressBarControl"));

version(test_uim_controls) { unittest {
  assert(UIMProgressBar);
  assert(UIMProgressBar.classes == ["progress-bar"]);
  assert(UIMProgressBar.noId == `<div class="progress-bar" role="progressbar"></div>`);

  mixin(TestControlBooleanAttributes!("UIMProgressBar", [
    "indeterminate", "hideLabel"]));
  assert(UIMProgressBar.noId.indeterminate(true) == `<div class="progress-bar progress-bar-indeterminate" role="progressbar"></div>`);
  assert(UIMProgressBar.noId.label("test").hideLabel(true) == 
    `<div class="progress-bar" aria-label="test" role="progressbar"><span class="visually-hidden">test</span></div>`);

  mixin(TestControlStringAttributes!("UIMProgressBar", [
    "color","width", "valueNow", "valueMin", "valueMax", "label"]));
  }
}
