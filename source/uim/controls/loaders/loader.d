module uim.controls.loaders.loader;

@safe: 
import uim.controls;

class DUIMLoaderControl : DUIMControl {
  mixin(ControlThis!("UIMLoader"));

  mixin(OProperty!("string", "color")); 
  mixin(OProperty!("string", "size")); // normal, small
  mixin(OProperty!("string", "style")); // border , grow
  mixin(OProperty!("bool", "embedded")); 

  override void initialize() {
    super.initialize;

    this
      .attributes(["role":"status"])
      .size("normal")
      .style("border");
  }

  override void beforeH5(STRINGAA options = null) {
    super.beforeH5(options);

    if (color) { myClasses ~= "text-"~color.toLower; }
    switch (this.style) {
      case "grow": myClasses ~= "spinner-grow"; break;
      case "dots": myClasses ~= "animated-dots"; break;
      default: myClasses ~= "spinner-border"; break;
    }
  }

  override DH5Obj[] toH5(STRINGAA options = null) {
    auto results = super.toH5(options);

    return [
      (embedded ? H5Span(myId, myClasses, myAttributes, myContent)
                : H5Div(myId, myClasses, myAttributes, myContent))].toH5;  
  }
}
mixin(ControlCalls!("UIMLoaderControl", "DUIMLoaderControl"));
mixin(ControlCalls!("UIMLoader", "DUIMLoaderControl"));

version(test_uim_controls) { unittest {
  assert(UIMLoader);
  assert(UIMLoader.id("test1") == `<div id="test1" class="spinner-border" role="status"></div>`);

  assert(UIMLoader.color("red").color == "red"); 
  assert(UIMLoader.id("test2").color("red") == `<div id="test2" class="spinner-border text-red" role="status"></div>`); 

  assert(UIMLoader.size("small").size == "small"); 

  assert(UIMLoader.style("grow").style == "grow");
  assert(UIMLoader.id("test4").style("grow") == `<div id="test4" class="spinner-grow" role="status"></div>`);

  assert(UIMLoader.embedded(true).embedded); 
  assert(UIMLoader.id("test5").embedded(true) == `<span id="test5" class="spinner-border" role="status"></span>`); 
}}
