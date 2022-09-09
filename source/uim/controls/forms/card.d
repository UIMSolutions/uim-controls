module uim.controls.forms.card;

@safe: 
import uim.controls;

class DUIMFormCardControl : DUIMControl {
  mixin(ControlThis!("UIMFormCardControl"));

  override void initialize() {
    super.initialize;

    this
      .addClasses("card");
  }

  override DH5Obj[] toH5(STRINGAA options = null) {
    super.toH5(options);

    return [H5Form(myId, myClasses, myAttributes, myContent)].toH5;
  }
}
mixin(ControlCalls!("UIMFormCardControl", "DUIMFormCardControl"));
mixin(ControlCalls!("UIMForm", "DUIMFormCardControl"));

version(test_uim_controls) { unittest {
  assert(UIMForm);
  assert(UIMForm.noId == `<form class="card form"></form>`);
  assert(UIMForm.noId.action("/server/test") == `<form class="card form" action="/server/test"></form>`);
  assert(UIMForm.noId.method("post") == `<form class="card form" method="post"></form>`);
}}
