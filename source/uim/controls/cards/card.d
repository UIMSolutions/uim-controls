module uim.controls.cards.card;

/*
Cards provide a flexible and extensible 
content container with multiple variants and 
options.
*/
@safe: 
import uim.controls;

class DUIMCardControl : DUIMControl {
  mixin(ControlThis!("UIMCard"));

  mixin(OProperty!("string", "size"));
  mixin(OProperty!("bool", "stacked"));

  mixin(OProperty!("string", "statusColor"));
  mixin(OProperty!("string", "statusPosition"));

  mixin(OProperty!("DH5Obj", "imageContent"));
  mixin(OProperty!("string", "imagePosition"));

  mixin(OProperty!("DH5Obj[]", "header"));
  mixin(OProperty!("string[]", "headerClasses"));
  mixin(OProperty!("STRINGAA", "headerAttributes"));

  mixin(OProperty!("DH5Obj[]", "body_"));
  mixin(OProperty!("string[]", "bodyClasses"));
  mixin(OProperty!("STRINGAA", "bodyAttributes"));

  mixin(OProperty!("DH5Obj[]", "footer"));
  mixin(OProperty!("string[]", "footerClasses"));
  mixin(OProperty!("STRINGAA", "footerAttributes"));

  override void initialize() {
    super.initialize;

    this
      .classes(["card"]);
  }
  
  O image(this O)(DH5Obj newContent, string newPosition = "top") {
    this
      .imageContent(newContent)
      .imagePosition(newPosition);

    return cast(O)this;
  }

  O status(this O)(string newColor, string newPosition = "top") {
    this
      .statusColor(newColor)
      .statusPosition(newPosition);

    return cast(O)this;
  }

  mixin(AddContent!("Header", "UIMCardHeader"));
  mixin(AddContent!("Body", "UIMCardBody"));
  mixin(AddContent!("Footer", "UIMCardFooter"));

  override DH5Obj[] toH5(STRINGAA options = null) {
    auto results = super.toH5(options);

    if (size) myClasses ~= ["card-"~size];
    if (stacked) myClasses ~= ["card-stacked"];

    auto myCard = BS5Card(myId, myClasses, myAttributes);
    if (statusColor) {
      myCard.addContent(H5Div(["card-status-"~statusPosition, "bg-"~statusColor]));
    }

    if (imageContent && imagePosition == "top") {
      imageContent.addClasses("card-img-top");
      myCard.addContent(imageContent);
    }

    if (header) myCard.header(headerClasses, headerAttributes, this.header);
    if (body_) myCard.body_(bodyClasses, bodyAttributes, this.body_);
    if (footer) myCard.footer(footerClasses, footerAttributes, this.footer);
    if (imageContent && imagePosition == "bottom") {
      imageContent.addClasses("card-img-bottom");
      myCard.addContent(imageContent);
    }
    return results~
      myCard;
  }
}
mixin(ControlCalls!("UIMCardControl", "DUIMCardControl"));
mixin(ControlCalls!("UIMCard", "DUIMCardControl"));

version(test_uim_controls) {
  unittest {
    assert(UIMCard);

    auto control = UIMCard;
    // TODO
  }
}
