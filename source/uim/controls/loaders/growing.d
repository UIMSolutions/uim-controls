module uim.controls.loaders.growing;

@safe: 
import uim.controls;

class DUIMGrowingLoaderControl : DUIMLoaderControl {
  mixin(ControlThis!("UIMGrowingLoader"));

  override void initialize() {
    super.initialize;

    this
      .style("grow");
  }

  override void beforeH5(STRINGAA options = null) {
    super.beforeH5(options);

    switch (this.size) {
      case "sm", "small": myClasses ~= "spinner-grow-sm"; break;
      default: break;
    }
  }
}
mixin(ControlCalls!("UIMGrowingLoaderControl", "DUIMGrowingLoaderControl"));
mixin(ControlCalls!("UIMGrowingLoader", "DUIMGrowingLoaderControl"));

version(test_uim_controls) { unittest {
    assert(UIMGrowingLoader);
    assert(UIMGrowingLoader.noId == `<div class="spinner-grow" role="status"></div>`);

    assert(UIMGrowingLoader.color("red").color == "red"); 
    assert(UIMGrowingLoader.noId.color("red") == `<div class="spinner-grow text-red" role="status"></div>`); 

    assert(UIMGrowingLoader.size("small").size == "small"); 
    assert(UIMGrowingLoader.noId.size("small") == `<div class="spinner-grow spinner-grow-sm" role="status"></div>`); 

    assert(UIMGrowingLoader.style("grow").style == "grow");
    assert(UIMGrowingLoader.noId.style("grow") == `<div class="spinner-grow" role="status"></div>`);

    assert(UIMGrowingLoader.embedded(true).embedded); 
    assert(UIMGrowingLoader.noId.embedded(true) == `<span class="spinner-grow" role="status"></span>`); 
  }
}
