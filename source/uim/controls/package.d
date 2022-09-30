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
public import uim.controls.div;
public import uim.controls.enums;

// PACKAGES
public import uim.controls.accordions;
public import uim.controls.alerts;
public import uim.controls.audios;
public import uim.controls.avatars;
public import uim.controls.badges;
public import uim.controls.breadcrumbs;
public import uim.controls.buttons;
public import uim.controls.calendars;
public import uim.controls.cards;
public import uim.controls.carousels;
public import uim.controls.charts;
public import uim.controls.collapses;
public import uim.controls.columns;
public import uim.controls.dashboards;
public import uim.controls.datagrids;
public import uim.controls.datas;
public import uim.controls.dates;
public import uim.controls.dialogs;
public import uim.controls.dividers;
public import uim.controls.dropdowns;
public import uim.controls.dropzones;
public import uim.controls.empties;
public import uim.controls.facets;
public import uim.controls.footers;
public import uim.controls.forms;
public import uim.controls.illustrations;
public import uim.controls.images;
public import uim.controls.inputs;
public import uim.controls.invoices;
public import uim.controls.layouts;
public import uim.controls.links;
public import uim.controls.lists;
public import uim.controls.loaders;
public import uim.controls.medias;
public import uim.controls.modals;
public import uim.controls.navbars;
public import uim.controls.navs;
public import uim.controls.offcanvases;
public import uim.controls.pageheaders;
public import uim.controls.pages;
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
public import uim.controls.shells;
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
public import uim.controls.videos;
public import uim.controls.wizards;

public import uim.controls.tests;

enum CRUDModes { Create, Read, Update, Delete }

template AddContent(string name, string content) {
  const char[] AddContent = `
  O add`~name~`(this O)(){
    this.addContent(`~content~`());
    return cast(O)this;
  }

  O add`~name~`(this O)(string newContent){
    this.addContent(`~content~`.addContent(newContent));
    return cast(O)this;
  }

  O add`~name~`(this O)(string[] classes){
    this.addContent(`~content~`.addClasses(classes));
    return cast(O)this;
  }
  O add`~name~`(this O)(string[string] attributes){
    this.addContent(`~content~`.addAttributes(attributes));
    return cast(O)this;
  }

  O add`~name~`(this O)(string id, string[] classes){
    this.addContent(`~content~`.id(id).addClasses(classes));
    return cast(O)this;
  }
  O add`~name~`(this O)(string id, string[string] attributes){
    this.addContent(`~content~`.id(id).addAttributes(attributes));
    return cast(O)this;
  }
  O add`~name~`(this O)(string id, string[] classes, string[string] attributes){
    this.addContent(`~content~`.id(id).addClasses(classes).addAttributes(attributes));
    return cast(O)this;
  }

  O add`~name~`(this O)(string[] classes, string[string] attributes){
    this.addContent(`~content~`.addClasses(classes).addAttributes(attributes));
    return cast(O)this;
  }

  // -------------------

  O add`~name~`(this O)(string[] classes, string newContent){
    this.addContent(`~content~`.addClasses(classes).addContent(newContent));
    return cast(O)this;
  }

  O add`~name~`(this O)(string[string] attributes, string newContent){
    this.addContent(`~content~`.addAttributes(attributes).addContent(newContent));
    return cast(O)this;
  }

  O add`~name~`(this O)(string id, string[] classes, string newContent){
    this.addContent(`~content~`.id(id).addClasses(classes).addContent(newContent));
    return cast(O)this;
  }

  O add`~name~`(this O)(string id, string[string] attributes, string newContent){
    this.addContent(`~content~`.id(id).addAttributes(attributes).addContent(newContent));
    return cast(O)this;
  }

  O add`~name~`(this O)(string id, string[] classes, string[string] attributes, string newContent){
    this.addContent(`~content~`.id(id).addClasses(classes).addAttributes(attributes).addContent(newContent));
    return cast(O)this;
  }

  O add`~name~`(this O)(string[] classes, string[string] attributes, string newContent){
    this.addContent(`~content~`.addClasses(classes).addAttributes(attributes).addContent(newContent));
    return cast(O)this;
  }

  // ---------------------------------

  O add`~name~`(this O)(DH5Obj[] newContent){
    this.addContent(`~content~`.addContent(newContent));
    return cast(O)this;
  }
  O add`~name~`(this O)(DH5Obj[] newContent...){
    this.addContent(`~content~`.addContent(newContent));
    return cast(O)this;
  }

  O add`~name~`(this O)(string id, DH5Obj[] newContent){
    this.addContent(`~content~`.id(id).addContent(newContent));
    return cast(O)this;
  }
  O add`~name~`(this O)(string id, DH5Obj[] newContent...){
    this.addContent(`~content~`.id(id).addContent(newContent));
    return cast(O)this;
  }

  O add`~name~`(this O)(string[] classes, DH5Obj[] newContent){
    this.addContent(`~content~`.addClasses(classes).addContent(newContent));
    return cast(O)this;
  }
  O add`~name~`(this O)(string[] classes, DH5Obj[] newContent...){
    this.addContent(`~content~`.addClasses(classes).addContent(newContent));
    return cast(O)this;
  }

  O add`~name~`(this O)(string[string] attributes, DH5Obj[] newContent){
    this.addContent(`~content~`.addAttributes(attributes).addContent(newContent));
    return cast(O)this;
  }
  O add`~name~`(this O)(string[string] attributes, DH5Obj[] newContent...){
    this.addContent(`~content~`.addAttributes(attributes).addContent(newContent));
    return cast(O)this;
  }

  O add`~name~`(this O)(string id, string[] classes, DH5Obj[] newContent){
    this.addContent(`~content~`.id(id).addClasses(classes).addContent(newContent));
    return cast(O)this;
  }
  O add`~name~`(this O)(string id, string[] classes, DH5Obj[] newContent...){
    this.addContent(`~content~`.id(id).addClasses(classes).addContent(newContent));
    return cast(O)this;
  }

  O add`~name~`(this O)(string id, string[string] attributes, DH5Obj[] newContent){
    this.addContent(`~content~`.id(id).addAttributes(attributes).addContent(newContent));
    return cast(O)this;
  }
  O add`~name~`(this O)(string id, string[string] attributes, DH5Obj[] newContent...){
    this.addContent(`~content~`.id(id).addAttributes(attributes).addContent(newContent));
    return cast(O)this;
  }

  O add`~name~`(this O)(string id, string[] classes, string[string] attributes, DH5Obj[] newContent){
    this.addContent(`~content~`.id(id).addClasses(classes).addAttributes(attributes).addContent(newContent));
    return cast(O)this;
  }
  O add`~name~`(this O)(string id, string[] classes, string[string] attributes, DH5Obj[] newContent...){
    this.addContent(`~content~`.id(id).addClasses(classes).addAttributes(attributes).addContent(newContent));
    return cast(O)this;
  }

  O add`~name~`(this O)(string[] classes, string[string] attributes, DH5Obj[] newContent){
    this.addContent(`~content~`.addClasses(classes).addAttributes(attributes).addContent(newContent));
    return cast(O)this;
  }
  O add`~name~`(this O)(string[] classes, string[string] attributes, DH5Obj[] newContent...){
    this.addContent(`~content~`.addClasses(classes).addAttributes(attributes).addContent(newContent));
    return cast(O)this;
  }`;
}

