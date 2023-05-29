module uim.controls.images.image;

@safe: 
import uim.controls;

// ImageControl is like a wrapper around the <img> tag and more ;-) Every image can be loaded from a remote or local server. 
class DUIMImageControl : DUIMControl {
  mixin(ControlThis!("UIMImageControl"));

  // activeSource defines the source of the image which is used when the image is pressed.
  mixin(OProperty!("string", "activeSource"));

  // altText is the alternative text that is displayed in case the image is not available, or cannot be displayed.
  mixin(OProperty!("string", "altText"));

  // ariaHasPopup is a value for the aria-haspopup attribute of the Image.
  // mixin(OProperty!("string", "ariaHasPopup"));

  // backgroundPosition defines the position of the image in background mode.  
  mixin(OProperty!("string", "backgroundPosition"));

  // backgroundRepeat defines how the image is repeated when the output element is bigger than the image.
  mixin(OProperty!("string", "backgroundRepeat"));

  // backgroundRepeat defines the size of the image in background
  mixin(OProperty!("string", "cover"));

  // If noDecorative is false, a decorative image is included for design reasons
  mixin(OProperty!("bool", "noDecorative"));

  // If densityAware is set to true, network requests will try to obtain the density perfect version of the image.
  mixin(OProperty!("bool", "densityAware"));

  // height defines the height of the image 
  mixin(OProperty!("string", "height"));

  // Enables lazy loading for images that are offscreen. If set to true, the property ensures that offscreen images are loaded early enough so that they have finished loading once the user scrolls near them.
  mixin(OProperty!("bool", "lazyLoading"));

  // Defines how the src and the activeSrc is output to the target.
  mixin(OProperty!("string", "image"));

  // source ist the relative or absolute path to URL where the image date is stored.
  mixin(OProperty!("string", "source"));

  // useMap is the name of the image map that defines the clickable areas.
  mixin(OProperty!("string", "useMap"));

  // width defines the width of the displayed image
  mixin(OProperty!("string", "width"));
  mixin(OProperty!("string", "srcset"));
  mixin(OProperty!("string", "sizes"));

  mixin(OProperty!("bool", "fluid"));
  mixin(OProperty!("bool", "thumbnail"));
  mixin(OProperty!("bool", "rounded"));
  mixin(OProperty!("bool", "circle"));
  mixin(OProperty!("bool", "pill"));
  mixin(OProperty!("string", "rotate"));
  mixin(OProperty!("string", "position"));
  mixin(OProperty!("string", "fit"));
  mixin(OProperty!("string", "link"));
  mixin(OProperty!("string", "floatPosition")); // left, right

  override void initialize() {
    super.initialize;

    this
      .id("image-%s".format(uniform(0, 1_000_000)));
  }

  override void beforeH5(STRINGAA options = null) {
    super.beforeH5(options);

    if (fluid) myClasses ~= "img-fluid";
    if (thumbnail) myClasses ~= "img-thumbnail";
    if (rounded) myClasses ~= "rounded";
    if (circle) myClasses ~= "rounded-circle";
    if (pill) myClasses ~= "rounded-pill";

    if (altText) myAttributes["alt"] = altText;
    if (height) myAttributes["height"] = height;
    if (fit) {
      if ("style" !in myAttributes) myAttributes["style"] = "";
      myAttributes["style"] = (myAttributes["style"].split(";")~"object-fit:%s".format(fit)).join(";");
    }    
    if (position) {
      if ("style" !in myAttributes) myAttributes["style"] = "";
      myAttributes["style"] = (myAttributes["style"].split(";")~"object-position:%s".format(position)).join(";");
    }    
    if (rotate) {
      if ("style" !in myAttributes) myAttributes["style"] = "";
      myAttributes["style"] = (myAttributes["style"].split(";")~"transform: rotate(%sdeg)".format(rotate)).join(";");
    }    
    if (floatPosition) {
      if ("style" !in myAttributes) myAttributes["style"] = "";
      myAttributes["style"] = (myAttributes["style"].split(";")~["float:"~floatPosition]).join(";");
    }    
    if (source) myAttributes["src"] = source;
    if (srcset) myAttributes["srcset"] = srcset;
    if (sizes) myAttributes["sizes"] = sizes;
    if (width) myAttributes["width"] = width;
    
  }

  override DH5Obj[] toH5(STRINGAA options = null) {
    super.toH5(options);

    if (link) {
      return [
        H5A(["href":link], H5Img(myId, myClasses, myAttributes))].toH5;
    }
    return [H5Img(myId, myClasses, myAttributes)].toH5;
  }
}
mixin(ControlCalls!("UIMImageControl", "DUIMImageControl"));
mixin(ControlCalls!("UIMImage", "DUIMImageControl"));

version(test_uim_controls) { unittest {
    assert(UIMImage);
    assert(UIMImage.noId == "<img>");

    mixin(TestControlStringAttributes!("UIMImage", [
      "activeSource", "altText", "backgroundPosition", "backgroundRepeat", "cover", "height", "image", 
      "source", "useMap", "width", "srcset", "sizes", "rotate", "position", "fit", "link", "floatPosition"
    ]));
    
    assert(UIMImage.noId.source("image.jpg") == `<img src="image.jpg">`);
  }
}


