$ErrorActionPreference = "Stop"

$index = ".\src\pages\index.astro"
$css = ".\src\styles\global.css"

if (-not (Test-Path $index)) {
  Write-Host "index.astro not found. Run this from your Astro project root." -ForegroundColor Red
  return
}

if (-not (Test-Path $css)) {
  Write-Host "global.css not found. Run this from your Astro project root." -ForegroundColor Red
  return
}

$stamp = Get-Date -Format "yyyyMMdd-HHmmss"
Copy-Item $index ".\src\pages\index.before-mobile-shell-$stamp.astro" -Force
Copy-Item $css ".\src\styles\global.before-mobile-shell-$stamp.css" -Force

$mobileShell = @'
<!-- MOBILE_APP_SHELL_START -->
<div class="mobile-app-shell-wrapper">
<main class="app-shell">
  <section id="home" class="app-hero app-section" data-title="Home">
    <nav class="app-topbar" aria-label="Primary navigation">
      <a class="app-brand" href="/" aria-label="Icy Clear OS home">
        <span class="brand-orb"></span>
        <span>Icy Clear OS</span>
      </a>

      <div class="app-actions" aria-label="External links">
        <a href="https://github.com/icyNatural" target="_blank" rel="noopener">GitHub</a>
        <a href="https://icynatural.github.io/chad-hamilton-portfolio/" target="_blank" rel="noopener">Portfolio</a>
      </div>
    </nav>

    <div class="hero-card featured-card reveal-card">
      <p class="eyebrow">Mobile Systems Interface</p>
      <h1 class="gradient">Icy Clear OS</h1>
      <p class="hero-sub">See clearly before you explain.</p>
      <p class="lead">Models that change how you read what's happening.</p>

      <div class="hero-pills" aria-label="Dashboard sections">
        <a href="#models">Models</a>
        <a href="#modes">Modes</a>
        <a href="#system">System</a>
        <a href="#energy-engine">Energy</a>
      </div>
    </div>
  </section>

  <section id="dashboard" class="dashboard-grid app-section dashboard-recalibrated" data-title="Dashboard" aria-label="Core dashboard widgets">
    <article class="signal-card reveal-card primary-widget">
      <span class="widget-label">Current Signal</span>
      <strong>Clear Drift</strong>
      <p>Return to observation before naming the state.</p>
    </article>

    <article class="signal-card reveal-card">
      <span class="widget-label">Last Framework Viewed</span>
      <strong id="lastFrameworkLabel">Seeing Before Naming</strong>
      <p>Saved locally as you open frameworks.</p>
    </article>

    <a class="signal-card reveal-card action-widget" href="/models/clear-again">
      <span class="widget-label">Resume Engine</span>
      <strong>Clear Again</strong>
      <p>Restart without losing the system.</p>
    </a>

    <article class="signal-card reveal-card direction-widget">
      <span class="widget-label">Direction Today</span>
      <strong>Protect momentum.</strong>
      <p>Reduce friction, keep the cue simple, and move from signal to action.</p>
    </article>
  </section>

  <section id="energy-engine" class="energy-safe-section app-section" data-title="Energy Engine">
    <a class="energy-safe-card app-feature-card reveal-card" href="https://icynatural.github.io/Energy_Engine/" target="_blank" rel="noopener">
      <span class="energy-safe-label">LIVE APP</span>
      <h2>Energy Engine</h2>
      <p>Adaptive energy modeling for rhythm, recovery, baseline shifts, and daily direction.</p>
      <strong>Open Energy Engine</strong>
    </a>
  </section>

  <section id="start" class="app-section" data-title="Start">
    <div class="section-heading">
      <p class="section-title">Start Here</p>
      <span>Core entry cards</span>
    </div>

    <div class="app-card-stack">
      <a class="card app-framework-card large" href="/models/seeing-before-naming" data-framework="Seeing Before Naming">
        <span class="card-tag">Model</span>
        <h2>Seeing Before Naming</h2>
        <p>Perception before labels.</p>
      </a>

      <a class="card app-framework-card large" href="/models/replace-stories-with-systems" data-framework="Replace Stories with Systems">
        <span class="card-tag">Model</span>
        <h2>Replace Stories with Systems</h2>
        <p>See what is happening underneath.</p>
      </a>

      <a class="card app-framework-card large" href="/models/clear-again" data-framework="Clear Again">
        <span class="card-tag">Reset</span>
        <h2>Clear Again</h2>
        <p>Return when things start to drift.</p>
      </a>
    </div>
  </section>

  <section id="models" class="app-section" data-title="Models">
    <div class="section-heading">
      <p class="section-title">Models</p>
      <span>Framework layer</span>
    </div>

    <div class="app-card-stack app-card-grid">
      <a class="card app-framework-card small" href="/models/from-reaction-to-pattern" data-framework="From Reaction to Pattern">
        <span class="card-tag">Model</span>
        <h2>From Reaction to Pattern</h2>
        <p>Track direction over time.</p>
      </a>

      <a class="card app-framework-card small" href="/models/coherence-vs-entropy" data-framework="Coherence vs Entropy">
        <span class="card-tag">Model</span>
        <h2>Coherence vs Entropy</h2>
        <p>See whether things hold or break down.</p>
      </a>

      <a class="card app-framework-card small" href="/models/value-formation" data-framework="Value Formation">
        <span class="card-tag">Model</span>
        <h2>Value Formation</h2>
        <p>Notice what actually changes things.</p>
      </a>
    </div>
  </section>

  <section id="modes" class="app-section" data-title="Modes">
    <div class="section-heading">
      <p class="section-title">Modes</p>
      <span>State operation</span>
    </div>

    <div class="app-card-stack app-card-grid two-card-grid">
      <a class="card app-framework-card small" href="/modes/parasympathetic-lead-mode" data-framework="Parasympathetic Lead Mode">
        <span class="card-tag">Mode</span>
        <h2>Parasympathetic Lead Mode</h2>
        <p>Rhythm, recovery, and settling.</p>
      </a>
      <a class="card app-framework-card small" href="/modes/sympathetic-lead-mode" data-framework="Sympathetic Lead Mode">
        <span class="card-tag">Mode</span>
        <h2>Sympathetic Lead Mode</h2>
        <p>Action, speed, and response.</p>
      </a>
    </div>
  </section>

  <section id="system" class="app-section" data-title="System">
    <div class="section-heading">
      <p class="section-title">System</p>
      <span>Architecture layer</span>
    </div>

    <div class="app-card-stack app-card-grid two-card-grid">
      <a class="card app-framework-card small" href="/system/return-not-scroll" data-framework="Return, Not Scroll">
        <span class="card-tag">System</span>
        <h2>Return, Not Scroll</h2>
        <p>A site you come back to.</p>
      </a>
      <a class="card app-framework-card small" href="/system/from-mind-to-system" data-framework="From Mind to System">
        <span class="card-tag">System</span>
        <h2>From Mind to System</h2>
        <p>Conditions shape behavior.</p>
      </a>
    </div>
  </section>

  <section class="return-rule app-section reveal-card" data-title="Stability">
    <p>Grow, but remain stable.</p>
  </section>

  <section class="environmental-section app-section" data-title="Environment">
    <div class="environmental-shell reveal-card">
      <p class="environmental-label">Environmental Cognition</p>

      <h2 class="environmental-title">Direction shapes behavior.</h2>

      <p class="environmental-subtitle">
        Simple cues for guiding attention, reducing friction, and staying steady when emotion gets loud.
      </p>

      <div class="cue-display">
        <p class="cue-text">Protect momentum.</p>
      </div>
    </div>
  </section>
