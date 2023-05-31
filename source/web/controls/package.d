/***********************************************************************************************************************
*	Copyright: © 2017-2022 UI Manufaktur UG / 2022 Ozan Nurettin Süel (sicherheitsschmiede)                              *
*	License: Licensed under Apache 2 [https://apache.org/licenses/LICENSE-2.0.txt]                                       *
*	Authors: UI Manufaktur UG Team, Ozan Nurettin Süel (Sicherheitsschmiede)			                                       * 
***********************************************************************************************************************/
module web.controls;

@safe:

mixin(ImportPhobos!());

/// External libraries
// public import colored;
public import vibe.d;

// uim libraries
public import uim.core;
public import uim.oop;
public import uim.html;
public import uim.bootstrap;
public import langs.javascript;
public import uim.jsonbase;
public import uim.entitybase;

public import layouts.tabler;

// Packages for main classes
public import web.controls.control;
public import web.controls.div;
public import web.controls.span;
public import web.controls.enums;

// PACKAGES
public import web.controls.accordions;
public import web.controls.alerts;
public import web.controls.audios;
public import web.controls.avatars;
public import web.controls.badges;
public import web.controls.breadcrumbs;
public import web.controls.buttons;
public import web.controls.calendars;
public import web.controls.cards;
public import web.controls.carousels;
public import web.controls.charts;
public import web.controls.collapses;
public import web.controls.columns;
public import web.controls.dashboards;
public import web.controls.datagrids;
public import web.controls.datas;
public import web.controls.dates;
public import web.controls.dialogs;
public import web.controls.dividers;
public import web.controls.dropdowns;
public import web.controls.dropzones;
public import web.controls.empties;
public import web.controls.facets;
public import web.controls.footers;
public import web.controls.forms;
public import web.controls.illustrations;
public import web.controls.images;
public import web.controls.inputs;
public import web.controls.invoices;
public import web.controls.layouts;
public import web.controls.links;
public import web.controls.lists;
public import web.controls.loaders;
public import web.controls.medias;
public import web.controls.modals;
public import web.controls.navbars;
public import web.controls.navs;
public import web.controls.offcanvases;
public import web.controls.pages;
public import web.controls.paginations;
public import web.controls.pictures;
public import web.controls.placeholders;
public import web.controls.popovers;
public import web.controls.processes;
public import web.controls.progresses;
public import web.controls.rangesliders;
public import web.controls.ribbons;
public import web.controls.rows;
public import web.controls.selects;
public import web.controls.sheets;
public import web.controls.shells;
public import web.controls.statuses;
public import web.controls.steps;
public import web.controls.switchicons;
public import web.controls.tables;
public import web.controls.tabs;
public import web.controls.tiles;
public import web.controls.timelines;
public import web.controls.toasts;
public import web.controls.tokens;
public import web.controls.tokenizers;
public import web.controls.toolbars;
public import web.controls.tooltips;
public import web.controls.trees;
public import web.controls.videos;
public import web.controls.wizards;

