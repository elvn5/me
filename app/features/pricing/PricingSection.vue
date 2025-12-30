<script setup lang="ts">
defineProps<{
  pricingPlans: Array<{
    id: string;
    name: string;
    description: string;
    price: string;
    period?: string;
    features: string[];
    buttonText: string;
    featured: boolean;
  }>;
}>();
</script>

<template>
  <section
    id="services"
    class="w-full bg-[var(--color-background-light)] dark:bg-[var(--color-background-dark)] py-16 px-4 md:px-10"
  >
    <div class="max-w-[1024px] mx-auto">
      <div class="text-center mb-12">
        <h2 class="text-2xl md:text-3xl font-bold leading-tight tracking-tight">
          Услуги и цены
        </h2>
        <p class="text-gray-500 mt-2 max-w-[600px] mx-auto">
          Гибкие варианты для проектов любого размера. Нужна ли вам быстрая
          консультация или полная разработка приложения?
        </p>
      </div>

      <div class="grid grid-cols-1 md:grid-cols-3 gap-6 items-start">
        <div
          v-for="plan in pricingPlans"
          :key="plan.id"
          class="bg-white dark:bg-gray-800 p-8 rounded-xl border shadow-sm flex flex-col gap-6 hover:shadow-md transition-shadow"
          :class="[
            plan.featured
              ? 'border-2 border-[var(--color-primary)] shadow-lg md:-mt-4 md:mb-4 relative'
              : 'border-gray-100 dark:border-gray-700',
          ]"
        >
          <div
            v-if="plan.featured"
            class="absolute top-0 right-0 bg-[var(--color-primary)] text-white text-[10px] font-bold px-3 py-1 rounded-bl-lg rounded-tr-lg uppercase tracking-wide"
          >
            Популярный
          </div>

          <div>
            <h3 class="text-lg font-bold text-gray-900 dark:text-white">
              {{ plan.name }}
            </h3>
            <p class="text-sm text-gray-500 mt-1">{{ plan.description }}</p>
          </div>

          <div class="text-3xl font-bold text-[var(--color-primary)]">
            {{ plan.price }}
            <span class="text-sm font-normal text-gray-500 ml-1">{{
              plan.period
            }}</span>
          </div>

          <ul class="flex flex-col gap-3">
            <li
              v-for="feature in plan.features"
              :key="feature"
              class="flex items-center gap-3 text-sm text-gray-600 dark:text-gray-300"
            >
              <UIcon name="i-heroicons-check" class="size-5 text-green-500" />
              {{ feature }}
            </li>
          </ul>

          <UButton
            :color="plan.featured ? 'primary' : 'neutral'"
            :variant="plan.featured ? 'solid' : 'outline'"
            size="lg"
            class="w-full"
          >
            {{ plan.buttonText }}
          </UButton>
        </div>
      </div>
    </div>
  </section>
</template>
