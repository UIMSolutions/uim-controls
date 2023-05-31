module web.controls.calendars.calendar;

@safe: 
import web.controls;

class DUIMCalendarControl : DUIMControl {
  mixin(ControlThis!("UIMCalendarControl"));

  override void initialize() {
    super.initialize;

    this
      .classes(["calendar"]);
  }

  override void beforeH5(STRINGAA options = null) {
    super.beforeH5(options);
  }

  override DH5Obj[] toH5(STRINGAA options = null) {
    super.toH5(options);

    return [H5Div(myId, myClasses, myAttributes, myContent)].toH5; 
  }
}
mixin(ControlCalls!("UIMCalendarControl", "DUIMCalendarControl"));
mixin(ControlCalls!("UIMCalendar", "DUIMCalendarControl"));

version(test_uim_controls) { unittest {
  assert(UIMCalendar);
  assert(UIMCalendar.noId == `<div class="calendar"></div>`);
}}