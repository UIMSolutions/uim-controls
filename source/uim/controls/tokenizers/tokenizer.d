module uim.controls.tokenizers.tokenizer;

@safe: 
import uim.controls;

class DUIMTokenizerControl : DUIMControl {
  mixin(ControlThis!("UIMTokenizerControl"));

  override void initialize() {
    super.initialize;
  }

  override DH5Obj[] toH5(STRINGAA options = null) {
    auto results = super.toH5(options);

    return results~
      H5Div(myId, myClasses, myAttributes, myContent);
  }
}
mixin(ControlCalls!("UIMTokenizerControl", "DUIMTokenizerControl"));
mixin(ControlCalls!("UIMTokenizer", "DUIMTokenizerControl"));

version(test_uim_controls) { unittest {
    assert(UIMTokenizer);

    auto control = UIMTokenizer;
  }
}
