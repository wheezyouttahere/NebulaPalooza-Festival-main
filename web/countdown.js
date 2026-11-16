// Countdown to festival opening
const target = new Date("2026-06-04T10:00:00");

function tick() {
  const diff = target - Date.now();
  if (diff <= 0) {
    document.querySelector(".countdown").textContent = "Festival has started!";
    return;
  }
  const d = Math.floor(diff / 864e5);
  const h = Math.floor((diff % 864e5) / 36e5);
  const m = Math.floor((diff % 36e5) / 6e4);
  const s = Math.floor((diff % 6e4) / 1e3);
  document.getElementById("cd-days").textContent = String(d).padStart(2, "0");
  document.getElementById("cd-hrs").textContent = String(h).padStart(2, "0");
  document.getElementById("cd-min").textContent = String(m).padStart(2, "0");
  document.getElementById("cd-sec").textContent = String(s).padStart(2, "0");
}

tick();
setInterval(tick, 1000);
