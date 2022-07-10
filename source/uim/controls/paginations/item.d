module uim.controls.paginations.item;

@safe:
import uim.controls;

class DUIMPageItemControl : DUIMControl {
  mixin(ControlThis!("UIMPageItemControl"));

/*   mixin(OProperty!("bool", "active"));
  mixin(OProperty!("bool", "disabled")); */
  mixin(OProperty!("string", "link"));

  override void initialize() {
    super.initialize;
  }

  override void beforeH5(STRINGAA options = null) {
    super.beforeH5(options);    
  }

  override DH5Obj[] toH5(STRINGAA options = null) {
    auto results = super.toH5(options);

    return results~
      BS5PageItem(myId, myClasses, myAttributes, 
        BS5PageLink(["href": link], myContent))
      .active(active)
      .disabled(disabled);
  }
}
mixin(ControlCalls!("UIMPageItemControl", "DUIMPageItemControl"));
mixin(ControlCalls!("UIMPageItem", "DUIMPageItemControl"));

version(test_uim_controls) {
  unittest {
    // TODO
  }
}

