<script lang="ts" setup>
import AboutComponent from './rigthSideComponents/AboutComponent.vue';
import CertificationComponent from './rigthSideComponents/CertificationComponent.vue';
import ExperienceComponent from './rigthSideComponents/ExperienceComponent.vue';
import ProjectComponent from './rigthSideComponents/ProjectComponent.vue';
</script>

<template>
  <main id="content" class="pt-24 lg:w-[65%] lg:py-24">
    <AboutComponent />
    <ExperienceComponent />
    <ProjectComponent />
    <CertificationComponent />

    <footer class="max-w-md pb-16 text-sm text-slate-500 sm:pb-0"><p>Passionately developed in <a href="https://code.visualstudio.com/" class="font-medium text-slate-400 hover:text-teal-300 focus-visible:text-teal-300" target="_blank" rel="noreferrer">Visual Studio Code</a>, powered by <a href="https://vuejs.org/" class="font-medium text-slate-400 hover:text-teal-300 focus-visible:text-teal-300" target="_blank" rel="noreferrer">Vue.js</a> and <a href="https://tailwindcss.com/" class="font-medium text-slate-400 hover:text-teal-300 focus-visible:text-teal-300" target="_blank" rel="noreferrer">Tailwind CSS</a>, and elegantly deployed on <a href="https://vercel.com/" class="font-medium text-slate-400 hover:text-teal-300 focus-visible:text-teal-300" target="_blank" rel="noreferrer">Vercel</a>. All proudly dressed in <a href="https://rsms.me/inter/" class="font-medium text-slate-400 hover:text-teal-300 focus-visible:text-teal-300" target="_blank" rel="noreferrer">Inter</a> characters.</p></footer>
  </main>
</template>
