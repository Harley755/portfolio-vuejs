<script lang="ts">
export default {
  data() {
    return {
      projects: [
        {
          image: '/microfinance.png',
          title: 'APES-MICROFINANCE',
          company: 'APES-BENIN',
          location: 'Cotonou, Benin',
          description:
            'This complete private web platform developed with Laravel for managing financial structures and customer accounts, integrating cash management and automated loan tracking with amortization.',
          technologies: ['Laravel', 'MySql'],
          companyWebsite: 'http://ong.apes.bj/',
        },
        {
          image: '/gkdy.png',
          title: 'GKDY-DSF',
          company: 'DCSCA',
          location: 'Cotonou, Benin',
          description:
            'This platform enables security forces officers to register online, access their files and benefit from dematerialized administrative services, all managed by the DCSCA.',
          technologies: ['Java Spring Boot MVC', 'jQuery', 'MyBatis', 'PostgreSQL', 'JasperSoft'],
          companyWebsite: 'https://www.gkdydsf.bj/home.htm',
        },
        {
          image: '/iclfd.png',
          title: 'ICLFD',
          company: 'ICLFD',
          location: 'Paris, France',
          description:
            'ICLFD is an online school offering complementary French schooling from CP to Baccalauréat. It is aimed at French or French-speaking students, including expatriates, wishing to obtain a double diploma by following the French national education curriculum.',
          technologies: ['Wordpress'],
          companyWebsite: 'https://www.iclfd.org',
        },
        {
          image: '/makena.png',
          title: 'Makena Conciergerie',
          company: 'Makena Conciergerie',
          location: 'Paris, France',
          description:
            'Makena Conciergerie specializes in short-term rental management in Paris and the Île-de-France region, particularly in the Hauts-de-Seine (92), Seine-Saint-Denis (93), Val-de-Marne (94) and Seine-et-Marne (77) departments.',
          technologies: ['Wordpress'],
          companyWebsite: 'https://makena-conciergerie.com/',
        },
        {
          image: '/quality.png',
          title: 'Quality-BS',
          company: 'Quality-BS',
          location: 'courbevoie, France',
          description: "Quality BS is a higher education institution located in Courbevoie, France. It is also known as Universités et Collèges de l'Excellence. The school stands out for its commitment to academic excellence and the personal development of its students.",
          technologies: ['Wordpress'],
          companyWebsite: 'https://quality-bs.com/',
        },
        {
          image: '/isao.png',
          title: 'ISAO-BENIN',
          company: 'ISAO',
          location: 'Cotonou, Bénin',
          description: "ISAO offers high-quality training in engineering, science and management, in line with international standards and the LMD (Licence-Master-Doctorat) system. The institute focuses on innovation, new technologies and sustainable development, preparing students to meet contemporary challenges.",
          technologies: ['Wordpress'],
          companyWebsite: 'https://isao-benin.org/',
        },
        {
          image: '/hrdfo.png',
          title: 'HRDFO',
          company: 'HRDFO',
          location: 'Paris, France',
          description: "HRDFO is an NGO fighting poverty and inequality, with a particular focus on empowering women and girls. Its actions include emergency humanitarian aid, food security, access to drinking water, education, and support for communities faced with climate change.",
          technologies: ['Wordpress'],
          companyWebsite: 'https://hrdfo.org/',
        },
        {
          image: '/obp.png',
          title: 'AGRI-OBP',
          company: '',
          location: 'Cotonou, Benin',
          description:
            'Agri-OBP is an innovative mobile application that facilitates online access and subscription to a wide range of agricultural estates, food products, plots and rental management services. It offers a user-friendly, secure interface enabling customers to interact directly with promoters and carry out transactions in complete confidence. Agri-OBP also showcases local, sustainable agriculture by promoting products derived from these responsible practices.',
          technologies: ['Laravel', 'MySql', 'Flutter'],
          companyWebsite: 'https://github.com/Harley755/medical_projet_licence',
        },
        {
          image: '/medical.jpg',
          title: 'Medical assistance mobile application',
          company: '',
          location: 'Cotonou, Benin',
          description:
            'This application is a solution-based approach, enabling healthcare professionals to provide better and faster patient care.',
          technologies: ['Flutter', 'Firebase'],
          companyWebsite: 'https://github.com/Harley755/medical_projet_licence',
        },
        {
          image: '/note.png',
          title: 'Note management application',
          company: '',
          location: 'Cotonou, Benin',
          description:
            'A simple, effective application for managing your notes on a daily basis. Easily create, organize and consult your notes, whether for ideas, tasks or appointments. An intuitive interface makes note-taking quick and easy, with features like categorization, instant search and automatic saving. The perfect tool for staying organized, anywhere, anytime.',
          technologies: ['Flutter', 'Firebase'],
          companyWebsite: 'https://github.com/Harley755/flutter-mynotes',
        },
      ],
    };
  },
};
</script>


