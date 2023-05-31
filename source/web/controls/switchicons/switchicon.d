module web.controls.switchicons.switchicon;

@safe: 
import web.controls;

class DUIMSwitchIconControl : DUIMControl {
  mixin(ControlThis!("UIMSwitchIconControl"));

  mixin(OProperty!("string[]", "icons"));
  mixin(OProperty!("string", "iconOne"));
  mixin(OProperty!("string", "iconTwo"));

  mixin(OProperty!("bool", "fill"));
  mixin(OProperty!("bool", "fillOne"));
  mixin(OProperty!("bool", "fillTwo"));

  mixin(OProperty!("string[]", "classesOne"));
  mixin(OProperty!("string[]", "classesTwo"));

  mixin(OProperty!("bool", "fade"));
  mixin(OProperty!("bool", "scale"));
  mixin(OProperty!("bool", "flip"));
  mixin(OProperty!("string", "slide")); // up, left, right, down

  override void initialize() {
    super.initialize;

    this
      .classes(["switch-icon"])
      .attributes(["data-bs-toggle":"switch-icon"]);
  }

  override void beforeH5(STRINGAA options = null) {
    super.beforeH5(options);

    if (fill) {
      this
        .fillOne(true)
        .fillTwo(true);
    }
    if (icons.length == 1) {
      this
        .iconOne(icons[0])
        .iconTwo(icons[0]);
    }
    else if (icons.length > 1) {
      this
        .iconOne(icons[0])
        .iconTwo(icons[1]);
    }
    if (fade) myClasses ~= "switch-icon-fade";
    if (scale) myClasses ~= "switch-icon-scale";
    if (flip) myClasses ~= "switch-icon-flip";
    if (slide) myClasses ~= "switch-icon-slide-"~slide;
  }

  override DH5Obj[] toH5(STRINGAA options = null) {
    super.toH5(options);

    return [
      H5Button(myId, myClasses, myAttributes, 
        H5Span(["switch-icon-a"]~classesOne, tablerIcon(iconOne, (fillOne ? ["icon-filled"] : null))),
        H5Span(["switch-icon-b"]~classesTwo, tablerIcon(iconTwo, (fillTwo ? ["icon-filled"] : null))))].toH5;
  }
}
mixin(ControlCalls!("UIMSwitchIconControl", "DUIMSwitchIconControl"));
mixin(ControlCalls!("UIMSwitchIcon", "DUIMSwitchIconControl"));

version(test_uim_controls) { unittest {
  assert(UIMSwitchIcon);
  assert(UIMSwitchIcon.noId == `<button class="switch-icon" data-bs-toggle="switch-icon"><span class="switch-icon-a"></span><span class="switch-icon-b"></span></button>`);
}}


