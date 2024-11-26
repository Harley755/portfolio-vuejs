    
<script lang="ts">
export default {
  props: {
    title: String,
    link: String,
  },
};
</script>

<template>
  <nav class="nav hidden lg:block" aria-label="In-page jump links">
    <ul class="mt-16 w-max">
      <li>
        <a id="aboutMenu" href="" class="group flex items-center py-3">
          <span
            class="aboutChild nav-indicator mr-4 h-px w-8 bg-slate-600 transition-all group-hover:w-16 group-hover:bg-slate-200 group-focus-visible:w-16 group-focus-visible:bg-slate-200 motion-reduce:transition-none"
          >
          </span>
          <span
            class="aboutChild nav-text text-xs font-bold uppercase tracking-widest text-slate-500 group-hover:text-slate-200 group-focus-visible:text-slate-200"
            >{{ title }}</span
          >
        </a>
      </li>
    </ul>
  </nav>
</template>


<style scoped>
</style>