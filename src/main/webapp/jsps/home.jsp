<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.net.*" %>
<!-- Save as index.html and open in your browser -->
<!doctype html>
<html lang="en">
<head>
  <meta charset="utf-8" />
  <meta name="viewport" content="width=device-width,initial-scale=1" />
  <title>StreamFlix — Home</title>

  <style>
    /* ---------- Reset & base ---------- */
    :root{
      --bg:#0b0b0b;
      --card:#141414;
      --muted:#b3b3b3;
      --accent:#e50914; /* Netflix-ish red */
      --glass: rgba(255,255,255,0.06);
      --card-radius:10px;
      --max-width:1280px;
      --g:16px;
    }
    *{box-sizing:border-box}
    html,body{height:100%}
    body{
      margin:0;
      background:linear-gradient(180deg,#050505 0%, #071018 100%);
      color:#fff;
      font-family: "Segoe UI", Roboto, "Helvetica Neue", Arial;
      -webkit-font-smoothing:antialiased;
      -moz-osx-font-smoothing:grayscale;
      line-height:1.35;
    }
    a{color:inherit;text-decoration:none}
    .container{max-width:var(--max-width);margin:0 auto;padding:0 20px;}

    /* ---------- Top nav ---------- */
    header.topbar{
      position:fixed;left:0;right:0;top:0;height:64px;z-index:40;
      background:linear-gradient(180deg, rgba(11,11,11,0.9), rgba(11,11,11,0.6));
      display:flex;align-items:center;gap:20px;padding:0 24px;
      box-shadow:0 6px 18px rgba(0,0,0,0.6);
    }
    .brand{
      display:flex;align-items:center;gap:12px;font-weight:700;font-size:20px;
    }
    .brand .logo{
      width:36px;height:36px;background:var(--accent);display:inline-block;border-radius:4px;
      display:flex;align-items:center;justify-content:center;font-weight:800;
      font-family:monospace;
    }
    nav.main-nav{display:flex;gap:14px;align-items:center;margin-left:18px;font-size:14px}
    nav.main-nav a{opacity:0.9;padding:6px 8px;border-radius:4px}
    nav.main-nav a:hover{background:rgba(255,255,255,0.03)}
    .right-actions{margin-left:auto;display:flex;gap:12px;align-items:center}
    .search{width:36px;height:36px;border-radius:50%;display:flex;align-items:center;justify-content:center;background:transparent;border:1px solid rgba(255,255,255,0.04)}
    .avatar{width:36px;height:36px;border-radius:5px;background:linear-gradient(45deg,#333,#111);display:inline-block}

    /* ---------- Hero ---------- */
    .hero{
      margin-top:64px;
      position:relative;color:#fff;
      min-height:56vh;
      display:flex;align-items:flex-end;
      border-bottom: 1px solid rgba(255,255,255,0.03);
      background-size:cover;background-position:center;
    }
    .hero::after{
      content:"";
      position:absolute;left:0;right:0;top:0;bottom:0;
      background:linear-gradient(180deg, rgba(5,5,5,0.1) 30%, rgba(5,5,5,0.9) 85%);
      z-index:1;
    }
    .hero-inner{position:relative;z-index:2;padding:48px 24px 64px;}
    .hero .meta{max-width:780px}
    .title{font-size:clamp(28px,4vw,48px);font-weight:800;margin:0 0 10px}
    .subtitle{color:var(--muted);margin-bottom:18px;font-size:15px}
    .hero .cta{display:flex;gap:12px}
    .btn{
      background:var(--glass);border:0;padding:10px 18px;border-radius:6px;font-weight:700;cursor:pointer;
      display:inline-flex;gap:10px;align-items:center;
    }
    .btn.play{background:#fff;color:#000}
    .btn.info{border:1px solid rgba(255,255,255,0.12)}

    /* ---------- Rows ---------- */
    section.row{padding:22px 0 32px;margin-top:6px}
    section.row h3{margin:0 0 14px;font-size:18px}
    .row-track{display:flex;gap:12px;overflow-x:auto;padding-bottom:6px}
    .row-track::-webkit-scrollbar{height:10px}
    .row-track::-webkit-scrollbar-thumb{background:rgba(255,255,255,0.08);border-radius:10px}
    .card{
      min-width:200px;height:112px;background:var(--card);border-radius:8px;flex:0 0 auto;position:relative;
      overflow:hidden;box-shadow:0 6px 20px rgba(0,0,0,0.6);cursor:pointer;transition:transform .24s ease, box-shadow .24s;
      display:flex;align-items:flex-end;padding:10px;
    }
    .card img{position:absolute;inset:0;width:100%;height:100%;object-fit:cover;filter:brightness(.75)}
    .card .label{position:relative;z-index:2;font-weight:700}
    .card:hover{transform:translateY(-8px) scale(1.03);box-shadow:0 18px 40px rgba(0,0,0,0.7)}
    .card.small{min-width:140px;height:84px}

    /* ---------- Responsive / grid ---------- */
    .content{padding-top:10px;padding-bottom:60px}
    @media(min-width:960px){
      .container{padding:0 36px}
      .hero-inner{padding:76px 0 90px;}
    }

    /* ---------- footer ---------- */
    footer{padding:30px 0;color:var(--muted);font-size:13px;text-align:center;border-top:1px solid rgba(255,255,255,0.02)}
    /* utility */
    .muted{color:var(--muted)}
    .pill{padding:6px 8px;border-radius:999px;border:1px solid rgba(255,255,255,0.06);font-size:13px}
  </style>
</head>
<body>

  <!-- Top navigation -->
  <header class="topbar">
    <div class="brand">
      <div class="logo">SF</div>
      <div style="display:flex;flex-direction:column;line-height:1">
        <div style="font-size:14px">StreamFlix</div>
        <div style="font-size:10px;color:var(--muted);font-weight:600">Home</div>
      </div>
    </div>

    <nav class="main-nav" aria-label="Main">
      <a href="#">Home</a>
      <a href="#">TV Shows</a>
      <a href="#">Movies</a>
      <a href="#">New & Popular</a>
      <a href="#">My List</a>
    </nav>

    <div class="right-actions">
      <div class="search" title="Search" aria-hidden="true">🔍</div>
      <div class="pill muted">Kids</div>
      <div class="avatar" title="Profile"></div>
    </div>
  </header>

  <!-- Hero -->
  <main>
    <section class="hero" id="hero" style="background-image:url('https://picsum.photos/1400/700?random=21')">
      <div class="container hero-inner">
        <div class="hero meta">
          <h1 class="title">The Phantom Horizon</h1>
          <p class="subtitle">A pulse-pounding original series. Secrets. Danger. Redemption. New episodes every Friday.</p>
          <div class="cta">
            <button class="btn play" onclick="openTrailer()">▶ Play</button>
            <button class="btn info" onclick="openInfo()">ℹ More Info</button>
          </div>
        </div>
      </div>
    </section>

    <!-- Content -->
    <div class="content container">

      <!-- Row 1 -->
      <section class="row">
        <h3>Continue Watching</h3>
        <div class="row-track" id="row1">
          <!-- cards -->
        </div>
      </section>

      <!-- Row 2 -->
      <section class="row">
        <h3>Trending Now</h3>
        <div class="row-track" id="row2"></div>
      </section>

      <!-- Row 3 -->
      <section class="row">
        <h3>Top Picks for You</h3>
        <div class="row-track" id="row3"></div>
      </section>

      <!-- Row 4 small -->
      <section class="row">
        <h3>Comedies</h3>
        <div class="row-track" id="row4"></div>
      </section>

    </div>
  </main>

  <footer>
    © StreamFlix — Demo UI • Not affiliated with Netflix. Images are placeholders.
  </footer>

  <script>
    // Sample dataset for cards (placeholder images)
    const sample = Array.from({length:18}).map((_,i)=>({
      id:i+1,
      title: ['Phantom','Afterlight','Red Dawn','Glass City','Neon Run','Lone Rider','Skyfall','Deep Blue'][i % 8] + ' ' + (i+1),
      img: `https://picsum.photos/400/240?random=${30+i}`
    }));

    // Populate rows
    function makeCard(item, small=false){
      const div = document.createElement('a');
      div.className = 'card' + (small? ' small':'');
      div.href = '#';
      div.innerHTML = `
        <img src="${item.img}" alt="${item.title}" />
        <div class="label">${item.title}</div>
      `;
      div.addEventListener('click', (e)=>{
        e.preventDefault();
        openInfo(item);
      });
      return div;
    }

    function fillRows(){
      const r1 = document.getElementById('row1');
      const r2 = document.getElementById('row2');
      const r3 = document.getElementById('row3');
      const r4 = document.getElementById('row4');

      // Continue watching: show first 6
      sample.slice(0,6).forEach(it=>r1.appendChild(makeCard(it)));
      // trending: 6-12
      sample.slice(6,12).forEach(it=>r2.appendChild(makeCard(it)));
      // top picks: next 6
      sample.slice(12,18).forEach(it=>r3.appendChild(makeCard(it)));
      // comedies: small cards (reuse sample)
      sample.slice(2,10).forEach(it=>r4.appendChild(makeCard(it, true)));
    }

    fillRows();

    // Simple "More Info" modal-ish (native alert for simplicity)
    function openInfo(item){
      if(!item){
        alert('More Info — The Phantom Horizon\n\nGenre: Drama, Thriller\nSeasons: 1\n\nThis is a demo layout. Click a card for details.');
        return;
      }
      alert(item.title + '\n\nThis is a demo card. Use this hook to open a modal or play trailer.');
    }

    // Play action: scroll to "hero" and simulate playing
    function openTrailer(){
      window.location.hash = '#hero';
      setTimeout(()=>alert('▶ Playing trailer — (demo mode)'), 250);
    }

    // Improve touch scroll experience: allow track to snap to items on scroll end
    document.querySelectorAll('.row-track').forEach(track=>{
      let isDown=false, startX, scrollLeft;
      track.addEventListener('mousedown', (e)=>{
        isDown=true; track.classList.add('active'); startX=e.pageX - track.offsetLeft; scrollLeft = track.scrollLeft;
      });
      track.addEventListener('mouseleave', ()=>isDown=false);
      track.addEventListener('mouseup', ()=>isDown=false);
      track.addEventListener('mousemove', (e)=>{
        if(!isDown) return;
        e.preventDefault();
        const x = e.pageX - track.offsetLeft;
        const walk = (x - startX) * 1.5;
        track.scrollLeft = scrollLeft - walk;
      });
    });

    // Accessibility: reduce motion for users who prefer it
    const prefersReduced = window.matchMedia('(prefers-reduced-motion: reduce)').matches;
    if(prefersReduced){
      document.querySelectorAll('.card').forEach(c=>c.style.transition='none');
    }
  </script>
</body>
</html>


