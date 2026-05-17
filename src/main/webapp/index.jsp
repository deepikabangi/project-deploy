<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, viewport-fit=cover">
    <title>NexusShop | Immersive E‑Commerce</title>
    <!-- Google Fonts + Icons -->
    <link href="https://fonts.googleapis.com/css2?family=Inter:opsz,wght@14..32,300;14..32,400;14..32,500;14..32,600;14..32,700;14..32,800&family=Space+Grotesk:wght@400;500;600;700&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">
    <style>
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }

        :root {
            --bg: #ffffff;
            --bg-secondary: #fbfdfe;
            --primary-dark: #0b1e2f;
            --primary: #132e44;
            --accent: #3b82f6;
            --accent-glow: #60a5fa;
            --accent-secondary: #06b6d4;
            --card-bg: rgba(255,255,255,0.9);
            --muted: #5b6e8c;
            --muted-light: #8f9eb5;
            --border: #eef2f8;
            --success: #10b981;
            --warning: #f59e0b;
            --shadow-sm: 0 12px 30px rgba(0, 0, 0, 0.04), 0 4px 8px rgba(0, 0, 0, 0.02);
            --shadow-md: 0 20px 35px -8px rgba(0, 0, 0, 0.08);
            --shadow-hover: 0 24px 40px -12px rgba(0, 0, 0, 0.12);
            --radius-card: 24px;
            --radius-element: 40px;
            --transition: all 0.25s cubic-bezier(0.2, 0, 0, 1);
        }

        body {
            font-family: 'Inter', sans-serif;
            background: var(--bg-secondary);
            color: var(--primary);
            overflow-x: hidden;
        }

        /* glass morphism & smooth scroll */
        .glass-nav {
            background: rgba(255, 255, 255, 0.88);
            backdrop-filter: blur(16px);
            border-bottom: 1px solid rgba(59,130,246,0.08);
        }

        .container {
            max-width: 1280px;
            margin: 0 auto;
            padding: 0 32px;
        }

        /* header */
        .header-inner {
            display: flex;
            align-items: center;
            justify-content: space-between;
            gap: 24px;
            padding: 14px 0;
            flex-wrap: wrap;
        }

        .brand {
            font-family: 'Space Grotesk', monospace;
            font-weight: 700;
            font-size: 1.8rem;
            letter-spacing: -0.02em;
            background: linear-gradient(135deg, #0f2c3f 0%, #1e4b6e 100%);
            background-clip: text;
            -webkit-background-clip: text;
            color: transparent;
        }
        .brand .accent {
            background: linear-gradient(125deg, var(--accent), #22d3ee);
            background-clip: text;
            -webkit-background-clip: text;
            color: transparent;
        }

        nav.main-nav ul {
            display: flex;
            gap: 6px;
            list-style: none;
        }

        nav.main-nav li a {
            padding: 8px 18px;
            border-radius: 100px;
            font-weight: 500;
            transition: var(--transition);
            color: var(--primary);
            display: flex;
            align-items: center;
            gap: 8px;
            font-size: 0.95rem;
        }

        nav.main-nav li a:hover {
            background: rgba(59,130,246,0.08);
            color: var(--accent);
            transform: translateY(-2px);
        }

        .search {
            background: white;
            border-radius: 60px;
            padding: 6px 16px;
            display: flex;
            align-items: center;
            gap: 8px;
            box-shadow: var(--shadow-sm);
            border: 1px solid var(--border);
            transition: var(--transition);
        }
        .search:focus-within {
            border-color: var(--accent);
            box-shadow: 0 0 0 3px rgba(59,130,246,0.2);
        }
        .search input {
            border: none;
            background: transparent;
            outline: none;
            width: 200px;
            font-size: 0.9rem;
        }
        .icon-btn {
            background: transparent;
            border: none;
            cursor: pointer;
            font-size: 1.2rem;
            transition: var(--transition);
            width: 40px;
            height: 40px;
            display: inline-flex;
            align-items: center;
            justify-content: center;
            border-radius: 50%;
            color: var(--primary);
        }
        .icon-btn:hover {
            background: #f0f4fa;
            color: var(--accent);
        }
        .cart {
            position: relative;
        }
        .cart-count {
            position: absolute;
            top: -4px;
            right: -6px;
            background: var(--accent);
            color: white;
            font-size: 11px;
            font-weight: 800;
            width: 20px;
            height: 20px;
            border-radius: 30px;
            display: flex;
            align-items: center;
            justify-content: center;
            box-shadow: 0 2px 6px rgba(0,0,0,0.1);
        }
        .mobile-toggle {
            display: none;
            background: transparent;
            border: none;
            font-size: 1.6rem;
            cursor: pointer;
        }

        /* HERO section - modern gradient */
        .hero-modern {
            background: radial-gradient(ellipse at 70% 30%, #f0f9ff 0%, #e6f0fa 100%);
            border-radius: 0 0 48px 48px;
            padding: 70px 0 80px;
            position: relative;
            overflow: hidden;
        }
        .hero-modern::before {
            content: '';
            position: absolute;
            top: -20%;
            right: -10%;
            width: 60%;
            height: 140%;
            background: radial-gradient(circle, rgba(59,130,246,0.12) 0%, rgba(6,182,212,0) 70%);
            pointer-events: none;
        }
        .hero-content {
            position: relative;
            z-index: 2;
            max-width: 580px;
        }
        .hero-content h1 {
            font-family: 'Space Grotesk', monospace;
            font-size: 3.5rem;
            font-weight: 700;
            line-height: 1.2;
            letter-spacing: -0.02em;
            background: linear-gradient(135deg, #0b2b3b, #1e4b6e);
            background-clip: text;
            -webkit-background-clip: text;
            color: transparent;
        }
        .badge-pill {
            background: rgba(59,130,246,0.1);
            backdrop-filter: blur(4px);
            padding: 6px 16px;
            border-radius: 60px;
            display: inline-block;
            font-size: 0.8rem;
            font-weight: 600;
            color: var(--accent);
        }
        .btn-group {
            display: flex;
            gap: 16px;
            flex-wrap: wrap;
        }
        .btn {
            padding: 12px 32px;
            border-radius: 60px;
            font-weight: 600;
            transition: var(--transition);
            border: none;
            cursor: pointer;
            font-size: 1rem;
            display: inline-flex;
            align-items: center;
            gap: 10px;
        }
        .btn-primary {
            background: var(--primary);
            color: white;
            box-shadow: 0 8px 20px rgba(19,46,68,0.2);
        }
        .btn-primary:hover {
            background: #1e4765;
            transform: translateY(-3px);
        }
        .btn-outline-light {
            background: transparent;
            border: 1.5px solid rgba(19,46,68,0.3);
            color: var(--primary);
        }
        .btn-outline-light:hover {
            background: white;
            border-color: var(--accent);
        }

        /* section titles */
        .section-header {
            text-align: center;
            margin-bottom: 48px;
        }
        .section-header h2 {
            font-size: 2.2rem;
            font-weight: 700;
            font-family: 'Space Grotesk', monospace;
            letter-spacing: -0.01em;
        }
        .gradient-line {
            height: 4px;
            width: 70px;
            background: linear-gradient(90deg, var(--accent), var(--accent-secondary));
            margin: 12px auto 0;
            border-radius: 4px;
        }

        /* categories cards - glassmorphic */
        .grid-categories {
            display: grid;
            grid-template-columns: repeat(6, 1fr);
            gap: 24px;
        }
        .cat-card {
            background: white;
            border-radius: 28px;
            padding: 24px 12px;
            text-align: center;
            transition: var(--transition);
            box-shadow: var(--shadow-sm);
            border: 1px solid rgba(0,0,0,0.02);
            cursor: pointer;
        }
        .cat-card:hover {
            transform: translateY(-8px);
            box-shadow: var(--shadow-hover);
            border-color: rgba(59,130,246,0.2);
        }
        .cat-icon {
            font-size: 2.2rem;
            background: linear-gradient(135deg, #eef2ff, #ffffff);
            width: 70px;
            height: 70px;
            display: flex;
            align-items: center;
            justify-content: center;
            border-radius: 60px;
            margin: 0 auto 16px;
            color: var(--accent);
        }

        /* products grid */
        .products-grid {
            display: grid;
            grid-template-columns: repeat(4, 1fr);
            gap: 28px;
        }
        .product-card {
            background: white;
            border-radius: 28px;
            overflow: hidden;
            transition: var(--transition);
            box-shadow: var(--shadow-sm);
            border: 1px solid var(--border);
        }
        .product-card:hover {
            transform: translateY(-8px);
            box-shadow: var(--shadow-hover);
        }
        .product-img {
            height: 230px;
            width: 100%;
            object-fit: cover;
            transition: transform 0.4s ease;
        }
        .product-card:hover .product-img {
            transform: scale(1.02);
        }
        .product-body {
            padding: 18px;
        }
        .price {
            font-weight: 800;
            font-size: 1.3rem;
            color: var(--primary);
        }
        .old-price {
            text-decoration: line-through;
            color: var(--muted-light);
            font-size: 0.85rem;
        }
        .rating {
            color: #fbbf24;
            letter-spacing: 1px;
        }
        .add-to-cart {
            background: var(--primary);
            color: white;
            border: none;
            width: 100%;
            padding: 12px;
            border-radius: 40px;
            font-weight: 600;
            display: flex;
            align-items: center;
            justify-content: center;
            gap: 8px;
            transition: var(--transition);
            cursor: pointer;
        }
        .add-to-cart:hover {
            background: var(--accent);
        }

        /* flash deal premium */
        .deal-premium {
            background: linear-gradient(125deg, #0b1f2c 0%, #12344a 100%);
            border-radius: 40px;
            overflow: hidden;
            display: flex;
            gap: 30px;
            align-items: center;
            color: white;
        }
        .deal-img {
            width: 45%;
            object-fit: cover;
            height: 320px;
        }
        .timer-badge {
            display: flex;
            gap: 16px;
            margin: 20px 0;
        }
        .time-block {
            background: rgba(255,255,255,0.1);
            backdrop-filter: blur(8px);
            border-radius: 20px;
            padding: 12px 18px;
            text-align: center;
            min-width: 72px;
        }

        /* testimonials */
        .testimonials-slider {
            display: flex;
            gap: 28px;
            overflow-x: auto;
            padding-bottom: 12px;
        }
        .testimonial-card {
            min-width: 340px;
            background: white;
            border-radius: 32px;
            padding: 28px;
            box-shadow: var(--shadow-sm);
        }

        /* newsletter premium */
        .newsletter-modern {
            background: linear-gradient(115deg, #132e44, #0f2c3f);
            border-radius: 48px;
            padding: 48px;
            text-align: center;
            color: white;
        }
        .newsletter-modern input {
            padding: 14px 20px;
            border-radius: 60px;
            border: none;
            width: 300px;
            background: rgba(255,255,255,0.95);
        }
        footer {
            background: #fafcff;
            border-top: 1px solid var(--border);
            padding: 56px 0 30px;
        }

        @media (max-width: 1100px) {
            .grid-categories { grid-template-columns: repeat(3,1fr);}
            .products-grid { grid-template-columns: repeat(3,1fr);}
        }
        @media (max-width: 800px) {
            nav.main-nav { display: none; }
            .mobile-toggle { display: inline-block; }
            .products-grid { grid-template-columns: repeat(2,1fr);}
            .grid-categories { grid-template-columns: repeat(2,1fr);}
            .deal-premium { flex-direction: column; text-align: center;}
            .deal-img { width: 100%; height: 240px; }
            .hero-content h1 { font-size: 2.4rem; }
        }
        @media (max-width: 560px) {
            .products-grid { grid-template-columns: 1fr; }
            .container { padding: 0 20px; }
        }
    </style>
</head>
<body>
    <header class="glass-nav">
        <div class="container header-inner">
            <div style="display:flex;align-items:center;gap:16px;">
                <button class="mobile-toggle" id="mobileToggleBtn"><i class="fas fa-bars"></i></button>
                <div class="brand">NEXUS<span class="accent">SHOP</span></div>
            </div>
            <nav class="main-nav" id="desktopNav">
                <ul>
                    <li><a href="#"><i class="fas fa-compass"></i> Explore</a></li>
                    <li><a href="#" id="trendLink"><i class="fas fa-fire"></i> Trending</a></li>
                    <li><a href="#dealsSection"><i class="fas fa-bolt"></i> Flash Sale</a></li>
                    <li><a href="#"><i class="fas fa-gem"></i> Luxury</a></li>
                </ul>
            </nav>
            <div style="display:flex; gap:12px; align-items:center;">
                <div class="search">
                    <input type="text" id="globalSearch" placeholder="Search products...">
                    <button id="searchBtnGlobal" class="icon-btn"><i class="fas fa-search"></i></button>
                </div>
                <button class="icon-btn"><i class="far fa-heart"></i></button>
                <a class="cart" id="cartIconBtn">
                    <i class="fas fa-shopping-bag"></i>
                    <span class="cart-count" id="cartCounter">0</span>
                </a>
            </div>
        </div>
        <div id="mobileMenuPanel" style="display: none; background: white; border-top: 1px solid #eef2f8; padding: 20px;">
            <ul style="list-style: none; display: flex; flex-direction: column; gap: 16px;">
                <li><a href="#">Home</a></li><li><a href="#">Categories</a></li><li><a href="#dealsSection">Deals</a></li><li><a href="#">Wishlist</a></li>
            </ul>
        </div>
    </header>

    <main>
        <!-- Hero Modern -->
        <section class="hero-modern">
            <div class="container hero-content">
                <span class="badge-pill"><i class="fas fa-sparkle"></i> Limited edition</span>
                <h1 style="margin: 20px 0 16px;">Future of style & tech<br> meet innovation</h1>
                <p style="font-size: 1.1rem; color: #2c4e6e; margin-bottom: 32px;">Unlock exclusive deals, free shipping & premium selections curated by AI.</p>
                <div class="btn-group">
                    <button class="btn btn-primary" id="shopNowHero"><i class="fas fa-arrow-right"></i> Shop now</button>
                    <button class="btn btn-outline-light" id="exploreBtn"><i class="fas fa-play"></i> Explore deals</button>
                </div>
            </div>
        </section>

        <!-- Categories -->
        <section class="container" style="margin: 70px auto;">
            <div class="section-header"><h2>Curated Collections</h2><div class="gradient-line"></div><p class="muted" style="margin-top: 10px;">inspired by your vibe</p></div>
            <div class="grid-categories" id="categoryGridRender"></div>
        </section>

        <!-- Trending Products -->
        <section class="container" style="margin-bottom: 80px;">
            <div class="section-header"><h2>🔥 trending now</h2><div class="gradient-line"></div></div>
            <div class="products-grid" id="productGridRender"></div>
        </section>

        <!-- Flash sale premium -->
        <section id="dealsSection" class="container" style="margin-bottom: 80px;">
            <div class="deal-premium">
                <img class="deal-img" src="https://images.unsplash.com/photo-1611186871348-b1ce696e52c9?auto=format&fit=crop&w=800&q=80" alt="macbook deal">
                <div style="padding: 32px; flex:1;">
                    <h2 style="font-size: 2rem;">MacBook Pro M3</h2>
                    <p style="opacity:0.8; margin: 12px 0;">Next‑gen performance. Save up to $400.</p>
                    <div class="timer-badge" id="dealTimerArea">
                        <div class="time-block"><span id="daysDeal">00</span><div style="font-size:12px;">Days</div></div>
                        <div class="time-block"><span id="hoursDeal">00</span><div>Hrs</div></div>
                        <div class="time-block"><span id="minsDeal">00</span><div>Min</div></div>
                        <div class="time-block"><span id="secsDeal">00</span><div>Sec</div></div>
                    </div>
                    <div style="display:flex; gap:20px; align-items:center; margin: 20px 0;"><span class="price" style="font-size: 2rem; color: white;">$1,899</span> <span style="text-decoration:line-through; opacity:0.6;">$2,299</span> <span style="background:#3b82f6; padding:5px 12px; border-radius:60px;">-18%</span></div>
                    <button class="btn btn-primary" id="flashDealBtn" style="background: white; color: #0a2540;"><i class="fas fa-zap"></i> Grab deal</button>
                </div>
            </div>
        </section>

        <!-- Testimonials -->
        <section class="container" style="margin-bottom: 70px;">
            <div class="section-header"><h2>❤️ loved by shoppers</h2><div class="gradient-line"></div></div>
            <div class="testimonials-slider" id="testimonialsContainer">
                <div class="testimonial-card"><i class="fas fa-star" style="color:#f59e0b;"></i><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i><p style="margin:12px 0;">"Absolutely stunning quality and fast delivery. UI is chef's kiss!"</p><b>— Elena K.</b></div>
                <div class="testimonial-card"><i class="fas fa-star" style="color:#f59e0b;"></i><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star-half-alt"></i><p style="margin:12px 0;">"Best shopping experience, the flash sale is insane."</p><b>— Marcus V.</b></div>
            </div>
        </section>

        <!-- Newsletter premium -->
        <section class="container" style="margin-bottom: 70px;">
            <div class="newsletter-modern">
                <h3 style="font-size: 1.8rem;">Unlock members-only perks</h3>
                <p style="margin: 12px 0 24px;">Subscribe & get 15% off your next order</p>
                <div style="display:flex; gap:12px; justify-content:center; flex-wrap:wrap;"><input type="email" id="newsEmail" placeholder="your@email.com"> <button id="subNewsBtn" class="btn-primary btn" style="background: white; color:#132e44;">Subscribe →</button></div>
                <div id="newsMsg" style="margin-top: 16px; font-size: 0.85rem;"></div>
            </div>
        </section>
    </main>

    <footer>
        <div class="container" style="display: flex; justify-content: space-between; flex-wrap: wrap; gap: 36px;">
            <div><div class="brand" style="font-size: 1.5rem;">NEXUS<span class="accent">SHOP</span></div><p class="muted" style="max-width: 260px; margin-top: 12px;">Next‑gen shopping, curated for you.</p></div>
            <div><h4>Support</h4><div class="muted" style="line-height: 1.8;">Help center<br>Returns<br>Contact</div></div>
            <div><h4>Legal</h4><div class="muted">Privacy<br>Terms</div></div>
        </div>
        <div class="container" style="text-align: center; margin-top: 40px; border-top: 1px solid #eef2f6; padding-top: 24px;"><span class="muted">© 2025 NexusShop — immersive commerce</span></div>
    </footer>

    <script>
        // ---------- DATA ----------
        const categoriesData = [
            { id: "elec", name: "Electronics", icon: "fa-microchip" },
            { id: "fashion", name: "Fashion", icon: "fa-vest" },
            { id: "access", name: "Accessories", icon: "fa-gem" },
            { id: "beauty", name: "Beauty", icon: "fa-spa" },
            { id: "sports", name: "Sports", icon: "fa-bicycle" },
            { id: "home", name: "Home & Living", icon: "fa-couch" }
        ];

        const productsList = [
            { id: 101, title: "Sony WH-1000XM5", price: 399, oldPrice: 499, rating: 5, img: "https://images.unsplash.com/photo-1618366712010-f4ae9c647dcb?auto=format&fit=crop&w=600&q=80", category: "Electronics" },
            { id: 102, title: "Minimalist Backpack", price: 79, oldPrice: 129, rating: 4, img: "https://images.unsplash.com/photo-1553062407-98eeb64c6a62?auto=format&fit=crop&w=600&q=80", category: "Accessories" },
            { id: 103, title: "Air Max Pulse", price: 149, rating: 5, img: "https://images.unsplash.com/photo-1600185365483-26d7a4cc7519?auto=format&fit=crop&w=600&q=80", category: "Sports" },
            { id: 104, title: "Smart Watch Ultra", price: 249, oldPrice: 329, rating: 4, img: "https://images.unsplash.com/photo-1579586337278-3befd40fd17a?auto=format&fit=crop&w=600&q=80", category: "Electronics" },
            { id: 105, title: "Oversized Hoodie", price: 89, rating: 5, img: "https://images.unsplash.com/photo-1556821840-3a63f95609a7?auto=format&fit=crop&w=600&q=80", category: "Fashion" },
            { id: 106, title: "Ceramic Diffuser", price: 45, oldPrice: 65, rating: 4, img: "https://images.unsplash.com/photo-1602524811126-e82e4ed8efb7?auto=format&fit=crop&w=600&q=80", category: "Home & Living" }
        ];

        let cartItems = 0;
        function updateCartUI() { document.getElementById('cartCounter').innerText = cartItems; }

        function addToCartGlobal(id) {
            cartItems++;
            updateCartUI();
            const btn = document.querySelector(`.add-btn-${id}`);
            if(btn) { btn.innerHTML = '<i class="fas fa-check"></i> Added'; setTimeout(()=> btn.innerHTML = '<i class="fas fa-cart-shopping"></i> Add to cart', 1000); }
            else alert("Item added to bag!");
        }

        function renderCategories() {
            const container = document.getElementById('categoryGridRender');
            container.innerHTML = categoriesData.map(cat => `<div class="cat-card"><div class="cat-icon"><i class="fas ${cat.icon}"></i></div><h4>${cat.name}</h4><div class="muted" style="font-size:12px;">shop now →</div></div>`).join('');
            document.querySelectorAll('.cat-card').forEach(card => card.addEventListener('click', (e) => { document.getElementById('globalSearch').value = card.querySelector('h4')?.innerText; filterProducts(); }));
        }

        function filterProducts() {
            const query = document.getElementById('globalSearch').value.toLowerCase();
            const filtered = productsList.filter(p => p.title.toLowerCase().includes(query) || p.category.toLowerCase().includes(query));
            renderProducts(filtered);
        }

        function renderProducts(productsArray = productsList) {
            const grid = document.getElementById('productGridRender');
            grid.innerHTML = productsArray.map(p => `
                <div class="product-card">
                    <img class="product-img" src="${p.img}" alt="${p.title}">
                    <div class="product-body">
                        <h4>${p.title}</h4>
                        <div class="rating">${'★'.repeat(p.rating)}${'☆'.repeat(5-p.rating)}</div>
                        <div style="margin: 8px 0;"><span class="price">$${p.price}</span> ${p.oldPrice ? `<span class="old-price"> $${p.oldPrice}</span>` : ''}</div>
                        <button class="add-to-cart add-btn-${p.id}" data-id="${p.id}"><i class="fas fa-cart-shopping"></i> Add to cart</button>
                    </div>
                </div>
            `).join('');
            document.querySelectorAll('.add-to-cart').forEach(btn => {
                btn.addEventListener('click', (e) => {
                    const id = parseInt(btn.dataset.id);
                    addToCartGlobal(id);
                });
            });
        }

        // FLASH DEAL TIMER (24h from now)
        function initDealTimer() {
            const target = new Date();
            target.setDate(target.getDate() + 1);
            target.setHours(target.getHours() + 2);
            function update() {
                const diff = target - new Date();
                if(diff <= 0) { document.getElementById('daysDeal').innerText = "0"; document.getElementById('hoursDeal').innerText = "00"; document.getElementById('minsDeal').innerText="00"; document.getElementById('secsDeal').innerText="00"; return; }
                const days = Math.floor(diff/(1000*60*60*24));
                const hrs = Math.floor((diff/(1000*60*60))%24);
                const mins = Math.floor((diff/60000)%60);
                const secs = Math.floor((diff/1000)%60);
                document.getElementById('daysDeal').innerText = days;
                document.getElementById('hoursDeal').innerText = String(hrs).padStart(2,'0');
                document.getElementById('minsDeal').innerText = String(mins).padStart(2,'0');
                document.getElementById('secsDeal').innerText = String(secs).padStart(2,'0');
            }
            update(); setInterval(update,1000);
        }

        // Mobile toggle
        document.getElementById('mobileToggleBtn').addEventListener('click', () => {
            const panel = document.getElementById('mobileMenuPanel');
            panel.style.display = panel.style.display === 'none' ? 'flex' : 'none';
        });
        document.getElementById('searchBtnGlobal').addEventListener('click', filterProducts);
        document.getElementById('globalSearch').addEventListener('keypress', (e) => { if(e.key === 'Enter') filterProducts(); });
        document.getElementById('shopNowHero').addEventListener('click', () => document.getElementById('productGridRender').scrollIntoView({behavior: 'smooth'}));
        document.getElementById('exploreBtn').addEventListener('click', () => document.getElementById('dealsSection').scrollIntoView({behavior: 'smooth'}));
        document.getElementById('flashDealBtn').addEventListener('click', () => { cartItems++; updateCartUI(); alert("🔥 MacBook Pro M3 added to cart (demo)"); });
        document.getElementById('subNewsBtn').addEventListener('click', () => { const email = document.getElementById('newsEmail').value; const msgDiv = document.getElementById('newsMsg'); if(email.includes('@')){ msgDiv.innerHTML = "✨ Thanks! 15% code sent to email."; msgDiv.style.color="white"; } else { msgDiv.innerHTML = "Valid email required"; msgDiv.style.color="#ffb3b3"; } });
        
        renderCategories();
        renderProducts();
        updateCartUI();
        initDealTimer();

        // wishlist & general interactions
        document.getElementById('trendLink')?.addEventListener('click', (e) => { e.preventDefault(); renderProducts(productsList.slice(0,4)); });
    </script>
</body>
</html>
