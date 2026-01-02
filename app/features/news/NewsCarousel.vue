<script setup lang="ts">
defineProps<{
  newsItems: Array<{
    id: number;
    type: string;
    icon: string;
    title: string;
    description: string;
    date: string;
    image: string;
  }>;
}>();

const carouselRef = ref<HTMLElement | null>(null);

function scrollCarousel(direction: "prev" | "next") {
  if (!carouselRef.value) return;
  const scrollAmount = 340;
  carouselRef.value.scrollBy({
    left: direction === "next" ? scrollAmount : -scrollAmount,
    behavior: "smooth",
  });
}
</script>

<template>
  <section
    id="news"
    class="w-full bg-white dark:bg-gray-900 py-16 px-4 md:px-10 border-y border-gray-200 dark:border-gray-800"
  >
    <div class="max-w-[1024px] mx-auto flex flex-col gap-8">
      <div class="flex justify-between items-end px-2">
        <div>
          <h2
            class="text-2xl md:text-3xl font-bold leading-tight tracking-tight mb-2"
          >
            Последние новости
          </h2>
          <p class="text-gray-500 dark:text-gray-400">
            Мысли, события и недавняя деятельность.
          </p>
        </div>
        <div class="hidden sm:flex gap-2">
          <UButton
            variant="ghost"
            color="neutral"
            icon="i-heroicons-arrow-left"
            class="rounded-full"
            @click="scrollCarousel('prev')"
          />
          <UButton
            variant="ghost"
            color="neutral"
            icon="i-heroicons-arrow-right"
            class="rounded-full"
            @click="scrollCarousel('next')"
          />
        </div>
      </div>

      <div
        ref="carouselRef"
        class="flex overflow-x-auto gap-6 pb-6 snap-x snap-mandatory hide-scrollbar"
      >
        <div
          v-for="item in newsItems"
          :key="item.id"
          class="min-w-[280px] md:min-w-[320px] snap-center flex flex-col gap-4 group cursor-pointer"
        >
          <div class="w-full aspect-video rounded-xl overflow-hidden relative">
            <img
              loading="lazy"
              :src="item.image"
              :alt="item.title"
              class="w-full h-full object-cover transition-transform duration-500 group-hover:scale-105"
            />
          </div>
          <div>
            <div
              class="flex items-center gap-2 mb-2 text-xs font-semibold uppercase tracking-wider text-[var(--color-primary)]"
            >
              <UIcon :name="item.icon" class="size-4" />
              <span>{{ item.type }}</span>
            </div>
            <h3
              class="text-lg font-bold group-hover:text-[var(--color-primary)] transition-colors"
            >
              {{ item.title }}
            </h3>
            <p class="text-gray-500 text-sm mt-1">{{ item.description }}</p>
            <p class="text-gray-400 text-xs mt-3 font-medium">
              {{ item.date }}
            </p>
          </div>
        </div>
      </div>
    </div>
  </section>
</template>
