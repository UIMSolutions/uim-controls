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

// PACKAGES
public import uim.controls.accordions;
public import uim.controls.alerts;
public import uim.controls.avatars;
public import uim.controls.badges;
public import uim.controls.breadcrumbs;
public import uim.controls.buttons;
public import uim.controls.calendars;
public import uim.controls.cards;
public import uim.controls.carousels;
public import uim.controls.charts;
public import uim.controls.columns;
public import uim.controls.containers;
public import uim.controls.dashboards;
public import uim.controls.datagrids;
public import uim.controls.datas;
public import uim.controls.dividers;
public import uim.controls.dropdowns;
public import uim.controls.empties;
public import uim.controls.facets;
public import uim.controls.footers;
public import uim.controls.forms;
public import uim.controls.illustrations;
public import uim.controls.images;
public import uim.controls.inputs;
public import uim.controls.invoices;
public import uim.controls.layouts;
public import uim.controls.lists;
public import uim.controls.medias;
public import uim.controls.modals;
public import uim.controls.navigations;
public import uim.controls.offcanvases;
public import uim.controls.pageheaders;
public import uim.controls.paginations;
public import uim.controls.pictures;
public import uim.controls.placeholders;
public import uim.controls.popovers;
public import uim.controls.processes;
public import uim.controls.progresses;
public import uim.controls.rangesliders;
public import uim.controls.ribbons;
public import uim.controls.rows;
public import uim.controls.selects;
public import uim.controls.sheets;
public import uim.controls.spinners;
public import uim.controls.statuses;
public import uim.controls.steps;
public import uim.controls.switchicons;
public import uim.controls.tables;
public import uim.controls.tabs;
public import uim.controls.tiles;
public import uim.controls.timelines;
public import uim.controls.toasts;
public import uim.controls.tokens;
public import uim.controls.tokenizers;
public import uim.controls.toolbars;
public import uim.controls.tooltips;
public import uim.controls.trees;

public import uim.controls.tests;

