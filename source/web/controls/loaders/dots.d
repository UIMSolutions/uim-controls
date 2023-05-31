module web.controls.loaders.dots;

@safe: 
import web.controls;

class DUIMDotsLoaderControl : DUIMLoaderControl {
  mixin(ControlThis!("UIMDotsLoader"));

  override void initialize() {
    super.initialize;

    this
      .classes("animated-dots")
      .attributes(["role":"status"])
      .style("dots");
  }

   override void beforeH5(STRINGAA options = null) {
    super.beforeH5(options);

    switch (this.size) {
      case "xxl": myClasses ~= "display-1"; break;
      case "extraLarge", "xl": myClasses ~= "display-2"; break;
      case "large", "lg": myClasses ~= "display-3"; break;
      case "medium", "md": myClasses ~= "display-4"; break;
      case "small", "sm": myClasses ~= "display-5"; break;
      case "extraSmall", "xs": myClasses ~= "display-6"; break;
      default: break;
    }
  }
}
mixin(ControlCalls!("UIMDotsLoaderControl", "DUIMDotsLoaderControl"));
mixin(ControlCalls!("UIMDotsLoader", "DUIMDotsLoaderControl"));

version(test_uim_controls) { unittest {
    assert(UIMDotsLoader);
    assert(UIMDotsLoader.noId == `<div class="animated-dots" role="status"></div>`);

    assert(UIMDotsLoader.color("red").color == "red"); 
    assert(UIMDotsLoader.noId.color("red") == `<div class="animated-dots text-red" role="status"></div>`); 

    assert(UIMDotsLoader.size("small").size == "small"); 
    assert(UIMDotsLoader.noId.size("small") == `<div class="animated-dots display-5" role="status"></div>`); 

    assert(UIMDotsLoader.embedded(true).embedded); 
    assert(UIMDotsLoader.noId.embedded(true) == `<span class="animated-dots" role="status"></span>`); 
  }
}
