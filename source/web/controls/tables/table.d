module uim.controls.tables.table;

@safe: 
import uim.controls;

class DUIMTableControl : DUIMControl {
  mixin(ControlThis!("UIMTable"));

  mixin(AddContent!("Header", "UIMTableHeaderControl"));
  mixin(AddContent!("Body", "UIMTableBodyControl"));  
  mixin(AddContent!("Footer", "UIMTableFooterControl"));

  mixin(OProperty!("bool", "bordered"));
  mixin(OProperty!("bool", "borderless"));
  mixin(OProperty!("bool", "compact"));
  mixin(OProperty!("bool", "dark"));
  mixin(OProperty!("bool", "hover"));
  mixin(OProperty!("bool", "striped"));
  mixin(OProperty!("bool", "nowrap"));
  mixin(OProperty!("string", "color"));
  mixin(OProperty!("string", "responsive"));

  override void initialize() {
    super.initialize;

    this
      .classes(["table"]);
  }

  override void beforeH5(STRINGAA options = null) { 
      super.beforeH5(options);

      if (bordered) myClasses ~= ["table-bordered"];
      if (borderless) myClasses ~= ["table-borderless"];
      if (compact) myClasses ~= ["table-compact"];
      if (dark) myClasses ~= ["table-dark"];
      if (color) myClasses ~= ["table-"~color];
      if (hover) myClasses ~= ["table-hover"];
      if (nowrap) myClasses ~= ["table-nowrap"];
      if (striped) myClasses ~= ["table-striped"];
  }

  // Rendering
  override DH5Obj[] toH5(STRINGAA options = null) {
    super.toH5(options);

    if (responsive)
      return [
        H5Div(["table-responsive"~(responsive == "all" ? "" : "-"~responsive)], H5Table(myId, myClasses, myAttributes, myContent))].toH5;
      
    return [
      H5Table(myId, myClasses, myAttributes, myContent)].toH5;
  }
}
mixin(ControlCalls!("UIMTableControl", "DUIMTableControl"));
mixin(ControlCalls!("UIMTable", "DUIMTableControl"));

version(test_uim_controls) { unittest {
  assert(UIMTable);
  assert(UIMTable.noId == `<table class="table"></table>`);
}}