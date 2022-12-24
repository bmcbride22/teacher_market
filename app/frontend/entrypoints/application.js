import "./main.scss";

// Setup vue as below to sprinkle Vue components on rails views
import { createApp } from "vue/dist/vue.esm-bundler";
// import { Menu, MenuButton, MenuItem, MenuItems, Popover, PopoverButton, PopoverPanel } from "@headlessui/vue";
// import { MagnifyingGlassIcon } from "@heroicons/vue/20/solid";
// import { Bars3Icon, BellIcon, XMarkIcon } from "@heroicons/vue/24/outline";
import Home from "../components/views/Home.vue";

const app = createApp({
  data() {
    return {
      message: "Hello Vue 3 Components and Rails"
    };
  }
});

// import (and use) the components one by one
app.component("Home", Home);

app.mount("#vue");
