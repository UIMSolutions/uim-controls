module uim.controls.datagrids.item;

@safe: 
import uim.controls;

class DUIMDatagridItemControl : DUIMDivControl {
  mixin(ControlThis!("UIMDatagridItem"));

  mixin(OProperty!("string", "title"));
  mixin(OProperty!("string", "titleColor"));
  mixin(OProperty!("string", "titlePosition"));

  override void initialize() {
    super.initialize;

    this
      .classes(["datagrid-item"]);
  }

  override void beforeH5(STRINGAA options = null) {
    super.beforeH5(options);

    switch(titlePosition) {
      case "bottom": 
        myContent = 
          [(content ? UIMDatagridContent(content) : null),
          (title ? UIMDatagridTitle(titleColor ? ["text-"~titleColor] : null, title) : null)];
          break;
      default:
        myContent = 
          [(title ? UIMDatagridTitle(titleColor ? ["text-"~titleColor] : null, title) : null),
          (content ? UIMDatagridContent(content) : null)];
          break;
    }
  }

}
mixin(ControlCalls!("UIMDatagridItemControl", "DUIMDatagridItemControl"));
mixin(ControlCalls!("UIMDatagridItem", "DUIMDatagridItemControl"));

version(test_uim_controls) { unittest {
  assert(UIMDatagridItem);
  assert(UIMDatagridItem.noId == `<div class="datagrid-item"></div>`);
}}