template AddContent(string name, string content) {
  const char[] AddContent = `
  O add`~name~`(this O)(){
    this.addContent(`~content~`());
    return cast(O)this;
  }

  O add`~name~`(this O)(string content){
    this.addContent(`~content~`.addContent(content));
    return cast(O)this;
  }

  O add`~name~`(this O)(string[] classes){
    this.addContent(`~content~`.addClasses(classes));
    return cast(O)this;
  }
  O add`~name~`(this O)(STRINGAA attributes){
    this.addContent(`~content~`.addAttributes(attributes));
    return cast(O)this;
  }

  O add`~name~`(this O)(string id, string[] classes){
    this.addContent(`~content~`.id(id).addClasses(classes));
    return cast(O)this;
  }
  O add`~name~`(this O)(string id, STRINGAA attributes){
    this.addContent(`~content~`.id(id).addAttributes(attributes));
    return cast(O)this;
  }
  O add`~name~`(this O)(string id, string[] classes, STRINGAA attributes){
    this.addContent(`~content~`.id(id).addClasses(classes).addAttributes(attributes));
    return cast(O)this;
  }

  O add`~name~`(this O)(string[] classes, STRINGAA attributes){
    this.addContent(`~content~`.addClasses(classes).addAttributes(attributes));
    return cast(O)this;
  }

  // -------------------

  O add`~name~`(this O)(string[] classes, string[] content){
    this.addContent(`~content~`.addClasses(classes).addContent(content));
    return cast(O)this;
  }
  O add`~name~`(this O)(string[] classes, string[] content...){
    this.addContent(`~content~`.addClasses(classes).addContent(content));
    return cast(O)this;
  }

  O add`~name~`(this O)(STRINGAA attributes, string[] content){
    this.addContent(`~content~`.addAttributes(attributes).addContent(content));
    return cast(O)this;
  }
  O add`~name~`(this O)(STRINGAA attributes, string[] content...){
    this.addContent(`~content~`.addAttributes(attributes).addContent(content));
    return cast(O)this;
  }

  O add`~name~`(this O)(string id, string[] classes, string[] content){
    this.addContent(`~content~`.id(id).addClasses(classes).addContent(content));
    return cast(O)this;
  }
  O add`~name~`(this O)(string id, string[] classes, string[] content...){
    this.addContent(`~content~`.id(id).addClasses(classes).addContent(content));
    return cast(O)this;
  }

  O add`~name~`(this O)(string id, STRINGAA attributes, string[] content){
    this.addContent(`~content~`.id(id).addAttributes(attributes).addContent(content));
    return cast(O)this;
  }
  O add`~name~`(this O)(string id, STRINGAA attributes, string[] content...){
    this.addContent(`~content~`.id(id).addAttributes(attributes).addContent(content));
    return cast(O)this;
  }

  O add`~name~`(this O)(string id, string[] classes, STRINGAA attributes, string[] content){
    this.addContent(`~content~`.id(id).addClasses(classes).addAttributes(attributes).addContent(content));
    return cast(O)this;
  }
  O add`~name~`(this O)(string id, string[] classes, STRINGAA attributes, string[] content...){
    this.addContent(`~content~`.id(id).addClasses(classes).addAttributes(attributes).addContent(content));
    return cast(O)this;
  }

  O add`~name~`(this O)(string[] classes, STRINGAA attributes, string[] content){
    this.addContent(`~content~`.addClasses(classes).addAttributes(attributes).addContent(content));
    return cast(O)this;
  }
  O add`~name~`(this O)(string[] classes, STRINGAA attributes, string[] content...){
    this.addContent(`~content~`.addClasses(classes).addAttributes(attributes).addContent(content));
    return cast(O)this;
  }

  // ---------------------------------

  O add`~name~`(this O)(DH5Obj[] content){
    this.addContent(`~content~`.addContent(content));
    return cast(O)this;
  }
  O add`~name~`(this O)(DH5Obj[] content...){
    this.addContent(`~content~`.addContent(content));
    return cast(O)this;
  }

  O add`~name~`(this O)(string id, DH5Obj[] content){
    this.addContent(`~content~`.id(id).addContent(content));
    return cast(O)this;
  }
  O add`~name~`(this O)(string id, DH5Obj[] content...){
    this.addContent(`~content~`.id(id).addContent(content));
    return cast(O)this;
  }

  O add`~name~`(this O)(string[] classes, DH5Obj[] content){
    this.addContent(`~content~`.addClasses(classes).addContent(content));
    return cast(O)this;
  }
  O add`~name~`(this O)(string[] classes, DH5Obj[] content...){
    this.addContent(`~content~`.addClasses(classes).addContent(content));
    return cast(O)this;
  }

  O add`~name~`(this O)(STRINGAA attributes, DH5Obj[] content){
    this.addContent(`~content~`.addAttributes(attributes).addContent(content));
    return cast(O)this;
  }
  O add`~name~`(this O)(STRINGAA attributes, DH5Obj[] content...){
    this.addContent(`~content~`.addAttributes(attributes).addContent(content));
    return cast(O)this;
  }

  O add`~name~`(this O)(string id, string[] classes, DH5Obj[] content){
    this.addContent(`~content~`.id(id).addClasses(classes).addContent(content));
    return cast(O)this;
  }
  O add`~name~`(this O)(string id, string[] classes, DH5Obj[] content...){
    this.addContent(`~content~`.id(id).addClasses(classes).addContent(content));
    return cast(O)this;
  }

  O add`~name~`(this O)(string id, STRINGAA attributes, DH5Obj[] content){
    this.addContent(`~content~`.id(id).addAttributes(attributes).addContent(content));
    return cast(O)this;
  }
  O add`~name~`(this O)(string id, STRINGAA attributes, DH5Obj[] content...){
    this.addContent(`~content~`.id(id).addAttributes(attributes).addContent(content));
    return cast(O)this;
  }

  O add`~name~`(this O)(string id, string[] classes, STRINGAA attributes, DH5Obj[] content){
    this.addContent(`~content~`.id(id).addClasses(classes).addAttributes(attributes).addContent(content));
    return cast(O)this;
  }
  O add`~name~`(this O)(string id, string[] classes, STRINGAA attributes, DH5Obj[] content...){
    this.addContent(`~content~`.id(id).addClasses(classes).addAttributes(attributes).addContent(content));
    return cast(O)this;
  }

  O add`~name~`(this O)(string[] classes, STRINGAA attributes, DH5Obj[] content){
    this.addContent(`~content~`.addClasses(classes).addAttributes(attributes).addContent(content));
    return cast(O)this;
  }
  O add`~name~`(this O)(string[] classes, STRINGAA attributes, DH5Obj[] content...){
    this.addContent(`~content~`.addClasses(classes).addAttributes(attributes).addContent(content));
    return cast(O)this;
  }`;
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
auto `~callName~`(string[] newClasses) { return `~callName~`.addClasses(newClasses); }
auto `~callName~`(string[string] newAttributes) { return `~callName~`.addAttributes(newAttributes); }

auto `~callName~`(string anId, string[] newClasses) { return `~callName~`(anId).addClasses(newClasses); }
auto `~callName~`(string anId, string[string] newAttributes) { return `~callName~`(anId).addAttributes(newAttributes); }
auto `~callName~`(string anId, string[] newClasses, string[string] newAttributes) { return `~callName~`(anId, newClasses).addAttributes(newAttributes); }

auto `~callName~`(string[] newClasses, string[string] newAttributes) { return `~callName~`(newClasses).addAttributes(newAttributes); }

auto `~callName~`(string[] newClasses, DH5Obj[] content...) { return `~callName~`(newClasses).addContent(content); }
auto `~callName~`(string[] newClasses, DH5Obj[] content) { return `~callName~`(newClasses).addContent(content); }

auto `~callName~`(string[string] newAttributes, DH5Obj[] content...) { return `~callName~`(newAttributes).addContent(content); }
auto `~callName~`(string[string] newAttributes, DH5Obj[] content) { return `~callName~`(newAttributes).addContent(content); }

auto `~callName~`(string[] newClasses, string[string] newAttributes, DH5Obj[] content...) { return `~callName~`(newClasses, newAttributes).addContent(content); }
auto `~callName~`(string[] newClasses, string[string] newAttributes, DH5Obj[] content) { return `~callName~`(newClasses, newAttributes).addContent(content); }

auto `~callName~`(string anId, string[] newClasses, DH5Obj[] content...) { return `~callName~`(anId, newClasses).addContent(content); }
auto `~callName~`(string anId, string[] newClasses, DH5Obj[] content) { return `~callName~`(anId, newClasses).addContent(content); }

auto `~callName~`(string anId, string[string] newAttributes, DH5Obj[] content...) { return `~callName~`(anId, newAttributes).addContent(content); }
auto `~callName~`(string anId, string[string] newAttributes, DH5Obj[] content) { return `~callName~`(anId, newAttributes).addContent(content); }

auto `~callName~`(string anId, string[] newClasses, string[string] newAttributes, DH5Obj[] content...) { return `~callName~`(anId, newClasses, newAttributes).addContent(content); }
auto `~callName~`(string anId, string[] newClasses, string[string] newAttributes, DH5Obj[] content) { return `~callName~`(anId, newClasses, newAttributes).addContent(content); }

auto `~callName~`(string anId, DH5Obj[] content...) { return `~callName~`(anId).addContent(content); }
auto `~callName~`(string anId, DH5Obj[] content) { return `~callName~`(anId).addContent(content); }

auto `~callName~`(DH5Obj[] content...) { return `~callName~`.addContent(content); }
auto `~callName~`(DH5Obj[] content) { return `~callName~`.addContent(content); }

`;
}