<template>
  <section id="project" class="mb-16 scroll-mt-16 md:mb-24 lg:mb-36 lg:scroll-mt-24" aria-label="project">
    <div
      class="sticky top-0 z-20 -mx-6 mb-4 w-screen bg-slate-900/75 px-6 py-5 backdrop-blur md:-mx-12 md:px-12 lg:sr-only lg:relative lg:top-auto lg:mx-auto lg:w-full lg:px-0 lg:py-0 lg:opacity-0">
      <h2 class="text-sm font-bold uppercase tracking-widest text-slate-200 lg:sr-only">Projects</h2>
    </div>
    <div>
      <ol class="group/list">
        <li v-for="(project, index) in projects" :key="index" class="mb-12">
          <div
            class="group relative grid gap-4 pb-1 transition-all sm:grid-cols-8 sm:gap-8 md:gap-4 lg:hover:!opacity-100 lg:group-hover/list:opacity-50">
            <div
              class="absolute -inset-x-4 -inset-y-4 z-0 hidden rounded-md transition motion-reduce:transition-none lg:-inset-x-6 lg:block lg:group-hover:bg-green-100/50 lg:group-hover:shadow-[inset_0_1px_0_0_rgba(148,163,184,0.1)] lg:group-hover:drop-shadow-lg">
            </div>
            <div class="z-10 sm:order-2 sm:col-span-6">
              <h3><a :href="project.companyWebsite"
                  class="inline-flex items-baseline font-medium leading-tight text-slate-200 hover:text-teal-300 focus-visible:text-teal-300  group/link text-base"
                  target="_blank" rel="noreferrer" aria-label="Build a HRSoftware System"><span
                    class="absolute -inset-x-4 -inset-y-2.5 hidden rounded md:-inset-x-6 md:-inset-y-4 lg:block"></span><span>
                    {{ project.title }}
                    <span class="inline-block">
                      <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 20 20" fill="currentColor"
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
              <p class="mt-2 text-sm leading-normal text-slate-400 group-hover:text-white hover:text-white">{{
                project.description }}</p>
              <ul class="mt-2 flex flex-wrap" aria-label="Technologies used">
                <li v-for="(tech, i) in project.technologies" :key="i" class="mr-1.5 mt-2">
                  <div
                    class="flex items-center rounded-full bg-teal-400/10 px-3 py-1 text-xs font-medium leading-5 text-teal-300">
                    {{ tech }}
                  </div>
                </li>
              </ul>
            </div>
            <div>
              <img alt="" data-nimg="1" loading="lazy" width="200" height="48" decoding="async"
                class="rounded border-2 border-slate-200/10 transition group-hover:border-slate-200/30 sm:order-1 sm:col-span-2 sm:translate-y-1"
                style="color:transparent" :src="project.image">
            </div>
          </div>
        </li>


        <div class="mt-12"><a class="inline-flex items-center leading-tight text-slate-200 font-semibold group"
            aria-label="View Full Resume" target="_blank" href="https://github.com/Harley755/"><span><span
                class="border-b border-transparent pb-px transition group-hover:border-teal-300 motion-reduce:transition-none">
                View Full </span><span class="whitespace-nowrap"><span
                  class="border-b border-transparent pb-px transition group-hover:border-teal-300 motion-reduce:transition-none">
                  Github </span>
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
      </ol>
    </div>
  </section>
</template>
