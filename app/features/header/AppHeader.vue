<script setup lang="ts">
const mobileMenuOpen = ref(false);

const navLinks = [
  { href: "#home", label: "Главная" },
  { href: "#news", label: "Новости" },
  { href: "#about", label: "Обо мне" },
  { href: "#services", label: "Услуги" },
];
</script>

<template>
  <header
    class="sticky top-0 z-50 bg-white/90 backdrop-blur-md dark:bg-gray-900/90 header-rainbow"
  >
    <div
      class="max-w-[1280px] mx-auto px-4 sm:px-10 py-3 flex items-center justify-between"
    >
      <div class="flex items-center gap-3">
        <div
          class="size-8 flex items-center justify-center bg-[var(--color-primary)]/10 rounded-lg text-[var(--color-primary)]"
        >
          <UIcon name="i-heroicons-user" class="size-5" />
        </div>
        <h2 class="text-lg font-bold leading-tight tracking-tight">
          Черикчиев Эрмек
        </h2>
      </div>

      <!-- Desktop Navigation -->
      <nav class="hidden md:flex flex-1 justify-end gap-8 items-center">
        <div class="flex items-center gap-8">
          <a
            v-for="link in navLinks"
            :key="link.href"
            :href="link.href"
            class="text-sm font-medium hover:text-[var(--color-primary)] transition-colors dark:text-gray-300"
          >
            {{ link.label }}
          </a>
        </div>
        <UButton color="primary" size="lg" to="#contact">Связаться</UButton>
      </nav>

      <!-- Mobile Menu Button -->
      <button
        class="md:hidden p-2 text-gray-600 dark:text-gray-300"
        @click="mobileMenuOpen = !mobileMenuOpen"
      >
        <UIcon
          :name="mobileMenuOpen ? 'i-heroicons-x-mark' : 'i-heroicons-bars-3'"
          class="size-6"
        />
      </button>
    </div>

    <!-- Mobile Navigation -->
    <div
      v-if="mobileMenuOpen"
      class="md:hidden bg-white dark:bg-gray-900 border-t border-gray-200 dark:border-gray-800 px-4 py-4"
    >
      <nav class="flex flex-col gap-4">
        <a
          v-for="link in navLinks"
          :key="link.href"
          :href="link.href"
          class="text-sm font-medium hover:text-[var(--color-primary)] transition-colors"
          @click="mobileMenuOpen = false"
        >
          {{ link.label }}
        </a>
        <UButton
          color="primary"
          size="lg"
          to="#contact"
          class="w-full"
          @click="mobileMenuOpen = false"
        >
          Связаться
        </UButton>
      </nav>
    </div>
  </header>
</template>

<style scoped>
.header-rainbow {
  position: sticky;
}

.header-rainbow::after {
  content: "";
  position: absolute;
  bottom: 0;
  left: 0;
  right: 0;
  height: 2px;
  background: linear-gradient(
    90deg,
    #ff0000,
    #ff7f00,
    #ffff00,
    #00ff00,
    #0000ff,
    #4b0082,
    #9400d3,
    #ff0000
  );
  background-size: 200% 100%;
  animation: rainbow-slide 3s linear infinite;
}

@keyframes rainbow-slide {
  0% {
    background-position: 0% 50%;
  }
  100% {
    background-position: 200% 50%;
  }
}
</style>
