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
          class="flex flex-col justify-center gap-8 bg-white dark:bg-gray-800 p-8 rounded-2xl shadow-sm border border-gray-200 dark:border-gray-700"
        >
          <h3 class="text-xl font-bold">Навыки и экспертиза</h3>

          <div
            v-for="skill in skills"
            :key="skill.name"
            class="flex flex-col gap-2"
          >
            <div class="flex justify-between text-sm font-medium">
              <span class="dark:text-gray-200">{{ skill.name }}</span>
              <span class="text-[var(--color-primary)]"
                >{{ skill.percentage }}%</span
              >
            </div>
            <div class="w-full bg-gray-100 dark:bg-gray-700 rounded-full h-2.5">
              <div
                class="bg-[var(--color-primary)] h-2.5 rounded-full transition-all duration-500"
                :style="{ width: `${skill.percentage}%` }"
              />
            </div>
          </div>

          <div class="flex flex-wrap gap-2 mt-2">
            <span
              v-for="tag in skillTags"
              :key="tag"
              class="px-3 py-1 bg-gray-100 dark:bg-gray-700 dark:text-gray-300 text-gray-600 rounded-md text-xs font-semibold"
            >
              {{ tag }}
            </span>
          </div>
        </div>
      </div>
    </div>
  </section>
</template>
