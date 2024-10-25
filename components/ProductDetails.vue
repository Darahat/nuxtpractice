<template>
      <div class="card text-center shadow-sm">
        <img :src="product.image" alt="" class="thumb">
        <p>{{ product.title }}</p>
        <p>{{ product.price }}</p>
        <p>{{ product.description }}</p>
        <p>{{ product.category }}</p>
        <button class="btn flex">
            <i class="material-icons mr-2">add_shopping_cart</i>
            <span>Add to cart</span>
        </button>
    </div>
</template>
<script setup>
const { product } = defineProps(['product']);
</script>