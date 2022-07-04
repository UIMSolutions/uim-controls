/***********************************************************************************************************************
*	Copyright: © 2017-2022 UI Manufaktur UG / 2022 Ozan Nurettin Süel (sicherheitsschmiede)                              *
*	License: Licensed under Apache 2 [https://apache.org/licenses/LICENSE-2.0.txt]                                       *
*	Authors: UI Manufaktur UG Team, Ozan Nurettin Süel (Sicherheitsschmiede)			                                       * 
***********************************************************************************************************************/
module uim.controls;

@safe:

/// Phobos libraries
public import std.datetime;
public import std.datetime.stopwatch;
public import std.digest.sha;
public import std.stdio;
public import std.string;
public import std.file;
public import std.uuid;

/// External libraries
// public import colored;
public import vibe.d;

// uim libraries
public import uim.core;
public import uim.oop;
public import uim.html;
public import uim.bootstrap;
public import uim.javascript;
public import uim.entities;
public import uim.jsonbase;
public import uim.entitybase;

public import layouts.tabler;

// Packages for main classes
public import uim.controls.control;
public import uim.controls.container;

// PACKAGES
public import uim.controls.accordions;
public import uim.controls.alerts;
public import uim.controls.avatars;
public import uim.controls.badges;
public import uim.controls.breadcrumbs;
public import uim.controls.buttons;
public import uim.controls.cards;
public import uim.controls.carousels;
public import uim.controls.datagrids;
public import uim.controls.dividers;
public import uim.controls.dropdowns;
public import uim.controls.empties;
public import uim.controls.forms;
public import uim.controls.modals;
public import uim.controls.navigations;
public import uim.controls.pageheaders;
public import uim.controls.paginations;
public import uim.controls.placeholders;
public import uim.controls.popovers;
public import uim.controls.progresses;
public import uim.controls.rangesliders;
public import uim.controls.ribbons;
public import uim.controls.spinners;
public import uim.controls.statuses;
public import uim.controls.steps;
public import uim.controls.switchicons;
public import uim.controls.tables;
public import uim.controls.tabs;
public import uim.controls.timelines;
public import uim.controls.toasts;
public import uim.controls.tooltips;

public import uim.controls.tests;

template AddContent(string name, string type) {
  const char[] AddContent = `
  O add`~name~`(this O)(string newContent){
    this.add`~name~`(H5String(newContent));
    return cast(O)this;
  }
  O add`~name~`(this O)(string[] classes, string newContent){
    this.add`~name~`(classes, H5String(newContent));
    return cast(O)this;
  }
  O add`~name~`(this O)(string[] classes, STRINGAA attributes, string newContent){
    this.add`~name~`(classes, attributes, H5String(newContent));
    return cast(O)this;
  }
  O add`~name~`(this O)(DH5Obj[] newContent...){
    this.add`~name~`(newContent);
    return cast(O)this;
  }
  O add`~name~`(this O)(string[] classes, DH5Obj[] newContent...){
    this.add`~name~`(classes, newContent);
    return cast(O)this;
  }
  O add`~name~`(this O)(string[] classes, STRINGAA attributes, DH5Obj[] newContent...){
    this.add`~name~`(classes, attributes, newContent);
    return cast(O)this;
  }
  O add`~name~`(this O)(DH5Obj[] newContent){
    _items ~= `~type~`.content(newContent);
    return cast(O)this;
  }
  O add`~name~`(this O)(string[] classes, DH5Obj[] newContent){
    _items ~= `~type~`.addClasses(classes).content(newContent);
    return cast(O)this;
  }
  O add`~name~`(this O)(string[] classes, STRINGAA attributes, DH5Obj[] newContent){
    _items ~= `~type~`.addClasses(classes).addAttributes(attributes).content(newContent);
    return cast(O)this;
  }
  `;
}

template ControlThis(string name) {
  const char[] ControlThis = `
    this() { super(); }
`;
}

template ControlCalls(string callName, string className) {
  const char[] ControlCalls = `
auto `~callName~`() { return new `~className~`(); }
auto `~callName~`(string anId) { return `~callName~`().id(anId); }
auto `~callName~`(string[] newClasses) { return `~callName~`().addClasses(newClasses); }
auto `~callName~`(string[string] newAttributes) { return `~callName~`().addAttributes(newAttributes); }

auto `~callName~`(string anId, string[] newClasses) { return `~callName~`(anId).addClasses(newClasses); }
auto `~callName~`(string anId, string[string] newAttributes) { return `~callName~`(anId).addAttributes(newAttributes); }
auto `~callName~`(string anId, string[] newClasses, string[string] newAttributes) { return `~callName~`(anId, newClasses).addAttributes(newAttributes); }

auto `~callName~`(string[] newClasses, string[string] newAttributes) { return `~callName~`().addClasses(newClasses).addAttributes(newAttributes); }
`;
}
