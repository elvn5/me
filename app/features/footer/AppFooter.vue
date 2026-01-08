<script setup lang="ts">
const colorMode = useColorMode();
const isVisible = ref(false);

watch(
  () => colorMode.value,
  () => {
    isVisible.value = true;
    setTimeout(() => {
      isVisible.value = false;
    }, 150);
  }
);

const onClickHandler = () => {
  window.open(
    "https://docs.google.com/forms/d/e/1FAIpQLSdlfuQGGLvAJ2y2lynKC--Ga-7x2z_Ai5okcrY1xZsyRA769A/viewform?usp=sharing&ouid=105503144154273235853",
    "_blank"
  );
};
</script>

<template>
  <footer
    class="w-full bg-[var(--color-background-light)] dark:bg-[var(--color-background-dark)] py-8 text-center text-sm text-gray-500 border-t border-gray-200 dark:border-gray-800"
  >
    <div class="flex justify-center gap-3.5">
      <p>© 2026 Черикчиев Эрмек. Все права защищены.</p>
      <button
        v-on:click="onClickHandler"
        class="cursor-pointer transition-opacity duration-300"
        :class="isVisible ? 'opacity-100' : 'opacity-0'"
      >
        <UIcon name="i-heroicons-gift" class="size-6" />
      </button>
    </div>
  </footer>
</template>