template ControlThis(string name) {
  const char[] ControlThis = `
    this() { super(); }

    this(string newContent)      { this().addContent(newContent); }
    this(DH5Obj[] newContent...) { this(newContent); }
    this(DH5Obj[] newContent)    { this().addContent(newContent); }

    this(string[] newClasses) { this().addClasses(newClasses); }
    this(string[] newClasses, string newContent)      { this(newClasses).addContent(newContent); }
    this(string[] newClasses, DH5Obj[] newContent...) { this(newClasses, newContent); }
    this(string[] newClasses, DH5Obj[] newContent)    { this(newClasses).addContent(newContent); }   
    
    this(string[string] newAttributes) { this().addAttributes(newAttributes); }
    this(string[string] newAttributes, string newContent)      { this(newAttributes).addContent(newContent); }
    this(string[string] newAttributes, DH5Obj[] newContent...) { this(newAttributes, newContent); }
    this(string[string] newAttributes, DH5Obj[] newContent)    { this(newAttributes).addContent(newContent); }

    this(string[] newClasses, string[string] newAttributes) { this(newClasses).addAttributes(newAttributes); }
    this(string[] newClasses, string[string] newAttributes, string newContent)      { this(newClasses, newAttributes).addContent(newContent); }
    this(string[] newClasses, string[string] newAttributes, DH5Obj[] newContent...) { this(newClasses, newAttributes).addContent(newContent); }
    this(string[] newClasses, string[string] newAttributes, DH5Obj[] newContent)    { this(newClasses, newAttributes).addContent(newContent); }

    this(string newId, DH5Obj[] newContent...) { this(newContent).id(newId); }
    this(string newId, DH5Obj[] newContent)    { this(newContent).id(newId); }

    this(string newId, string[] newClasses) { this(newClasses).id(newId); }
    this(string newId, string[] newClasses, string newContent)      { this(newClasses, newContent).id(newId); }
    this(string newId, string[] newClasses, DH5Obj[] newContent...) { this(newClasses, newContent).id(newId); }
    this(string newId, string[] newClasses, DH5Obj[] newContent)    { this(newClasses, newContent).id(newId); }   
    
    this(string newId, string[string] newAttributes) { this(newAttributes).id(newId); }
    this(string newId, string[string] newAttributes, string newContent)      { this(newAttributes, newContent).id(newId); }
    this(string newId, string[string] newAttributes, DH5Obj[] newContent...) { this(newAttributes, newContent).id(newId); }
    this(string newId, string[string] newAttributes, DH5Obj[] newContent)    { this(newAttributes, newContent).id(newId); }

    this(string newId, string[] newClasses, string[string] newAttributes) { this(newClasses, newAttributes).id(newId); }
    this(string newId, string[] newClasses, string[string] newAttributes, string newContent)      { this(newClasses, newAttributes, newContent).id(newId); }
    this(string newId, string[] newClasses, string[string] newAttributes, DH5Obj[] newContent...) { this(newClasses, newAttributes, newContent).id(newId); }
    this(string newId, string[] newClasses, string[string] newAttributes, DH5Obj[] newContent)    { this(newClasses, newAttributes, newContent).id(newId); }

`;

}