public import web.controls.tests;

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
    this.addContent(`~content~`.addContent(newContent.dup));
    return cast(O)this;
  }

  O add`~name~`(this O)(string id, DH5Obj[] newContent){
    this.addContent(`~content~`.id(id).addContent(newContent));
    return cast(O)this;
  }
  O add`~name~`(this O)(string id, DH5Obj[] newContent...){
    this.addContent(`~content~`.id(id).addContent(newContent.dup));
    return cast(O)this;
  }

  O add`~name~`(this O)(string[] classes, DH5Obj[] newContent){
    this.addContent(`~content~`.addClasses(classes).addContent(newContent));
    return cast(O)this;
  }
  O add`~name~`(this O)(string[] classes, DH5Obj[] newContent...){
    this.addContent(`~content~`.addClasses(classes).addContent(newContent.dup));
    return cast(O)this;
  }

  O add`~name~`(this O)(string[string] attributes, DH5Obj[] newContent){
    this.addContent(`~content~`.addAttributes(attributes).addContent(newContent));
    return cast(O)this;
  }
  O add`~name~`(this O)(string[string] attributes, DH5Obj[] newContent...){
    this.addContent(`~content~`.addAttributes(attributes).addContent(newContent.dup));
    return cast(O)this;
  }

  O add`~name~`(this O)(string id, string[] classes, DH5Obj[] newContent){
    this.addContent(`~content~`.id(id).addClasses(classes).addContent(newContent));
    return cast(O)this;
  }
  O add`~name~`(this O)(string id, string[] classes, DH5Obj[] newContent...){
    this.addContent(`~content~`.id(id).addClasses(classes).addContent(newContent.dup));
    return cast(O)this;
  }

  O add`~name~`(this O)(string id, string[string] attributes, DH5Obj[] newContent){
    this.addContent(`~content~`.id(id).addAttributes(attributes).addContent(newContent));
    return cast(O)this;
  }
  O add`~name~`(this O)(string id, string[string] attributes, DH5Obj[] newContent...){
    this.addContent(`~content~`.id(id).addAttributes(attributes).addContent(newContent.dup));
    return cast(O)this;
  }

  O add`~name~`(this O)(string id, string[] classes, string[string] attributes, DH5Obj[] newContent){
    this.addContent(`~content~`.id(id).addClasses(classes).addAttributes(attributes).addContent(newContent));
    return cast(O)this;
  }
  O add`~name~`(this O)(string id, string[] classes, string[string] attributes, DH5Obj[] newContent...){
    this.addContent(`~content~`.id(id).addClasses(classes).addAttributes(attributes).addContent(newContent.dup));
    return cast(O)this;
  }

  O add`~name~`(this O)(string[] classes, string[string] attributes, DH5Obj[] newContent){
    this.addContent(`~content~`.addClasses(classes).addAttributes(attributes).addContent(newContent));
    return cast(O)this;
  }
  O add`~name~`(this O)(string[] classes, string[string] attributes, DH5Obj[] newContent...){
    this.addContent(`~content~`.addClasses(classes).addAttributes(attributes).addContent(newContent.dup));
    return cast(O)this;
  }`;
}

template ControlThis(string name) {
  const char[] ControlThis = `
    this() { super(); }

    this(string newContent)      { this().addContent(newContent); }
    this(DH5Obj[] newContent...) { this(newContent.dup); }
    this(DH5Obj[] newContent)    { this().addContent(newContent); }

    this(string[] newClasses) { this().addClasses(newClasses); }
    this(string[] newClasses, string newContent)      { this(newClasses).addContent(newContent); }
    this(string[] newClasses, DH5Obj[] newContent...) { this(newClasses, newContent.dup); }
    this(string[] newClasses, DH5Obj[] newContent)    { this(newClasses).addContent(newContent); }   
    
    this(string[string] newAttributes) { this().addAttributes(newAttributes); }
    this(string[string] newAttributes, string newContent)      { this(newAttributes).addContent(newContent); }
    this(string[string] newAttributes, DH5Obj[] newContent...) { this(newAttributes, newContent.dup); }
    this(string[string] newAttributes, DH5Obj[] newContent)    { this(newAttributes).addContent(newContent); }

    this(string[] newClasses, string[string] newAttributes) { this(newClasses).addAttributes(newAttributes); }
    this(string[] newClasses, string[string] newAttributes, string newContent)      { this(newClasses, newAttributes).addContent(newContent); }
    this(string[] newClasses, string[string] newAttributes, DH5Obj[] newContent...) { this(newClasses, newAttributes).addContent(newContent.dup); }
    this(string[] newClasses, string[string] newAttributes, DH5Obj[] newContent)    { this(newClasses, newAttributes).addContent(newContent); }

    this(string newId, DH5Obj[] newContent...) { this(newContent.dup).id(newId); }
    this(string newId, DH5Obj[] newContent)    { this(newContent).id(newId); }

    this(string newId, string[] newClasses) { this(newClasses).id(newId); }
    this(string newId, string[] newClasses, string newContent)      { this(newClasses, newContent).id(newId); }
    this(string newId, string[] newClasses, DH5Obj[] newContent...) { this(newClasses, newContent.dup).id(newId); }
    this(string newId, string[] newClasses, DH5Obj[] newContent)    { this(newClasses, newContent).id(newId); }   
    
    this(string newId, string[string] newAttributes) { this(newAttributes).id(newId); }
    this(string newId, string[string] newAttributes, string newContent)      { this(newAttributes, newContent).id(newId); }
    this(string newId, string[string] newAttributes, DH5Obj[] newContent...) { this(newAttributes, newContent.dup).id(newId); }
    this(string newId, string[string] newAttributes, DH5Obj[] newContent)    { this(newAttributes, newContent).id(newId); }

    this(string newId, string[] newClasses, string[string] newAttributes) { this(newClasses, newAttributes).id(newId); }
    this(string newId, string[] newClasses, string[string] newAttributes, string newContent)      { this(newClasses, newAttributes, newContent).id(newId); }
    this(string newId, string[] newClasses, string[string] newAttributes, DH5Obj[] newContent...) { this(newClasses, newAttributes, newContent.dup).id(newId); }
    this(string newId, string[] newClasses, string[string] newAttributes, DH5Obj[] newContent)    { this(newClasses, newAttributes, newContent).id(newId); }

