module uim.controls.container;

@safe:
import uim.controls;

interface IContainer {
  O items(this O)(DUIMControl[] items);
  O items(this O)(DUIMControl[] items...);
  DUIMControl[] items(this O)();
  O addItems(this O)(DUIMControl[] items...);
}

class DUIMContainerControl : DUIMControl, IContainer {
  this() { initialize; }

  mixin(OProperty!("string", "contentPosition"));

  protected DUIMControl[] _items;
  auto items() { return _items; }
  O items(this O)(DUIMControl[] newItems...) {
    this.items(newItems);
    return cast(O)this; }
  O items(this O)(DUIMControl[] newItems) {
    newItems.each!(item => item.parent(this));
    _items = newItems;
    return cast(O)this; }

  O addItems(this O)(DUIMControl[] newItems...) {
    this.addItems(newItems);
    return cast(O)this; }
  O addItems(this O)(DUIMControl[] newItems) {
    newItems.each!(item => item.parent(this));
    _items ~= newItems;
    return cast(O)this; }

  override void beforeH5(STRINGAA options = null) {
    super.beforeH5(options);

    switch(contentPosition) {
      case "bottom":
        myContent = items.map!(item => item.toH5(options).toH5).join~content;
        break;
      default:
        myContent = content~items.map!(item => item.toH5(options).toH5).join;
        break;
    }
  }
}

version(test_uim_controls) {
  unittest {
    // TODO
  }
}
