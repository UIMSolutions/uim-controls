module uim.controls.tokenizers.tokenizer;

@safe: 
import uim.controls;

class DUIMTokenizerControl : DUIMControl {
  mixin(ControlThis!("UIMTokenizerControl"));

  override void initialize() {
    super.initialize;

    this
      .classes("tokenizer");
  }

  override DH5Obj[] toH5(STRINGAA options = null) {
    super.toH5(options);

    return [H5Div(myId, myClasses, myAttributes, myContent)].toH5;
  }
}
mixin(ControlCalls!("UIMTokenizerControl", "DUIMTokenizerControl"));
mixin(ControlCalls!("UIMTokenizer", "DUIMTokenizerControl"));

version(test_uim_controls) { unittest {
  assert(UIMTokenizer);
  assert(UIMTokenizer.noId == `<div class="tokenizer"></div>`);
}}
