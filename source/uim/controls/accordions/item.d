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

  override void beforeH5(STRINGAA options = null) {
    super.beforeH5(options);
  }

  override DH5Obj[] toH5(STRINGAA options = null) {
    auto results = super.toH5(options);

    this.parentId(parent ? parent.id : null);

    return results~
      BS5AccordionItem( 
        BS5AccordionHeader(myId~"-header",
          BS5AccordionButton(active ? null : ["collapsed"], ["data-bs-toggle":"collapse", "data-bs-target":"#"~myId~"-collapse"], 
            titel
          )
        ),
        BS5AccordionCollapse(myId~"-collapse", ["collapse"]~(active ? ["show"] : null), ["data-bs-parent":"#"~parentId], 
          BS5AccordionBody(myContent)
        )
      );
  }
}
auto UIMAccordionItemControl() { return new DUIMAccordionItemControl; }
auto UIMAccordionItem() { return new DUIMAccordionItemControl; }

version(test_uim_controls) {
  unittest {
    // TODo
  }
}
