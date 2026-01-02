<script setup lang="ts">
defineProps<{
  skills: Array<{ name: string; percentage: number }>;
  skillTags: string[];
  stats: Array<{ value: string; label: string }>;
}>();
</script>

<template>
  <section id="about" class="w-full py-16 px-4 md:px-10">
    <div class="max-w-[1024px] mx-auto">
      <div class="grid grid-cols-1 md:grid-cols-2 gap-12 md:gap-20">
        <div class="flex flex-col gap-6">
          <div>
            <h2
              class="text-2xl md:text-3xl font-bold leading-tight tracking-tight mb-4"
            >
              Обо мне
            </h2>
            <div class="h-1 w-20 bg-[var(--color-primary)] rounded-full" />
          </div>
          <p class="text-gray-600 dark:text-gray-300 leading-relaxed">
            Я увлечённый разработчик мобильных приложений и веб-сайтов,
            нацеленный на созданние дейсвительно удобных и полезных приложений.
          </p>
          <p class="text-gray-600 dark:text-gray-300 leading-relaxed">
            Я верю в приложение, которое не только красиво, но и функционально и
            удобно. В свободное время я занимаюсь спортом, походами и прочими
            интересными вещами.
          </p>
          <div class="grid grid-cols-2 gap-6 mt-4">
            <div v-for="stat in stats" :key="stat.label">
              <h4 class="text-3xl font-black text-[var(--color-primary)]">
                {{ stat.value }}
              </h4>
              <p class="text-sm font-medium text-gray-500">
                {{ stat.label }}
              </p>
            </div>
          </div>
        </div>

        <div
          class="w-full max-w-[400px] md:max-w-[480px] md:aspect-square mx-auto relative overflow-hidden bg-white dark:bg-gray-800 rounded-2xl shadow-sm border border-gray-200 dark:border-gray-700"
        >
          <NuxtImg
            src="/about.jpg"
            alt="about"
            class="w-full h-full object-cover"
          />
        </div>
      </div>
    </div>
  </section>
</template>
