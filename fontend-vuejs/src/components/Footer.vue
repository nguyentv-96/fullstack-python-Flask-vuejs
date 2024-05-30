<script setup>
import { ref } from "vue";

const arr = ref([
  { id: 1, name: "Việt nam" },
  { id: 2, name: "Singapore" },
  { id: 3, name: "Philippines" },
  { id: 4, name: "Malaysia" },
  { id: 5, name: "Indonesia" },
  { id: 6, name: "Đài Loan" },
  { id: 7, name: "Mexico" },
  { id: 8, name: "Brazil" },
  { id: 9, name: "Thái Lan" },
]);
</script>
<template>
  <div
    class="px-96 py-10 mx-auto justify-between bg-[#F5F5F5] border-t-4 border-t-orange-500"
  >
    <div class="flex gap-4">
      <div class="w-1/3 p-4">
        <div>
          <img
            src="https://lh3.googleusercontent.com/pw/ADCreHe1uaXgFtO8dlQi1fSrqmcu7OPYJYtSDgXclZin8jZ7oMkHSNc20AqAt7f3wnxrneK1VtZe0s9R7e2476DKCTes06oqHbdx41zz-o15Nf9ggs3HHqGC2K8Ym-dgGvem2sd_03jB8KlUf2MDyq4GOTH_=w256"
            alt=""
          />
        </div>
        <div class="mt-4 text-gray-600">
          Mua Thông Minh là website, ứng dụng tìm kiếm và đánh giá hàng hóa sản
          phẩm online. Giúp bạn né Sale ảo, mua giá tốt, tin cậy và trở thành
          người tiêu dùng thông thái. MuaThongMinh.vn không bán hàng!
        </div>
        <div class="mt-4 text-gray-600">KẾT NỐI VỚI CHÚNG TÔI</div>
      </div>
      <div class="w-1/3 p-4">
        <div class="text-gray-400 font-semibold">VỀ MUA THÔNG MINH</div>
        <div class="mt-4 text-gray-600 cursor-pointer">Blog</div>
        <div class="mt-4 text-gray-600 cursor-pointer">Giới thiệu</div>
        <div class="mt-4 text-gray-600 cursor-pointer">Chính sách bảo mật</div>
        <div class="mt-4 text-gray-600 cursor-pointer">Điều khoản sử dụng</div>
        <div class="mt-4 text-gray-600 cursor-pointer">Metric</div>
        <div class="mt-4 text-gray-600 cursor-pointer">Điểm thi</div>
      </div>
      <div class="w-1/3 p-4">
        <div class="text-gray-400 font-semibold">LIÊN HỆ</div>
        <div class="mt-4 text-gray-500 font-semibold">
          Công ty Cổ phần Khoa học Dữ liệu
        </div>
        <div class="text-gray-600">Số ĐKKD: 0108677693</div>
        <div class="text-gray-600">
          Địa chỉ: Tầng 6 toà nhà AZ Lâm Viên, 107A Nguyễn Phong Sắc, Phường
          Dịch Vọng Hậu, Quận Cầu Giấy, Thành phố Hà Nội, Việt Nam.
        </div>
        <div class="text-gray-600">Email: info@beecost.com</div>
      </div>
    </div>
    <hr />
    <div class="flex text-sm text-gray-500 text-center mx-auto justify-center  py-4">
      <div>Quốc gia & Khu vực:</div>
      <div class="flex" v-for="i in arr" :key="i.id">
        <div class="px-2">{{ i.name }}</div>
        <div class="text-gray-300" v-show="i.id < 9">|</div>
      </div>
    </div>
  </div>
</template>
