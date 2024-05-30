<script setup>
import { StarIcon } from "@heroicons/vue/24/solid";
import { ref, onMounted } from "vue";
import { useGetProduct } from "../stores/store";
import { Splide, SplideSlide } from "@splidejs/vue-splide";
// Default theme
import "@splidejs/vue-splide/css";

// or other themes
import "@splidejs/vue-splide/css/skyblue";
import "@splidejs/vue-splide/css/sea-green";

// or only core styles
import "@splidejs/vue-splide/css/core";

const store = useGetProduct();

onMounted(async () => {
  await store.getProductById({ id: 3 });
  currentImage.value = store.dataDetail?.images[1]?.image_url;
});

const items = ref({
  title: "Bộ Hub mở rộng Baseus Metal Gleam 2 Series 4K60Hz",
  price: "505.080",
  imgArr: [
    {
      id: 1,
      url: "https://cf.shopee.vn/file/vn-11134207-7r98o-lnqi3aa07ce294_tn",
    },
    {
      id: 2,
      url: "https://cf.shopee.vn/file/0831df249013d5ae50d7ed42996412c8_tn",
    },
    {
      id: 3,
      url: "https://cf.shopee.vn/file/be82e16ddc37dcf2657d02a30171a050_tn",
    },
    {
      id: 4,
      url: "https://cf.shopee.vn/file/2d7d1d30596c7d6527b403f9e3a40518_tn",
    },
    {
      id: 5,
      url: "https://cf.shopee.vn/file/38625d8696c075b0266676b87dc910dd_tn",
    },
    {
      id: 6,
      url: "https://cf.shopee.vn/file/2c467c40341e8132bae9b6b493a7ae33_tn",
    },
  ],
});
const currentImage = ref(null);
const updateImage = (url) => {
  currentImage.value = url;
};

function redirectUrl() {
  window.open(store.dataDetail?.url_store, "_blank");
}
</script>


<template>
  <div class="flex max-w-7xl mt-20 gap-4 p-5 mx-auto justify-between">
    <div class="w-1/2 border border-gray-300 rounded-xl mx-auto">
      <div class="p-5">
        <img class="w-full cursor-zoom-in" :src="currentImage" alt="" />
      </div>
      <div>
        <Splide :options="{ perPage: 5, gap: '1rem' }">
          <SplideSlide v-for="data in store.dataDetail?.images" :key="data.id">
            <div class="shadow-md border w-full cursor-zoom-in" @mouseover="updateImage(data.image_url)">
              <div>
                <img :src="data.image_url" alt="" class="w-full h-auto hover:border-2 hover:border-orange-500" />
              </div>
            </div>
          </SplideSlide>
        </Splide>
      </div>
    </div>
    <div class="w-1/2">
      <div class="text-lg font-semibold">
        Bộ Hub mở rộng Baseus Metal Gleam 2 Series 4K60Hz
      </div>
      <button
        class="border border-[#F5701A] mt-5 py-1 px-2 rounded-full text-[#F5701A] hover:text-white hover:bg-[#F5701A]">
        Theo dõi giảm giá
      </button>
      <div class="flex mt-5 items-center gap-4">
        <div>Giá từ shopee</div>
        <img class="w-8 h-8 rounded-full"
          src="https://lh3.googleusercontent.com/mvI9jsrKjP7Q7ZqYOXuJTRZF9Q1e4PZJjjmNAyzh6OKtxtSUNPK920MMFsXploU60VPMqHCdJLEMzaEF_ktvIXuII2IEamnw0Cr5Cb97_803ePqQQYOLtHQLrVUe9e2DPZ3MoxTp"
          alt="" />
      </div>
      <div class="flex mt-5 items-center gap-10">
        <div>
          <div class="text-2xl font-bold text-[#DC2626]">505.080 ₫</div>
          <div class="text-sm">549.000 ₫</div>
        </div>
        <div class="text-xs font-semibold bg-[#A7F3D0] text-[#047857] py-1 px-2 rounded-lg">
          43.920 ₫
        </div>
        <button class="bg-[#F5701A] text-white text-sm py-3 px-6 rounded-md" @click="redirectUrl">
          Đến nơi bán ->
        </button>
      </div>
      <div class="flex mt-4 items-center gap-2">
        <div class="text-yellow-400 flex items-center border-r pr-2">
          <div class="text-sm">4.9</div>
          <div v-for="i in 5" :key="i">
            <StarIcon class="size-4" />
          </div>
        </div>
        <div class="text-sm border-r pr-2">60 đánh giá</div>
        <div class="text-sm">202 lượt bán</div>
      </div>
    </div>
  </div>
</template>
