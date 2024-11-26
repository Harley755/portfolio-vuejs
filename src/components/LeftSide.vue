<script lang="ts" setup>
import GithubIcon from "../components/leftSideComponents/socialIcon/GithubIcon.vue";
import LinkedinIcon from "../components/leftSideComponents/socialIcon/LinkedinIcon.vue";
import TwitterIcon from "../components/leftSideComponents/socialIcon/TwitterIcon.vue";
</script>


<template>
  <header
    class="lg:sticky lg:top-0 lg:flex lg:max-h-screen lg:w-1/2 lg:flex-col lg:justify-between lg:py-24 md:min-h-screen"
  >
    <div>
      <h1 class="text-4xl font-bold tracking-tight text-slate-200 sm:text-5xl">
        Brice GOUDALO
      </h1>
      <h2
        class="mt-3 text-lg font-medium tracking-tight text-slate-200 sm:text-xl"
      >
        Software developer
      </h2>
      <p class="mt-4 max-w-xs leading-normal">
        My specialties? Listening attentively, clarifying the problem, and
        solving it.
      </p>
      <nav class="nav hidden lg:block" aria-label="In-page jump links">
        <ul class="mt-16 w-max">
          <li>
            <a
              id="aboutMenu"
              href="#about"
              class="group flex items-center py-3"
            >
              <span
                class="aboutChild nav-indicator mr-4 h-px w-8 bg-slate-600 transition-all group-hover:w-16 group-hover:bg-slate-200 group-focus-visible:w-16 group-focus-visible:bg-slate-200 motion-reduce:transition-none"
              >
              </span>
              <span
                class="aboutChild nav-text text-xs font-bold uppercase tracking-widest text-slate-500 group-hover:text-slate-200 group-focus-visible:text-slate-200"
                >About</span
              >
            </a>
          </li>
          <li>
            <a
              id="experienceMenu"
              class="group flex items-center py-3"
              href="#experience"
              ><span
                class="experienceChild nav-indicator mr-4 h-px w-8 bg-slate-600 transition-all group-hover:w-16 group-hover:bg-slate-200 group-focus-visible:w-16 group-focus-visible:bg-slate-200 motion-reduce:transition-none"
              ></span
              ><span
                class="experienceChild nav-text text-xs font-bold uppercase tracking-widest text-slate-500 group-hover:text-slate-200 group-focus-visible:text-slate-200"
                >Experience</span
              ></a
            >
          </li>
          <li>
            <a
              id="projectsMenu"
              class="group flex items-center py-3"
              href="#projects"
              ><span
                class="projectsChild nav-indicator mr-4 h-px w-8 bg-slate-600 transition-all group-hover:w-16 group-hover:bg-slate-200 group-focus-visible:w-16 group-focus-visible:bg-slate-200 motion-reduce:transition-none"
              ></span
              ><span
                class="projectsChild nav-text text-xs font-bold uppercase tracking-widest text-slate-500 group-hover:text-slate-200 group-focus-visible:text-slate-200"
                >Projects</span
              ></a
            >
          </li>
          <li>
            <a
              id="certificationsMenu"
              class="group flex items-center py-3 active"
              href="#certifications"
              ><span
                class="certificationsChild nav-indicator mr-4 h-px w-8 bg-slate-600 transition-all group-hover:w-16 group-hover:bg-slate-200 group-focus-visible:w-16 group-focus-visible:bg-slate-200 motion-reduce:transition-none"
              ></span
              ><span
                class="certificationsChild nav-text text-xs font-bold uppercase tracking-widest text-slate-500 group-hover:text-slate-200 group-focus-visible:text-slate-200"
                >Certifications</span
              ></a
            >
          </li>
        </ul>
      </nav>
    </div>
    <ul class="ml-1 mt-8 flex items-center" aria-label="Social media">
      <li class="mr-5 text-xs">
        <a
          class="block hover:text-slate-200"
          href="https://github.com/beryl452"
          target="_blank"
          rel="noreferrer"
          ><span class="sr-only">GitHub</span>
          <GithubIcon />
        </a>
      </li>
      <li class="mr-5 text-xs">
        <a
          class="block hover:text-slate-200"
          href="https://twitter.com/Bryl_07"
          target="_blank"
          rel="noreferrer"
          ><span class="sr-only">Twitter</span>
          <TwitterIcon />
        </a>
      </li>
      <li class="mr-5 text-xs">
        <a
          class="block hover:text-slate-200"
          href="https://www.linkedin.com/in/berylhouessou/"
          target="_blank"
          rel="noreferrer"
          ><span class="sr-only">LinkedIn</span>
          <LinkedinIcon />
        </a>
      </li>
    </ul>
  </header>
</template>