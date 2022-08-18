module uim.controls.loaders.dots;

@safe: 
import uim.controls;

class DUIMDotsLoaderControl : DUIMLoaderControl {
  mixin(ControlThis!("UIMDotsLoader"));

  override void initialize() {
    super.initialize;

    this
      .classes("animated-dots")
      .style("dots");
  }

   override void beforeH5(STRINGAA options = null) {
    super.beforeH5(options);

    switch (this.size) {
      case "xxl": myClasses ~= "display-1"; break;
      case "xl": myClasses ~= "display-2"; break;
      case "lg": myClasses ~= "display-3"; break;
      case "md": myClasses ~= "display-4"; break;
      case "sm": myClasses ~= "display-5"; break;
      case "xs": myClasses ~= "display-6"; break;
      default: break;
    }
  }
}
mixin(ControlCalls!("UIMDotsLoaderControl", "DUIMDotsLoaderControl"));
mixin(ControlCalls!("UIMDotsLoader", "DUIMDotsLoaderControl"));

version(test_uim_controls) { unittest {
    assert(UIMDotsLoader);
    assert(UIMDotsLoader.noId == `<div class="spinner-border" role="status"></div>`);

    assert(UIMDotsLoader.color("red").color == "red"); 
    assert(UIMDotsLoader.noId.color("red") == `<div class="spinner-border text-red" role="status"></div>`); 

    assert(UIMDotsLoader.size("small").size == "small"); 
    // writeln(UIMDotsLoader.id("test3").size("small")); 

    assert(UIMDotsLoader.style("grow").style == "grow");
    assert(UIMDotsLoader.noId.style("grow") == `<div class="spinner-grow" role="status"></div>`);

    assert(UIMDotsLoader.embedded(true).embedded); 
    assert(UIMDotsLoader.noId.embedded(true) == `<span class="spinner-border" role="status"></span>`); 
  }
}