</main>

<nav class="bottom-nav" aria-label="Mobile bottom navigation">
  <a href="#home" class="bottom-nav-link active" data-section="home">Home</a>
  <a href="#models" class="bottom-nav-link" data-section="models">Models</a>
  <a href="#modes" class="bottom-nav-link" data-section="modes">Modes</a>
  <a href="#system" class="bottom-nav-link" data-section="system">System</a>
  <a href="#energy-engine" class="bottom-nav-link" data-section="energy-engine">Energy</a>
</nav>

<script>
  const frameworkLinks = document.querySelectorAll("[data-framework]");
  const lastFrameworkLabel = document.querySelector("#lastFrameworkLabel");
  const storedFramework = localStorage.getItem("icy-clear-last-framework");

  if (storedFramework && lastFrameworkLabel) {
    lastFrameworkLabel.textContent = storedFramework;
  }

  frameworkLinks.forEach((link) => {
    link.addEventListener("click", () => {
      localStorage.setItem("icy-clear-last-framework", link.dataset.framework || link.textContent?.trim() || "Framework");
    });
  });

  const navLinks = document.querySelectorAll(".bottom-nav-link");
  const sections = document.querySelectorAll(".app-section[id]");

  const setActive = (id) => {
    navLinks.forEach((link) => link.classList.toggle("active", link.dataset.section === id));
  };

  const observer = new IntersectionObserver(
    (entries) => {
      const visible = entries
        .filter((entry) => entry.isIntersecting)
        .sort((a, b) => b.intersectionRatio - a.intersectionRatio)[0];

      if (visible?.target?.id) setActive(visible.target.id);
    },
    { threshold: [0.22, 0.4, 0.62], rootMargin: "-20% 0px -55% 0px" }
  );

  sections.forEach((section) => observer.observe(section));

  const revealCards = document.querySelectorAll(".reveal-card, .app-framework-card");
  const revealObserver = new IntersectionObserver(
    (entries) => {
      entries.forEach((entry) => {
        if (entry.isIntersecting) entry.target.classList.add("is-visible");
      });
    },
    { threshold: 0.12 }
  );

  revealCards.forEach((card) => revealObserver.observe(card));
