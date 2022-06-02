module uim.controls.tabs.pane;

@safe:
import uim.controls;

class DTabPaneControl : DUIMControl {
  this() { super(); }

  mixin(OProperty!("bool", "disabled"));
  mixin(OProperty!("bool", "active"));
  mixin(OProperty!("string", "title"));
  mixin(OProperty!("string", "key"));
  mixin(OProperty!("string", "path"));

  mixin(OProperty!("bool", "showHeader"));
  mixin(OProperty!("DH5Obj[]", "header"));

  mixin(OProperty!("bool", "showFooter"));
  mixin(OProperty!("DH5Obj[]", "footer"));

  DH5Obj[] paneHeader(STRINGAA options) {
    return header;
  }

  DH5Obj[] paneContent(STRINGAA options) {
    return content;
  }

  DH5Obj[] paneFooter(STRINGAA options) {
    return footer;
  }

  override DH5Obj[] toH5(STRINGAA options = null) { 
    auto card = BS5Card;
    if (showHeader) card.header(paneHeader(options));
    card(paneContent(options));
    if (showFooter) card.footer(paneFooter(options));

    return [card].toH5;
  }
}
auto TabPaneControl() { return new DTabPaneControl; };
