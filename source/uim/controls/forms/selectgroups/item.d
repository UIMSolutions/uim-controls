module uim.controls.forms.selectgroups.item;

@safe: 
import uim.controls;

class DUIMSelectGroupItemControl : DUIMControl {
  mixin(ControlThis!("UIMSelectGroupItemControl"));

  mixin(OProperty!("DUIMControl", "input"));
  mixin(OProperty!("DUIMControl", "label"));
  
  override void initialize() {
    super.initialize;

    this
      .classes(["form-selectgroup-item"]);
  }

  override void beforeH5(STRINGAA options = null) {
    super.beforeH5(options);
  }

  override DH5Obj[] toH5(STRINGAA options = null) {
    super.toH5(options);

    return [H5Label(myId, myClasses, myAttributes, myContent~(input ? input.toH5 : null)~(label ? label.toH5 : null))].toH5;
  }
}
mixin(ControlCalls!("UIMSelectGroupItemControl", "DUIMSelectGroupItemControl"));
mixin(ControlCalls!("UIMSelectGroupItem", "DUIMSelectGroupItemControl"));

version(test_uim_controls) { unittest {
    assert(UIMSelectGroupItem);

    auto control = UIMSelectGroupItem;
  }
}
