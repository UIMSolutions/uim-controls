module uim.controls.links.link;

@safe: 
import uim.controls;

// A LinkControl is a hyperlink control which is used to navigate to other pages or to trigger actions.
class DUIMLinkControl : DUIMContainerControl {
  mixin(ControlThis!("UIMLinkControl"));

  override void initialize() {
    super.initialize;
  }

  override DH5Obj[] toH5(STRINGAA options = null) {
    auto results = super.toH5(options);

    return results~
      H5Div(myId, myClasses, myAttributes, myContent);
  }
}
mixin(ControlCalls!("UIMLinkControl", "DUIMLinkControl"));
mixin(ControlCalls!("UIMLink", "DUIMLinControl"));

version(test_uim_controls) {
  unittest {
    assert(UIMLink);

    auto control = UIMLink;
  }
}


/*
Ein Hyperlink-Steuerelement zum Navigieren zu anderen Apps und Webseiten oder zum Auslösen von Aktionen.

 Überblick
 Das Link-Control ist ein anklickbares Textelement, das so visualisiert wird, dass es sich vom Standardtext abhebt.  Beim Hover ändert es seinen Stil in unterstrichenen Text, um dem Benutzer zusätzliches Feedback zu geben.

 Verwendungszweck
 Sie können den Link aktivieren oder deaktivieren.

 Um eine visuelle Hierarchie in großen Linklisten zu erstellen, können Sie die weniger wichtigen Links dezent oder die wichtigeren hervorheben.

 Um anzugeben, wo der verknüpfte Inhalt geöffnet wird, können Sie die Eigenschaft target verwenden.

*/
