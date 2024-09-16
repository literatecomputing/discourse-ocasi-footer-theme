import Component from "@glimmer/component";
import { inject as service } from "@ember/service";

export default class OcasiFooter extends Component {
  @service router;
  get ocasiImage() {
    console.log("ocasiImage", this);
  return settings.theme_uploads.ocasi;
  }
  get ontarioImage() {
    return settings.theme_uploads.ontario;
  }
  get showFooterContent () {
    return false;
  }
  get showFooterContent() {
    const currentRoute = this.router.currentRoute;
    console.log("route", currentRoute.name);
    return currentRoute.name === "discovery.categories" || currentRoute.name === "about";
  }
  get footerOutlet() {
    return "main-outlet-bottom";
  }
<template>
{{#if this.showFooterContent}}
  <div class="ocasi-footer">
    <div class="ocasi-logo">
      <img src={{this.ocasiImage}} alt="OCASI Logo" />
    </div>
    <div class="ontario-logo">
      <img src={{this.ontarioImage}} alt="Ontario Logo" />
    </div>
  </div>
  {{/if}}
</template>
}


