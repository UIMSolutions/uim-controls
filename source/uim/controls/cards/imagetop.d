module uim.controls.cards.imagetop;

@safe: 
import uim.controls;

class DUIMCardImagetopControl : DUIMDivControl {
  mixin(ControlThis!("UIMCardImagetopControl"));

  override void initialize() {
    super.initialize;

    this
      .classes(["card-img-top"]);
  }

  mixin(OProperty!("string", "responsive"));
  mixin(OProperty!("string", "color"));
  O image(this O)(string newImage) {
    _cssStyles["background-image"] = "url(%s)".format(newImage);
    return cast(O)this;
  }

  override void beforeH5(STRINGAA options = null) {
    super.beforeH5(options);

    if (color) myClasses ~= "bg-"~color;
    if (responsive) myClasses ~= ["img-responsive", "img-responsive-"~responsive];
  }
}
mixin(ControlCalls!("UIMCardImagetopControl", "DUIMCardImagetopControl"));
mixin(ControlCalls!("UIMCardImagetop", "DUIMCardImagetopControl"));

version(test_uim_controls) { unittest {
    assert(UIMCardImagetop);
    assert(UIMCardImagetop.noId == `<div class="card-imagetop"></div>`);

    assert(UIMCardImagetop.color("blue").color == "blue");
    assert(UIMCardImagetop.noId.color("blue") == `<div class="bg-blue card-imagetop"></div>`);
  }
}

