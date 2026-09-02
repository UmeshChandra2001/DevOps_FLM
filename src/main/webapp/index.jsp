<!doctype html>
<html lang="en">
<head>
  <meta charset="utf-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1" />
  <title>ShopVibe · Modern E‑Commerce</title>
  <!-- Fonts & Icons -->
  <link href="https://fonts.googleapis.com/css2?family=Plus+Jakarta+Sans:wght@400;500;600;700;800&display=swap" rel="stylesheet">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.0/css/all.min.css" crossorigin="anonymous">
  <style>
    /* ----- RESET & VARIABLES ----- */
    * {
      margin: 0;
      padding: 0;
      box-sizing: border-box;
    }

    :root {
      --primary: #1a1a2e;
      --primary-light: #16213e;
      --secondary: #e94560;
      --accent: #0f3460;
      --gradient-start: #e94560;
      --gradient-end: #ff6b6b;
      --gold: #f9ca24;
      --bg: #f8f9fa;
      --card: #ffffff;
      --text: #1a1a2e;
      --text-light: #6c757d;
      --border: #dee2e6;
      --success: #00b894;
      --danger: #e94560;
      --warning: #f9ca24;
      --radius: 24px;
      --shadow: 0 10px 40px rgba(0, 0, 0, 0.06);
      --shadow-hover: 0 20px 60px rgba(233, 69, 96, 0.15);
      --transition: 0.3s cubic-bezier(0.4, 0, 0.2, 1);
      --container: 1280px;
    }

    html {
      scroll-behavior: smooth;
    }

    body {
      font-family: 'Plus Jakarta Sans', -apple-system, system-ui, sans-serif;
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
      padding: 14px 32px;
      border-radius: 60px;
      font-weight: 700;
      font-size: 0.95rem;
      border: none;
      cursor: pointer;
      transition: var(--transition);
      font-family: inherit;
      position: relative;
      overflow: hidden;
    }

    .btn-primary {
      background: linear-gradient(135deg, var(--gradient-start), var(--gradient-end));
      color: white;
      box-shadow: 0 8px 24px rgba(233, 69, 96, 0.3);
    }
    .btn-primary:hover {
      transform: translateY(-3px);
      box-shadow: 0 12px 32px rgba(233, 69, 96, 0.4);
    }

    .btn-secondary {
      background: var(--primary);
      color: white;
    }
    .btn-secondary:hover {
      background: var(--primary-light);
      transform: translateY(-3px);
      box-shadow: 0 8px 24px rgba(26, 26, 46, 0.3);
    }

    .btn-outline {
      background: transparent;
      border: 2px solid rgba(255, 255, 255, 0.3);
      color: white;
      backdrop-filter: blur(10px);
    }
    .btn-outline:hover {
      background: rgba(255, 255, 255, 0.1);
      border-color: white;
      transform: translateY(-3px);
    }

    .btn-gold {
      background: linear-gradient(135deg, #f9ca24, #f0932b);
      color: #1a1a2e;
    }
    .btn-gold:hover {
      transform: translateY(-3px);
      box-shadow: 0 8px 24px rgba(249, 202, 36, 0.4);
    }

    .btn-sm {
      padding: 8px 20px;
      font-size: 0.85rem;
    }

    /* ----- HEADER ----- */
    header {
      position: sticky;
      top: 0;
      z-index: 100;
      background: rgba(255, 255, 255, 0.95);
      backdrop-filter: blur(20px);
      -webkit-backdrop-filter: blur(20px);
      border-bottom: 1px solid rgba(0, 0, 0, 0.05);
    }

    .header-inner {
      display: flex;
      align-items: center;
      justify-content: space-between;
      gap: 16px;
      padding: 14px 0;
      flex-wrap: wrap;
    }

    .brand {
      font-weight: 800;
      font-size: 26px;
      letter-spacing: -0.5px;
      display: flex;
      align-items: center;
      gap: 6px;
      background: linear-gradient(135deg, var(--gradient-start), var(--gradient-end));
      -webkit-background-clip: text;
      -webkit-text-fill-color: transparent;
      background-clip: text;
    }
    .brand i {
      -webkit-text-fill-color: initial;
      color: var(--secondary);
    }

    .nav-links {
      display: flex;
      align-items: center;
      gap: 4px;
      list-style: none;
    }
    .nav-links a {
      padding: 8px 18px;
      border-radius: 40px;
      font-weight: 600;
      font-size: 0.9rem;
      transition: var(--transition);
      display: flex;
      align-items: center;
      gap: 8px;
      color: var(--text-light);
    }
    .nav-links a:hover,
    .nav-links a.active {
      background: linear-gradient(135deg, var(--gradient-start), var(--gradient-end));
      color: white;
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
      border: 2px solid transparent;
      border-radius: 60px;
      padding: 4px 4px 4px 20px;
      transition: var(--transition);
    }
    .search-wrap:focus-within {
      border-color: var(--secondary);
      box-shadow: 0 0 0 4px rgba(233, 69, 96, 0.1);
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
      color: var(--text-light);
    }
    .search-wrap button {
      background: linear-gradient(135deg, var(--gradient-start), var(--gradient-end));
      border: none;
      color: white;
      padding: 8px 18px;
      border-radius: 60px;
      cursor: pointer;
      font-size: 1rem;
      transition: var(--transition);
    }
    .search-wrap button:hover {
      transform: scale(1.05);
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
      background: var(--bg);
      color: var(--secondary);
    }

    .cart-badge {
      position: absolute;
      top: -2px;
      right: -2px;
      background: var(--secondary);
      color: white;
      font-size: 0.6rem;
      font-weight: 700;
      width: 20px;
      height: 20px;
      border-radius: 50%;
      display: grid;
      place-items: center;
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
      color: var(--secondary);
    }
    .mobile-menu .divider {
      height: 1px;
      background: var(--border);
      margin: 8px 24px;
    }

    /* ----- HERO ----- */
    .hero {
      background: linear-gradient(135deg, var(--primary) 0%, var(--primary-light) 50%, #1a1a2e 100%);
      color: white;
      padding: 80px 20px 72px;
      border-radius: 0 0 48px 48px;
      text-align: center;
      margin-bottom: 8px;
      position: relative;
      overflow: hidden;
    }
    .hero::before {
      content: '';
      position: absolute;
      top: -30%;
      right: -10%;
      width: 500px;
      height: 500px;
      background: radial-gradient(circle, rgba(233, 69, 96, 0.15) 0%, transparent 70%);
      border-radius: 50%;
    }
    .hero::after {
      content: '';
      position: absolute;
      bottom: -30%;
      left: -10%;
      width: 400px;
      height: 400px;
      background: radial-gradient(circle, rgba(249, 202, 36, 0.1) 0%, transparent 70%);
      border-radius: 50%;
    }
    .hero-content {
      position: relative;
      z-index: 1;
    }
    .hero h1 {
      font-weight: 800;
      font-size: 3.5rem;
      letter-spacing: -0.03em;
      max-width: 700px;
      margin: 0 auto 12px;
      line-height: 1.1;
    }
    .hero h1 .highlight {
      background: linear-gradient(135deg, var(--gradient-start), var(--gold));
      -webkit-background-clip: text;
      -webkit-text-fill-color: transparent;
      background-clip: text;
    }
    .hero p {
      opacity: 0.85;
      max-width: 560px;
      margin: 0 auto 32px;
      font-size: 1.1rem;
      line-height: 1.8;
    }
    .hero .btn-group {
      display: flex;
      gap: 16px;
      justify-content: center;
      flex-wrap: wrap;
    }

    /* ----- SECTION COMMON ----- */
    .section {
      padding: 60px 0;
    }
    .section-header {
      text-align: center;
      margin-bottom: 36px;
    }
    .section-header h2 {
      font-weight: 800;
      font-size: 2.2rem;
      letter-spacing: -0.02em;
    }
    .section-header .subtitle {
      color: var(--text-light);
      margin-top: 4px;
    }
    .section-header .accent-line {
      width: 60px;
      height: 4px;
      background: linear-gradient(135deg, var(--gradient-start), var(--gradient-end));
      border-radius: 4px;
      margin: 8px auto 0;
    }

    /* ----- CATEGORIES ----- */
    .categories-grid {
      display: grid;
      grid-template-columns: repeat(auto-fit, minmax(150px, 1fr));
      gap: 24px;
    }
    .cat-card {
      background: var(--card);
      padding: 28px 16px 24px;
      border-radius: var(--radius);
      text-align: center;
      box-shadow: var(--shadow);
      transition: var(--transition);
      cursor: pointer;
      border: 2px solid transparent;
      position: relative;
      overflow: hidden;
    }
    .cat-card::before {
      content: '';
      position: absolute;
      top: 0;
      left: 0;
      right: 0;
      height: 4px;
      background: linear-gradient(135deg, var(--gradient-start), var(--gradient-end));
      opacity: 0;
      transition: var(--transition);
    }
    .cat-card:hover {
      transform: translateY(-8px);
      box-shadow: var(--shadow-hover);
      border-color: var(--secondary);
    }
    .cat-card:hover::before {
      opacity: 1;
    }
    .cat-card .icon {
      font-size: 2.5rem;
      background: linear-gradient(135deg, var(--gradient-start), var(--gradient-end));
      -webkit-background-clip: text;
      -webkit-text-fill-color: transparent;
      background-clip: text;
      margin-bottom: 10px;
    }
    .cat-card h4 {
      font-weight: 700;
      font-size: 1rem;
    }
    .cat-card .count {
      font-size: 0.8rem;
      color: var(--text-light);
    }

    /* ----- PRODUCTS ----- */
    .products-grid {
      display: grid;
      grid-template-columns: repeat(auto-fill, minmax(270px, 1fr));
      gap: 28px;
    }
    .product-card {
      background: var(--card);
      border-radius: var(--radius);
      overflow: hidden;
      box-shadow: var(--shadow);
      transition: var(--transition);
      display: flex;
      flex-direction: column;
      border: 2px solid transparent;
      position: relative;
    }
    .product-card:hover {
      transform: translateY(-8px);
      box-shadow: var(--shadow-hover);
      border-color: var(--secondary);
    }
    .product-card .image-wrap {
      position: relative;
      overflow: hidden;
      background: linear-gradient(135deg, #f8f9fa, #e9ecef);
      height: 220px;
    }
    .product-card .image-wrap img {
      width: 100%;
      height: 100%;
      object-fit: cover;
      transition: var(--transition);
    }
    .product-card:hover .image-wrap img {
      transform: scale(1.05);
    }
    .product-card .badge {
      position: absolute;
      top: 14px;
      left: 14px;
      padding: 4px 16px;
      border-radius: 30px;
      font-size: 0.7rem;
      font-weight: 700;
      text-transform: uppercase;
      letter-spacing: 0.5px;
    }
    .badge-new {
      background: linear-gradient(135deg, #00b894, #00cec9);
      color: white;
    }
    .badge-sale {
      background: linear-gradient(135deg, var(--gradient-start), var(--gradient-end));
      color: white;
    }
    .badge-hot {
      background: linear-gradient(135deg, #f9ca24, #f0932b);
      color: #1a1a2e;
    }
    .product-card .wishlist-btn {
      position: absolute;
      top: 14px;
      right: 14px;
      background: rgba(255, 255, 255, 0.9);
      border: none;
      width: 40px;
      height: 40px;
      border-radius: 50%;
      font-size: 1.1rem;
      cursor: pointer;
      transition: var(--transition);
      backdrop-filter: blur(4px);
      color: var(--text-light);
    }
    .product-card .wishlist-btn:hover {
      background: white;
      transform: scale(1.1);
      color: var(--secondary);
    }
    .product-body {
      padding: 18px 20px 14px;
      flex: 1;
    }
    .product-body .product-title {
      font-weight: 700;
      font-size: 1.05rem;
      margin-bottom: 2px;
      display: -webkit-box;
      -webkit-line-clamp: 2;
      -webkit-box-orient: vertical;
      overflow: hidden;
    }
    .product-body .product-category {
      font-size: 0.8rem;
      color: var(--text-light);
      margin-bottom: 8px;
    }
    .product-body .price-row {
      display: flex;
      align-items: center;
      gap: 12px;
      flex-wrap: wrap;
    }
    .product-body .price-current {
      font-weight: 800;
      font-size: 1.3rem;
      color: var(--secondary);
    }
    .product-body .price-old {
      color: var(--text-light);
      text-decoration: line-through;
      font-size: 0.9rem;
    }
    .product-body .rating {
      color: var(--gold);
      font-size: 0.85rem;
      display: flex;
      align-items: center;
      gap: 4px;
    }
    .product-body .rating span {
      color: var(--text-light);
      font-weight: 400;
    }
    .product-footer {
      padding: 0 20px 20px;
      display: flex;
      gap: 10px;
    }
    .product-footer .btn-add {
      flex: 1;
      padding: 12px 0;
      border-radius: 40px;
      border: none;
      font-weight: 700;
      cursor: pointer;
      transition: var(--transition);
      background: linear-gradient(135deg, var(--gradient-start), var(--gradient-end));
      color: white;
      font-family: inherit;
      box-shadow: 0 4px 12px rgba(233, 69, 96, 0.2);
    }
    .product-footer .btn-add:hover {
      transform: translateY(-2px);
      box-shadow: 0 8px 24px rgba(233, 69, 96, 0.3);
    }
    .product-footer .btn-add.added {
      background: linear-gradient(135deg, #00b894, #00cec9);
    }

    /* ----- DEAL SECTION ----- */
    .deal-card {
      display: flex;
      background: var(--card);
      border-radius: var(--radius);
      overflow: hidden;
      box-shadow: var(--shadow);
      margin-top: 12px;
      border: 2px solid transparent;
      transition: var(--transition);
    }
    .deal-card:hover {
      border-color: var(--secondary);
      box-shadow: var(--shadow-hover);
    }
    .deal-card .deal-image {
      width: 40%;
      min-height: 300px;
      object-fit: cover;
      background: linear-gradient(135deg, #e9ecef, #dee2e6);
    }
    .deal-card .deal-content {
      padding: 36px 40px;
      flex: 1;
      display: flex;
      flex-direction: column;
      justify-content: center;
      background: linear-gradient(135deg, #fafafa, #ffffff);
    }
    .deal-card .deal-content .deal-tag {
      display: inline-block;
      background: linear-gradient(135deg, var(--gradient-start), var(--gradient-end));
      color: white;
      padding: 4px 16px;
      border-radius: 30px;
      font-size: 0.8rem;
      font-weight: 700;
      text-transform: uppercase;
      letter-spacing: 0.5px;
      margin-bottom: 8px;
      align-self: flex-start;
    }
    .deal-card .deal-content h3 {
      font-weight: 800;
      font-size: 2rem;
      letter-spacing: -0.02em;
    }
    .deal-card .deal-content .deal-desc {
      color: var(--text-light);
      margin: 4px 0 16px;
    }
    .timer-group {
      display: flex;
      gap: 14px;
      margin: 12px 0 20px;
    }
    .timer-unit {
      background: var(--primary);
      color: white;
      padding: 12px 20px;
      border-radius: 16px;
      min-width: 72px;
      text-align: center;
    }
    .timer-unit .num {
      font-size: 1.8rem;
      font-weight: 800;
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
      gap: 18px;
      flex-wrap: wrap;
    }
    .deal-price-row .current {
      font-size: 2rem;
      font-weight: 800;
      color: var(--secondary);
    }
    .deal-price-row .old {
      color: var(--text-light);
      text-decoration: line-through;
      font-size: 1.1rem;
    }
    .deal-price-row .discount-tag {
      background: linear-gradient(135deg, var(--gradient-start), var(--gradient-end));
      color: white;
      padding: 2px 18px;
      border-radius: 40px;
      font-weight: 700;
      font-size: 0.9rem;
    }
    .deal-stock {
      margin-top: 10px;
      font-size: 0.95rem;
    }
    .deal-stock strong {
      color: var(--secondary);
    }

    /* ----- TESTIMONIALS ----- */
    .testimonials-scroll {
      display: flex;
      gap: 28px;
      overflow-x: auto;
      padding: 8px 4px 20px;
      scroll-snap-type: x mandatory;
    }
    .testimonial-card {
      min-width: 320px;
      flex-shrink: 0;
      background: var(--card);
      padding: 28px 30px;
      border-radius: var(--radius);
      box-shadow: var(--shadow);
      scroll-snap-align: start;
      border: 2px solid transparent;
      transition: var(--transition);
    }
    .testimonial-card:hover {
      border-color: var(--secondary);
      box-shadow: var(--shadow-hover);
    }
    .testimonial-card .stars {
      color: var(--gold);
      font-size: 1.1rem;
      letter-spacing: 2px;
    }
    .testimonial-card .quote {
      margin: 12px 0 16px;
      font-style: italic;
      line-height: 1.7;
      color: var(--text);
    }
    .testimonial-card .author {
      display: flex;
      align-items: center;
      gap: 14px;
    }
    .testimonial-card .avatar {
      width: 48px;
      height: 48px;
      border-radius: 50%;
      background: linear-gradient(135deg, var(--gradient-start), var(--gradient-end));
      display: grid;
      place-items: center;
      font-weight: 700;
      color: white;
    }

    /* ----- NEWSLETTER ----- */
    .newsletter-box {
      background: linear-gradient(135deg, var(--primary), var(--primary-light));
      color: white;
      padding: 56px 40px;
      border-radius: var(--radius);
      text-align: center;
      position: relative;
      overflow: hidden;
    }
    .newsletter-box::before {
      content: '';
      position: absolute;
      top: -50%;
      right: -20%;
      width: 400px;
      height: 400px;
      background: radial-gradient(circle, rgba(233, 69, 96, 0.15) 0%, transparent 70%);
      border-radius: 50%;
    }
    .newsletter-box h3 {
      font-weight: 800;
      font-size: 2.2rem;
      letter-spacing: -0.02em;
      position: relative;
      z-index: 1;
    }
    .newsletter-box p {
      opacity: 0.85;
      margin-bottom: 24px;
      position: relative;
      z-index: 1;
    }
    .newsletter-box .news-form {
      display: flex;
      justify-content: center;
      gap: 12px;
      flex-wrap: wrap;
      position: relative;
      z-index: 1;
    }
    .newsletter-box .news-form input {
      padding: 16px 28px;
      border-radius: 60px;
      border: none;
      width: 340px;
      max-width: 100%;
      font-size: 1rem;
      font-family: inherit;
      outline: none;
      box-shadow: 0 4px 12px rgba(0, 0, 0, 0.1);
    }
    .newsletter-box .news-form input:focus {
      box-shadow: 0 0 0 4px rgba(233, 69, 96, 0.3);
    }
    .newsletter-box .news-msg {
      margin-top: 16px;
      font-size: 0.95rem;
      display: none;
      position: relative;
      z-index: 1;
    }

    /* ----- FOOTER ----- */
    footer {
      border-top: 2px solid var(--border);
      padding: 52px 0 24px;
      margin-top: 16px;
      background: white;
    }
    .footer-grid {
      display: grid;
      grid-template-columns: 1.5fr 1fr 1fr 1fr;
      gap: 48px;
      margin-bottom: 36px;
    }
    .footer-brand .brand {
      font-size: 28px;
      margin-bottom: 8px;
    }
    .footer-brand p {
      color: var(--text-light);
      max-width: 300px;
      margin-top: 6px;
    }
    .footer-social {
      display: flex;
      gap: 12px;
      margin-top: 16px;
    }
    .footer-social a {
      width: 44px;
      height: 44px;
      border-radius: 50%;
      background: var(--bg);
      display: grid;
      place-items: center;
      transition: var(--transition);
      color: var(--text);
      font-size: 1.1rem;
    }
    .footer-social a:hover {
      background: linear-gradient(135deg, var(--gradient-start), var(--gradient-end));
      color: white;
      transform: translateY(-4px);
    }
    .footer-links h4 {
      font-weight: 700;
      margin-bottom: 14px;
      color: var(--text);
    }
    .footer-links p {
      color: var(--text-light);
      margin: 8px 0;
      cursor: pointer;
      transition: var(--transition);
    }
    .footer-links p:hover {
      color: var(--secondary);
      transform: translateX(4px);
    }
    .footer-bottom {
      text-align: center;
      padding-top: 24px;
      border-top: 1px solid var(--border);
      color: var(--text-light);
      font-size: 0.9rem;
    }

    /* ----- RESPONSIVE ----- */
    @media (max-width: 1024px) {
      .footer-grid {
        grid-template-columns: 1fr 1fr;
        gap: 32px;
      }
      .deal-card .deal-image {
        width: 35%;
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
        font-size: 2.5rem;
      }
      .deal-card {
        flex-direction: column;
      }
      .deal-card .deal-image {
        width: 100%;
        height: 240px;
      }
      .deal-card .deal-content {
        padding: 28px;
      }
      .search-wrap input {
        width: 120px;
      }
      .header-inner {
        padding: 12px 0;
      }
    }

    @media (max-width: 600px) {
      .hero {
        padding: 52px 16px 44px;
      }
      .hero h1 {
        font-size: 2rem;
      }
      .products-grid {
        grid-template-columns: 1fr 1fr;
        gap: 16px;
      }
      .categories-grid {
        grid-template-columns: repeat(3, 1fr);
        gap: 14px;
      }
      .section {
        padding: 36px 0;
      }
      .footer-grid {
        grid-template-columns: 1fr;
        gap: 28px;
      }
      .search-wrap {
        width: 100%;
      }
      .search-wrap input {
        width: 100%;
      }
      .timer-group {
        gap: 10px;
      }
      .timer-unit {
        min-width: 56px;
        padding: 10px 14px;
      }
      .timer-unit .num {
        font-size: 1.3rem;
      }
      .newsletter-box {
        padding: 36px 24px;
      }
      .newsletter-box h3 {
        font-size: 1.6rem;
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
        font-size: 1.6rem;
      }
      .deal-card .deal-content h3 {
        font-size: 1.5rem;
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
      color: var(--text-light);
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
        <a href="#" class="brand"><i class="fas fa-store"></i> ShopVibe</a>
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
          <i class="fas fa-shopping-bag"></i>
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
        <h1>Discover Amazing <br><span class="highlight">Deals & Styles</span></h1>
        <p>Explore our curated collection of premium products. From fashion to tech, find everything you need with exclusive discounts.</p>
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
          <p class="subtitle">Browse our wide range of products across curated categories</p>
          <div class="accent-line"></div>
        </div>
        <div class="categories-grid" id="categoriesGrid"></div>
      </div>
    </section>

    <!-- Products -->
    <section class="section" id="products">
      <div class="container">
        <div class="section-header">
          <h2>🔥 Trending Products</h2>
          <p class="subtitle">Popular picks based on recent activity and reviews</p>
          <div class="accent-line"></div>
        </div>
        <div class="products-grid" id="productsGrid"></div>
        <div class="text-center mt-16">
          <button class="btn btn-secondary" id="loadMoreBtn"><i class="fas fa-sync-alt"></i> Load More</button>
        </div>
      </div>
    </section>

    <!--
