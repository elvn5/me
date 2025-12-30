<script setup lang="ts">
const props = defineProps<{
  url: string;
}>();

// Extract post code from URL
const postCode = computed(() => {
  const match = props.url.match(/instagram\.com\/p\/([^/]+)/);
  return match ? match[1] : null;
});

// Load Instagram embed script once
onMounted(() => {
  if (typeof window !== "undefined" && !window.instgrm) {
    const script = document.createElement("script");
    script.src = "https://www.instagram.com/embed.js";
    script.async = true;
    document.body.appendChild(script);
  } else if (window.instgrm) {
    window.instgrm.Embeds.process();
  }
});

// Re-process embeds when URL changes
watch(
  () => props.url,
  () => {
    nextTick(() => {
      if (window.instgrm) {
        window.instgrm.Embeds.process();
      }
    });
  }
);

// Declare Instagram embed type
declare global {
  interface Window {
    instgrm?: {
      Embeds: {
        process: () => void;
      };
    };
  }
}
</script>

<template>
  <div class="instagram-embed-container">
    <blockquote
      v-if="postCode"
      class="instagram-media"
      :data-instgrm-permalink="url"
      data-instgrm-version="14"
    >
      <a :href="url" target="_blank">Загрузка поста из Instagram...</a>
    </blockquote>
    <p v-else class="text-red-500 text-sm">Неверная ссылка на Instagram пост</p>
  </div>
</template>

<style scoped>
.instagram-embed-container {
  display: flex;
  justify-content: center;
  max-width: 540px;
  margin: 0 auto;
}

.instagram-embed-container :deep(.instagram-media) {
  border-radius: 12px !important;
  box-shadow: 0 4px 12px rgba(0, 0, 0, 0.1) !important;
}
</style>
