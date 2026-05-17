# Modern NexusShop UI Redesign

Replace your current CSS with the following upgraded UI design to make the e-commerce website look more premium, modern, and visually attractive.

---

## Updated CSS

```css
:root {
    --bg: #0f172a;
    --surface: #111827;
    --card: rgba(255, 255, 255, 0.08);
    --glass: rgba(255, 255, 255, 0.12);
    --primary: #ffffff;
    --secondary: #cbd5e1;
    --accent: #7c3aed;
    --accent2: #06b6d4;
    --success: #22c55e;
    --danger: #ef4444;
    --radius: 20px;
    --shadow: 0 10px 30px rgba(0,0,0,0.35);
    --container: 1280px;
}

* {
    margin: 0;
    padding: 0;
    box-sizing: border-box;
}

body {
    font-family: Inter, sans-serif;
    background:
        radial-gradient(circle at top left, rgba(124,58,237,0.25), transparent 30%),
        radial-gradient(circle at bottom right, rgba(6,182,212,0.2), transparent 25%),
        var(--bg);
    color: var(--primary);
    overflow-x: hidden;
}

.container {
    max-width: var(--container);
    margin: auto;
    padding: 0 24px;
}

img {
    width: 100%;
    display: block;
}

/* HEADER */
header {
    position: sticky;
    top: 0;
    z-index: 999;
    backdrop-filter: blur(18px);
    background: rgba(15, 23, 42, 0.7);
    border-bottom: 1px solid rgba(255,255,255,0.08);
}

.header-inner {
    height: 82px;
    display: flex;
    align-items: center;
    justify-content: space-between;
}

.brand {
    font-size: 28px;
    font-weight: 800;
    color: white;
    letter-spacing: -1px;
}

.brand .accent {
    background: linear-gradient(90deg, var(--accent), var(--accent2));
    -webkit-background-clip: text;
    -webkit-text-fill-color: transparent;
}

.main-nav ul {
    display: flex;
    list-style: none;
    gap: 12px;
}

.main-nav a {
    color: var(--secondary);
    padding: 10px 16px;
    border-radius: 12px;
    transition: 0.3s ease;
    font-weight: 500;
}

.main-nav a:hover {
    background: rgba(255,255,255,0.08);
    color: white;
}

.search {
    background: rgba(255,255,255,0.08);
    border: 1px solid rgba(255,255,255,0.08);
    border-radius: 999px;
    padding: 10px 16px;
    min-width: 280px;
}

.search input {
    background: transparent;
    border: none;
    outline: none;
    color: white;
    width: 100%;
}

.search input::placeholder {
    color: #94a3b8;
}

.icon-btn,
.cart {
    width: 44px;
    height: 44px;
    border-radius: 14px;
    display: grid;
    place-items: center;
    background: rgba(255,255,255,0.08);
    color: white;
    transition: 0.3s;
}

.icon-btn:hover,
.cart:hover {
    transform: translateY(-3px);
    background: linear-gradient(135deg, var(--accent), var(--accent2));
}

.cart-count {
    background: linear-gradient(135deg, var(--danger), #ff7b7b);
}

/* HERO */
.hero {
    min-height: 88vh;
    display: flex;
    align-items: center;
    justify-content: center;
    text-align: center;
    position: relative;
    overflow: hidden;
    padding: 100px 20px;
    background:
        linear-gradient(rgba(15,23,42,0.75), rgba(15,23,42,0.75)),
        url('https://images.unsplash.com/photo-1523381210434-271e8be1f52b?auto=format&fit=crop&w=1600&q=80') center/cover no-repeat;
}

.hero::before {
    content: "";
    position: absolute;
    width: 600px;
    height: 600px;
    background: rgba(124,58,237,0.25);
    filter: blur(120px);
    border-radius: 50%;
    top: -120px;
    right: -120px;
}

.hero h1 {
    font-size: 72px;
    line-height: 1.05;
    max-width: 900px;
    margin: auto;
    font-weight: 800;
    letter-spacing: -3px;
}

.hero p {
    margin: 28px auto;
    max-width: 700px;
    color: #dbeafe;
    font-size: 18px;
    line-height: 1.7;
}

.btn {
    border: none;
    padding: 14px 28px;
    border-radius: 999px;
    font-weight: 700;
    cursor: pointer;
    transition: 0.35s ease;
    font-size: 15px;
}

.btn-primary {
    background: linear-gradient(135deg, var(--accent), var(--accent2));
    color: white;
    box-shadow: 0 10px 30px rgba(124,58,237,0.4);
}

.btn-primary:hover {
    transform: translateY(-4px) scale(1.02);
}

.btn-ghost {
    background: transparent;
    border: 1px solid rgba(255,255,255,0.18);
    color: white;
}

/* SECTION */
.section {
    padding: 90px 0;
}

.title {
    text-align: center;
    margin-bottom: 50px;
}

.title h2 {
    font-size: 42px;
    margin-bottom: 10px;
}

.title p {
    color: var(--secondary);
}

/* CATEGORIES */
.categories {
    display: grid;
    grid-template-columns: repeat(auto-fit, minmax(180px, 1fr));
    gap: 24px;
}

.cat-card {
    background: var(--card);
    border: 1px solid rgba(255,255,255,0.08);
    backdrop-filter: blur(12px);
    border-radius: 24px;
    padding: 32px 20px;
    text-align: center;
    transition: 0.35s ease;
    box-shadow: var(--shadow);
}

.cat-card:hover {
    transform: translateY(-12px);
    border-color: rgba(124,58,237,0.5);
}

.cat-card .icon {
    width: 72px;
    height: 72px;
    margin: auto;
    border-radius: 18px;
    display: grid;
    place-items: center;
    background: linear-gradient(135deg, var(--accent), var(--accent2));
    font-size: 28px;
    margin-bottom: 18px;
}

.cat-card h4 {
    font-size: 18px;
}

/* PRODUCTS */
.products {
    display: grid;
    grid-template-columns: repeat(auto-fit, minmax(280px, 1fr));
    gap: 30px;
}

.product {
    position: relative;
    background: var(--card);
    border: 1px solid rgba(255,255,255,0.08);
    backdrop-filter: blur(12px);
    border-radius: 24px;
    overflow: hidden;
    transition: 0.35s ease;
    box-shadow: var(--shadow);
}

.product:hover {
    transform: translateY(-12px);
}

.product img {
    height: 260px;
    object-fit: cover;
    transition: 0.4s ease;
}

.product:hover img {
    transform: scale(1.08);
}

.product-body {
    padding: 22px;
}

.product h5 {
    font-size: 20px;
    margin-bottom: 10px;
}

.price {
    font-size: 24px;
    font-weight: 800;
    margin-top: 10px;
}

.old-price {
    color: #94a3b8;
}

.rating {
    color: #facc15;
}

.product-footer {
    display: flex;
    gap: 12px;
    padding: 0 22px 22px;
}

.add-btn {
    flex: 1;
    background: linear-gradient(135deg, var(--accent), var(--accent2));
    color: white;
    border: none;
    border-radius: 14px;
    padding: 14px;
    font-weight: 700;
    cursor: pointer;
    transition: 0.3s ease;
}

.add-btn:hover {
    transform: scale(1.02);
}

.wish-btn {
    width: 52px;
    border-radius: 14px;
    border: none;
    background: rgba(255,255,255,0.08);
    color: white;
}

/* DEAL SECTION */
.deal {
    display: grid;
    grid-template-columns: 1fr 1fr;
    overflow: hidden;
    border-radius: 30px;
    background: linear-gradient(135deg, rgba(124,58,237,0.15), rgba(6,182,212,0.12));
    border: 1px solid rgba(255,255,255,0.08);
    backdrop-filter: blur(12px);
}

.deal img {
    height: 100%;
    object-fit: cover;
}

.deal .content {
    padding: 50px;
}

.timer {
    display: flex;
    gap: 18px;
    margin: 30px 0;
}

.time-box {
    background: rgba(255,255,255,0.08);
    border-radius: 18px;
    padding: 20px;
    min-width: 90px;
    text-align: center;
    backdrop-filter: blur(10px);
}

.time-box div:first-child {
    font-size: 28px;
    font-weight: 800;
}

/* TESTIMONIALS */
.testimonials {
    display: grid;
    grid-template-columns: repeat(auto-fit, minmax(320px, 1fr));
    gap: 24px;
}

.testimonial {
    background: var(--card);
    border: 1px solid rgba(255,255,255,0.08);
    border-radius: 24px;
    padding: 28px;
    box-shadow: var(--shadow);
}

.testimonial p {
    color: #d1d5db;
    line-height: 1.7;
    margin: 18px 0;
}

/* NEWSLETTER */
.newsletter {
    background: linear-gradient(135deg, rgba(124,58,237,0.25), rgba(6,182,212,0.18));
    border: 1px solid rgba(255,255,255,0.08);
    border-radius: 32px;
    padding: 70px 30px;
    text-align: center;
    backdrop-filter: blur(14px);
}

.newsletter h3 {
    font-size: 42px;
    margin-bottom: 16px;
}

.newsletter input {
    width: 400px;
    max-width: 100%;
    padding: 16px 20px;
    border-radius: 999px;
    border: none;
    background: rgba(255,255,255,0.08);
    color: white;
}

.newsletter input::placeholder {
    color: #cbd5e1;
}

/* FOOTER */
footer {
    padding: 80px 0 40px;
    border-top: 1px solid rgba(255,255,255,0.08);
    margin-top: 80px;
}

footer .muted {
    color: #94a3b8;
}

/* RESPONSIVE */
@media(max-width: 992px) {
    .hero h1 {
        font-size: 52px;
    }

    .deal {
        grid-template-columns: 1fr;
    }

    .deal img {
        height: 340px;
    }
}

@media(max-width: 768px) {
    .main-nav {
        display: none;
    }

    .hero h1 {
        font-size: 40px;
    }

    .search {
        min-width: 180px;
    }

    .title h2 {
        font-size: 32px;
    }
}

@media(max-width: 576px) {
    .hero {
        min-height: 70vh;
    }

    .hero h1 {
        font-size: 32px;
    }

    .newsletter h3 {
        font-size: 30px;
    }

    .timer {
        flex-wrap: wrap;
    }
}
```

---

## Additional UI Improvements

Replace your hero heading with:

```html
<h1>Luxury Fashion & Smart Tech for the Modern Lifestyle</h1>
```

Replace your hero paragraph with:

```html
<p>Upgrade your shopping experience with premium collections, futuristic gadgets, exclusive deals, and lightning-fast delivery.</p>
```

---

## Replace Buttons with Modern Icons

```html
<button class="btn btn-primary">
    Shop Collection <i class="fas fa-arrow-right"></i>
</button>
```

---

## Add This Floating Animation

Add this CSS at the bottom:

```css
.product,
.cat-card,
.testimonial {
    animation: floatUp 0.8s ease;
}

@keyframes floatUp {
    from {
        opacity: 0;
        transform: translateY(40px);
    }

    to {
        opacity: 1;
        transform: translateY(0);
    }
}
```

---

## Final Result

After applying these changes your website will have:

* Premium glassmorphism UI
* Modern dark theme
* Luxury gradients
* Smooth hover animations
* Better spacing & typography
* Professional product cards
* Attractive hero section
* Responsive mobile design
* Stylish buttons & icons
* Modern ecommerce appearance similar to premium brands
