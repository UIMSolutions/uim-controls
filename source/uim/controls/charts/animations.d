module uim.controls.chart.animations;

public import uim.controls;

class DChartAnimationElement {
  this() {};

  mixin(OProperty!("bool", "enabled")); // Enable or disable all the animations that happen initially or during data update.
  mixin(OProperty!("bool", "easing")); // Available easing options: linear, easein, easeout, easeinout
/*         easing: 'easeinout',
        speed: 800,
        animateGradually: {
            enabled: true,
            delay: 150
        },
        dynamicAnimation: {
            enabled: true,
            speed: 350
        } */
}