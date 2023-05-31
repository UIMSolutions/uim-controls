module web.controls.loaders.rotating;

@safe: 
import web.controls;

class DUIMRotatingLoaderControl : DUIMLoaderControl {
  mixin(ControlThis!("UIMRotatingLoader"));

  override void initialize() {
    super.initialize;

    this
      .style("border");
  }

  override void beforeH5(STRINGAA options = null) {
    super.beforeH5(options);

    switch (this.size) {
      case "sm", "small": myClasses ~= "spinner-border-sm"; break;
      default: break;
    }
  }
}
mixin(ControlCalls!("UIMRotatingLoaderControl", "DUIMRotatingLoaderControl"));
mixin(ControlCalls!("UIMRotatingLoader", "DUIMRotatingLoaderControl"));

version(test_uim_controls) { unittest {
    assert(UIMRotatingLoader);
    assert(UIMRotatingLoader.id("test1") == `<div id="test1" class="spinner-border" role="status"></div>`);

    assert(UIMRotatingLoader.color("red").color == "red"); 
    assert(UIMRotatingLoader.id("test2").color("red") == `<div id="test2" class="spinner-border text-red" role="status"></div>`); 

    assert(UIMRotatingLoader.size("small").size == "small"); 

    assert(UIMRotatingLoader.style("grow").style == "grow");
    assert(UIMRotatingLoader.id("test4").style("grow") == `<div id="test4" class="spinner-grow" role="status"></div>`);

    assert(UIMRotatingLoader.embedded(true).embedded); 
    assert(UIMRotatingLoader.id("test5").embedded(true) == `<span id="test5" class="spinner-border" role="status"></span>`); 
  }
}
