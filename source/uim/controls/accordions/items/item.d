module uim.controls.accordions.items.item;

@safe:
import uim.controls;

interface IAccordionItem {
}

class DUIMAccordionItemControl : DUIMControl, IAccordionItem {
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
    super.toH5(options);

    auto myParentId = this.parent ? this.parent.id : null;

    return [
      BS5AccordionItem.id(myId)( 
        BS5AccordionHeader(myId~"-header", headerClasses,
          BS5AccordionButton(active ? null : ["collapsed"], ["data-bs-toggle":"collapse", "data-bs-target":"#"~myId~"-collapse"], 
            title
          )
        ),
        BS5AccordionCollapse(myId~"-collapse", ["collapse"]~(active ? ["show"] : null), ["data-bs-parent":"#"~myParentId], 
          BS5AccordionBody(bodyClasses,
            myContent)
        )
      )].toH5;
  }
}
mixin(ControlCalls!("UIMAccordionItemControl", "DUIMAccordionItemControl"));
mixin(ControlCalls!("UIMAccordionItem", "DUIMAccordionItemControl"));

version(test_uim_controls) { unittest {
    assert(UIMAccordionItem);
    assert(UIMAccordionItem.id("test") == `<div id="test" class="accordion-item"><h2 id="test-header" class="accordion-header"><button class="accordion-button collapsed" data-bs-target="#test-collapse" data-bs-toggle="collapse" type="button"></button></h2><div id="test-collapse" class="accordion-collapse collapse" data-bs-parent="#"><div class="accordion-body"></div></div></div>`);

    assert(UIMAccordionItem.title("testTitle").title == "testTitle");
    assert(UIMAccordionItem.id("test").title("testTitle") == 
      `<div id="test" class="accordion-item">`~
        `<h2 id="test-header" class="accordion-header">`~
          `<button class="accordion-button collapsed" data-bs-target="#test-collapse" data-bs-toggle="collapse" type="button">testTitle</button>`~
          `</h2>`~
          `<div id="test-collapse" class="accordion-collapse collapse" data-bs-parent="#">`~
    `<div class="accordion-body"></div></div></div>`);

    assert(UIMAccordionItem.bodyClasses(["a", "b"]).bodyClasses == ["a", "b"]);
    assert(UIMAccordionItem.headerClasses(["a", "b"]).headerClasses == ["a", "b"]);
  }
}
