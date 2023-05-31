module web.controls.datagrids.datagrid;

@safe: 
import web.controls;

class DUIMDatagridControl : DUIMDivControl {
  mixin(ControlThis!("UIMDatagridControl"));

  override void initialize() {
    super.initialize;

    this
      .classes(["datagrid"]);
  }

  override void beforeH5(STRINGAA options = null) {
    super.beforeH5(options);
  }
}
mixin(ControlCalls!("UIMDatagridControl", "DUIMDatagridControl"));
mixin(ControlCalls!("UIMDatagrid", "DUIMDatagridControl"));

version(test_uim_controls) { unittest {
  assert(UIMDatagrid);
  assert(UIMDatagrid.noId == `<div class="datagrid"></div>`);
}}