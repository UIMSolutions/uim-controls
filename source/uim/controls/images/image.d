module uim.controls.images.image;

@safe: 
import uim.controls;

// ImageControl is like a wrapper around the <img> tag and more ;-) Every image can be loaded from a remote or local server. 
class DUIMImageControl : DUIMContainerControl {
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

  override void initialize() {
    super.initialize;
  }

  override void beforeH5(STRINGAA options = null) {
    super.beforeH5(options);

    // TODO
  }

  override DH5Obj[] toH5(STRINGAA options = null) {
    super.toH5(options);

    return [H5Img(myId, myClasses, myAttributes)].toH5;
  }
}
mixin(ControlCalls!("UIMImageControl", "DUIMImageControl"));
mixin(ControlCalls!("UIMImage", "DUIMImageControl"));

version(test_uim_controls) {
  unittest {
    assert(UIMImage);

    auto control = UIMImage;
  }
}