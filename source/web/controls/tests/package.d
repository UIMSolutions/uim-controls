module uim.controls.tests;

import uim.controls;

template TestControlBooleanAttributes(string objName, string[] attributeNames) {
  const char[] TestControlBooleanAttributes = 
    attributeNames.map!(name =>
`assert(!`~objName~`.`~name~`, "`~objName~`: Wrong default for attribute `~name~`");
assert(`~objName~`.`~name~`(true).`~name~`, "`~objName~`: No setting of attribute `~name~`");`
    ).join;
}

template TestControlStringAttributes(string objName, string[] attributeNames) {
  const char[] TestControlStringAttributes = 
    attributeNames.map!(name =>
`assert(!`~objName~`.`~name~`, "`~objName~`: Wrong default for attribute `~name~`");
assert(`~objName~`.`~name~`("test").`~name~` == "test", "`~objName~`: No setting of attribute `~name~`");`
    ).join;
}