import { apiInitializer } from "discourse/lib/api";
import OcasiFooter from "../components/ocasi-footer";

export default apiInitializer("1.15.0", (api) => {
  console.log("my api", api, settings);
  // api.renderInOutlet("above-footer", OcasiFooter);

  api.renderInOutlet(settings.footer_outlet, OcasiFooter);
});
