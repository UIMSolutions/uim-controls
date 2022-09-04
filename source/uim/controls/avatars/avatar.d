module uim.controls.avatars.avatar;

@safe: 
import uim.controls;

class DUIMAvatarControl : DUIMControl {
  mixin(ControlThis!("UIMAvatarControl"));

  override void initialize() {
    super.initialize;

    this
      .classes(["avatar"]);
  }

  mixin(OProperty!("string", "image"));
  mixin(OProperty!("string", "style"));
  mixin(OProperty!("string", "icon"));
  mixin(OProperty!("string", "text"));
  mixin(OProperty!("string", "color"));
  mixin(OProperty!("string", "size")); // valid values are xl, lg, md, sm, xs
  mixin(OProperty!("string", "shape")); // rounded, rounded-circle, rounded-0, rounded-3, ...
  mixin(OProperty!("string", "status")); 
  mixin(OProperty!("string", "statusValue")); 
  O status(this O)(string color, string text) {
    this.status(color).statusValue(text);
    return cast(O)this;
  } 

  O icon(this O)(string iconName, string[] iconClasses = null, STRINGAA iconAttributes = null) {
    this.content(this.content~tablerIcon(iconName, iconClasses, iconAttributes));
    return cast(O)this;
  }

  override void beforeH5(STRINGAA options = null) {
    super.beforeH5(options);

  }

  override DH5Obj[] toH5(STRINGAA options = null) {
    DH5Obj[] results = super.toH5(options);

    if (color) { myClasses ~= "bg-"~color.toLower; }
    if (shape) { myClasses ~= this.shape; }
    if (size)  { myClasses ~= "avatar-"~this.size; }
    if (style)  { myClasses ~= style; }

    if (image) { myAttributes["style"] = "background-image: url("~image~")"; }
    if (icon)  { myContent ~= H5String(tablerIcon(icon)); }
    if (text)  { myContent ~= H5String(text); }
    if (status){ myContent ~= BS5Badge(["bg-"~status], statusValue); }

    return [H5Span(myId, myClasses, myAttributes, myContent)].toH5;
  }
} 
mixin(ControlCalls!("UIMAvatarControl", "DUIMAvatarControl"));
mixin(ControlCalls!("UIMAvatar", "DUIMAvatarControl"));

version(test_uim_controls) { unittest {
    assert(UIMAvatar);
    assert(UIMAvatar.noId == `<span class="avatar"></span>`);

    mixin(TestControlStringAttributes!("UIMAvatar", 
      ["image", "style", "icon", "text", "color", "size", "shape", "status", "statusValue"]));

    assert(UIMAvatar.noId.image("testPath") == `<span class="avatar" style="background-image: url(testPath)"></span>`);
    assert(UIMAvatar.noId.style("pill") == `<span class="avatar pill"></span>`);
    assert(UIMAvatar.noId.icon("moon") == `<span class="avatar">`~tablerIcon("moon")~`</span>`);
    assert(UIMAvatar.noId.text("testText") == `<span class="avatar">testText</span>`);
    assert(UIMAvatar.noId.color("red") == `<span class="avatar bg-red"></span>`);
    assert(UIMAvatar.noId.size("sm") == `<span class="avatar avatar-sm"></span>`);
    assert(UIMAvatar.noId.shape("rounded") == `<span class="avatar rounded"></span>`);
    assert(UIMAvatar.noId.status("red") == `<span class="avatar">`~BS5Badge(["bg-red"]).toString~`</span>`);
  }
}