</script>
</div>
<!-- MOBILE_APP_SHELL_END -->
'@

$mobileCss = @'
/* MOBILE_APP_SHELL_CSS_START */

/* ===== MOBILE APP SHELL MERGE: desktop preserved ===== */

.mobile-app-shell-wrapper,
.mobile-app-shell-wrapper .bottom-nav {
  display: none;
}

@media (max-width: 768px) {
  body > main:not(.app-shell),
  body > .page:not(.app-shell),
  .desktop-site-shell {
    display: none !important;
  }

  .mobile-app-shell-wrapper {
    display: block !important;
  }

  .mobile-app-shell-wrapper .bottom-nav {
    display: grid !important;
  }

/* =========================================================
   ICY CLEAR OS — MOBILE APPLICATION REDESIGN OVERRIDE
   Keeps existing pages/links, upgrades home into app shell.
========================================================= */

:root {
  --app-ink: #102a3a;
  --app-muted: #5b7890;
  --app-faint: rgba(91, 120, 144, 0.68);
  --app-card: rgba(255, 255, 255, 0.68);
  --app-stroke: rgba(118, 166, 210, 0.2);
  --app-glow: rgba(126, 195, 255, 0.28);
  --app-green: rgba(172, 238, 216, 0.46);
}

html {
  scroll-behavior: smooth;
}

body {
  color: var(--app-ink) !important;
  background:
    radial-gradient(circle at 14% 8%, rgba(222, 246, 255, 0.96), transparent 34%),
    radial-gradient(circle at 88% 16%, rgba(186, 228, 255, 0.64), transparent 38%),
    radial-gradient(circle at 50% 92%, rgba(211, 248, 235, 0.62), transparent 46%),
    linear-gradient(180deg, #f7fbff 0%, #edf6fb 46%, #e9f2f8 100%) !important;
  background-attachment: fixed !important;
}

body::before {
  content: "";
  position: fixed;
  inset: 0;
  pointer-events: none;
  background-image:
    linear-gradient(rgba(255,255,255,0.22) 1px, transparent 1px),
    linear-gradient(90deg, rgba(255,255,255,0.18) 1px, transparent 1px);
  background-size: 44px 44px;
  mask-image: linear-gradient(to bottom, rgba(0,0,0,0.45), transparent 70%);
  z-index: -1;
}

.app-shell,
main.app-shell {
  width: min(1120px, 100%) !important;
  max-width: 1120px !important;
  margin: 0 auto !important;
  padding: 18px 16px 118px !important;
  background: transparent !important;
  border: 0 !important;
  box-shadow: none !important;
  border-radius: 0 !important;
}

.app-section {
  scroll-margin-top: 22px;
  margin: 0 0 28px !important;
}

.app-topbar {
  position: sticky;
  top: 10px;
  z-index: 60;
  display: flex;
  align-items: center;
  justify-content: space-between;
  gap: 12px;
  margin-bottom: 16px;
  padding: 10px 12px;
  border: 1px solid var(--app-stroke);
  border-radius: 999px;
  background: rgba(255,255,255,0.64);
  backdrop-filter: blur(22px) saturate(140%);
  -webkit-backdrop-filter: blur(22px) saturate(140%);
  box-shadow: 0 18px 42px rgba(45, 91, 130, 0.12), inset 0 1px 0 rgba(255,255,255,0.78);
}

.app-brand,
.app-actions a,
.hero-pills a,
.bottom-nav a {
  text-decoration: none !important;
}

.app-brand {
  display: inline-flex;
  align-items: center;
  gap: 8px;
  min-width: 0;
  color: var(--app-ink) !important;
  font-size: 0.95rem;
  font-weight: 900;
  letter-spacing: -0.03em;
}

.brand-orb {
  width: 12px;
  height: 12px;
  flex: 0 0 auto;
  border-radius: 50%;
  background: linear-gradient(135deg, #9ee8ff, #b3f4dd);
  box-shadow: 0 0 22px rgba(126, 195, 255, 0.8);
}

.app-actions {
  display: flex;
  align-items: center;
  gap: 7px;
}

.app-actions a {
  padding: 8px 10px;
  border-radius: 999px;
  color: rgba(16, 42, 58, 0.76) !important;
  font-size: 0.72rem;
  font-weight: 900;
  letter-spacing: 0.05em;
  text-transform: uppercase;
  background: rgba(255,255,255,0.48);
  border: 1px solid rgba(118,166,210,0.16);
}

.hero-card,
.signal-card,
.app-feature-card,
.app-framework-card,
.environmental-shell,
.return-rule {
  border: 1px solid var(--app-stroke) !important;
  background:
    radial-gradient(circle at 18% 10%, rgba(255,255,255,0.96), transparent 38%),
    linear-gradient(145deg, rgba(255,255,255,0.72), rgba(203,225,244,0.42)) !important;
  box-shadow: 0 20px 58px rgba(39, 86, 126, 0.12), inset 0 1px 0 rgba(255,255,255,0.72) !important;
  backdrop-filter: blur(24px) saturate(138%);
  -webkit-backdrop-filter: blur(24px) saturate(138%);
}

.hero-card {
  overflow: hidden;
  position: relative;
  padding: 30px 22px !important;
  border-radius: 34px !important;
}

.hero-card::before {
  content: "";
  position: absolute;
  width: 180px;
  height: 180px;
  right: -58px;
  top: -52px;
  border-radius: 50%;
  background: radial-gradient(circle, rgba(158,232,255,0.5), transparent 66%);
  animation: appFloat 8s ease-in-out infinite;
}

.eyebrow,
.widget-label,
.card-tag {
  display: inline-flex;
  align-items: center;
  width: fit-content;
  margin: 0 0 12px;
  padding: 7px 10px;
  border-radius: 999px;
  color: #36739d !important;
  background: rgba(255,255,255,0.56);
  border: 1px solid rgba(118,166,210,0.16);
  font-size: 0.68rem;
  line-height: 1;
  font-weight: 950;
  letter-spacing: 0.1em;
  text-transform: uppercase;
}

.hero-card h1 {
  position: relative;
  margin: 0 !important;
  font-size: clamp(3.3rem, 17vw, 5.9rem) !important;
  line-height: 0.88 !important;
  letter-spacing: -0.095em !important;
}

.hero-card .hero-sub {
  position: relative;
  margin: 16px 0 0 !important;
  font-size: 1.15rem !important;
  line-height: 1.35 !important;
  color: var(--app-ink) !important;
  font-weight: 780;
}

.hero-card .lead {
  position: relative;
  max-width: 58ch;
  margin: 9px 0 0 !important;
  color: var(--app-muted) !important;
  font-size: 0.98rem !important;
  line-height: 1.55 !important;
}

.hero-pills {
  position: relative;
  display: flex;
  gap: 8px;
  overflow-x: auto;
  margin-top: 22px;
  padding-bottom: 2px;
  scrollbar-width: none;
}

.hero-pills::-webkit-scrollbar,
.app-topbar::-webkit-scrollbar {
  display: none;
}

.hero-pills a {
  flex: 0 0 auto;
  padding: 10px 13px;
  border-radius: 999px;
  color: var(--app-ink) !important;
  background: linear-gradient(135deg, rgba(255,255,255,0.72), rgba(218,238,255,0.58));
  border: 1px solid rgba(118,166,210,0.16);
  font-size: 0.82rem;
  font-weight: 850;
  box-shadow: inset 0 1px 0 rgba(255,255,255,0.68);
}

.dashboard-grid {
  display: grid;
  grid-template-columns: repeat(2, minmax(0, 1fr));
  gap: 12px;
}

.signal-card {
  min-height: 138px;
  padding: 17px !important;
  border-radius: 26px !important;
  text-decoration: none !important;
  transition: transform .24s ease, box-shadow .24s ease, border-color .24s ease;
}

.signal-card strong {
  display: block;
  color: var(--app-ink) !important;
  font-size: 1.28rem;
  line-height: 1.05;
  letter-spacing: -0.055em;
}

.signal-card p {
  margin: 9px 0 0 !important;
  color: var(--app-muted) !important;
  font-size: 0.9rem !important;
  line-height: 1.35 !important;
}

.primary-widget,
.direction-widget {
  grid-column: 1 / -1;
}

.primary-widget strong,
.direction-widget strong {
  font-size: 2rem;
}

.action-widget {
  background:
    radial-gradient(circle at 20% 10%, rgba(255,255,255,0.98), transparent 40%),
    linear-gradient(135deg, rgba(218,244,255,0.9), rgba(184,238,220,0.46)) !important;
}

.energy-safe-section {
  margin: 26px 0 28px !important;
}

.app-feature-card {
  position: relative;
  display: block;
  overflow: hidden;
  padding: 28px 22px !important;
  border-radius: 34px !important;
  text-decoration: none !important;
}

.app-feature-card h2 {
  margin: 0 0 10px !important;
  color: var(--app-ink) !important;
  font-size: clamp(2.8rem, 14vw, 5rem) !important;
  line-height: 0.9 !important;
  letter-spacing: -0.09em !important;
}

.app-feature-card p {
  margin: 0 0 19px !important;
  max-width: 620px;
  color: var(--app-muted) !important;
  font-size: 1rem !important;
  line-height: 1.55 !important;
}

.app-feature-card strong {
  display: inline-flex;
  padding: 11px 14px;
  border-radius: 999px;
  color: var(--app-ink) !important;
  background: rgba(255,255,255,0.58);
  border: 1px solid rgba(118,166,210,0.18);
  font-size: 0.9rem;
}

.section-heading {
  display: flex;
  align-items: end;
  justify-content: space-between;
  gap: 14px;
  margin: 0 0 13px;
}

.section-heading .section-title {
  margin: 0 !important;
  color: var(--app-ink) !important;
  background: none !important;
  -webkit-text-fill-color: var(--app-ink) !important;
  font-size: clamp(1.5rem, 8vw, 2.4rem) !important;
  line-height: 1 !important;
  letter-spacing: -0.065em !important;
  text-shadow: none !important;
}

.section-heading .section-title::after {
  display: none !important;
}

.section-heading span {
  flex: 0 0 auto;
  color: var(--app-faint);
  font-size: 0.75rem;
  font-weight: 850;
  letter-spacing: 0.06em;
  text-transform: uppercase;
}

.app-card-stack {
  display: grid;
  gap: 12px;
}

.app-card-grid {
  grid-template-columns: repeat(3, minmax(0, 1fr));
}

.two-card-grid {
  grid-template-columns: repeat(2, minmax(0, 1fr));
}

.app-framework-card,
.card.app-framework-card,
.card.app-framework-card.small,
.card.app-framework-card.large {
  position: relative !important;
  overflow: hidden !important;
  min-height: 150px !important;
  display: flex !important;
  flex-direction: column !important;
  justify-content: flex-end !important;
  padding: 19px !important;
  border-radius: 28px !important;
  text-align: left !important;
  text-decoration: none !important;
  transform: translateY(0);
  transition: transform .24s ease, box-shadow .24s ease, border-color .24s ease !important;
}

.app-framework-card.large {
  min-height: 176px !important;
}

.app-framework-card::before {
  content: "" !important;
  display: block !important;
  position: absolute !important;
  inset: auto -22px -52px auto !important;
  width: 150px !important;
  height: 150px !important;
  border-radius: 50% !important;
  opacity: 0.78 !important;
  transform: none !important;
  background: radial-gradient(circle, rgba(153, 217, 255, 0.36), transparent 66%) !important;
  pointer-events: none !important;
}

.app-framework-card::after {
  content: "→" !important;
  position: absolute !important;
  right: 18px !important;
  top: 18px !important;
  left: auto !important;
  bottom: auto !important;
  width: 34px !important;
  height: 34px !important;
  display: grid !important;
  place-items: center !important;
  border-radius: 50% !important;
  color: rgba(16,42,58,0.58) !important;
  background: rgba(255,255,255,0.58) !important;
  border: 1px solid rgba(118,166,210,0.14) !important;
  opacity: 1 !important;
  transform: none !important;
}

.app-framework-card h2,
.card.app-framework-card h2,
.card.app-framework-card.small h2 {
  position: relative;
  z-index: 1;
  margin: 0 42px 8px 0 !important;
  color: var(--app-ink) !important;
  font-size: clamp(1.35rem, 6vw, 2rem) !important;
  line-height: 1.02 !important;
  letter-spacing: -0.065em !important;
  font-weight: 900 !important;
}

.app-framework-card p,
.card.app-framework-card p {
  position: relative;
  z-index: 1;
  margin: 0 !important;
  color: var(--app-muted) !important;
  font-size: 0.96rem !important;
  line-height: 1.42 !important;
}

.card-tag {
  position: relative;
  z-index: 1;
}

.app-framework-card:hover,
.signal-card:hover,
.app-feature-card:hover {
  transform: translateY(-4px) !important;
  border-color: rgba(118,166,210,0.34) !important;
  box-shadow: 0 26px 78px rgba(39, 86, 126, 0.18), inset 0 1px 0 rgba(255,255,255,0.78) !important;
}

.app-framework-card:active,
.signal-card:active,
.app-feature-card:active,
.bottom-nav-link:active {
  transform: scale(0.985) !important;
}

.return-rule {
  margin: 40px 0 28px !important;
  padding: 28px 22px !important;
  border-radius: 32px !important;
  color: var(--app-ink) !important;
}

.return-rule p {
  margin: 0 !important;
  color: var(--app-ink) !important;
  font-size: clamp(2.5rem, 13vw, 5rem) !important;
  line-height: 0.9 !important;
  letter-spacing: -0.09em !important;
  font-weight: 950 !important;
}

.environmental-section {
  margin: 0 0 12px !important;
  padding-bottom: 0 !important;
}

.environmental-shell {
  padding: 28px 22px !important;
  border-radius: 34px !important;
}

.environmental-label,
.environmental-subtitle {
  color: var(--app-muted) !important;
}

.environmental-title {
  margin: 0 0 12px !important;
  color: var(--app-ink) !important;
  font-size: clamp(2.4rem, 12vw, 4.6rem) !important;
  line-height: 0.9 !important;
  letter-spacing: -0.08em !important;
}

.cue-display {
  border-radius: 26px !important;
  background: rgba(255,255,255,0.56) !important;
  border: 1px solid rgba(118,166,210,0.16) !important;
}

.cue-text {
  color: var(--app-ink) !important;
}

.bottom-nav {
  position: fixed;
  left: 50%;
  bottom: max(12px, env(safe-area-inset-bottom));
  z-index: 100;
  width: min(520px, calc(100% - 22px));
  transform: translateX(-50%);
  display: grid;
  grid-template-columns: repeat(5, 1fr);
  gap: 4px;
  padding: 7px;
  border-radius: 999px;
  border: 1px solid rgba(118,166,210,0.24);
  background: rgba(247,252,255,0.76);
  backdrop-filter: blur(24px) saturate(150%);
  -webkit-backdrop-filter: blur(24px) saturate(150%);
  box-shadow: 0 18px 60px rgba(34, 74, 106, 0.22), inset 0 1px 0 rgba(255,255,255,0.76);
}

.bottom-nav-link {
  display: flex;
  align-items: center;
  justify-content: center;
  min-height: 42px;
  border-radius: 999px;
  color: rgba(16,42,58,0.62) !important;
  font-size: 0.72rem;
  font-weight: 920;
  letter-spacing: -0.01em;
  transition: background .2s ease, color .2s ease, transform .2s ease, box-shadow .2s ease;
}

.bottom-nav-link.active {
  color: var(--app-ink) !important;
  background: linear-gradient(135deg, rgba(202,233,255,0.92), rgba(224,248,239,0.78));
  box-shadow: 0 10px 24px rgba(58, 112, 153, 0.16), inset 0 1px 0 rgba(255,255,255,0.8);
}

.reveal-card {
  opacity: 0;
  transform: translateY(12px);
}

.reveal-card.is-visible,
.app-framework-card.is-visible {
  opacity: 1;
  transform: translateY(0);
  transition: opacity .55s ease, transform .55s ease, box-shadow .24s ease, border-color .24s ease;
}

@keyframes appFloat {
  0%, 100% { transform: translate3d(0,0,0) scale(1); }
  50% { transform: translate3d(-14px,18px,0) scale(1.06); }
}

@media (min-width: 760px) {
  .app-shell,
  main.app-shell {
    padding: 24px 28px 120px !important;
  }

  .hero-card {
    padding: 48px !important;
  }

  .dashboard-grid {
    grid-template-columns: repeat(6, minmax(0, 1fr));
  }

  .primary-widget,
  .direction-widget {
    grid-column: span 3;
  }

  .signal-card {
    grid-column: span 2;
  }
}

@media (max-width: 760px) {
  .app-topbar {
    overflow-x: auto;
  }

  .app-brand span:last-child {
    max-width: 112px;
    overflow: hidden;
    text-overflow: ellipsis;
    white-space: nowrap;
  }

  .app-actions a {
    padding: 8px 9px;
    font-size: 0.65rem;
  }

  .dashboard-grid,
  .app-card-grid,
  .two-card-grid {
    grid-template-columns: repeat(2, minmax(0, 1fr));
  }

  .app-card-stack:not(.app-card-grid) {
    grid-template-columns: 1fr;
  }

  .app-framework-card.large {
    min-height: 166px !important;
  }

  .section-heading span {
    display: none;
  }
}

@media (max-width: 470px) {
  .dashboard-grid,
  .app-card-grid,
  .two-card-grid {
    grid-template-columns: 1fr;
  }

  .signal-card {
    min-height: 126px;
  }

  .bottom-nav-link {
    font-size: 0.66rem;
  }
}

@media (prefers-reduced-motion: reduce) {
  *, *::before, *::after {
    animation-duration: 0.001ms !important;
    animation-iteration-count: 1 !important;
    scroll-behavior: auto !important;
    transition-duration: 0.001ms !important;
  }

  .reveal-card {
    opacity: 1;
    transform: none;
  }
}

}

/* MOBILE_APP_SHELL_CSS_END */
'@

# ----- Update index.astro safely -----
$indexText = Get-Content $index -Raw

# Remove prior mobile shell if script was run before
$indexText = [regex]::Replace(
  $indexText,
  '(?s)<!-- MOBILE_APP_SHELL_START -->.*?<!-- MOBILE_APP_SHELL_END -->\s*',
  ''
)

# Append mobile shell after existing desktop markup.
$indexText = $indexText.TrimEnd() + "`r`n`r`n" + $mobileShell + "`r`n"

[System.IO.File]::WriteAllText(
  $index,
  $indexText,
  (New-Object System.Text.UTF8Encoding($false))
)

# ----- Update global.css safely -----
$cssText = Get-Content $css -Raw

# Remove prior CSS block if script was run before
$cssText = [regex]::Replace(
  $cssText,
  '(?s)/\* MOBILE_APP_SHELL_CSS_START \*/.*?/\* MOBILE_APP_SHELL_CSS_END \*/\s*',
  ''
)

$cssText = $cssText.TrimEnd() + "`r`n`r`n" + $mobileCss + "`r`n"

[System.IO.File]::WriteAllText(
  $css,
  $cssText,
  (New-Object System.Text.UTF8Encoding($false))
)

Write-Host "Mobile app shell merged safely."
Write-Host "Desktop layout is preserved above 768px."
Write-Host "Backups created with timestamp: $stamp"
Write-Host ""
Write-Host "Test desktop: http://localhost:4321/"
Write-Host "Test mobile: npm run dev -- --host 0.0.0.0"
