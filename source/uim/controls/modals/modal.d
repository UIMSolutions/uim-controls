module uim.controls.modals.modal;

@safe: 
import uim.controls;

class DUIMModalControl : DUIMControl {
  this() { super(); }

  mixin(OProperty!("string", "size"))
  override void initialize() {
    super.initialize;
  }

  DH5Obj[] toH5(STRINGAA options) {
    auto dialog = H5Div(["modal-dialog"], ["role":"document"]);
    if (size) { dialog.addClasses("modal-"~size); }

    return [
      dialog.content(
        H5Div(["modal-content"], 
          H5Button(["btn-close"], ["type":"button", "data-bs-dismiss":"modal", "aria-label":"Close"]),
          H5Div(["modal-status bg-danger"]),
          H5Div(["modal-body text-center py-4"], 
            tablerIcon("alert-triangle")~
            H5H3("Are you sure?").toString~
            H5Div(["text-muted"], "Do you really want to remove 84 files? What you've done cannot be undone.").toString
          ),
          H5Div(["modal-footer"], 
            H5Div(["w-100"], 
              H5Div(["row"], 
                H5Div(["col"], 
                  H5A(["btn w-100"], ["href":"javascript:void(0)", "data-bs-dismiss":"modal"], 
                    "Cancel"
                  )),
                H5Div(["col"], H5A(["btn btn-danger w-100"], ["href":"javascript:void(0)", "data-bs-dismiss":"modal"], 
                    "Delete 84 items"
                  )
                )
              )
            )
          )
        )
      )
    ].toH5
  }
}
auto UIMModalControl() { return new DUIMModalControl; }