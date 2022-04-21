module uim.controls.avatars.avatar;

@safe: 
import uim.controls;

class DUIMAvatarControl : DUIMControl {
  this() { super(); }

  override void initialize() {
    super.initialize;

    this.classes(["avatar"]);
  }

  mixin(OProperty!("string", "bgImage"));
  mixin(OProperty!("string", "bgColor"));
  mixin(OProperty!("string", "size")); // valid values are xl, lg, md, sm, xs
  mixin(OProperty!("string", "shape")); // rounded, rounded-circle, rounded-0, rounded-3, ...
  mixin(OProperty!("string ", "status")); 

  O icon(this O)(string iconName, string[] iconClasses = null, STRINGAA iconAttributes = null) {
    this.content(this.content~tablerIcon(iconName, iconClasses, iconAttributes));
    return cast(O)this;
  }

  override DH5Obj[] toH5(STRINGAA options = null) {
    DH5Obj[] results = super.toH5(options);

    if (bgColor || "avatarBackgroundColor" in options) { bufClasses ~= "bg-"~options.get("avatarBackgroundColor", this.shape); }
    if (shape || "avatarShape" in options) { bufClasses ~= options.get("avatarShape", this.shape); }
    if (size || "avatarSize" in options) { bufClasses ~= "avatar-"~options.get("avatarSize", this.size); }

    auto bufAttributes = this.attributes.dup;
    if (bgImage || "avatarBackgroundImage" in options) {
      bufAttributes["style"] = "background-image:url("~options.get("avatarBackgroundImage", bgImage)~")";
      results ~= H5Span(bufId, bufClasses, bufAttributes, 
        (status ? H5Span(["badge", "bg-"~status]) : null)~content);
    } else {
      results ~= H5Span(bufId, bufClasses, bufAttributes, (status ? H5Span(["badge", "bg-"~status]) : null)~content);
    }

    return results;
  }
} 
auto UIMAvatarControl() { return new DUIMAvatarControl; }

version(test_uim_controls) {
  unittest {
    assert(UIMAvatarControl);
}}
