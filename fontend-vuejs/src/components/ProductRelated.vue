<script setup>
import { onMounted, ref } from "vue";
import { Splide, SplideSlide } from "@splidejs/vue-splide";
import { useGetProduct } from "../stores/store";
// Default theme
import "@splidejs/vue-splide/css";

// or other themes
import "@splidejs/vue-splide/css/skyblue";
import "@splidejs/vue-splide/css/sea-green";

// or only core styles
import "@splidejs/vue-splide/css/core";

const store = useGetProduct();

onMounted(async () => {
  await store.getProducts();
});

const datas = ref([
  {
    id: 1,
    title: "Bộ hub mở rộng 8 in 1 baseus metal gleam lvm001",
    chip: "Có 1 nơi bán",
    price: "530.000",
    img: "https://cf.shopee.vn/file/be82e16ddc37dcf2657d02a30171a050_tn",
  },
  {
    id: 2,
    title: "Hub chia cổng lightning baseus l47",
    chip: "Có 3 nơi bán",
    price: "445.000",
    img: "https://cf.shopee.vn/file/d01055f6a5df466979ad3b6d0b1323f2_tn",
  },
  {
    id: 3,
    title: "Bộ hub chuyển đổi 5 trong 1 baseus cahub-td0g",
    chip: "Có 6 nơi bán",
    price: "550.000",
    img: "https://cf.shopee.vn/file/1c9dc6173430f906fcf3c320f3391f70_tn",
  },
  {
    id: 4,
    title: "Bộ hub chuyển đổi 5 trong 1 baseus cahub-k0g",
    chip: "Có 26 nơi bán",
    price: "310.000",
    img: "https://cf.shopee.vn/file/03f074338bc5815fb00fdb9ab2e85f3d_tn",
  },
  {
    id: 5,
    title: "Bộ hub chuyển đổi 5 trong 1 baseus cahub-td03",
    chip: "Có 14 nơi bán",
    price: "560.000",
    img: "https://cf.shopee.vn/file/3bff7e5f6cec689fda2a2a6fc1017a3d_tn",
  },
  {
    id: 6,
    title: "Bộ hub chuyển đổi 5 trong 1 baseus cahub-td03",
    chip: "Có 14 nơi bán",
    price: "560.000",
    img: "https://cf.shopee.vn/file/53e424b4e24a5a07412a1be9b46043ea_tn",
  },
]);
</script>
<template>
  <div
    id="product-related"
    class="max-w-7xl mt-20 gap-4 p-5 mx-auto justify-between z-0"
  >
    <div class="text-lg font-semibold">Sản phẩm liên quan</div>
    <!-- <div class="flex gap-2">
      <div class="shadow-md w-1/5" v-for="data in datas" :key="data.id">
        <div><img :src="data.img" alt="" /></div>
        <div class="p-3">
          <div class="text-sm font-semibold">{{ data.title }}</div>
          <div class="flex mt-2">
            <p
              class="text-sm font-semibold bg-[#A7F3D0] text-[#047857] py-1 px-2 rounded-lg"
            >
              {{ data.chip }}
            </p>
          </div>
          <div class="mt-2 text-red-500 font-semibold">
            Giá từ {{ data.price }} đ
          </div>
        </div>
      </div>
    </div> -->
    <Splide
      :options="{ perPage: 5, gap: '1rem' }"
      aria-label="Sản phẩm liên quan"
    >
      <SplideSlide v-for="data in store.dataProducts" :key="data.id">
        <div class="shadow-md border w-full">
          <div>
            <img :src="data.images[0].image_url" alt="" class="w-full h-auto" />
          </div>
          <div class="p-3">
            <div class="text-sm font-semibold">{{ data.name }}</div>
            <div class="flex mt-2">
              <a
                :href="data.url_store"
                class="text-sm font-semibold bg-[#A7F3D0] text-[#047857] py-1 px-2 rounded-lg"
              >
                Có 1 nơi bán
              </a>
            </div>
            <div class="mt-2 text-red-500 font-semibold">
              Giá từ {{ data.price }} đ
            </div>
          </div>
        </div>
      </SplideSlide>
    </Splide>
  </div>
</template>
