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
              class="inline-block px-3 py-1 bg-[var(--color-primary)]/10 text-[var(--color-primary)] text-xs font-bold uppercase tracking-wider rounded-full w-fit"
            >
              Разработчик мобильных приложений и веб-сайтов
            </span>
            <h1
              class="text-4xl md:text-6xl font-black leading-tight tracking-tight"
            >
              Создаю цифровой опыт, улучшающий жизнь людей.
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
