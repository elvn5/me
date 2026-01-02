<script setup lang="ts">
const titleText = "Создаю цифровой опыт, улучшающий жизнь людей.";
const subtitleText = ref("");

const typeText = async (
  text: string,
  onUpdate: (val: string) => void,
  speed = 50
) => {
  for (let i = 0; i <= text.length; i++) {
    onUpdate(text.substring(0, i));
    await new Promise((resolve) => setTimeout(resolve, speed));
  }
};

onMounted(async () => {
  // Start subtitle sequence
  const initialSubtitle = "Кекс инструктор";
  const finalSubtitle = "Разработчик мобильных приложений и веб-сайтов";

  await typeText(initialSubtitle, (val) => (subtitleText.value = val));
  await new Promise((resolve) => setTimeout(resolve, 1000));

  // Delete loop
  for (let i = initialSubtitle.length; i >= 0; i--) {
    subtitleText.value = initialSubtitle.substring(0, i);
    await new Promise((resolve) => setTimeout(resolve, 30));
  }

  await typeText(finalSubtitle, (val) => (subtitleText.value = val));
});
</script>

<template>
  <section
    id="home"
    class="w-full flex justify-center py-12 md:py-20 px-4 md:px-10"
  >
    <div class="max-w-[1024px] w-full">
      <div
        class="flex flex-col-reverse md:flex-row items-center gap-10 md:gap-16"
      >
        <div
          class="flex flex-col gap-6 flex-1 text-center md:text-left items-center md:items-start"
        >
          <div class="flex flex-col gap-4">
            <span
              class="inline-block px-3 py-1 bg-[var(--color-primary)]/10 text-[var(--color-primary)] text-xs font-bold uppercase tracking-wider rounded-full w-fit min-h-[24px]"
            >
              {{ subtitleText }}
            </span>
            <h1
              class="text-4xl md:text-6xl font-black leading-tight tracking-tight min-h-[4em] md:min-h-[2.5em]"
            >
              {{ titleText }}
            </h1>
            <p
              class="text-base md:text-lg text-gray-600 dark:text-gray-400 font-normal leading-relaxed max-w-[500px]"
            >
              Помогаю стартапам и известным брендам создавать интуитивные,
              ориентированные на пользователя мобильные приложения и веб-сайты.
            </p>
          </div>
          <div class="flex gap-4 mt-2">
            <UButton
              color="primary"
              size="xl"
              to="#contact"
              class="shadow-md hover:-translate-y-0.5 transition-transform"
            >
              Связаться
            </UButton>
          </div>
        </div>
        <div
          class="w-full max-w-[400px] md:max-w-[480px] aspect-[4/5] md:aspect-square relative rounded-2xl overflow-hidden shadow-2xl flex-1"
        >
          <div
            class="absolute inset-0 bg-gradient-to-tr from-[var(--color-primary)]/20 to-transparent z-10"
          />
          <img
            loading="eager"
            src="/ava.webp"
            alt="Эрмек"
            class="w-full h-full object-cover"
          />
        </div>
      </div>
    </div>
  </section>
</template>
