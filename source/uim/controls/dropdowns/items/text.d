module uim.controls.dropdowns.items.text;

@safe: 
import uim.controls;

class DUIMDropdownTextControl : DUIMDropdownItemControl {
  mixin(ControlThis!("UIMDropdownText"));

  override void initialize() {
    super.initialize;
  }

  override void beforeH5(STRINGAA options = null) {
    super.beforeH5(options);
  }

  override DH5Obj[] toH5(STRINGAA options = null) {
    super.toH5(options);

    if (style == "list") {
      return [H5Li(H5Div(["p-3"], ["style":"max-width: 200px;"], myContent))].toH5;
    }
    return [H5Div(["p-3"], ["style":"max-width: 200px;"], myContent)].toH5;
  }
}
mixin(ControlCalls!("UIMDropdownTextControl", "DUIMDropdownTextControl"));
mixin(ControlCalls!("UIMDropdownText", "DUIMDropdownTextControl"));

version(test_uim_controls) { unittest {
    writeln(UIMDropdownText);
    assert(UIMDropdownText);

    auto control = UIMDropdownText;
    // TODO
  }
}
