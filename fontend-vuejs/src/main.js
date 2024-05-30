import { createApp } from "vue";
import "./style.css";
import App from "./App.vue";
import VueSplide from "@splidejs/vue-splide";
import { createPinia } from "pinia";

const pinia = createPinia();
const app = createApp(App);

app.use(pinia);
app.use(VueSplide);
app.mount("#app");
