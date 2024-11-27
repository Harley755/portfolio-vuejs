<script lang="ts">
import RigthSide from "./components/RigthSide.vue";
import LeftSide from "./components/LeftSide.vue";

export default {
  components: {
    LeftSide,
    RigthSide,
  },
  data() {
    return {
      gradientPosition: { x: 1260, y: 445 }, // Position initiale du gradient
      initialPosition: { x: 1260, y: 445 }, // Position par défaut
    };
  },
  methods: {
    handleMouseMove(event: MouseEvent) {
      this.gradientPosition = {
        x: event.clientX + window.scrollX,
        y: event.clientY + window.scrollY,
      };
    },
    handleMouseOut(event: MouseEvent) {
      // Vérifie si la souris quitte la fenêtre entière
      if (!event.relatedTarget) {
        // Ajout d'un délai pour l'animation
        setTimeout(() => {
          this.gradientPosition = { ...this.initialPosition };
        }, 10);
      }
    },
  },
  mounted() {
    window.addEventListener("mousemove", this.handleMouseMove);
    window.addEventListener("mouseout", this.handleMouseOut); // Écoute la sortie de la souris
  },
  beforeUnmount() {
    window.removeEventListener("mousemove", this.handleMouseMove);
    window.removeEventListener("mouseout", this.handleMouseOut);
  },
};
</script>



<template>
  <div>
    <div
      class="bg-slate-900 leading-relaxed text-slate-400 antialiased selection:bg-teal-300 selection:text-teal-900 min-h-screen min-w-screen mx-auto py-12 font-sans md:py-20 lg:px-24 lg:py-0 md:flex md:justify-end md:relative">
      <!-- Gradient dynamique -->
      <div class="pointer-events-none fixed inset-0 z-30 transition-all duration-300 lg:absolute" :style="{
        background: `radial-gradient(600px at ${gradientPosition.x}px ${gradientPosition.y}px, rgba(29, 78, 216, 0.15), transparent 80%)`
      }"></div>
      <LeftSide />
      <RigthSide />
    </div>
  </div>
</template>




<style scoped></style>
