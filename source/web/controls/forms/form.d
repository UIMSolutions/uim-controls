module web.controls.forms.form;

@safe: 
import web.controls;

class DUIMFormControl : DUIMControl {
  mixin(ControlThis!("UIMFormControl"));

  override void initialize() {
    super.initialize;

    this
      .classes("form");
  }

  mixin(OProperty!("string", "method"));
  mixin(OProperty!("string", "action"));
  mixin(OProperty!("string", "fields"));
  mixin(OProperty!("DUIMFormHandlerControl", "handler"));

  override void beforeH5(STRINGAA options = null) {
    super.beforeH5(options);

    if (action) myAttributes["action"] = this.action;
    if (method) myAttributes["method"] = this.method;  
  }

  override DH5Obj[] toH5(STRINGAA options = null) {
    super.toH5(options);

    return [H5Form(myId, myClasses, myAttributes, myContent)].toH5;
  }
}
mixin(ControlCalls!("UIMFormControl", "DUIMFormControl"));
mixin(ControlCalls!("UIMForm", "DUIMFormControl"));

version(test_uim_controls) { unittest {
  assert(UIMForm);
  assert(UIMForm.noId == `<form class="form"></form>`);
}}
