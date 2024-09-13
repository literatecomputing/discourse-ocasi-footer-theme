import Component from "@glimmer/component";

export default class OcasiFooter extends Component {
  get ocasiImage() {
    console.log("ocasiImage", this);
  return settings.theme_uploads.ocasi;
  }
  get ontarioImage() {
    return settings.theme_uploads.ontario;
  }
  <template>
    <div class="ocasi-footer">
        <div class="ocasi-logo">
          <img src={{this.ocasiImage}} />
        </div>
        this is my foodtrr
        <div class="ontario-logo">
          <img src={{this.ontarioImage}} />
        </div>
    </div>
  </template>
}


