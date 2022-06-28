module uim.controls.tabs.tab;

@safe: 
import uim.controls;

class DUIMTabControl : DUIMControl {
  this() { super(); }

  mixin(OProperty!("DH5Obj[]", "cards"));
  mixin(OProperty!("string[]", "tabClasses"));
  mixin(OProperty!("string[]", "cardClasses"));
  mixin(OProperty!("string", "title"));
  mixin(OProperty!("DUIMTabPaneControl[]", "panes"));
  mixin(OProperty!("bool", "reverse"));
  mixin(OProperty!("bool", "alternative"));

  auto activePane() {
    foreach(pane; panes) {
      if (pane.active) return pane;
    }
    return null;
  }

  override DH5Obj[] toH5(STRINGAA options = null) {
    DH5Obj[] results = super.toH5(options);

    string myId = this.id.dup;
    auto myClasses = this.classes.dup;
    auto myAttributes = this.attributes.dup;

    if ((panes.length > 0) && (activePane is null)) {
      panes.each!(pane => pane.active(false));
      panes[0].active(true);
    }

    return [
      BS5Card(myId, myClasses, myAttributes, 
        H5Ul(["nav nav-tabs"]~tabClasses~(reverse ? ["flex-row-reverse"] : null)~(alternative ? ["nav-tabs-alt"] : null), ["data-bs-toggle":"tabs", "role":"tablist"], 
          panes.map!(pane => pane.tabHeader).array
        ),
        H5Div(["card-body"],
          H5Div(["tab-content"],
            panes.map!(pane => !pane.isDropdown ? pane.toH5 : null).join
        )))].toH5;
  }
}
auto UIMTabControl() { return new DUIMTabControl; }
