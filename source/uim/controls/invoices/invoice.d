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
    auto results = super.toH5(options);

    return results~
      BS5CardHeader(myId, myClasses, myAttributes, myContent);  
  }
}
mixin(ControlCalls!("UIMInvoiceControl", "DUIMInvoiceControl"));
mixin(ControlCalls!("UIMInvoice", "DUIMInvoiceControl"));

version(test_uim_controls) {
  unittest {
    assert(UIMInvoice);

    auto control = UIMInvoice;
  }
}