module uim.controls.navigations.usermenu;

@safe: 
import uim.controls;

class DUIMUsermenuControl : DUIMControl {
  this() { super(); }

  mixin(OProperty!("DH5Obj[]", "menuItems"));
  mixin(OProperty!("string", "imagePath"));
  mixin(OProperty!("string", "title"));
  mixin(OProperty!("string", "subtitle"));
  mixin(OProperty!("bool", "showInfo"));

  override void initialize() {
    super.initialize;
  }

  override DH5Obj[] toH5(STRINGAA options = null) {
    return [
      H5Div(["nav-item dropdown"], 
        H5A(["nav-link d-flex lh-1 text-reset p-0 show"], ["href":"#", "data-bs-toggle":"dropdown", "aria-label":"Open user menu", "aria-expanded":"false"],
          imagePath ? H5Span(["avatar avatar-sm"], ["style":"background-image: url("~imagePath~")"]) : null,
          showInfo ? H5Div(["d-none d-xl-block ps-2"],
            H5Div(title),
            H5Div(["mt-1 small text-muted"], subtitle)
          ) : null
        ),
        H5Div(["dropdown-menu dropdown-menu-end dropdown-menu-arrow show"], ["data-bs-popper":"none"], menuItems))].toH5;
  }
}
auto UIMUsermenuControl() { return new DUIMUsermenuControl; }