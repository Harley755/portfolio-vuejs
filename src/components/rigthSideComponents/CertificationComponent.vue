<script lang="ts">
export default {
  data() {
    return {
      certifications: [
        {
          image: '/3A_img.png',
          title: 'Ateliers Approches Agiles',
          link: '/3A.pdf',
        },
        {
          image: '/css-certificate.jpg',
          title: 'CSS-basics-to-advanced',
          link: 'https://www.udemy.com/certificate/UC-34488143-2993-4a67-8f85-006bc61fac52/',
        },
      ],
    };
  },
};
</script>


<template>
  <section id="certification" class="mb-16 scroll-mt-16 md:mb-24 lg:mb-36 lg:scroll-mt-24" aria-label="certification">
    <div
      class="sticky top-0 z-20 -mx-6 mb-4 w-screen bg-slate-900/75 px-6 py-5 backdrop-blur md:-mx-12 md:px-12 lg:sr-only lg:relative lg:top-auto lg:mx-auto lg:w-full lg:px-0 lg:py-0 lg:opacity-0">
      <h2 class="text-sm font-bold uppercase tracking-widest text-slate-200 lg:sr-only">Experience</h2>
    </div>
    <div>
      <ol class="group/list">
        <li v-for="(certification, index) in certifications" :key="index" class="mb-12">
          <div
            class="group relative grid gap-4 pb-1 transition-all sm:grid-cols-8 sm:gap-8 md:gap-4 lg:hover:!opacity-100 lg:group-hover/list:opacity-50">
            <div
              class="absolute -inset-x-4 -inset-y-4 z-0 hidden rounded-md transition motion-reduce:transition-none lg:-inset-x-6 lg:block lg:group-hover:bg-green-100/50 lg:group-hover:shadow-[inset_0_1px_0_0_rgba(148,163,184,0.1)] lg:group-hover:drop-shadow-lg">
            </div>
            <div class="z-10 sm:order-2 sm:col-span-6 flex items-center">
              <h3>
                <a class="inline-flex items-baseline font-medium leading-tight text-slate-200 hover:text-teal-300 focus-visible:text-teal-300  group/link text-base"
                  :href="certification.link" target="_blank" rel="noreferrer" aria-label="">
                  <span
                    class="absolute -inset-x-4 -inset-y-2.5 hidden rounded md:-inset-x-6 md:-inset-y-4 lg:block"></span>
                  <span>
                    <span class="inline-block"> {{ certification.title }}<svg xmlns="http://www.w3.org/2000/svg"
                        viewBox="0 0 20 20" fill="currentColor"
                        class="inline-block h-4 w-4 shrink-0 transition-transform group-hover/link:-translate-y-1 group-hover/link:translate-x-1 group-focus-visible/link:-translate-y-1 group-focus-visible/link:translate-x-1 motion-reduce:transition-none ml-1 translate-y-px"
                        aria-hidden="true">
                        <path fill-rule="evenodd"
                          d="M5.22 14.78a.75.75 0 001.06 0l7.22-7.22v5.69a.75.75 0 001.5 0v-7.5a.75.75 0 00-.75-.75h-7.5a.75.75 0 000 1.5h5.69l-7.22 7.22a.75.75 0 000 1.06z"
                          clip-rule="evenodd"></path>
                      </svg>
                    </span>
                  </span>
                </a>
              </h3>
            </div>
            <div>
              <img alt="" data-nimg="1" loading="lazy" width="200" height="48" decoding="async"
                class="rounded border-2 border-slate-200/10 transition group-hover:border-slate-200/30 sm:order-1 sm:col-span-2 sm:translate-y-1"
                style="color:transparent" :src="certification.image">
            </div>
          </div>
        </li>
      </ol>
    </div>
  </section>
</template>
