import { defineStore } from "pinia";
import axios from "axios";
import { ref } from "vue";

export const useGetProduct = defineStore("get", () => {
  const baseUrl = "http://192.168.1.159:5000";

  const dataProducts = ref([]);
  const dataDetail = ref({});

  const getProducts = async () => {
    try {
      const response = await axios.get(`${baseUrl}/products`);
      dataProducts.value = response.data.data;
      console.log("dataProducts.value", dataProducts.value);
      return response;
    } catch (error) {
      return error;
    }
  };

  const getProductById = async (params) => {
    try {
      const response = await axios.get(`${baseUrl}/product/${params.id}`);
      dataDetail.value = response.data.data;
      return response;
    } catch (error) {
      return error;
    }
  };

  return {
    getProducts,
    dataProducts,
    getProductById,
    dataDetail,
  };
});
