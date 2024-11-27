<script lang="ts" setup>
import AboutComponent from './rigthSideComponents/AboutComponent.vue';
import CertificationComponent from './rigthSideComponents/CertificationComponent.vue';
import ExperienceComponent from './rigthSideComponents/ExperienceComponent.vue';
import ProjectComponent from './rigthSideComponents/ProjectComponent.vue';
</script>

<template>
  <main id="content" class="pt-24 lg:w-1/2 lg:py-24">
    <AboutComponent />
    <ExperienceComponent />
    <ProjectComponent />
    <CertificationComponent />
  </main>
</template>