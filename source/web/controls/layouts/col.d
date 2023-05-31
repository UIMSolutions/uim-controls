module web.controls.layouts.col;

@safe: 
import web.controls;

class DUIMColControl : DUIMDivControl {
  mixin(ControlThis!("UIMColControl"));

  mixin(OProperty!("string[]", "sizes"));
  O sizes(this O)(string[] newSizes...) {
    this.sizes(newSizes.dup);
    return cast(O)this;
  }

  override void initialize() {
    super.initialize;
  }

  override void beforeH5(STRINGAA options = null) {
    super.beforeH5(options);

    myClasses ~= sizes ? sizes.map!(s => "col-"~s).array : ["col"]; 
  }
}
mixin(ControlCalls!("UIMColControl", "DUIMColControl"));
mixin(ControlCalls!("UIMCol", "DUIMColControl"));

version(test_uim_controls) { unittest {
  assert(UIMCol);
  assert(UIMCol.noId == `<div class="col"></div>`);
  assert(UIMCol.sizes(["auto"]).noId == `<div class="col-auto"></div>`);
  assert(UIMCol.sizes(["12", "md-6"]).noId == `<div class="col-12 col-md-6"></div>`);
  assert(UIMCol.sizes("12", "md-6").noId == `<div class="col-12 col-md-6"></div>`);
}}
