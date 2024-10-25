<template>
    <div class="card text-center shadow-sm">
        <img :src="product.image" alt="" class="thumb">
        <p class="font-bold text-gray-500 m-4 truncate">{{ product.title }}</p>
<button @click="handleClick" class="btn ">mybutton</button>
        <NuxtLink :to="`/products/${product.id}`" class="">
            <p class="btn">details</p>
        </NuxtLink>

    </div>
</template>   

<script setup>
const { product } = defineProps(['product']);
const handleClick = () => {
    console.log(product.id);
}
 </script>

<style>
.thumb {
    max-height: 120px;
    max-width: 70%;
    margin: 0 auto;
}
</style>