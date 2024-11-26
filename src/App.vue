
<script lang="ts">
import RigthSide from "./components/RigthSide.vue";
import LeftSide from "./components/LeftSide.vue";
export default {
  components: {
    LeftSide,
    RigthSide,
  },
};
</script>

<template>
  <div class="">
    <div
      class="bg-slate-900 leading-relaxed text-slate-400 antialiased selection:bg-teal-300 selection:text-teal-900 min-h-screen min-w-screen mx-auto py-12 font-sans md:py-20 lg:px-24 lg:py-0 md:flex md:justify-end md:relative"
    >
      <div
        class="pointer-events-none fixed inset-0 z-30 transition duration-300 lg:absolute"
        style="
          background: radial-gradient(
            600px at 1260px 445px,
            rgba(29, 78, 216, 0.15),
            transparent 80%
          );
        "
      ></div>
      <div class="lg:flex lg:justify-between lg:gap-4"></div>
      <LeftSide />
      <RigthSide />
    </div>
  </div>
</template>

<style scoped>
</style>


