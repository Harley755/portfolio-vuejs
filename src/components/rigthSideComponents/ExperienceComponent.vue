<script lang="ts">
export default {
  data() {
    return {
      experiences: [
        {
          date: 'September 2024 - Today',
          role: 'Developer',
          company: 'Freelance',
          location: 'Cotonou, Benin',
          description: "As a freelance web developer, I design tailor-made solutions ranging from modern, high-performance websites to complex business platforms, adapted to the specific needs of companies, organizations and institutions. Whether I'm developing a secure financial management system or a showcase site optimized for visibility, I'm committed to delivering reliable, scalable applications focused on the user experience.",
          technologies: [],
          companyWebsite: '',
        },
        {
          date: 'January 2024 - September 2024',
          role: 'Java/Spring Developer',
          company: 'Ministère de l\'Economie et des Finances',
          location: 'Cotonou, Benin',
          description:
            'During my internship, I worked on the development of a platform dedicated to Benin\'s armed forces officers, designed to centralize and facilitate access to a full range of essential administrative services.This platform offers a secure interface where officers can carry out various operations linked to their military careers, in complete autonomy and confidentiality.',
          technologies: ['Spring MVC', 'jquery', 'PostgreSQL', 'UML'],
          companyWebsite: 'https://finances.bj/',
        },
        {
          date: 'April 2023 - June 2023',
          role: 'Flutter Developer',
          company: 'JesMar',
          location: 'Cotonou, Benin',
          description:
            'During this placement, we worked on creating a project responds to a crucial need by enabling individuals to store and access their reliable medical information at all times, facilitating rapid and effective care in the event of an emergency. It considerably improves the response of healthcare professionals, while guaranteeing data confidentiality and security. This solution helps reduce the loss of life caused by the inaccessibility of essential medical information.',
          technologies: ['Flutter', 'Firebase', 'UML'],
          companyWebsite: 'https://www.facebook.com/p/Jesmar-100076165212205/',
        },
        {
          date: 'July 2022 - September 2022',
          role: 'Web Developer',
          company: 'M@-INFO',
          location: 'Cotonou, Benin',
          description:
            'During this internship, we worked on the creation of an ERP (Enterprise resource planning) system; a type of software that companies use to manage their day-to-day activities such as accounting, purchasing, project management, risk management and compliance.',
          technologies: ['Laravel', 'VueJS', "MongoDB", 'UML'],
          companyWebsite: 'https://www.mainfo.info/',
        },
      ],
    };
  },
};
</script>


<template>
  <section id="experience" class="mb-16 scroll-mt-16 md:mb-24 lg:mb-36 lg:scroll-mt-24" aria-label="Work experience">
    <div
      class="sticky top-0 z-20 -mx-6 mb-4 w-screen bg-slate-900/75 px-6 py-5 backdrop-blur md:-mx-12 md:px-12 lg:sr-only lg:relative lg:top-auto lg:mx-auto lg:w-full lg:px-0 lg:py-0 lg:opacity-0">
      <h2 class="text-sm font-bold uppercase tracking-widest text-slate-200 lg:sr-only">Experience</h2>
    </div>
    <div>
      <ol class="group/list">
        <li v-for="(experience, index) in experiences" :key="index" class="mb-12">
          <div
            class="group relative grid pb-1 transition-all sm:grid-cols-8 sm:gap-8 md:gap-4 lg:hover:!opacity-100 lg:group-hover/list:opacity-50">
            <div
              class="absolute -inset-x-4 -inset-y-4 z-0 hidden rounded-md transition motion-reduce:transition-none lg:-inset-x-6 lg:block lg:group-hover:bg-green-100/50 lg:group-hover:shadow-[inset_0_1px_0_0_rgba(148,163,184,0.1)] lg:group-hover:drop-shadow-lg">
            </div>
            <header
              class="group-hover:text-white  z-10 mb-2 mt-1 text-xs font-semibold uppercase tracking-wide text-slate-500 sm:col-span-2">
              {{ experience.date }}
            </header>
            <div class="z-10 sm:col-span-6">
              <h3 class="font-medium leading-snug text-slate-200">
                <a :href="experience.companyWebsite"
                  class="inline-flex items-baseline font-medium leading-tight text-slate-200 hover:text-teal-300 focus-visible:text-teal-300  group/link text-base"
                  target="_blank" rel="noreferrer">
                  <span
                    class="absolute -inset-x-4 -inset-y-2.5 hidden rounded md:-inset-x-6 md:-inset-y-4 lg:block"></span>
                  <span>{{ experience.role }}</span> &nbsp; • &nbsp; <span class="inline-block">{{ experience.company
                    }}</span>
                  <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 20 20" fill="currentColor"
                    class="inline-block h-4 w-4 shrink-0 transition-transform group-hover/link:-translate-y-1 group-hover/link:translate-x-1 group-focus-visible/link:-translate-y-1 group-focus-visible/link:translate-x-1 motion-reduce:transition-none ml-1 translate-y-px"
                    aria-hidden="true">
                    <path fill-rule="evenodd"
                      d="M5.22 14.78a.75.75 0 001.06 0l7.22-7.22v5.69a.75.75 0 001.5 0v-7.5a.75.75 0 00-.75-.75h-7.5a.75.75 0 000 1.5h5.69l-7.22 7.22a.75.75 0 000 1.06z"
                      clip-rule="evenodd"></path>
                  </svg>
                </a>
              </h3>
              <div>
                <div class="text-slate-500 group-hover:text-white " aria-hidden="true">{{ experience.location }}</div>
              </div>
              <p class="mt-2 text-sm leading-normal group-hover:text-white ">{{ experience.description }}</p>
              <ul class="mt-2 flex flex-wrap" aria-label="Technologies used">
                <li v-for="(tech, i) in experience.technologies" :key="i" class="mr-1.5 mt-2">
                  <div
                    class="flex items-center rounded-full bg-teal-400/10 px-3 py-1 text-xs font-medium leading-5 text-teal-300">
                    {{ tech }}
                  </div>
                </li>
              </ul>
            </div>
          </div>
        </li>
      </ol>
      <div class="mt-12"><a class="inline-flex items-center leading-tight text-slate-200 font-semibold group"
          aria-label="View Full Resume" target="_blank" href="/CV_GOUDALO_Brice.pdf"><span><span
              class="border-b border-transparent pb-px transition group-hover:border-teal-300 motion-reduce:transition-none">
              View Full </span><span class="whitespace-nowrap"><span
                class="border-b border-transparent pb-px transition group-hover:border-teal-300 motion-reduce:transition-none">
                Resume </span>
              <!-- <ResumeArrowIcon /> -->
              <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 20 20" fill="currentColor"
                class="ml-1 inline-block h-4 w-4 shrink-0 -translate-y-px transition-transform group-hover:translate-x-2 group-focus-visible:translate-x-2 motion-reduce:transition-none"
                aria-hidden="true">
                <path fill-rule="evenodd"
                  d="M3 10a.75.75 0 01.75-.75h10.638L10.23 5.29a.75.75 0 111.04-1.08l5.5 5.25a.75.75 0 010 1.08l-5.5 5.25a.75.75 0 11-1.04-1.08l4.158-3.96H3.75A.75.75 0 013 10z"
                  clip-rule="evenodd"></path>
              </svg>
            </span>
          </span></a></div>
    </div>
  </section>
</template>
