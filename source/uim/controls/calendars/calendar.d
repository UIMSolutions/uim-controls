module uim.controls.calendars.calendar;

@safe: 
import uim.controls;

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
    auto results = super.toH5(options);

    return results~
      BS5CardHeader(myId, myClasses, myAttributes, myContent);  
  }
}
mixin(ControlCalls!("UIMCalendarControl", "DUIMCalendarControl"));
mixin(ControlCalls!("UIMCalendar", "DUIMCalendarControl"));

version(test_uim_controls) {
  unittest {
    assert(UIMCalendar);

    auto control = UIMCalendar;
  }
}