`;

}

template ControlCalls(string callName, string className) {
  const char[] ControlCalls = `
auto `~callName~`() { return new `~className~`(); }

auto `~callName~`(string newContent)      { return new `~className~`(newContent); }
auto `~callName~`(DH5Obj[] newContent...) { return new `~className~`(newContent.dup); }
auto `~callName~`(DH5Obj[] newContent)    { return new `~className~`(newContent); }

auto `~callName~`(string[] newClasses) { return `~callName~`.addClasses(newClasses); }
auto `~callName~`(string[] newClasses, string newContent)      { return new `~className~`(newClasses, newContent); }
auto `~callName~`(string[] newClasses, DH5Obj[] newContent...) { return new `~className~`(newClasses, newContent.dup); }
auto `~callName~`(string[] newClasses, DH5Obj[] newContent)    { return new `~className~`(newClasses, newContent); }

auto `~callName~`(string[string] newAttributes) { return `~callName~`.addAttributes(newAttributes); }
auto `~callName~`(string[string] newAttributes, string newContent)      { return new `~className~`(newAttributes, newContent); }
auto `~callName~`(string[string] newAttributes, DH5Obj[] newContent...) { return new `~className~`(newAttributes, newContent.dup); }
auto `~callName~`(string[string] newAttributes, DH5Obj[] newContent)    { return new `~className~`(newAttributes, newContent); }

auto `~callName~`(string[] newClasses, string[string] newAttributes) { return new `~className~`(newClasses, newAttributes); }
auto `~callName~`(string[] newClasses, string[string] newAttributes, string newContent)      { return new `~className~`(newClasses, newAttributes, newContent); }
auto `~callName~`(string[] newClasses, string[string] newAttributes, DH5Obj[] newContent...) { return new `~className~`(newClasses, newAttributes, newContent.dup); }
auto `~callName~`(string[] newClasses, string[string] newAttributes, DH5Obj[] newContent)    { return new `~className~`(newClasses, newAttributes, newContent); }

auto `~callName~`(string anId, DH5Obj[] newContent...) { return `~callName~`.id(anId).addContent(newContent.dup); }
auto `~callName~`(string anId, DH5Obj[] newContent)    { return `~callName~`.id(anId).addContent(newContent); }

auto `~callName~`(string anId, string[] newClasses) { return `~callName~`.id(anId).addClasses(newClasses); }
auto `~callName~`(string anId, string[] newClasses, string newContent)      { return `~callName~`(anId, newClasses).addContent(newContent); }
auto `~callName~`(string anId, string[] newClasses, DH5Obj[] newContent...) { return `~callName~`(anId, newClasses).addContent(newContent.dup); }
auto `~callName~`(string anId, string[] newClasses, DH5Obj[] newContent)    { return `~callName~`(anId, newClasses).addContent(newContent); }

auto `~callName~`(string anId, string[string] newAttributes) { return `~callName~`.id(anId).addAttributes(newAttributes); }
auto `~callName~`(string anId, string[string] newAttributes, string newContent)      { return `~callName~`(anId, newAttributes).addContent(newContent); }
auto `~callName~`(string anId, string[string] newAttributes, DH5Obj[] newContent...) { return `~callName~`(anId, newAttributes).addContent(newContent.dup); }
auto `~callName~`(string anId, string[string] newAttributes, DH5Obj[] newContent)    { return `~callName~`(anId, newAttributes).addContent(newContent); }

auto `~callName~`(string anId, string[] newClasses, string[string] newAttributes) { return `~callName~`(anId, newClasses).addAttributes(newAttributes); }
auto `~callName~`(string anId, string[] newClasses, string[string] newAttributes, string newContent)      { return `~callName~`(anId, newClasses, newAttributes).addContent(newContent); }
auto `~callName~`(string anId, string[] newClasses, string[string] newAttributes, DH5Obj[] newContent...) { return `~callName~`(anId, newClasses, newAttributes).addContent(newContent.dup); }
auto `~callName~`(string anId, string[] newClasses, string[string] newAttributes, DH5Obj[] newContent)    { return `~callName~`(anId, newClasses, newAttributes).addContent(newContent); }

`;
}
