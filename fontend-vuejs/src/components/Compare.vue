<script setup>
import { onMounted } from "vue";
import { useGetProduct } from "../stores/store";
import { ArrowLongRightIcon } from "@heroicons/vue/24/solid";
const store = useGetProduct();

onMounted(async () => {
  await store.getProducts();
  // await store.getProductById();
});

function redirectUrl() {
  window.open(store.dataDetail?.url_store, "_blank");
}
</script>
<template>
  <div class="max-w-7xl mt-5 gap-4 p-5 mx-auto">
    <div id="compare">
      <div class="font-semibold">So sánh giá</div>
      <div v-for="data in store.dataProducts" :key="data.id"
        class="flex justify-between shadow-md p-5 items-center my-4 rounded-lg hover:border hover:shadow-lg">
        <div class="flex items-center">
          <div>
            <img :src="data.images[0].image_url" alt="" class="h-20 w-20" />
          </div>
          <div class="ml-4">{{ data.name }}</div>
        </div>
        <div class="flex items-center">
          <div class="mr-4 text-red-500 font-semibold">{{ data.price }}đ</div>
          <div>
            <button @click="redirectUrl"
              class="flex border border-blue-600 text-blue-600 px-4 py-2 rounded-md text-sm hover:bg-blue-600 hover:text-white hover:font-semibold">
              <p class="my-auto">Đến nơi bán</p>
              <ArrowLongRightIcon class="size-6" />
            </button>
          </div>
        </div>
      </div>
    </div>
    <div id="description" class="mt-10">
      <div class="font-semibold">Mô tả sản phẩm</div>
      <div class="mt-5">{{ store.dataDetail?.description }}</div>
    </div>
  </div>
</template>
