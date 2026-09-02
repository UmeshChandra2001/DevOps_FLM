<!doctype html>
<html lang="en">
<head>
  <meta charset="utf-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1" />
  <title>NexusShop · Premium E‑Commerce</title>
  <!-- Fonts & Icons -->
  <link href="https://fonts.googleapis.com/css2?family=Inter:wght@400;500;600;700&family=Poppins:wght@600;700;800&display=swap" rel="stylesheet">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.0/css/all.min.css" crossorigin="anonymous">
  <style>
    /* ----- RESET & VARIABLES ----- */
    * {
      margin: 0;
      padding: 0;
      box-sizing: border-box;
    }

    :root {
      --primary: #0a2540;
      --primary-light: #1a3a5c;
      --accent: #00d4ff;
      --accent-dark: #00b8d4;
      --bg: #f6faff;
      --card: #ffffff;
      --text: #0a2540;
      --muted: #5b6f82;
      --border: #e8eef4;
      --success: #2ecc71;
      --danger: #ff4757;
      --warning: #f9b93b;
      --radius: 20px;
      --shadow: 0 8px 32px rgba(10, 37, 64, 0.06);
      --shadow-hover: 0 16px 48px rgba(10, 37, 64, 0.10);
      --transition: 0.25s cubic-bezier(0.4, 0, 0.2, 1);
      --container: 1280px;
    }

    html {
      scroll-behavior: smooth;
    }

    body {
      font-family: 'Inter', -apple-system, system-ui, sans-serif;
      background: var(--bg);
      color: var(--text);
      line-height: 1.6;
      -webkit-font-smoothing: antialiased;
    }

    a {
      color: inherit;
      text-decoration: none;
    }

    img {
      max-width: 100%;
      display: block;
    }

    .container {
      max-width: var(--container);
      margin: 0 auto;
      padding: 0 24px;
    }

    /* ----- BUTTONS ----- */
    .btn {
      display: inline-flex;
      align-items: center;
      justify-content: center;
      gap: 10px;
      padding: 12px 28px;
      border-radius: 60px;
      font-weight: 600;
      font-size: 1rem;
      border: none;
      cursor: pointer;
      transition: var(--transition);
      font-family: inherit;
    }

    .btn-primary {
      background: var(--accent);
      color: #042233;
    }
    .btn-primary:hover {
      background: var(--accent-dark);
      transform: translateY(-2px);
      box-shadow: 0 8px 24px rgba(0, 212, 255, 0.35);
    }

    .btn-dark {
      background: var(--primary);
      color: white;
    }
    .btn-dark:hover {
      background: var(--primary-light);
      transform: translateY(-2px);
    }

    .btn-outline {
      background: transparent;
      border: 2px solid rgba(255, 255, 255, 0.25);
      color: white;
    }
    .btn-outline:hover {
      background: rgba(255, 255, 255, 0.08);
      border-color: rgba(255, 255, 255, 0.5);
    }

    .btn-danger {
      background: var(--danger);
      color: white;
    }
    .btn-danger:hover {
      background: #e03a4a;
      transform: translateY(-2px);
    }

    .btn-sm {
      padding: 8px 18px;
      font-size: 0.85rem;
    }

    .btn-block {
      width: 100%;
      justify-content: center;
    }

    /* ----- HEADER ----- */
    header {
      position: sticky;
      top: 0;
      z-index: 100;
      background: rgba(255, 255, 255, 0.92);
      backdrop-filter: blur(12px);
      -webkit-backdrop-filter: blur(12px);
      border-bottom: 1px solid var(--border);
    }

    .header-inner {
      display: flex;
      align-items: center;
      justify-content: space-between;
      gap: 16px;
      padding: 12px 0;
      flex-wrap: wrap;
    }

    .brand {
      font-family: 'Poppins', sans-serif;
      font-weight: 800;
      font-size: 24px;
      letter-spacing: -0.5px;
      display: flex;
      align-items: center;
      gap: 4px;
    }
    .brand .accent {
      color: var(--accent);
    }

    .nav-links {
      display: flex;
      align-items: center;
      gap: 4px;
      list-style: none;
    }
    .nav-links a {
      padding: 8px 16px;
      border-radius: 40px;
      font-weight: 500;
      font-size: 0.95rem;
      transition: var(--transition);
      display: flex;
      align-items: center;
      gap: 8px;
    }
    .nav-links a:hover,
    .nav-links a.active {
      background: var(--border);
      color: var(--accent-dark);
    }

    .header-actions {
      display: flex;
      align-items: center;
      gap: 8px;
    }

    .search-wrap {
      display: flex;
      align-items: center;
      background: var(--bg);
      border: 1px solid var(--border);
      border-radius: 60px;
      padding: 4px 4px 4px 18px;
      transition: var(--transition);
    }
    .search-wrap:focus-within {
      border-color: var(--accent);
      box-shadow: 0 0 0 4px rgba(0, 212, 255, 0.15);
    }
    .search-wrap input {
      border: none;
      background: transparent;
      padding: 8px 0;
      font-size: 0.95rem;
      outline: none;
      width: 180px;
      font-family: inherit;
    }
    .search-wrap input::placeholder {
      color: var(--muted);
    }
    .search-wrap button {
      background: var(--accent);
      border: none;
      color: #042233;
      padding: 8px 16px;
      border-radius: 60px;
      cursor: pointer;
      font-size: 1rem;
      transition: var(--transition);
    }
    .search-wrap button:hover {
      background: var(--accent-dark);
    }

    .icon-btn {
      background: transparent;
      border: none;
      font-size: 1.2rem;
      padding: 8px 10px;
      cursor: pointer;
      color: var(--text);
      border-radius: 40px;
      transition: var(--transition);
      position: relative;
    }
    .icon-btn:hover {
      background: var(--border);
    }

    .cart-badge {
      position: absolute;
      top: 0px;
      right: 0px;
      background: var(--danger);
      color: white;
      font-size: 0.65rem;
      font-weight: 700;
      width: 20px;
      height: 20px;
      border-radius: 50%;
      display: grid;
      place-items: center;
      transform: translate(4px, -4px);
    }

    .mobile-toggle {
      display: none;
      background: transparent;
      border: none;
      font-size: 1.5rem;
      padding: 4px 8px;
      cursor: pointer;
      color: var(--text);
    }

    /* ----- MOBILE MENU ----- */
    .mobile-menu {
      display: none;
      background: white;
      border-top: 1px solid var(--border);
      padding: 8px 0;
    }
    .mobile-menu a {
      display: block;
      padding: 12px 24px;
      font-weight: 500;
      border-radius: 12px;
      transition: var(--transition);
    }
    .mobile-menu a:hover {
      background: var(--bg);
    }
    .mobile-menu .divider {
      height: 1px;
      background: var(--border);
      margin: 8px 24px;
    }

    /* ----- HERO ----- */
    .hero {
      background: linear-gradient(145deg, var(--primary) 0%, #1b3a5c 100%);
      color: white;
      padding: 72px 20px 64px;
      border-radius: 0 0 40px 40px;
      text-align: center;
      margin-bottom: 8px;
      position: relative;
      overflow: hidden;
    }
    .hero::before {
      content: '';
      position: absolute;
      top: -50%;
      right: -20%;
      width: 600px;
      height: 600px;
      background: radial-gradient(circle, rgba(0, 212, 255, 0.08) 0%, transparent 70%);
      border-radius: 50%;
    }
    .hero-content {
      position: relative;
      z-index: 1;
    }
    .hero h1 {
      font-family: 'Poppins', sans-serif;
      font-size: 3rem;
      font-weight: 800;
      letter-spacing: -0.02em;
      max-width: 700px;
      margin: 0 auto 12px;
      line-height: 1.15;
    }
    .hero h1 span {
      color: var(--accent);
    }
    .hero p {
      opacity: 0.9;
      max-width: 560px;
      margin: 0 auto 28px;
      font-size: 1.1rem;
      line-height: 1.7;
    }
    .hero .btn-group {
      display: flex;
      gap: 12px;
      justify-content: center;
      flex-wrap: wrap;
    }

    /* ----- SECTION COMMON ----- */
    .section {
      padding: 56px 0;
    }
    .section-header {
      text-align: center;
      margin-bottom: 32px;
    }
    .section-header h2 {
      font-family: 'Poppins', sans-serif;
      font-size: 2rem;
      font-weight: 700;
      letter-spacing: -0.02em;
    }
    .section-header p {
      color: var(--muted);
      margin-top: 4px;
    }

    /* ----- CATEGORIES ----- */
    .categories-grid {
      display: grid;
      grid-template-columns: repeat(auto-fit, minmax(140px, 1fr));
      gap: 20px;
    }
    .cat-card {
      background: var(--card);
      padding: 24px 12px 20px;
      border-radius: var(--radius);
      text-align: center;
      box-shadow: var(--shadow);
      transition: var(--transition);
      cursor: pointer;
      border: 1px solid transparent;
    }
    .cat-card:hover {
      transform: translateY(-8px);
      box-shadow: var(--shadow-hover);
      border-color: var(--accent);
    }
    .cat-card .icon {
      font-size: 2.2rem;
      color: var(--accent-dark);
      margin-bottom: 8px;
    }
    .cat-card h4 {
      font-weight: 600;
      font-size: 0.95rem;
    }
    .cat-card .count {
      font-size: 0.8rem;
      color: var(--muted);
    }

    /* ----- PRODUCTS ----- */
    .products-grid {
      display: grid;
      grid-template-columns: repeat(auto-fill, minmax(260px, 1fr));
      gap: 24px;
    }
    .product-card {
      background: var(--card);
      border-radius: var(--radius);
      overflow: hidden;
      box-shadow: var(--shadow);
      transition: var(--transition);
      display: flex;
      flex-direction: column;
      border: 1px solid transparent;
      position: relative;
    }
    .product-card:hover {
      transform: translateY(-6px);
      box-shadow: var(--shadow-hover);
      border-color: var(--border);
    }
    .product-card .image-wrap {
      position: relative;
      overflow: hidden;
      background: #f0f4f9;
      height: 200px;
    }
    .product-card .image-wrap img {
      width: 100%;
      height: 100%;
      object-fit: cover;
      transition: var(--transition);
    }
    .product-card:hover .image-wrap img {
      transform: scale(1.03);
    }
    .product-card .badge {
      position: absolute;
      top: 12px;
      left: 12px;
      padding: 4px 14px;
      border-radius: 30px;
      font-size: 0.7rem;
      font-weight: 700;
      text-transform: uppercase;
      letter-spacing: 0.5px;
    }
    .badge-new {
      background: var(--success);
      color: white;
    }
    .badge-sale {
      background: var(--danger);
      color: white;
    }
    .badge-hot {
      background: var(--warning);
      color: #1a1a1a;
    }
    .product-card .wishlist-btn {
      position: absolute;
      top: 12px;
      right: 12px;
      background: rgba(255, 255, 255, 0.9);
      border: none;
      width: 38px;
      height: 38px;
      border-radius: 50%;
      font-size: 1rem;
      cursor: pointer;
      transition: var(--transition);
      backdrop-filter: blur(4px);
    }
    .product-card .wishlist-btn:hover {
      background: white;
      transform: scale(1.1);
      color: var(--danger);
    }
    .product-body {
      padding: 16px 18px 12px;
      flex: 1;
    }
    .product-body .product-title {
      font-weight: 600;
      font-size: 1.05rem;
      margin-bottom: 2px;
      display: -webkit-box;
      -webkit-line-clamp: 2;
      -webkit-box-orient: vertical;
      overflow: hidden;
    }
    .product-body .product-category {
      font-size: 0.8rem;
      color: var(--muted);
      margin-bottom: 8px;
    }
    .product-body .price-row {
      display: flex;
      align-items: center;
      gap: 10px;
      flex-wrap: wrap;
    }
    .product-body .price-current {
      font-weight: 700;
      font-size: 1.25rem;
    }
    .product-body .price-old {
      color: var(--muted);
      text-decoration: line-through;
      font-size: 0.9rem;
    }
    .product-body .rating {
      color: var(--warning);
      font-size: 0.85rem;
      display: flex;
      align-items: center;
      gap: 4px;
    }
    .product-body .rating span {
      color: var(--muted);
      font-weight: 400;
    }
    .product-footer {
      padding: 0 18px 18px;
      display: flex;
      gap: 10px;
    }
    .product-footer .btn-add {
      flex: 1;
      padding: 10px 0;
      border-radius: 40px;
      border: none;
      font-weight: 600;
      cursor: pointer;
      transition: var(--transition);
      background: var(--primary);
      color: white;
      font-family: inherit;
    }
    .product-footer .btn-add:hover {
      background: var(--primary-light);
      transform: translateY(-2px);
    }
    .product-footer .btn-add.added {
      background: var(--success);
    }

    /* ----- DEAL SECTION ----- */
    .deal-card {
      display: flex;
      background: var(--card);
      border-radius: var(--radius);
      overflow: hidden;
      box-shadow: var(--shadow);
      margin-top: 12px;
    }
    .deal-card .deal-image {
      width: 42%;
      min-height: 280px;
      object-fit: cover;
      background: #e8eef4;
    }
    .deal-card .deal-content {
      padding: 32px 36px;
      flex: 1;
      display: flex;
      flex-direction: column;
      justify-content: center;
    }
    .deal-card .deal-content h3 {
      font-family: 'Poppins', sans-serif;
      font-size: 1.8rem;
      font-weight: 700;
    }
    .deal-card .deal-content .deal-desc {
      color: var(--muted);
      margin: 4px 0 16px;
    }
    .timer-group {
      display: flex;
      gap: 12px;
      margin: 12px 0 18px;
    }
    .timer-unit {
      background: var(--primary);
      color: white;
      padding: 10px 16px;
      border-radius: 14px;
      min-width: 64px;
      text-align: center;
    }
    .timer-unit .num {
      font-size: 1.6rem;
      font-weight: 700;
      display: block;
      line-height: 1.2;
    }
    .timer-unit .label {
      font-size: 0.65rem;
      opacity: 0.7;
      text-transform: uppercase;
      letter-spacing: 0.5px;
    }
    .deal-price-row {
      display: flex;
      align-items: center;
      gap: 16px;
      flex-wrap: wrap;
    }
    .deal-price-row .current {
      font-size: 1.8rem;
      font-weight: 700;
    }
    .deal-price-row .old {
      color: var(--muted);
      text-decoration: line-through;
      font-size: 1.1rem;
    }
    .deal-price-row .discount-tag {
      background: var(--danger);
      color: white;
      padding: 2px 16px;
      border-radius: 40px;
      font-weight: 700;
      font-size: 0.9rem;
    }
    .deal-stock {
      margin-top: 10px;
      font-size: 0.95rem;
    }
    .deal-stock strong {
      color: var(--danger);
    }

    /* ----- TESTIMONIALS ----- */
    .testimonials-scroll {
      display: flex;
      gap: 24px;
      overflow-x: auto;
      padding: 8px 4px 16px;
      scroll-snap-type: x mandatory;
    }
    .testimonial-card {
      min-width: 300px;
      flex-shrink: 0;
      background: var(--card);
      padding: 24px 26px;
      border-radius: var(--radius);
      box-shadow: var(--shadow);
      scroll-snap-align: start;
    }
    .testimonial-card .stars {
      color: var(--warning);
      font-size: 1.1rem;
      letter-spacing: 2px;
    }
    .testimonial-card .quote {
      margin: 10px 0 14px;
      font-style: italic;
      line-height: 1.6;
    }
    .testimonial-card .author {
      display: flex;
      align-items: center;
      gap: 12px;
    }
    .testimonial-card .avatar {
      width: 44px;
      height: 44px;
      border-radius: 50%;
      background: var(--border);
      display: grid;
      place-items: center;
      font-weight: 700;
      color: var(--primary);
    }

    /* ----- NEWSLETTER ----- */
    .newsletter-box {
      background: var(--primary);
      color: white;
      padding: 48px 36px;
      border-radius: var(--radius);
      text-align: center;
    }
    .newsletter-box h3 {
      font-family: 'Poppins', sans-serif;
      font-size: 2rem;
      font-weight: 700;
    }
    .newsletter-box p {
      opacity: 0.8;
      margin-bottom: 20px;
    }
    .newsletter-box .news-form {
      display: flex;
      justify-content: center;
      gap: 10px;
      flex-wrap: wrap;
    }
    .newsletter-box .news-form input {
      padding: 14px 24px;
      border-radius: 60px;
      border: none;
      width: 320px;
      max-width: 100%;
      font-size: 1rem;
      font-family: inherit;
      outline: none;
    }
    .newsletter-box .news-form input:focus {
      box-shadow: 0 0 0 4px rgba(0, 212, 255, 0.3);
    }
    .newsletter-box .news-msg {
      margin-top: 14px;
      font-size: 0.95rem;
      display: none;
    }

    /* ----- FOOTER ----- */
    footer {
      border-top: 1px solid var(--border);
      padding: 48px 0 24px;
      margin-top: 16px;
      background: white;
    }
    .footer-grid {
      display: grid;
      grid-template-columns: 1.5fr 1fr 1fr 1fr;
      gap: 40px;
      margin-bottom: 32px;
    }
    .footer-brand p {
      color: var(--muted);
      max-width: 300px;
      margin-top: 6px;
    }
    .footer-social {
      display: flex;
      gap: 12px;
      margin-top: 14px;
    }
    .footer-social a {
      width: 40px;
      height: 40px;
      border-radius: 50%;
      background: var(--bg);
      display: grid;
      place-items: center;
      transition: var(--transition);
      color: var(--text);
    }
    .footer-social a:hover {
      background: var(--accent);
      color: white;
      transform: translateY(-3px);
    }
    .footer-links h4 {
      font-weight: 600;
      margin-bottom: 12px;
    }
    .footer-links p {
      color: var(--muted);
      margin: 6px 0;
      cursor: pointer;
      transition: var(--transition);
    }
    .footer-links p:hover {
      color: var(--text);
    }
    .footer-bottom {
      text-align: center;
      padding-top: 20px;
      border-top: 1px solid var(--border);
      color: var(--muted);
      font-size: 0.9rem;
    }

    /* ----- RESPONSIVE ----- */
    @media (max-width: 1024px) {
      .footer-grid {
        grid-template-columns: 1fr 1fr;
        gap: 30px;
      }
      .deal-card .deal-image {
        width: 38%;
      }
    }

    @media (max-width: 820px) {
      .nav-links {
        display: none;
      }
      .mobile-toggle {
        display: block;
      }
      .hero h1 {
        font-size: 2.2rem;
      }
      .deal-card {
        flex-direction: column;
      }
      .deal-card .deal-image {
        width: 100%;
        height: 220px;
      }
      .deal-card .deal-content {
        padding: 24px;
      }
      .search-wrap input {
        width: 120px;
      }
      .header-inner {
        padding: 10px 0;
      }
    }

    @media (max-width: 600px) {
      .hero {
        padding: 48px 16px 40px;
      }
      .hero h1 {
        font-size: 1.8rem;
      }
      .products-grid {
        grid-template-columns: 1fr 1fr;
        gap: 14px;
      }
      .categories-grid {
        grid-template-columns: repeat(3, 1fr);
        gap: 12px;
      }
      .section {
        padding: 32px 0;
      }
      .footer-grid {
        grid-template-columns: 1fr;
        gap: 24px;
      }
      .search-wrap {
        width: 100%;
      }
      .search-wrap input {
        width: 100%;
      }
      .timer-group {
        gap: 8px;
      }
      .timer-unit {
        min-width: 52px;
        padding: 8px 12px;
      }
      .timer-unit .num {
        font-size: 1.2rem;
      }
      .newsletter-box {
        padding: 32px 20px;
      }
      .newsletter-box h3 {
        font-size: 1.5rem;
      }
      .header-actions .icon-btn {
        padding: 6px 8px;
        font-size: 1rem;
      }
    }

    @media (max-width: 420px) {
      .products-grid {
        grid-template-columns: 1fr;
      }
      .categories-grid {
        grid-template-columns: repeat(2, 1fr);
      }
      .hero h1 {
        font-size: 1.5rem;
      }
      .deal-card .deal-content h3 {
        font-size: 1.3rem;
      }
    }

    /* ----- UTILITIES ----- */
    .text-center {
      text-align: center;
    }
    .mt-8 {
      margin-top: 8px;
    }
    .mt-16 {
      margin-top: 16px;
    }
    .gap-8 {
      gap: 8px;
    }
    .flex {
      display: flex;
    }
    .flex-center {
      display: flex;
      align-items: center;
      justify-content: center;
    }
    .muted {
      color: var(--muted);
    }
    .hidden {
      display: none !important;
    }
  </style>
</head>
<body>
  <!-- ===== HEADER ===== -->
  <header>
    <div class="container header-inner">
      <div style="display:flex;align-items:center;gap:12px;">
        <button class="mobile-toggle" id="mobileToggle" aria-label="Toggle menu">
          <i class="fas fa-bars"></i>
        </button>
        <a href="#" class="brand">Nexus<span class="accent">Shop</span></a>
      </div>

      <ul class="nav-links" id="navLinks">
        <li><a href="#" class="active"><i class="fas fa-home"></i> Home</a></li>
        <li><a href="#categories"><i class="fas fa-th-large"></i> Categories</a></li>
        <li><a href="#deals"><i class="fas fa-tag"></i> Deals</a></li>
        <li><a href="#products"><i class="fas fa-fire"></i> Trending</a></li>
        <li><a href="#testimonials"><i class="fas fa-star"></i> Reviews</a></li>
      </ul>

      <div class="header-actions">
        <div class="search-wrap">
          <input type="search" id="searchInput" placeholder="Search products..." aria-label="Search">
          <button id="searchBtn" aria-label="Submit search"><i class="fas fa-search"></i></button>
        </div>
        <button class="icon-btn" aria-label="Account"><i class="far fa-user"></i></button>
        <button class="icon-btn" aria-label="Wishlist"><i class="far fa-heart"></i></button>
        <a href="#" class="icon-btn" aria-label="Cart" id="cartIcon">
          <i class="fas fa-shopping-cart"></i>
          <span class="cart-badge" id="cartCount">0</span>
        </a>
      </div>
    </div>

    <!-- Mobile Menu -->
    <div class="mobile-menu" id="mobileMenu">
      <div class="container">
        <a href="#"><i class="fas fa-home"></i> Home</a>
        <a href="#categories"><i class="fas fa-th-large"></i> Categories</a>
        <a href="#deals"><i class="fas fa-tag"></i> Deals</a>
        <a href="#products"><i class="fas fa-fire"></i> Trending</a>
        <a href="#testimonials"><i class="fas fa-star"></i> Reviews</a>
        <div class="divider"></div>
        <a href="#"><i class="far fa-user"></i> Account</a>
        <a href="#"><i class="far fa-heart"></i> Wishlist</a>
      </div>
    </div>
  </header>

  <!-- ===== MAIN ===== -->
  <main>
    <!-- Hero -->
    <section class="hero">
      <div class="container hero-content">
        <h1>Winter Collection <br><span>Premium Picks</span></h1>
        <p>Discover the latest in fashion, technology, and accessories — curated for you. Enjoy limited-time deals and free shipping on selected items.</p>
        <div class="btn-group">
          <button class="btn btn-primary" id="shopNowBtn"><i class="fas fa-arrow-right"></i> Shop Now</button>
          <button class="btn btn-outline" id="exploreDealsBtn">Explore Deals</button>
        </div>
      </div>
    </section>

    <!-- Categories -->
    <section class="section" id="categories">
      <div class="container">
        <div class="section-header">
          <h2>Shop by Category</h2>
          <p>Browse our wide range of products across curated categories</p>
        </div>
        <div class="categories-grid" id="categoriesGrid"></div>
      </div>
    </section>

    <!-- Products -->
    <section class="section" id="products">
      <div class="container">
        <div class="section-header">
          <h2>Trending Products</h2>
          <p>Popular picks based on recent activity and reviews</p>
        </div>
        <div class="products-grid" id="productsGrid"></div>
        <div class="text-center mt-16">
          <button class="btn btn-dark" id="loadMoreBtn"><i class="fas fa-sync-alt"></i> Load More</button>
        </div>
      </div>
    </section>

    <!-- Flash Deal -->
    <section class="section" id="deals">
      <div class="container">
        <div class="section-header">
          <h2>🔥 Flash Sale</h2>
          <p>Limited-time offers — don't miss out!</p>
        </div>
        <div class="deal-card">
          <img class="deal-image" src="https://images.unsplash.com/photo-1517336714731-489689fd1ca8?auto=format&fit=crop&w=800&q=80" alt="MacBook Air M2" loading="lazy">
          <div class="deal-content">
            <h3>MacBook Air M2</h3>
            <p class="deal-desc">Thin, light, and powerful — now with M2 performance. Up to 18 hours battery life.</p>
            <div class="timer-group" id="timerGroup">
              <div class="timer-unit"><span class="num" id="dealDays">0</span><span class="label">Days</span></div>
              <div class="timer-unit"><span class="num" id="dealHours">00</span><span class="label">Hrs</span></div>
              <div class="timer-unit"><span class="num" id="dealMinutes">00</span><span class="label">Min</span></div>
              <div class="timer-unit"><span class="num" id="dealSeconds">00</span><span class="label">Sec</span></div>
            </div>
            <div class="deal-price-row">
              <span class="current">$999</span>
              <span class="old">$1,199</span>
              <span class="discount-tag">-17%</span>
            </div>
            <div class="deal-stock">Only <strong>12</strong> items left at this price!</div>
            <div style="margin-top:16px;display:flex;gap:10px;flex-wrap:wrap;">
              <button class="btn btn-primary" id="buyDealBtn"><i class="fas fa-bolt"></i> Buy Now</button>
              <button class="btn btn-dark btn-sm" id="dealNotifyBtn"><i class="far fa-bell"></i> Notify Me</button>
            </div>
          </div>
        </div>
      </div>
    </section>

    <!-- Testimonials -->
    <section class="section" id="testimonials">
      <div class="container">
        <div class="section-header">
          <h2>What Our Customers Say</h2>
          <p>Real reviews from verified buyers</p>
        </div>
        <div class="testimonials-scroll" id="testimonialsGrid">
          <!-- populated by JS -->
        </div>
      </div>
    </section>

    <!-- Newsletter -->
    <section class="section">
      <div class="container">
        <div class="newsletter-box">
          <h3>Stay in the Loop</h3>
          <p>Subscribe to get exclusive offers & new arrivals straight to your inbox.</p>
          <form class="news-form" id="newsletterForm">
            <input type="email" id="newsletterEmail" placeholder="Enter your email" required aria-label="Email">
            <button class="btn btn-primary" type="submit">Subscribe</button>
          </form>
          <div class="news-msg" id="newsletterMsg"></div>
        </div>
      </div>
    </section>
  </main>

  <!-- ===== FOOTER ===== -->
  <footer>
    <div class="container">
      <div class="footer-grid">
        <div class="footer-brand">
          <div style="font-family:'Poppins',sans-serif;font-weight:800;font-size:1.5rem;">Nexus<span style="color:var(--accent);">Shop</span></div>
          <p>Modern e-commerce demo built with HTML, CSS & JavaScript. Featuring a fully responsive design and interactive components.</p>
          <div class="footer-social">
            <a href="#" aria-label="Facebook"><i class="fab fa-facebook-f"></i></a>
            <a href="#" aria-label="Twitter"><i class="fab fa-twitter"></i></a>
            <a href="#" aria-label="Instagram"><i class="fab fa-instagram"></i></a>
            <a href="#" aria-label="YouTube"><i class="fab fa-youtube"></i></a>
          </div>
        </div>
        <div class="footer-links">
          <h4>Company</h4>
          <p>About Us</p>
          <p>Careers</p>
          <p>Press</p>
          <p>Blog</p>
        </div>
        <div class="footer-links">
          <h4>Support</h4>
          <p>Help Center</p>
          <p>Shipping & Returns</p>
          <p>Contact</p>
          <p>FAQs</p>
        </div>
        <div class="footer-links">
          <h4>Legal</h4>
          <p>Privacy Policy</p>
          <p>Terms of Service</p>
          <p>Cookie Policy</p>
          <p>Accessibility</p>
        </div>
      </div>
      <div class="footer-bottom">
        &copy; <
