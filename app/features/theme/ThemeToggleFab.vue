<script setup lang="ts">
const colorMode = useColorMode();
const isAnimating = ref(false);

async function toggleTheme() {
  const newTheme = colorMode.value === "dark" ? "light" : "dark";
  isAnimating.value = true;

  // Check if View Transitions API is supported
  if (!document.startViewTransition) {
    colorMode.preference = newTheme;
    setTimeout(() => {
      isAnimating.value = false;
    }, 300);
    return;
  }

  // Start the view transition
  const transition = document.startViewTransition(() => {
    colorMode.preference = newTheme;
  });

  await transition.ready;
  await transition.finished;
  isAnimating.value = false;
}
</script>

<template>
  <button
    @click="toggleTheme"
    class="cursor-pointer fixed bottom-6 right-6 z-[101] size-14 rounded-full bg-[var(--color-primary)] text-white shadow-lg hover:shadow-xl hover:scale-110 transition-all duration-300 flex items-center justify-center"
    aria-label="Переключить тему"
  >
    <UIcon
      :name="
        colorMode.value === 'dark' ? 'i-heroicons-sun' : 'i-heroicons-moon'
      "
      class="size-6 transition-transform duration-500"
      :class="{ 'animate-spin-once': isAnimating }"
    />
  </button>
</template>
