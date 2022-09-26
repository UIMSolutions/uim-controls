module uim.controls.navs.links.link;

@safe: 
import uim.controls;

class DUIMNavLinkControl : DUIMLinkControl {
  mixin(ControlThis!("UIMNavLinkControl"));

  override void initialize() {
    super.initialize;

    this
      .classes("nav-link");
  }

  mixin(OProperty!("string", "icon"));
  mixin(OProperty!("string", "title"));
  mixin(OProperty!("string", "badgeColor"));
  mixin(OProperty!("string", "badgeValue"));

  override void beforeH5(STRINGAA options = null) {
    super.beforeH5(options);

    if (icon) {
      myContent ~= UIMNavLinkIcon.icon(icon);
    }
    if (title) {
      if (icon) myContent ~= H5String(" ");
      myContent ~= H5String(title);
    }
    if (badgeColor.length > 0 || badgeValue.length > 0) {
      myContent ~= UIMBadge.color(badgeColor)(badgeValue);
    }
  }
}
mixin(ControlCalls!("UIMNavLinkControl", "DUIMNavLinkControl"));
mixin(ControlCalls!("UIMNavLink", "DUIMNavLinkControl"));

version(test_uim_controls) { unittest {
  assert(UIMNavLink);
  assert(UIMNavLink.noId == `<a class="nav-link"></a>`);
}}
