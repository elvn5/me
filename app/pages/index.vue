<script setup lang="ts">
import AppHeader from "~/features/header/AppHeader.vue";
import HeroSection from "~/features/hero/HeroSection.vue";
import AboutSection from "~/features/about/AboutSection.vue";
import PricingSection from "~/features/pricing/PricingSection.vue";
import ContactSection from "~/features/contact/ContactSection.vue";
import AppFooter from "~/features/footer/AppFooter.vue";
import ThemeToggleFab from "~/features/theme/ThemeToggleFab.vue";

const instagramPostUrl = ref("https://www.instagram.com/p/DOgPOFujOHO/");

const skills = [
  { name: "Разработка приложений", percentage: 90 },
  { name: "Продуктовая стратегия", percentage: 85 },
  { name: "Разработка бэкенда", percentage: 70 },
];

const skillTags = ["AWS", "Flutter", "Supabase", "Vue3", "Nuxt3"];

const stats = [
  { value: "5+", label: "Лет опыта" },
  { value: "5+", label: "Завершённых проектов" },
  { value: "95%", label: "Довольных клиентов" },
];

const pricingPlans = [
  {
    id: "consultation",
    name: "Мегабайт",
    description: "Для быстрых советов и аудитов.",
    price: "1000 сом",
    period: "/ час",
    features: ["Пути решения задачи", "Варианты решений", "Рекомендации"],
    buttonText: "Мега старт",
    featured: false,
  },
  {
    id: "project",
    name: "Гигабайт",
    description: "Полный цикл разработки.",
    price: "от 50,000 сом",
    period: "/ проект",
    features: [
      "Полная UI дизайн-система",
      "Интерактивные прототипы",
      "Передача разработчикам",
      "2 раунда правок",
    ],
    buttonText: "Гига старт",
    featured: true,
  },
  {
    id: "retainer",
    name: "Террабайт",
    description: "Для крупных задач",
    price: "По договоренности",
    features: [
      "Полный цикл разработки",
      "Безлимитные запросы",
      "Приоритетная поддержка",
    ],
    buttonText: "Терра старт",
    featured: false,
  },
];
</script>

<template>
  <div
    class="bg-[var(--color-background-light)] dark:bg-[var(--color-background-dark)] text-gray-900 dark:text-white min-h-screen"
  >
    <AppHeader />

    <main class="flex flex-col w-full">
      <HeroSection />
      <!-- Instagram Post Section -->
      <section
        id="news"
        class="w-full bg-white dark:bg-gray-900 py-16 px-4 md:px-10 border-y border-gray-200 dark:border-gray-800"
      >
        <div class="max-w-[1024px] mx-auto flex flex-col gap-8">
          <div class="text-center">
            <h2
              class="text-2xl md:text-3xl font-bold leading-tight tracking-tight mb-2"
            >
              Последние новости
            </h2>
            <p class="text-gray-500 dark:text-gray-400">
              Мысли, события и недавняя деятельность.
            </p>
          </div>
          <InstagramPost :url="instagramPostUrl" />
        </div>
      </section>
      <AboutSection :skills="skills" :skill-tags="skillTags" :stats="stats" />
      <PricingSection :pricing-plans="pricingPlans" />
      <ContactSection />
      <AppFooter />
    </main>

    <ThemeToggleFab />
  </div>
</template>
