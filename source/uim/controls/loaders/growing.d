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
}
mixin(ControlCalls!("UIMGrowingLoaderControl", "DUIMGrowingLoaderControl"));
mixin(ControlCalls!("UIMGrowingLoader", "DUIMGrowingLoaderControl"));

version(test_uim_controls) { unittest {
    assert(UIMGrowingLoader);
    assert(UIMGrowingLoader.id("test1") == `<div id="test1" class="spinner-border" role="status"></div>`);

    assert(UIMGrowingLoader.color("red").color == "red"); 
    assert(UIMGrowingLoader.id("test2").color("red") == `<div id="test2" class="spinner-border text-red" role="status"></div>`); 

    assert(UIMGrowingLoader.size("small").size == "small"); 
    assert(UIMGrowingLoader.id("test3").size("small") == ""); 

    assert(UIMGrowingLoader.style("grow").style == "grow");
    assert(UIMGrowingLoader.id("test4").style("grow") == `<div id="test4" class="spinner-grow" role="status"></div>`);

    assert(UIMGrowingLoader.embedded(true).embedded); 
    assert(UIMGrowingLoader.id("test5").embedded(true) == `<span id="test5" class="spinner-border" role="status"></span>`); 
  }
}
