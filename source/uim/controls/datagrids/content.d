module uim.controls.datagrids.content;

@safe: 
import uim.controls;

class DUIMDatagridContentControl : DUIMControl {
  mixin(ControlThis!("UIMDatagridContentControl"));

  override void initialize() {
    super.initialize;

    this
      .classes(["datagrid-content"]);
  }

  override DH5Obj[] toH5(STRINGAA options = null) {
    auto results = super.toH5(options);

    return results;  
  }
}
mixin(ControlCalls!("UIMDatagridContentControl", "DUIMDatagridContentControl"));
mixin(ControlCalls!("UIMDatagridContent", "DUIMDatagridContentControl"));

version(test_uim_controls) { unittest {
    assert(UIMDatagridContent);
    assert(UIMDatagridContent.noId == `<div class="datagrid-content"></div>`);
  }
}
