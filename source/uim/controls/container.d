module uim.controls.container;

@safe:
import uim.controls;

interface IContainer {
  O items(this O)(DUIMControl[] items);
  DUIMControl[] items(this O)();
}

class DUIMContainer : DUIMControl, IContainer {
  this() { initialize; }

  mixin(OProperty!("DUIMControl[]", "items"));

  override void beforeH5(STRINGAA options = null) {
    super.beforeH5(options);

    myContent ~= items.map!(item => item.toH5(options).toH5).join;
  }
}