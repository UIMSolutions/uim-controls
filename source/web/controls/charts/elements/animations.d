module web.controls.chart.animations;

public import web.controls;

class DChartAnimationElement {
  this() {};

  mixin(OProperty!("STRINGAA", "settings"));

  mixin(OProperty!("bool", "enabled")); // Enable or disable all the animations that happen initially or during data update.
  mixin(OProperty!("bool", "easing")); // Available easing options: linear, easein, easeout, easeinout
  mixin(OProperty!("int", "speed"));// Speed at which animation runs.
  mixin(OProperty!("string", "animateGradually")); // Speed at which animation runs.Gradually animate one by one every data in the series instead of animating all at once.
  mixin(OProperty!("string", "dynamicAnimation")); // Animate the chart when data is changed and chart is re-rendered.

  override string toString() {
    settings["enabled"] = enabled ? "true" : "false";
    if (easing) settings["easing"] = "'easeinout'"; 
    if (speed) settings["speed"] = to!string(speed); 
    if (animateGradually) settings["animateGradually"] = animateGradually; 
    if (dynamicAnimation) settings["dynamicAnimation"] = dynamicAnimation; 
    return `animations: {`
      ~settings.keys.map!(key => `%s:%s`.format(key, settings[key])).join(",")~
    `}`; 
  }
}