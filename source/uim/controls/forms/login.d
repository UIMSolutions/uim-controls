module uim.controls.forms.login;

@safe: 
import uim.controls;

class DUIMFormLoginControl : DUIMFormCardControl {
  mixin(ControlThis!("UIMFormLoginControl"));

  override void initialize() {
    super.initialize;

    this
      .id("loginForm")
      .addClasses(["form-login"])
      .action("/login_action")
      .method("post");
  }

  override void beforeH5(STRINGAA options = null) {
    super.beforeH5(options);

    myClasses ~= "card-md";

    myContent = [
      UIMCardBody(
        H5H2(["card-title", "text-center", "mb-4"], "Anmeldung"),
        H5Div(["mb-3"], 
          H5Label(["form-label"], H5String("Kennung"),
            (showLostAccount ? H5Span(["form-label-description"], 
              H5A(["href":"/lostaccount"], "Kennung vergessen?")) : null)),
          UIMTextInput.id("accountName").name("accountName").placeholder("Bitte die Kennung eingeben")
            .invalidText("Bitte eine gültige Kennung eingeben")
        ),
        H5Div(["form-footer"], 
          BS5ButtonSubmit(["btn-primary w-100"], "Zur Passworteingabe")
        )
      )
    ].toH5;
  }
}
mixin(ControlCalls!("UIMFormLoginControl", "DUIMFormLoginControl"));
mixin(ControlCalls!("UIMFormLogin", "DUIMFormLoginControl"));

version(test_uim_controls) { unittest {
  assert(UIMFormLogin);
  assert(UIMFormLogin.noId == `<div class="card-login form-login"></div>`);
}}