template ControlCalls(string callName, string className) {
  const char[] ControlCalls = `
auto `~callName~`() { return new `~className~`(); }

auto `~callName~`(string newContent)      { return new `~className~`(newContent); }
auto `~callName~`(DH5Obj[] newContent...) { return new `~className~`(newContent); }
auto `~callName~`(DH5Obj[] newContent)    { return new `~className~`(newContent); }

auto `~callName~`(string[] newClasses) { return `~callName~`.addClasses(newClasses); }
auto `~callName~`(string[] newClasses, string newContent)      { return new `~className~`(newClasses, newContent); }
auto `~callName~`(string[] newClasses, DH5Obj[] newContent...) { return new `~className~`(newClasses, newContent); }
auto `~callName~`(string[] newClasses, DH5Obj[] newContent)    { return new `~className~`(newClasses, newContent); }

auto `~callName~`(string[string] newAttributes) { return `~callName~`.addAttributes(newAttributes); }
auto `~callName~`(string[string] newAttributes, string newContent)      { return new `~className~`(newAttributes, newContent); }
auto `~callName~`(string[string] newAttributes, DH5Obj[] newContent...) { return new `~className~`(newAttributes, newContent); }
auto `~callName~`(string[string] newAttributes, DH5Obj[] newContent)    { return new `~className~`(newAttributes, newContent); }

auto `~callName~`(string[] newClasses, string[string] newAttributes) { return new `~className~`(newClasses, newAttributes); }
auto `~callName~`(string[] newClasses, string[string] newAttributes, string newContent)      { return new `~className~`(newClasses, newAttributes, newContent); }
auto `~callName~`(string[] newClasses, string[string] newAttributes, DH5Obj[] newContent...) { return new `~className~`(newClasses, newAttributes, newContent); }
auto `~callName~`(string[] newClasses, string[string] newAttributes, DH5Obj[] newContent)    { return new `~className~`(newClasses, newAttributes, newContent); }

auto `~callName~`(string anId, DH5Obj[] newContent...) { return `~callName~`.id(anId).addContent(newContent); }
auto `~callName~`(string anId, DH5Obj[] newContent)    { return `~callName~`.id(anId).addContent(newContent); }

auto `~callName~`(string anId, string[] newClasses) { return `~callName~`.id(anId).addClasses(newClasses); }
auto `~callName~`(string anId, string[] newClasses, string newContent)      { return `~callName~`(anId, newClasses).addContent(newContent); }
auto `~callName~`(string anId, string[] newClasses, DH5Obj[] newContent...) { return `~callName~`(anId, newClasses).addContent(newContent); }
auto `~callName~`(string anId, string[] newClasses, DH5Obj[] newContent)    { return `~callName~`(anId, newClasses).addContent(newContent); }

auto `~callName~`(string anId, string[string] newAttributes) { return `~callName~`.id(anId).addAttributes(newAttributes); }
auto `~callName~`(string anId, string[string] newAttributes, string newContent)      { return `~callName~`(anId, newAttributes).addContent(newContent); }
auto `~callName~`(string anId, string[string] newAttributes, DH5Obj[] newContent...) { return `~callName~`(anId, newAttributes).addContent(newContent); }
auto `~callName~`(string anId, string[string] newAttributes, DH5Obj[] newContent)    { return `~callName~`(anId, newAttributes).addContent(newContent); }

auto `~callName~`(string anId, string[] newClasses, string[string] newAttributes) { return `~callName~`(anId, newClasses).addAttributes(newAttributes); }
auto `~callName~`(string anId, string[] newClasses, string[string] newAttributes, string newContent)      { return `~callName~`(anId, newClasses, newAttributes).addContent(newContent); }
auto `~callName~`(string anId, string[] newClasses, string[string] newAttributes, DH5Obj[] newContent...) { return `~callName~`(anId, newClasses, newAttributes).addContent(newContent); }
auto `~callName~`(string anId, string[] newClasses, string[string] newAttributes, DH5Obj[] newContent)    { return `~callName~`(anId, newClasses, newAttributes).addContent(newContent); }

`;
}
