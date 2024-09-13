import Component from "@glimmer/component";

export default class OcasiFooter extends Component {
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
  get footerOutlet() {
    return "main-outlet-bottom";
  }
<template>
  <div class="ocasi-footer">
    <div class="ocasi-logo">
      <img src={{this.ocasiImage}} alt="OCASI Logo" />
    </div>
{{#if this.showFooterContent}}
    <div class="footer-content">
      This is my footer
    </div>
{{/if}}
    <div class="ontario-logo">
      <img src={{this.ontarioImage}} alt="Ontario Logo" />
    </div>
  </div>
</template>
}


