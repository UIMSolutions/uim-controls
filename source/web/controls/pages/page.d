module uim.controls.pages.page;

@safe:
import uim.controls;

/*

A container control that holds one whole screen of an application.

Overview
The uIMPageControl is a container control that holds one whole screen of an application. The page has three distinct areas that can hold content - a header, content area and a footer.

Structure
Header
The top most area of the page is occupied by the header. The standard header includes a navbar button and a title. Alternatively, you can create your own custom header, which is defined in the customHeader aggregation.

Content
The content occupies the main part of the page. Only the content area is scrollable by default. This can be prevented by setting enableScrolling to false.

Footer
The footer is optional and occupies the fixed bottom part of the page. Alternatively, the footer can be floating above the bottom part of the content. This is enabled with the floatingFooter property.

Note: All accessibility information for the different areas and their corresponding ARIA roles is set in the aggregation landmarkInfo of type uIMPageControlAccessibleLandmarkInfo

Responsive Behavior
When using the uIMPageControl in SAP Quartz theme, the breakpoints and layout paddings could be determined by the container's width. To enable this concept and add responsive paddings to an element of the Page control, you may add the following classes depending on your use case: sapUiResponsivePadding--header, sapUiResponsivePadding--subHeader, sapUiResponsivePadding--content, sapUiResponsivePadding--footer, sapUiResponsivePadding--floatingFooter.

*/

class DUIMPageControl : DUIMDivControl {
  mixin(ControlThis!("UIMPageControl"));

  override void initialize() {
    super.initialize;

    this
      .classes("page");
  }

  // backgroundDesign is used to set the background color of a page. 
  // When a list is placed inside a page, the value "List" should be used to display a gray background. "Standard", with the default background color, is used if not specified.
  mixin(OProperty!("string", "backgroundDesign"));

  // Decides which area is covered by the local BusyIndicator when page.setBusy() is called. By default the entire page is covered, including headers and footer. When this property is set to "true", only the content area is covered (not header/sub header and footer), which is useful e.g. when there is a SearchField in the sub header and live search continuously updates the content area while the user is still able to type.
  mixin(OProperty!("bool", "contentOnlyBusy"));

  // Enable vertical scrolling of page contents. Page headers and footers are fixed and do not scroll. If set to false, there will be no vertical scrolling at all.
  // The Page only allows vertical scrolling because horizontal scrolling is discouraged in general for full-page content. If it still needs to be achieved, disable the Page scrolling and use a ScrollContainer as full-page content of the Page. This allows you to freely configure scrolling. It can also be used to create horizontally-scrolling sub-areas of (vertically-scrolling) Pages.
  mixin(OProperty!("bool", "enableScrolling"));


  // Decides whether the footer can float. When set to true, the footer is not fixed below the content area anymore, but rather floats over it with a slight offset from the bottom.
  mixin(OProperty!("bool", "floatingFooter"));

  // the icon that is rendered in the page header bar in non-iOS phone/tablet platforms. This property is theme-dependent and only has an effect in the MVI theme.
  mixin(OProperty!("string", "icon"));

  // The text of the nav button when running in iOS (if shown) in case it deviates from the default, which is "Back". This property is mvi-theme-dependent and will not have any effect in other themes.
  mixin(OProperty!("string", "navButtonText"));

  // The tooltip of the nav button
  mixin(OProperty!("string", "navButtonTooltip"));

  // This property is used to set the appearance of the NavButton. By default when showNavButton is set to true, a back button will be shown in iOS and an up button in other platforms. In case you want to show a normal button in the left header area, you can set the value to "Default".
  mixin(OProperty!("string", "navButtonType"));

  // Whether this page shall have a footer
  mixin(OProperty!("bool", "showFooter"));

  // Whether this page shall have a header. If set to true, either the control under the "customHeader" aggregation is used, or if there is no such control, a Header control is constructed from the properties "title", "showNavButton", "navButtonText" and "icon" depending on the platform.
  mixin(OProperty!("bool", "showHeader"));

  // A nav button will be rendered on the left area of header bar if this property is set to true.
  mixin(OProperty!("bool", "showNavButton"));

  // Whether this page shall show the subheader.
  mixin(OProperty!("bool", "showSubHeader"));

  // The title text appearing in the page header bar.
  mixin(OProperty!("string", "title"));

  // Specifies the Title alignment (theme specific). If set to TitleAlignment.Auto, the Title will be aligned as it is set in the theme (if not set, the default value is center); Other possible values are TitleAlignment.Start (left or right depending on LTR/RTL), and TitleAlignment.Center (centered)
  mixin(OProperty!("string", "titleAlignment"));

  // Defines the semantic level of the title. Using "Auto" no explicit level information is written. Used for accessibility purposes only.
  mixin(OProperty!("string", "titleLevel"));

  override void beforeH5(STRINGAA options = null) {
    super.beforeH5(options);    

  }
}
mixin(ControlCalls!("UIMPageControl", "DUIMPageControl"));
mixin(ControlCalls!("UIMPage", "DUIMPageControl"));

version(test_uim_controls) { unittest {
  assert(UIMPage);
  assert(UIMPage.noId == `<div class="page"></div>`);
}}

