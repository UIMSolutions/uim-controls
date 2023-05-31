module web.controls.forms.card;

@safe: 
import web.controls;

class DUIMFormCardControl : DUIMFormControl {
  mixin(ControlThis!("UIMFormCardControl"));

  override void initialize() {
    super.initialize;

    this
      .addClasses("card");
  }
}
mixin(ControlCalls!("UIMFormCardControl", "DUIMFormCardControl"));
mixin(ControlCalls!("UIMFormCard", "DUIMFormCardControl"));

version(test_uim_controls) { unittest {
  assert(UIMFormCard);
  assert(UIMFormCard.noId == `<form class="card form"></form>`);
  assert(UIMFormCard.noId.action("/server/test") == `<form class="card form" action="/server/test"></form>`);
  assert(UIMFormCard.noId.method("post") == `<form class="card form" method="post"></form>`);
}}
