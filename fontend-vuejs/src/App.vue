<script setup>
import HeaderNoti from "./components/HeaderNoti.vue";
import HeaderMenu from "./components/HeaderMenu.vue";
import Card from "./components/Card.vue";
import ProductRelated from "./components/ProductRelated.vue";
import Tab from "./components/Tab.vue";
import Compare from "./components/Compare.vue";
import Footer from "./components/Footer.vue";
</script>

<template>
  <div>
    <HeaderNoti />
    <HeaderMenu />
    <hr />
    <Card />
    <Tab />
    <Compare />
    <ProductRelated />
    <Footer />
  </div>
</template>

<style scoped></style>
