module uim.controls.tabs.tab;

@safe: 
import uim.controls;

class DUIMTabControl : DUIMControl {
  mixin(ControlThis!("UIMTab"));

  mixin(OProperty!("DH5Obj[]", "cards"));
  mixin(OProperty!("string[]", "tabClasses"));
  mixin(OProperty!("string[]", "cardClasses"));
  mixin(OProperty!("string", "title"));
  mixin(OProperty!("DUIMTabPaneControl[]", "panes"));
  O panes(this O)(DUIMTabPaneControl[] newPanes...) {
    this.panes(newPanes.dup);
    return cast(O)this;
  }

  mixin(OProperty!("bool", "reverse"));
  mixin(OProperty!("bool", "alternative"));

  override void initialize() {
    super.initialize;

    this
      .id("tab-%s".format(uniform(0, 1000000)));
  }

  auto activePane() {
    foreach(pane; panes) {
      if (pane.active) return pane;
    }
    return null;
  }

  override void beforeH5(STRINGAA options = null) {
    super.beforeH5(options);

  }

  override DH5Obj[] toH5(STRINGAA options = null) {
    auto results = super.toH5(options);

    if ((panes.length > 0) && (activePane is null)) {
      panes.each!(pane => pane.active(false));
      panes[0].active(true);
    }

    return results~
      BS5Card(myId, myClasses, myAttributes, 
        H5Ul(["nav nav-tabs"]~tabClasses~(reverse ? ["flex-row-reverse"] : null)~(alternative ? ["nav-tabs-alt"] : null), ["data-bs-toggle":"tabs", "role":"tablist"], 
          panes.map!(pane => pane.tabHeader).array
        ),
        H5Div(["card-body"],
          H5Div(["tab-content"],
            panes.map!(pane => !pane.isDropdown ? pane.toH5 : null).join
        )));
  }
}
mixin(ControlCalls!("UIMTabControl", "DUIMTabControl"));
mixin(ControlCalls!("UIMTab", "DUIMTabControl"));

version(test_uim_controls) { unittest {
  assert(UIMTab);

  mixin(TestControlBooleanAttributes!("UIMTab", [
    "reverse", "alternative"]));  
}}

