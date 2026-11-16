const track = document.getElementById("carousel-track");
const dots = document.querySelectorAll(".carousel-dot");
const total = document.querySelectorAll(".carousel-slide").length;
let current = 0;
let isTransitioning = false;

// Clone the first slide and append to end for seamless looping
const firstClone = track.children[0].cloneNode(true);
track.appendChild(firstClone);

function updateDots() {
  dots.forEach((d, i) => d.classList.toggle("active", i === current % total));
}

function goTo(index, animate = true) {
  if (isTransitioning) return;

  if (animate) {
    isTransitioning = true;
    track.style.transition = "transform 0.8s cubic-bezier(0.4,0,0.2,1)";
  } else {
    // No animation — skip transition entirely
    track.style.transition = "none";
    // Force reflow so the style applies immediately
    track.getBoundingClientRect();
  }

  track.style.transform = `translateX(-${index * 100}%)`;
  current = index;
  updateDots();
}

// When clone is reached, silently jump back to real first slide
track.addEventListener("transitionend", () => {
  isTransitioning = false;
  if (current >= total) {
    goTo(0, false);
  }
});

function moveCarousel(dir) {
  goTo(current + dir);
}

function goToSlide(i) {
  goTo(i);
}

// Initialize and auto-advance every 3 seconds
updateDots();
setInterval(() => moveCarousel(1), 3000);
