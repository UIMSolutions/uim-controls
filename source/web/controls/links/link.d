module web.controls.links.link;

@safe: 
import web.controls;

// A LinkControl is a hyperlink control which is used to navigate to other pages or to trigger actions.
class DUIMLinkControl : DUIMControl {
  mixin(ControlThis!("UIMLinkControl"));

  mixin(OProperty!("string", "link"));

  override void initialize() {
    super.initialize;

    this
      .classes("link");
  }

  override void beforeH5(STRINGAA options = null) {
    super.beforeH5(options);

    if (link) myAttributes["href"] = link;
  }

  override DH5Obj[] toH5(STRINGAA options = null) {
    super.toH5(options);

    return [H5A(myId, myClasses, myAttributes, myContent)].toH5;
  }
}
mixin(ControlCalls!("UIMLinkControl", "DUIMLinkControl"));
mixin(ControlCalls!("UIMLink", "DUIMLinkControl"));

version(test_uim_controls) { unittest {
  assert(UIMLink);
  assert(UIMLink.noId == `<a class="link"></a>`);
  assert(UIMLink.link("#").noId == `<a class="link" href="#"></a>`);
}}


/*
Ein Hyperlink-Steuerelement zum Navigieren zu anderen Apps und Webseiten oder zum Auslösen von Aktionen.

 Überblick
 Das Link-Control ist ein anklickbares Textelement, das so visualisiert wird, dass es sich vom Standardtext abhebt.  Beim Hover ändert es seinen Stil in unterstrichenen Text, um dem Benutzer zusätzliches Feedback zu geben.

 Verwendungszweck
 Sie können den Link aktivieren oder deaktivieren.

 Um eine visuelle Hierarchie in großen Linklisten zu erstellen, können Sie die weniger wichtigen Links dezent oder die wichtigeren hervorheben.

 Um anzugeben, wo der verknüpfte Inhalt geöffnet wird, können Sie die Eigenschaft target verwenden.

*/
