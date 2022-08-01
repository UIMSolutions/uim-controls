module uim.controls.accordions.item;

@safe:
import uim.controls;

class DUIMAccordionItemControl : DUIMControl {
  mixin(ControlThis!("UIMAccordionItemControl"));

  mixin(OProperty!("string", "title"));
  mixin(OProperty!("string[]", "bodyClasses"));
  mixin(OProperty!("string[]", "headerClasses"));

  override void initialize() {
    super.initialize;

    this
      .id("accordionitem-%s".format(uniform(0, 1000000)));
  }

  override void beforeH5(STRINGAA options = null) {
    super.beforeH5(options);
  }

  override DH5Obj[] toH5(STRINGAA options = null) {
    auto results = super.toH5(options);

    auto myParentId = this.parent ? this.parent.id : null;

    return results~
      BS5AccordionItem( 
        BS5AccordionHeader(myId~"-header", headerClasses,
          BS5AccordionButton(active ? null : ["collapsed"], ["data-bs-toggle":"collapse", "data-bs-target":"#"~myId~"-collapse"], 
            title
          )
        ),
        BS5AccordionCollapse(myId~"-collapse", ["collapse"]~(active ? ["show"] : null), ["data-bs-parent":"#"~myParentId], 
          BS5AccordionBody(bodyClasses,
            myContent)
        )
      );
  }
}
mixin(ControlCalls!("UIMAccordionItemControl", "DUIMAccordionItemControl"));
mixin(ControlCalls!("UIMAccordionItem", "DUIMAccordionItemControl"));

version(test_uim_controls) {
  unittest {
    assert(UIMAccordionItem);
    auto control = UIMAccordionItem;
    // TODO
    assert(UIMAccordionItem.title("testTitle").title == "testTitle");

    assert(UIMAccordionItem.bodyClasses(["a", "b"]).bodyClasses == ["a", "b"]);
    assert(UIMAccordionItem.headerClasses(["a", "b"]).headerClasses == ["a", "b"]);
  }
}

unittest {
    writeln(UIMAccordionItem);
    writeln(UIMAccordionItem.title("testTitle"));
}
