<script setup>
import { ref, onMounted, onUnmounted } from "vue";

const isFixed = ref(false);
const tabRef = ref(null);
const tabHeight = ref(0);
const idElement = ref(null);
const thresholdHeight = 1000; // Chiều cao nhất định để chuyển đổi

const handleScroll = () => {
  if (tabRef.value) {
    const top = window.scrollY;
    isFixed.value = top > thresholdHeight;
  }
};

onMounted(() => {
  if (tabRef.value) {
    tabHeight.value = tabRef.value.offsetHeight;
  }
  window.addEventListener("scroll", handleScroll);
});

onUnmounted(() => {
  window.removeEventListener("scroll", handleScroll);
});

const scrollToMessage = (id) => {
  const element = document.getElementById(id);
  idElement.value = id;
  if (element) {
    const offset = isFixed.value ? tabHeight.value : 0; // Offset by the height of the tab
    const elementPosition =
      element.getBoundingClientRect().top + window.scrollY;
    const offsetPosition = elementPosition - offset;
    window.scrollTo({
      top: offsetPosition,
      behavior: "smooth",
    });
  }
};
</script>
<template>
  <div
    :class="isFixed ? 'fixed top-0 shadow-md' : 'relative'"
    ref="tabRef"
    class="flex 2xl:pl-80 w-full gap-4 py-2 mx-auto bg-white font-semibold z-10"
  >
    <div
      @click="scrollToMessage('compare')"
      class="border-b-2 hover:border-[#F5701A] duration-300 py-2 cursor-pointer"
      :class="
        idElement == 'compare'
          ? 'border-orange-700 text-gray-700'
          : 'text-gray-500'
      "
    >
      So sánh giá
    </div>
    <div
      @click="scrollToMessage('description')"
      class="border-b-2 hover:border-[#F5701A] duration-300 py-2 cursor-pointer"
      :class="
        idElement == 'description'
          ? 'border-orange-700 text-gray-700'
          : 'text-gray-500'
      "
    >
      Mô tả sản phẩm
    </div>
  </div>
</template>
