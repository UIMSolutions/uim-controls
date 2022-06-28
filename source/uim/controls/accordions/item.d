module uim.controls.accordions.item;

@safe:
import uim.controls;

class DUIMAccordionItemControl : DUIMControl {
  this() { super(); }

  mixin(OProperty!("string", "parentId"));
  mixin(OProperty!("string", "titel"));

  override void initialize() {
    super.initialize;
  }

  override DH5Obj[] toH5(STRINGAA options = null) {
    string myId = this.id.dup;
    auto myClasses = this.classes.dup;
    auto myAttributes = this.attributes.dup;
    auto myContent = this.content.dup;

    this.parentId(parent ? parent.id : null);

    return [
      H5Div(["accordion-item"], 
        H5H2(myId~"-header", ["accordion-header"],
          BS5AccordionButton(active ? null : ["collapsed"], ["data-bs-toggle":"collapse", "data-bs-target":"#"~myId~"-collapse"], 
            titel
          )
        ),
        BS5AccordionCollapse(myId~"-collapse", ["collapse"]~(active ? ["show"] : null), ["data-bs-parent":"#"~parentId], 
          H5Div(["accordion-body"], myContent)
        )
      )
    ].toH5;
  }
}
auto UIMAccordionItemControl() { return new DUIMAccordionItemControl; }