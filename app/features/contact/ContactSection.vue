<template>
  <section
    id="contact"
    class="w-full bg-white dark:bg-gray-900 pt-16 pb-8 px-4 md:px-10 border-t border-gray-200 dark:border-gray-800"
  >
    <div class="max-w-[1024px] mx-auto">
      <div class="flex flex-col md:flex-row gap-12">
        <!-- Contact Form -->
        <div class="flex-1">
          <h2 class="text-2xl font-bold text-gray-900 dark:text-white mb-6">
            Связаться со мной
          </h2>
          <form class="flex flex-col gap-4">
            <div class="grid grid-cols-2 gap-4">
              <UFormField label="Имя">
                <UInput placeholder="Ислам Алишеров" size="lg" />
              </UFormField>
              <UFormField label="Email">
                <UInput
                  type="email"
                  placeholder="alisherov@gmail.com"
                  size="lg"
                />
              </UFormField>
            </div>
            <UFormField label="Тема">
              <UInput placeholder="Запрос по проекту" size="lg" />
            </UFormField>
            <UFormField label="Сообщение">
              <UTextarea
                placeholder="Расскажите о вашем проекте..."
                :rows="4"
                size="lg"
              />
            </UFormField>
            <UButton
              type="submit"
              color="primary"
              size="lg"
              class="w-full md:w-auto md:self-start"
            >
              Отправить сообщение
            </UButton>
          </form>
        </div>

        <!-- Contact Info -->
        <div class="flex-1 md:max-w-sm flex flex-col gap-8">
          <div>
            <h2 class="text-2xl font-bold text-gray-900 dark:text-white mb-6">
              Контактная информация
            </h2>
            <p class="text-gray-600 dark:text-gray-400 mb-6">
              Не стесняйтесь обращаться для сотрудничества, выступлений или
              просто чтобы поздороваться.
            </p>

            <div class="flex flex-col gap-4">
              <div class="flex items-center gap-4">
                <div
                  class="size-10 rounded-full bg-[var(--color-primary)]/10 flex items-center justify-center text-[var(--color-primary)]"
                >
                  <UIcon name="i-heroicons-envelope" class="size-5" />
                </div>
                <div>
                  <p class="text-xs text-gray-500 font-medium">Напишите мне</p>
                  <a
                    href="mailto:a.ermek.kg@gmail.com"
                    class="text-sm font-bold hover:text-[var(--color-primary)] transition-colors"
                    >a.ermek.kg@gmail.com</a
                  >
                </div>
              </div>

              <div class="flex items-center gap-4">
                <div
                  class="size-10 rounded-full bg-[var(--color-primary)]/10 flex items-center justify-center text-[var(--color-primary)]"
                >
                  <UIcon name="i-heroicons-phone" class="size-5" />
                </div>
                <div>
                  <p class="text-xs text-gray-500 font-medium">Позвоните мне</p>
                  <a
                    href="tel:+996706105915"
                    class="text-sm font-bold hover:text-[var(--color-primary)] transition-colors"
                    >+996 706 105-915</a
                  >
                </div>
              </div>

              <div class="flex items-center gap-4">
                <div
                  class="size-10 rounded-full bg-[var(--color-primary)]/10 flex items-center justify-center text-[var(--color-primary)]"
                >
                  <UIcon name="i-heroicons-map-pin" class="size-5" />
                </div>
                <div>
                  <p class="text-xs text-gray-500 font-medium">
                    Местоположение
                  </p>
                  <p class="text-sm font-bold">Кыргызстан, г. Бишкек</p>
                </div>
              </div>
            </div>
          </div>

          <div>
            <h3 class="text-sm font-bold text-gray-900 dark:text-white mb-3">
              Подписывайтесь
            </h3>
            <div class="flex gap-3">
              <a
                target="_blank"
                href="https://www.facebook.com/ermek.chkv/"
                class="size-10 rounded-full bg-gray-100 dark:bg-gray-800 flex items-center justify-center text-gray-600 dark:text-gray-300 hover:bg-[var(--color-primary)] hover:text-white transition-all"
              >
                <UIcon name="i-simple-icons-facebook" class="size-5" />
              </a>
              <a
                target="_blank"
                href="https://www.instagram.com/ermek.dev/"
                class="size-10 rounded-full bg-gray-100 dark:bg-gray-800 flex items-center justify-center text-gray-600 dark:text-gray-300 hover:bg-[var(--color-primary)] hover:text-white transition-all"
              >
                <UIcon name="i-simple-icons-instagram" class="size-5" />
              </a>
            </div>
          </div>
        </div>
      </div>
    </div>
  </section>
</template>
