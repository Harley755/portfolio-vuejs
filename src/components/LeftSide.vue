<script lang="ts" setup>
import { ref, onMounted, onUnmounted } from "vue";
import GithubIcon from "./icons/GithubIcon.vue";
import TwitterIcon from "./icons/TwitterIcon.vue";
import LinkedinIcon from "./icons/LinkedinIcon.vue";

const activeSection = ref("about");
const sections = ["about", "experience", "project", "certification"];

const setActive = (section: string) => {
  activeSection.value = section;
};

onMounted(() => {
  const observer = new IntersectionObserver(
    (entries) => {
      entries.forEach((entry) => {
        if (entry.isIntersecting) {
          setActive(entry.target.id); // Définir la section visible comme active
        }
      });
    },
    {
      root: null, // Observer par rapport au viewport
      rootMargin: "0px",
      threshold: [0.6, 1.0], // Au moins 50% de la section doit être visible
    }
  );

  // Observer toutes les sections
  sections.forEach((id) => {
    const section = document.getElementById(id);
    if (section) observer.observe(section);
  });

  // Nettoyer l'observateur
  onUnmounted(() => {
    observer.disconnect();
  });
});

</script>


<template>
  <header
    class="lg:sticky lg:top-0 lg:flex lg:max-h-screen lg:w-1/2 lg:flex-col lg:justify-between lg:py-24 md:min-h-screen">
    <div>
      <h1 class="text-4xl font-bold tracking-tight text-slate-200 sm:text-5xl">
        Brice GOUDALO
      </h1>
      <h2 class="mt-3 text-lg font-medium tracking-tight text-slate-200 sm:text-xl">
        Software developer | Flutter enthusiast
      </h2>
      <p class="mt-4 max-w-xs leading-normal">
        My specialties? Listening attentively, clarifying the problem, and solving it.
      </p>
      <nav class="nav hidden lg:block" aria-label="In-page jump links">
        <ul class="mt-16 w-max">
          <li>
            <a id="aboutMenu" href="#about" class="group flex items-center py-3"
              :class="{ 'active': activeSection === 'about' }">
              <span
                class="aboutChild nav-indicator mr-4 h-px w-8 bg-slate-600 transition-all group-hover:w-16 group-hover:bg-slate-200 group-focus-visible:w-16 group-focus-visible:bg-slate-200 motion-reduce:transition-none"></span>
              <span
                class="aboutChild nav-text text-xs font-bold uppercase tracking-widest text-slate-500 group-hover:text-slate-200 group-focus-visible:text-slate-200">About</span>
            </a>
          </li>
          <li>
            <a id="experienceMenu" href="#experience" class="group flex items-center py-3"
              :class="{ 'active': activeSection === 'experience' }">
              <span
                class="experienceChild nav-indicator mr-4 h-px w-8 bg-slate-600 transition-all group-hover:w-16 group-hover:bg-slate-200 group-focus-visible:w-16 group-focus-visible:bg-slate-200 motion-reduce:transition-none"></span>
              <span
                class="experienceChild nav-text text-xs font-bold uppercase tracking-widest text-slate-500 group-hover:text-slate-200 group-focus-visible:text-slate-200">Experience</span>
            </a>
          </li>
          <li>
            <a id="projectsMenu" href="#project" class="group flex items-center py-3"
              :class="{ 'active': activeSection === 'project' }">
              <span
                class="projectsChild nav-indicator mr-4 h-px w-8 bg-slate-600 transition-all group-hover:w-16 group-hover:bg-slate-200 group-focus-visible:w-16 group-focus-visible:bg-slate-200 motion-reduce:transition-none"></span>
              <span
                class="projectsChild nav-text text-xs font-bold uppercase tracking-widest text-slate-500 group-hover:text-slate-200 group-focus-visible:text-slate-200">Projects</span>
            </a>
          </li>
          <li>
            <a id="certificationsMenu" href="#certification" class="group flex items-center py-3"
              :class="{ 'active': activeSection === 'certification' }">
              <span
                class="certificationsChild nav-indicator mr-4 h-px w-8 bg-slate-600 transition-all group-hover:w-16 group-hover:bg-slate-200 group-focus-visible:w-16 group-focus-visible:bg-slate-200 motion-reduce:transition-none"></span>
              <span
                class="certificationsChild nav-text text-xs font-bold uppercase tracking-widest text-slate-500 group-hover:text-slate-200 group-focus-visible:text-slate-200">Certifications</span>
            </a>
          </li>
        </ul>
      </nav>
    </div>
    <ul class="ml-1 mt-8 flex items-center" aria-label="Social media">
      <li class="mr-5 text-xs">
        <a class="block hover:text-slate-200" href="https://github.com/Harley755" target="_blank" rel="noreferrer"><span
            class="sr-only">GitHub</span>
          <GithubIcon />
        </a>
      </li>
      <li class="mr-5 text-xs">
        <a class="block hover:text-slate-200" href="https://twitter.com/bg_dev2" target="_blank" rel="noreferrer"><span
            class="sr-only">Twitter</span>
          <TwitterIcon />
        </a>
      </li>
      <li class="mr-5 text-xs">
        <a class="block hover:text-slate-200" href="https://www.linkedin.com/in/brice-goudalo-642b72232/"
          target="_blank" rel="noreferrer"><span class="sr-only">LinkedIn</span>
          <LinkedinIcon />
        </a>
      </li>
    </ul>
  </header>
</template>


<style scoped>
.active {
  color: #e2e8f0;
  font-weight: bold;
}

.active .nav-indicator {
  background-color: #e2e8f0;
  width: 64px;
  transition: all 0.3s ease-in-out;
}

.active .nav-text {
  color: #e2e8f0;
}
</style>