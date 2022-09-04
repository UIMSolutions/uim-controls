module uim.controls.invoices.invoice;

@safe: 
import uim.controls;

class DUIMInvoiceControl : DUIMControl {
  mixin(ControlThis!("UIMInvoiceControl"));

  override void initialize() {
    super.initialize;

    this
      .classes(["invoice"]);
  }

  override void beforeH5(STRINGAA options = null) {
    super.beforeH5(options);
  }

  override DH5Obj[] toH5(STRINGAA options = null) {
    super.toH5(options);

    return [H5Div(myId, myClasses, myAttributes, myContent)].toH5;
  }
}
mixin(ControlCalls!("UIMInvoiceControl", "DUIMInvoiceControl"));
mixin(ControlCalls!("UIMInvoice", "DUIMInvoiceControl"));

version(test_uim_controls) { unittest {
  assert(UIMInvoice);
  assert(UIMInvoice.noId == `<div class="invoice"></div>`);
}}