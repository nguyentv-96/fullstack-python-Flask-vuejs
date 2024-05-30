<script setup>
import { MagnifyingGlassIcon } from "@heroicons/vue/24/solid";
</script>
<template>
  <div class="flex max-w-7xl p-5 mx-auto justify-between items-center">
    <div class="text-xl font-semibold text-[#F5701A]">Mua Thông Minh</div>
    <div class="w-2/4 flex relative">
      <input
        class="w-[90%] mx-auto py-2 px-4 rounded-full focus:outline-none border border-gray-300"
        type="text"
        placeholder="Dán link hoặc tìm sản phẩm"
      />
      <MagnifyingGlassIcon
        class="size-6 absolute right-10 top-2 text-[#F5701A] cursor-pointer hover:text-blue-500"
      />
    </div>
    <div class="flex gap-4">
      <p class="">DANH MỤC</p>
      <p class="">BLOG</p>
    </div>
  </div>
</template>
