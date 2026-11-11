import { apiInitializer } from "discourse/lib/api";
import OcasiFooter from "../components/ocasi-footer.gjs";

export default apiInitializer((api) => {
  api.renderInOutlet(settings.footer_outlet, OcasiFooter);
});
