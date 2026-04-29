<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0, viewport-fit=cover" />
    <title>LUMINA — Immersive E‑Commerce</title>
    
    <!-- Google Fonts & Font Awesome -->
    <link href="https://fonts.googleapis.com/css2?family=Inter:opsz,wght@14..32,300;14..32,400;14..32,500;14..32,600;14..32,700&family=Space+Grotesk:wght@400;500;600;700&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">
    
    <style>
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }

        :root {
            --bg-dark: #0B0F1E;
            --bg-surface: rgba(18, 24, 40, 0.8);
            --glass-border: rgba(255, 255, 255, 0.08);
            --primary-glow: #6C63FF;
            --accent-electric: #00F0FF;
            --accent-coral: #FF6B6B;
            --text-light: #F1F5F9;
            --text-muted: #8E9BB0;
            --card-bg: rgba(22, 28, 46, 0.7);
            --success-glow: #00D26A;
            --radius-xl: 28px;
            --radius-md: 18px;
            --border-subtle: 1px solid rgba(255,255,255,0.06);
            --shadow-soft: 0 20px 40px -12px rgba(0,0,0,0.5);
            --shadow-glass: 0 8px 32px rgba(0,0,0,0.2);
        }

        body {
            background: radial-gradient(circle at 10% 20%, #0F1422, #080C18);
            font-family: 'Inter', sans-serif;
            color: var(--text-light);
            line-height: 1.5;
            scroll-behavior: smooth;
        }

        /* custom scroll */
        ::-webkit-scrollbar {
            width: 6px;
        }
        ::-webkit-scrollbar-track {
            background: #1E2538;
            border-radius: 10px;
        }
        ::-webkit-scrollbar-thumb {
            background: var(--primary-glow);
            border-radius: 10px;
        }

        .container {
            max-width: 1280px;
            margin: 0 auto;
            padding: 0 28px;
        }

        /* glassmorphism header */
        header {
            position: sticky;
            top: 18px;
            z-index: 100;
            margin-top: 18px;
        }
        .glass-header {
            background: rgba(11, 15, 30, 0.75);
            backdrop-filter: blur(16px);
            border-radius: 80px;
            border: var(--border-subtle);
            box-shadow: 0 4px 20px rgba(0,0,0,0.2);
            padding: 8px 24px;
            transition: all 0.2s ease;
        }
        .header-inner {
            display: flex;
            align-items: center;
            justify-content: space-between;
            gap: 20px;
        }
        .brand {
            font-family: 'Space Grotesk', monospace;
            font-weight: 700;
            font-size: 1.8rem;
            background: linear-gradient(135deg, #FFFFFF, var(--accent-electric));
            -webkit-background-clip: text;
            background-clip: text;
            color: transparent;
            letter-spacing: -0.02em;
        }
        .brand span {
            background: none;
            color: var(--accent-electric);
        }
        .main-nav ul {
            display: flex;
            gap: 8px;
            list-style: none;
        }
        .main-nav a {
            padding: 10px 18px;
            border-radius: 40px;
            font-weight: 500;
            transition: all 0.2s;
            color: var(--text-light);
            font-size: 0.9rem;
        }
        .main-nav a:hover {
            background: rgba(108, 99, 255, 0.2);
            color: white;
            backdrop-filter: blur(4px);
        }
        .search-glass {
            display: flex;
            align-items: center;
            background: rgba(255,255,255,0.05);
            backdrop-filter: blur(12px);
            border-radius: 60px;
            padding: 6px 16px;
            gap: 10px;
            border: var(--border-subtle);
        }
        .search-glass input {
            background: transparent;
            border: none;
            outline: none;
            color: white;
            font-size: 0.85rem;
            width: 180px;
        }
        .search-glass input::placeholder {
            color: var(--text-muted);
        }
        .icon-btn {
            background: rgba(255,255,255,0.03);
            border-radius: 40px;
            width: 38px;
            height: 38px;
            display: inline-flex;
            align-items: center;
            justify-content: center;
            transition: 0.2s;
            color: var(--text-light);
            font-size: 1.1rem;
        }
        .icon-btn:hover {
            background: var(--primary-glow);
            color: white;
            transform: translateY(-2px);
        }
        .cart {
            position: relative;
        }
        .cart-count {
            position: absolute;
            top: -6px;
            right: -6px;
            background: var(--accent-coral);
            color: white;
            font-size: 10px;
            font-weight: bold;
            width: 18px;
            height: 18px;
            border-radius: 50%;
            display: flex;
            align-items: center;
            justify-content: center;
        }
        .mobile-toggle {
            display: none;
            background: transparent;
            border: none;
            color: white;
            font-size: 1.6rem;
        }

        /* Hero 3d vibe */
        .hero-modern {
            margin: 48px 0 32px;
            background: radial-gradient(ellipse at 70% 30%, rgba(108,99,255,0.2), transparent 70%);
            border-radius: var(--radius-xl);
            padding: 64px 32px;
            text-align: center;
            backdrop-filter: blur(2px);
        }
        .hero-modern h1 {
            font-family: 'Space Grotesk', sans-serif;
            font-size: 3.8rem;
            font-weight: 700;
            background: linear-gradient(135deg, #fff, var(--accent-electric), #9D4EDD);
            -webkit-background-clip: text;
            background-clip: text;
            color: transparent;
            letter-spacing: -0.02em;
        }
        .btn-group {
            display: flex;
            gap: 16px;
            justify-content: center;
            margin-top: 28px;
        }
        .btn {
            padding: 12px 28px;
            border-radius: 40px;
            font-weight: 600;
            border: none;
            cursor: pointer;
            transition: all 0.2s ease;
            font-size: 0.9rem;
        }
        .btn-primary {
            background: linear-gradient(95deg, var(--primary-glow), #4A3BFF);
            color: white;
            box-shadow: 0 8px 18px rgba(108,99,255,0.3);
        }
        .btn-primary:hover {
            transform: scale(1.02);
            box-shadow: 0 12px 28px rgba(108,99,255,0.5);
        }
        .btn-outline {
            background: transparent;
            border: 1px solid rgba(255,255,255,0.3);
            backdrop-filter: blur(4px);
            color: white;
        }
        .btn-outline:hover {
            background: rgba(255,255,255,0.1);
            border-color: var(--accent-electric);
        }

        /* section titles */
        .section-head {
            text-align: center;
            margin: 56px 0 32px;
        }
        .section-head h2 {
            font-size: 2.3rem;
            font-family: 'Space Grotesk';
            font-weight: 600;
        }
        .glow-text {
            background: linear-gradient(120deg, #fff, var(--accent-electric));
            -webkit-background-clip: text;
            background-clip: text;
            color: transparent;
        }

        /* categories grid modern */
        .grid-cats {
            display: grid;
            grid-template-columns: repeat(auto-fit, minmax(160px, 1fr));
            gap: 24px;
        }
        .cat-card-modern {
            background: var(--card-bg);
            backdrop-filter: blur(12px);
            border-radius: var(--radius-md);
            padding: 28px 12px;
            text-align: center;
            border: var(--border-subtle);
            transition: all 0.25s cubic-bezier(0.2, 0.9, 0.4, 1.1);
            cursor: pointer;
        }
        .cat-card-modern:hover {
            transform: translateY(-8px);
            background: rgba(108, 99, 255, 0.2);
            border-color: var(--primary-glow);
            box-shadow: var(--shadow-soft);
        }
        .cat-icon {
            font-size: 2.8rem;
            color: var(--accent-electric);
            margin-bottom: 12px;
        }

        /* product cards premium */
        .products-grid {
            display: grid;
            grid-template-columns: repeat(auto-fill, minmax(270px, 1fr));
            gap: 28px;
        }
        .product-card {
            background: rgba(18, 24, 40, 0.6);
            backdrop-filter: blur(8px);
            border-radius: 24px;
            border: var(--border-subtle);
            overflow: hidden;
            transition: 0.3s;
        }
        .product-card:hover {
            transform: translateY(-6px);
            border-color: rgba(108,99,255,0.5);
            box-shadow: 0 20px 35px -12px black;
        }
        .product-img {
            height: 220px;
            width: 100%;
            object-fit: cover;
            transition: 0.3s;
        }
        .product-info {
            padding: 18px 16px;
        }
        .price-badge {
            display: flex;
            justify-content: space-between;
            align-items: center;
            margin: 10px 0;
        }
        .current-price {
            font-size: 1.6rem;
            font-weight: 700;
            color: var(--accent-electric);
        }
        .old-price {
            text-decoration: line-through;
            font-size: 0.85rem;
            color: var(--text-muted);
        }
        .btn-add {
            background: linear-gradient(90deg, #2A2F4B, #1E2538);
            border: none;
            width: 100%;
            padding: 12px;
            border-radius: 40px;
            color: white;
            font-weight: 600;
            cursor: pointer;
            transition: 0.2s;
            margin-top: 12px;
        }
        .btn-add:hover {
            background: var(--primary-glow);
            box-shadow: 0 4px 12px rgba(108,99,255,0.4);
        }

        /* flash sale premium */
        .flash-deal {
            background: linear-gradient(125deg, rgba(30, 20, 50, 0.8), rgba(10, 15, 30, 0.9));
            border-radius: 42px;
            display: flex;
            flex-wrap: wrap;
            overflow: hidden;
            backdrop-filter: blur(12px);
            border: 1px solid rgba(255,255,255,0.1);
            margin: 32px 0;
        }
        .deal-media {
            flex: 1.2;
            min-width: 260px;
            background: url('https://images.unsplash.com/photo-1611186871348-b1ce696e52c9?auto=format&fit=crop&w=800&q=80') center/cover no-repeat;
        }
        .deal-content {
            flex: 1;
            padding: 36px;
        }
        .timer-glow {
            display: flex;
            gap: 18px;
            margin: 24px 0;
        }
        .time-unit {
            background: rgba(0,0,0,0.6);
            backdrop-filter: blur(8px);
            padding: 12px 18px;
            border-radius: 24px;
            text-align: center;
            min-width: 70px;
            border: 1px solid rgba(255,255,255,0.2);
        }
        .time-unit span:first-child {
            font-size: 2rem;
            font-weight: 800;
            font-family: monospace;
        }

        /* testimonials wave */
        .testimonials-slider {
            display: flex;
            gap: 24px;
            overflow-x: auto;
            padding: 20px 4px 28px;
        }
        .testi-card {
            background: rgba(20, 26, 45, 0.7);
            backdrop-filter: blur(12px);
            border-radius: 32px;
            padding: 28px;
            min-width: 320px;
            border: var(--border-subtle);
        }
        .rating i {
            color: #FFD966;
            margin-right: 2px;
        }
        /* newsletter */
        .newsletter-3d {
            background: radial-gradient(circle at left, #202642, #0A0E1A);
            border-radius: 48px;
            padding: 48px;
            text-align: center;
            border: 1px solid rgba(0,240,255,0.2);
        }
        .news-group {
            display: flex;
            justify-content: center;
            gap: 12px;
            margin-top: 24px;
            flex-wrap: wrap;
        }
        .news-group input {
            background: rgba(0,0,0,0.5);
            border: 1px solid rgba(255,255,255,0.2);
            padding: 14px 24px;
            border-radius: 60px;
            width: 280px;
            color: white;
        }

        footer {
            margin-top: 70px;
            padding: 40px 0;
            border-top: 1px solid rgba(255,255,255,0.05);
        }
        @media (max-width: 860px) {
            .main-nav { display: none; }
            .mobile-toggle { display: block; }
            .hero-modern h1 { font-size: 2.5rem; }
            .glass-header { border-radius: 32px; margin: 8px; }
            .container { padding: 0 20px; }
        }
        @media (max-width: 600px) {
            .flash-deal { flex-direction: column; }
            .deal-media { height: 220px; }
        }
    </style>
</head>
<body>

<header>
    <div class="container">
        <div class="glass-header">
            <div class="header-inner">
                <button class="mobile-toggle" id="mobileToggle"><i class="fas fa-bars"></i></button>
                <div class="brand">LUMINA<span>.</span></div>
                <nav class="main-nav">
                    <ul>
                        <li><a href="#"><i class="fas fa-compass"></i> Explore</a></li>
                        <li><a href="#" id="openCatInsight"><i class="fas fa-grid-2"></i> Categories</a></li>
                        <li><a href="#deals"><i class="fas fa-bolt"></i> Drops</a></li>
                        <li><a href="#"><i class="fas fa-gem"></i> Luxe</a></li>
                    </ul>
                </nav>
                <div style="display: flex; gap: 12px; align-items: center;">
                    <div class="search-glass">
                        <i class="fas fa-search"></i>
                        <input type="text" id="globalSearch" placeholder="Search dream items...">
                    </div>
                    <div class="icon-btn cart" id="cartIcon">
                        <i class="fas fa-bag-shopping"></i>
                        <span class="cart-count" id="cartCount">0</span>
                    </div>
                    <div class="icon-btn"><i class="far fa-user"></i></div>
                </div>
            </div>
        </div>
        <div id="mobileMenuPanel" style="display: none; margin-top: 12px; background: rgba(10,15,30,0.95); backdrop-filter: blur(20px); border-radius: 32px; padding: 20px;">
            <ul style="list-style: none; display: flex; flex-direction: column; gap: 14px;">
                <li><a href="#">Home</a></li>
                <li><a href="#">Categories</a></li>
                <li><a href="#deals">Deals</a></li>
                <li><a href="#">Wishlist</a></li>
            </ul>
        </div>
    </div>
</header>

<main>
    <div class="container">
        <!-- Hero reimagined -->
        <div class="hero-modern">
            <h1>Beyond the expected.<br> <span style="color: var(--accent-electric);">Future wear & tech.</span></h1>
            <p style="font-size: 1.2rem; max-width: 640px; margin: 20px auto; color: #B9C3E6;">Elevate your style with immersive design, premium quality & AI-curated deals.</p>
            <div class="btn-group">
                <button class="btn btn-primary" id="shopNowBtn"><i class="fas fa-meteor"></i> Shop Now</button>
                <button class="btn btn-outline" id="exploreFlash"><i class="fas fa-clock"></i> Flash Sale</button>
            </div>
        </div>

        <!-- Categories section dynamic -->
        <div class="section-head">
            <h2>Curated <span class="glow-text">Collections</span></h2>
            <p style="color: var(--text-muted)">Discover by vibe & category</p>
        </div>
        <div class="grid-cats" id="categoriesContainer"></div>

        <!-- Trending products -->
        <div class="section-head" id="trendingSection">
            <h2>⚡ Trending <span class="glow-text">Essentials</span></h2>
            <p>Most sought-after picks this week</p>
        </div>
        <div class="products-grid" id="productsContainer"></div>

        <!-- Flash sale premium -->
        <div id="deals"></div>
        <div class="section-head" style="margin-top: 48px;">
            <h2>🔥 <span class="glow-text">Velocity Sale</span> 🔥</h2>
        </div>
        <div class="flash-deal">
            <div class="deal-media"></div>
            <div class="deal-content">
                <h2 style="font-size: 2rem;">AirPods Max Aurora</h2>
                <p style="color: #B9C3E6;">Spatial audio · premium finish · limited drop</p>
                <div class="timer-glow" id="timerWidget">
                    <div class="time-unit"><span id="days">0</span><br>Days</div>
                    <div class="time-unit"><span id="hours">00</span><br>Hrs</div>
                    <div class="time-unit"><span id="minutes">00</span><br>Mins</div>
                    <div class="time-unit"><span id="seconds">00</span><br>Sec</div>
                </div>
                <div style="display: flex; gap: 16px; align-items: baseline; flex-wrap: wrap;">
                    <span class="current-price" style="font-size: 2.5rem;">$449</span>
                    <span class="old-price" style="font-size: 1.2rem;">$649</span>
                    <span style="background: #FF6B6B; padding: 4px 14px; border-radius: 40px;">-31%</span>
                </div>
                <button class="btn btn-primary" id="dealAddBtn" style="margin-top: 20px;"><i class="fas fa-bolt"></i> Add to briefcase</button>
            </div>
        </div>

        <!-- testimonials -->
        <div class="section-head">
            <h2>Voices of <span class="glow-text">Lumina</span></h2>
        </div>
        <div class="testimonials-slider" id="testiDynamic">
            <!-- will be injected with js but also static backup -->
        </div>

        <!-- newsletter luxe -->
        <div class="newsletter-3d">
            <h3><i class="fas fa-envelope-open-text"></i> Neon Newsletter</h3>
            <p>Subscribe & get <strong style="color: var(--accent-electric);">15% off</strong> your first order</p>
            <div class="news-group">
                <input type="email" id="newsEmail" placeholder="your@email.com">
                <button class="btn btn-primary" id="subNewsBtn">Subscribe →</button>
            </div>
            <div id="newsMsg" style="margin-top: 12px; font-size: 0.85rem;"></div>
        </div>
    </div>
</main>

<footer>
    <div class="container" style="display: flex; justify-content: space-between; flex-wrap: wrap; gap: 24px;">
        <div><h3 style="font-family: Space Grotesk;">LUMINA<span style="color:var(--accent-electric)">.</span></h3><p style="color: #5F6C8A;">Edge of tomorrow, delivered.</p></div>
        <div><strong>Explore</strong><br>New arrivals<br>Editorial</div>
        <div><strong>Support</strong><br>24/7 concierge<br>Returns</div>
    </div>
    <div class="container" style="text-align: center; margin-top: 32px; color: #5F6C8A;">© 2026 Lumina — futuristic commerce</div>
</footer>

<script>
    // ---------- DATA (modern catalog) ----------
    const categories = [
        { id: "wear", name: "Wearables", icon: "fa-watch-fitness" },
        { id: "audio", name: "Studio Audio", icon: "fa-headphones" },
        { id: "lifestyle", name: "Lifestyle", icon: "fa-couch" },
        { id: "gadget", name: "Cyber Gadgets", icon: "fa-microchip" },
        { id: "footwear", name: "Neo Kicks", icon: "fa-shoe-prints" },
        { id: "access", name: "Digital Acc", icon: "fa-bag-shopping" }
    ];

    const products = [
        { id: 101, title: "Orbit XR Glasses", price: 599, oldPrice: 799, rating: 5, reviews: 212, img: "https://images.unsplash.com/photo-1572635196237-14b3f281503f?auto=format&fit=crop&w=600&q=80", category: "wear" },
        { id: 102, title: "Quantum Headphones", price: 349, oldPrice: 499, rating: 4.8, reviews: 87, img: "https://images.unsplash.com/photo-1618366712010-f4ae9c647dcb?auto=format&fit=crop&w=600&q=80", category: "audio" },
        { id: 103, title: "Aether Smart Ring", price: 199, oldPrice: 279, rating: 4.7, reviews: 143, img: "https://images.unsplash.com/photo-1599643478518-a784e5dc4c8f?auto=format&fit=crop&w=600&q=80", category: "wear" },
        { id: 104, title: "Phantom Drone Mini", price: 899, rating: 5, reviews: 64, img: "https://images.unsplash.com/photo-1473968512647-3e447244af8f?auto=format&fit=crop&w=600&q=80", category: "gadget" },
        { id: 105, title: "Echo Sneakers", price: 159, oldPrice: 229, rating: 4.6, reviews: 232, img: "https://images.unsplash.com/photo-1542291026-7eec264c27ff?auto=format&fit=crop&w=600&q=80", category: "footwear" },
        { id: 106, title: "Nova Backpack", price: 99, rating: 4.9, reviews: 98, img: "https://images.unsplash.com/photo-1553062407-98eeb64c6a62?auto=format&fit=crop&w=600&q=80", category: "access" }
    ];

    let cartItemsCount = 0;
    function updateCartUI() { document.getElementById('cartCount').innerText = cartItemsCount; }
    function addToCartGlobal(id) {
        const prod = products.find(p => p.id === id);
        if(!prod) return;
        cartItemsCount++;
        updateCartUI();
        const btn = document.querySelector(`.add-cart-btn[data-id='${id}']`);
        if(btn) {
            const orig = btn.innerHTML;
            btn.innerHTML = '<i class="fas fa-check"></i> Added';
            setTimeout(() => btn.innerHTML = orig, 1000);
        } else {
            alert(`✨ ${prod.title} added to cart`);
        }
    }

    // Render categories
    function renderCategories() {
        const container = document.getElementById('categoriesContainer');
        container.innerHTML = categories.map(cat => `
            <div class="cat-card-modern" data-cat="${cat.name}">
                <div class="cat-icon"><i class="fas ${cat.icon}"></i></div>
                <h4>${cat.name}</h4>
                <div style="font-size:13px; color:#7C8DB0;">discover</div>
            </div>
        `).join('');
        document.querySelectorAll('.cat-card-modern').forEach(card => {
            card.addEventListener('click', (e) => {
                const catName = card.dataset.cat;
                document.getElementById('globalSearch').value = catName;
                filterProductsBySearch(catName);
                document.getElementById('trendingSection').scrollIntoView({ behavior: 'smooth' });
            });
        });
    }

    function filterProductsBySearch(query) {
        const q = query.trim().toLowerCase();
        if(!q) renderProducts(products);
        else {
            const filtered = products.filter(p => p.title.toLowerCase().includes(q) || p.category.toLowerCase().includes(q));
            renderProducts(filtered);
        }
    }

    function renderProducts(prods) {
        const container = document.getElementById('productsContainer');
        container.innerHTML = prods.map(p => `
            <div class="product-card">
                <img class="product-img" src="${p.img}" alt="${p.title}" loading="lazy">
                <div class="product-info">
                    <h3 style="font-size:1.2rem;">${p.title}</h3>
                    <div class="price-badge">
                        <div><span class="current-price">$${p.price}</span> ${p.oldPrice ? `<span class="old-price">$${p.oldPrice}</span>` : ''}</div>
                        <div style="color: #FFD966;"><i class="fas fa-star"></i> ${p.rating} (${p.reviews})</div>
                    </div>
                    <button class="btn-add add-cart-btn" data-id="${p.id}"><i class="fas fa-cart-plus"></i> Quick add</button>
                </div>
            </div>
        `).join('');
        document.querySelectorAll('.add-cart-btn').forEach(btn => {
            btn.addEventListener('click', (e) => {
                const id = parseInt(btn.dataset.id);
                addToCartGlobal(id);
            });
        });
    }

    // Testimonials dynamic
    const testimonialsArr = [
        { name: "Maya Chen", text: "The design is otherworldly! Shipping was faster than light.", rating: 5, avatar: "https://randomuser.me/api/portraits/women/68.jpg" },
        { name: "Julian V.", text: "Lumina experience is chef's kiss. Love the immersive UI.", rating: 5, avatar: "https://randomuser.me/api/portraits/men/32.jpg" }
    ];
    function renderTestimonials() {
        const tContainer = document.getElementById('testiDynamic');
        tContainer.innerHTML = testimonialsArr.map(t => `
            <div class="testi-card">
                <div class="rating">${'<i class="fas fa-star"></i>'.repeat(t.rating)}</div>
                <p style="margin: 12px 0;">"${t.text}"</p>
                <div style="display:flex; gap:12px; align-items:center;"><img src="${t.avatar}" style="width:42px;height:42px;border-radius:50%;object-fit:cover;"> <strong>${t.name}</strong></div>
            </div>
        `).join('');
    }

    // countdown timer
    function initTimer() {
        const targetTime = new Date().getTime() + (36 * 60 * 60 * 1000) + (45 * 60 * 1000);
        function tick() {
            const now = new Date().getTime();
            const diff = targetTime - now;
            if(diff <= 0) { document.getElementById('days').innerText = "0"; document.getElementById('hours').innerText = "00"; document.getElementById('minutes').innerText = "00"; document.getElementById('seconds').innerText = "00"; return; }
            const days = Math.floor(diff / (1000*60*60*24));
            const hours = Math.floor((diff % (86400000)) / (3600000));
            const mins = Math.floor((diff % 3600000) / 60000);
            const secs = Math.floor((diff % 60000) / 1000);
            document.getElementById('days').innerText = days;
            document.getElementById('hours').innerText = hours < 10 ? '0'+hours : hours;
            document.getElementById('minutes').innerText = mins < 10 ? '0'+mins : mins;
            document.getElementById('seconds').innerText = secs < 10 ? '0'+secs : secs;
        }
        tick(); setInterval(tick, 1000);
    }

    // Event listeners
    document.getElementById('shopNowBtn').addEventListener('click', () => document.getElementById('trendingSection').scrollIntoView({ behavior: 'smooth' }));
    document.getElementById('exploreFlash').addEventListener('click', () => document.getElementById('deals').scrollIntoView({ behavior: 'smooth' }));
    const searchField = document.getElementById('globalSearch');
    const searchHandler = () => filterProductsBySearch(searchField.value);
    searchField.addEventListener('input', searchHandler);
    document.getElementById('dealAddBtn').addEventListener('click', () => { cartItemsCount++; updateCartUI(); alert("⚡ Flash item added to cart"); });
    document.getElementById('subNewsBtn').addEventListener('click', () => {
        const email = document.getElementById('newsEmail').value.trim();
        const msgDiv = document.getElementById('newsMsg');
        if(!email || !email.includes('@')) { msgDiv.innerHTML = '<span style="color:#ff9f9f;">Valid email required</span>'; msgDiv.style.color = "#ff9f9f"; }
        else { msgDiv.innerHTML = '<span style="color:#00F0FF;">✓ Stellar! You’re on the list.</span>'; document.getElementById('newsEmail').value = ''; setTimeout(()=>msgDiv.innerHTML='', 2500); }
    });
    document.getElementById('mobileToggle').addEventListener('click', () => {
        const panel = document.getElementById('mobileMenuPanel');
        panel.style.display = panel.style.display === 'none' ? 'block' : 'none';
    });
    document.getElementById('openCatInsight')?.addEventListener('click', (e) => { e.preventDefault(); alert('✨ Click on category cards to explore'); });
    document.getElementById('cartIcon').addEventListener('click', () => alert(`🛒 Cart has ${cartItemsCount} item(s). Demo checkout.`));

    // initialize all
    renderCategories();
    renderProducts(products);
    renderTestimonials();
    initTimer();
    updateCartUI();
</script>
</body>
</html>
