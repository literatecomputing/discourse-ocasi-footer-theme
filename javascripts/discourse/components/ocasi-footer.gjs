import Component from "@glimmer/component";
import { service } from "@ember/service";

export default class OcasiFooter extends Component {
  @service router;

  get ocasiImage() {
    return settings.theme_uploads.ocasi;
  }

  get ontarioImage() {
    return settings.theme_uploads.ontario;
  }

  get showFooterContent() {
    const currentRoute = this.router.currentRoute;
    return (
      currentRoute.name === "discovery.categories" ||
      currentRoute.name === "about"
    );
  }

  get footerOutlet() {
    return "main-outlet-bottom";
  }

  <template>
    {{#if this.showFooterContent}}
      <div class="ocasi-footer">
        <div class="ocasi-logo">
          <img alt="OCASI Logo" src={{this.ocasiImage}} />
        </div>
        <div class="ontario-logo">
          <img alt="Ontario Logo" src={{this.ontarioImage}} />
        </div>
      </div>
    {{/if}}
  </template>
}
