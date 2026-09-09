<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>UBook_Vpay · Modern Lifestyle Store</title>
    <!-- Google Fonts + Font Awesome -->
    <link href="https://fonts.googleapis.com/css2?family=Inter:wght@300;400;500;600;700;800;900&display=swap" rel="stylesheet" />
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.0/css/all.min.css" />
    <style>
        /* ============================================================
                   RESET & BASE
                   ============================================================ */
        *,
        *::before,
        *::after {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }

        :root {
            --primary: #e94560;
            --primary-dark: #c7364f;
            --primary-light: #ff6b81;
            --primary-glow: rgba(233, 69, 96, 0.35);
            --bg: #f4f5f7;
            --bg-card: #ffffff;
            --text: #1a1a2e;
            --text-secondary: #4a4a5a;
            --text-muted: #888899;
            --border: #e8e8ee;
            --shadow: 0 8px 32px rgba(0, 0, 0, 0.07);
            --shadow-hover: 0 16px 48px rgba(0, 0, 0, 0.13);
            --radius: 16px;
            --radius-sm: 10px;
            --radius-full: 9999px;
            --transition: 0.35s cubic-bezier(0.25, 0.46, 0.45, 0.94);
            --font: 'Inter', sans-serif;
        }

        html {
            scroll-behavior: smooth;
        }

        body {
            font-family: var(--font);
            background: var(--bg);
            color: var(--text);
            line-height: 1.6;
            -webkit-font-smoothing: antialiased;
            -moz-osx-font-smoothing: grayscale;
        }

        a {
            text-decoration: none;
            color: inherit;
        }
        img {
            display: block;
            max-width: 100%;
            height: auto;
        }
        ul {
            list-style: none;
        }
        button {
            cursor: pointer;
            font-family: inherit;
            border: none;
            background: none;
        }

        .container {
            max-width: 1240px;
            margin: 0 auto;
            padding: 0 24px;
        }

        /* ============================================================
                   SCROLLBAR
                   ============================================================ */
        ::-webkit-scrollbar {
            width: 8px;
        }
        ::-webkit-scrollbar-track {
            background: var(--bg);
        }
        ::-webkit-scrollbar-thumb {
            background: var(--primary);
            border-radius: 12px;
        }
        ::-webkit-scrollbar-thumb:hover {
            background: var(--primary-dark);
        }

        /* ============================================================
                   HEADER / NAV
                   ============================================================ */
        header {
            background: rgba(255, 255, 255, 0.85);
            backdrop-filter: blur(20px);
            -webkit-backdrop-filter: blur(20px);
            border-bottom: 1px solid rgba(0, 0, 0, 0.05);
            position: sticky;
            top: 0;
            z-index: 1000;
            transition: var(--transition);
        }

        header.scrolled {
            box-shadow: 0 4px 24px rgba(0, 0, 0, 0.06);
        }

        .header-inner {
            display: flex;
            justify-content: space-between;
            align-items: center;
            padding: 14px 0;
            flex-wrap: wrap;
            gap: 12px;
        }

        .brand {
            font-weight: 800;
            font-size: 1.6rem;
            color: var(--primary);
            display: flex;
            align-items: center;
            gap: 10px;
            letter-spacing: -0.5px;
        }
        .brand i {
            font-size: 1.7rem;
            background: var(--primary);
            color: #fff;
            padding: 8px;
            border-radius: var(--radius-sm);
            transition: var(--transition);
        }
        .brand:hover i {
            transform: rotate(-8deg) scale(1.05);
        }
        .brand span {
            color: var(--text);
            font-weight: 300;
        }

        /* Desktop nav */
        .nav-desktop ul {
            display: flex;
            gap: 6px;
        }
        .nav-desktop a {
            font-weight: 500;
            color: var(--text-secondary);
            padding: 8px 18px;
            border-radius: var(--radius-full);
            transition: var(--transition);
            font-size: 0.95rem;
            position: relative;
        }
        .nav-desktop a::after {
            content: '';
            position: absolute;
            bottom: 2px;
            left: 50%;
            transform: translateX(-50%);
            width: 0;
            height: 2.5px;
            background: var(--primary);
            border-radius: 4px;
            transition: var(--transition);
        }
        .nav-desktop a:hover {
            color: var(--primary);
            background: rgba(233, 69, 96, 0.06);
        }
        .nav-desktop a:hover::after {
            width: 60%;
        }
        .nav-desktop a.active {
            color: var(--primary);
            background: rgba(233, 69, 96, 0.08);
        }
        .nav-desktop a.active::after {
            width: 60%;
        }

        /* Actions */
        .actions {
            display: flex;
            gap: 6px;
            align-items: center;
        }
        .icon-btn {
            width: 44px;
            height: 44px;
            border-radius: 50%;
            display: flex;
            align-items: center;
            justify-content: center;
            font-size: 1.15rem;
            color: var(--text-secondary);
            transition: var(--transition);
            background: transparent;
            position: relative;
        }
        .icon-btn:hover {
            background: rgba(233, 69, 96, 0.08);
            color: var(--primary);
            transform: scale(1.05);
        }
        .cart-btn {
            background: rgba(233, 69, 96, 0.06);
            color: var(--primary);
        }
        .cart-btn:hover {
            background: var(--primary);
            color: #fff;
        }
        .cart-badge {
            position: absolute;
            top: 2px;
            right: 2px;
            background: var(--primary);
            color: #fff;
            font-size: 0.6rem;
            font-weight: 700;
            width: 20px;
            height: 20px;
            border-radius: 50%;
            display: flex;
            align-items: center;
            justify-content: center;
            border: 2px solid #fff;
            transition: var(--transition);
        }
        .cart-btn:hover .cart-badge {
            border-color: var(--primary);
        }

        /* Mobile menu toggle */
        .menu-toggle {
            display: none;
            font-size: 1.5rem;
            color: var(--text);
            padding: 6px;
            border-radius: var(--radius-sm);
            transition: var(--transition);
        }
        .menu-toggle:hover {
            background: rgba(0, 0, 0, 0.04);
        }

        /* Mobile nav */
        .nav-mobile {
            display: none;
            flex-direction: column;
            gap: 6px;
            padding: 16px 0 20px;
            border-top: 1px solid var(--border);
            width: 100%;
        }
        .nav-mobile.open {
            display: flex;
        }
        .nav-mobile a {
            padding: 12px 16px;
            border-radius: var(--radius-sm);
            font-weight: 500;
            color: var(--text-secondary);
            transition: var(--transition);
        }
        .nav-mobile a:hover,
        .nav-mobile a.active {
            background: rgba(233, 69, 96, 0.08);
            color: var(--primary);
        }

        /* ============================================================
                   HERO
                   ============================================================ */
        .hero {
            position: relative;
            background: linear-gradient(145deg, #0f0f1f 0%, #1a1a2e 40%, #16213e 100%);
            color: #fff;
            padding: 100px 0 80px;
            overflow: hidden;
            isolation: isolate;
        }
        .hero::before {
            content: '';
            position: absolute;
            inset: 0;
            background: radial-gradient(ellipse at 70% 20%, rgba(233, 69, 96, 0.20) 0%, transparent 60%),
                radial-gradient(ellipse at 20% 80%, rgba(233, 69, 96, 0.08) 0%, transparent 50%);
            z-index: 0;
        }
        .hero .container {
            position: relative;
            z-index: 1;
            display: grid;
            grid-template-columns: 1fr 1fr;
            gap: 60px;
            align-items: center;
        }
        .hero-content h1 {
            font-size: 3.4rem;
            font-weight: 900;
            letter-spacing: -1.5px;
            line-height: 1.1;
            margin-bottom: 20px;
        }
        .hero-content h1 .highlight {
            color: var(--primary);
            background: linear-gradient(135deg, var(--primary), #ff6b81);
            -webkit-background-clip: text;
            -webkit-text-fill-color: transparent;
            background-clip: text;
        }
        .hero-content p {
            font-size: 1.15rem;
            opacity: 0.8;
            max-width: 480px;
            margin-bottom: 32px;
            line-height: 1.7;
        }
        .hero-buttons {
            display: flex;
            flex-wrap: wrap;
            gap: 14px;
        }
        .btn {
            display: inline-flex;
            align-items: center;
            gap: 10px;
            padding: 14px 34px;
            border-radius: var(--radius-full);
            font-weight: 600;
            font-size: 1rem;
            transition: var(--transition);
            border: 2px solid transparent;
        }
        .btn-primary {
            background: var(--primary);
            color: #fff;
            border-color: var(--primary);
            box-shadow: 0 4px 20px var(--primary-glow);
        }
        .btn-primary:hover {
            background: var(--primary-dark);
            border-color: var(--primary-dark);
            transform: translateY(-3px);
            box-shadow: 0 12px 32px var(--primary-glow);
        }
        .btn-outline {
            border-color: rgba(255, 255, 255, 0.35);
            color: #fff;
            background: transparent;
        }
        .btn-outline:hover {
            border-color: #fff;
            background: rgba(255, 255, 255, 0.08);
            transform: translateY(-3px);
        }
        .btn-white {
            background: #fff;
            color: var(--text);
            border-color: #fff;
        }
        .btn-white:hover {
            background: rgba(255, 255, 255, 0.85);
            transform: translateY(-3px);
            box-shadow: 0 8px 28px rgba(255, 255, 255, 0.15);
        }

        .hero-visual {
            display: flex;
            justify-content: center;
            align-items: center;
        }
        .hero-visual .hero-grid {
            display: grid;
            grid-template-columns: 1fr 1fr;
            gap: 16px;
            width: 100%;
            max-width: 420px;
        }
        .hero-visual .hero-grid img {
            border-radius: var(--radius);
            aspect-ratio: 1/1;
            object-fit: cover;
            box-shadow: 0 16px 48px rgba(0, 0, 0, 0.3);
            transition: var(--transition);
            border: 2px solid rgba(255, 255, 255, 0.06);
        }
        .hero-visual .hero-grid img:hover {
            transform: scale(1.03);
            border-color: var(--primary);
        }
        .hero-visual .hero-grid img:first-child {
            grid-row: span 2;
            aspect-ratio: auto;
        }

        /* Floating badge */
        .hero-badge {
            position: absolute;
            bottom: 30px;
            right: 30px;
            background: rgba(255, 255, 255, 0.06);
            backdrop-filter: blur(16px);
            border: 1px solid rgba(255, 255, 255, 0.08);
            padding: 16px 24px;
            border-radius: var(--radius);
            color: #fff;
            display: flex;
            align-items: center;
            gap: 16px;
            z-index: 2;
            animation: float 3s ease-in-out infinite;
        }
        .hero-badge i {
            font-size: 2rem;
            color: var(--primary);
        }
        .hero-badge strong {
            font-size: 1.2rem;
            display: block;
        }
        .hero-badge span {
            opacity: 0.7;
            font-size: 0.85rem;
        }

        @keyframes float {
            0%,
            100% {
                transform: translateY(0);
            }
            50% {
                transform: translateY(-10px);
            }
        }

        /* ============================================================
                   SECTION COMMON
                   ============================================================ */
        section {
            padding: 72px 0;
        }
        .section-header {
            text-align: center;
            margin-bottom: 44px;
        }
        .section-header .tag {
            display: inline-block;
            background: rgba(233, 69, 96, 0.10);
            color: var(--primary);
            font-weight: 600;
            font-size: 0.75rem;
            text-transform: uppercase;
            letter-spacing: 1.5px;
            padding: 4px 16px;
            border-radius: var(--radius-full);
            margin-bottom: 10px;
        }
        .section-header h2 {
            font-size: 2.5rem;
            font-weight: 800;
            letter-spacing: -1px;
            line-height: 1.2;
        }
        .section-header h2 .highlight {
            color: var(--primary);
        }
        .section-header p {
            color: var(--text-secondary);
            margin-top: 8px;
            max-width: 500px;
            margin-left: auto;
            margin-right: auto;
        }

        /* ============================================================
                   CATEGORIES
                   ============================================================ */
        .categories-grid {
            display: grid;
            grid-template-columns: repeat(auto-fit, minmax(160px, 1fr));
            gap: 20px;
        }
        .category-card {
            background: var(--bg-card);
            border-radius: var(--radius);
            padding: 24px 16px;
            text-align: center;
            transition: var(--transition);
            border: 1px solid var(--border);
            position: relative;
            overflow: hidden;
            cursor: pointer;
        }
        .category-card::before {
            content: '';
            position: absolute;
            inset: 0;
            background: linear-gradient(135deg, var(--primary), var(--primary-dark));
            opacity: 0;
            transition: var(--transition);
            border-radius: var(--radius);
        }
        .category-card:hover {
            transform: translateY(-8px);
            box-shadow: var(--shadow-hover);
            border-color: var(--primary);
        }
        .category-card:hover::before {
            opacity: 0.04;
        }
        .category-card .icon-wrap {
            width: 64px;
            height: 64px;
            border-radius: 50%;
            background: rgba(233, 69, 96, 0.08);
            display: flex;
            align-items: center;
            justify-content: center;
            margin: 0 auto 14px;
            font-size: 1.6rem;
            color: var(--primary);
            transition: var(--transition);
        }
        .category-card:hover .icon-wrap {
            background: var(--primary);
            color: #fff;
            transform: scale(1.08) rotate(-4deg);
        }
        .category-card h4 {
            font-weight: 600;
            font-size: 1rem;
            position: relative;
            z-index: 1;
        }
        .category-card .count {
            font-size: 0.8rem;
            color: var(--text-muted);
            margin-top: 2px;
            position: relative;
            z-index: 1;
        }
        .category-card img {
            width: 100%;
            aspect-ratio: 1/1;
            object-fit: cover;
            border-radius: var(--radius-sm);
            margin-bottom: 12px;
            background: #eee;
        }

        /* ============================================================
                   PRODUCTS
                   ============================================================ */
        .products-grid {
            display: grid;
            grid-template-columns: repeat(auto-fill, minmax(250px, 1fr));
            gap: 28px;
        }
        .product-card {
            background: var(--bg-card);
            border-radius: var(--radius);
            overflow: hidden;
            transition: var(--transition);
            border: 1px solid var(--border);
            position: relative;
            group: true;
        }
        .product-card:hover {
            transform: translateY(-8px);
            box-shadow: var(--shadow-hover);
            border-color: rgba(233, 69, 96, 0.20);
        }
        .product-card .product-image {
            position: relative;
            overflow: hidden;
            aspect-ratio: 1/1;
            background: #f8f8fa;
        }
        .product-card .product-image img {
            width: 100%;
            height: 100%;
            object-fit: cover;
            transition: var(--transition);
        }
        .product-card:hover .product-image img {
            transform: scale(1.04);
        }
        .product-card .product-actions {
            position: absolute;
            bottom: 14px;
            right: 14px;
            display: flex;
            flex-direction: column;
            gap: 8px;
            opacity: 0;
            transform: translateY(10px);
            transition: var(--transition);
        }
        .product-card:hover .product-actions {
            opacity: 1;
            transform: translateY(0);
        }
        .product-card .product-actions button {
            width: 40px;
            height: 40px;
            border-radius: 50%;
            background: #fff;
            box-shadow: 0 4px 16px rgba(0, 0, 0, 0.10);
            display: flex;
            align-items: center;
            justify-content: center;
            color: var(--text-secondary);
            transition: var(--transition);
            font-size: 0.95rem;
        }
        .product-card .product-actions button:hover {
            background: var(--primary);
            color: #fff;
            transform: scale(1.08);
        }
        .product-card .product-badge {
            position: absolute;
            top: 14px;
            left: 14px;
            background: var(--primary);
            color: #fff;
            font-size: 0.7rem;
            font-weight: 700;
            padding: 4px 14px;
            border-radius: var(--radius-full);
            text-transform: uppercase;
            letter-spacing: 0.5px;
        }
        .product-card .product-badge.sold-out {
            background: var(--text-muted);
        }
        .product-card .product-info {
            padding: 18px 20px 20px;
        }
        .product-card .product-info .product-title {
            font-weight: 600;
            font-size: 1rem;
            margin-bottom: 2px;
            transition: var(--transition);
        }
        .product-card:hover .product-info .product-title {
            color: var(--primary);
        }
        .product-card .product-info .product-category {
            font-size: 0.8rem;
            color: var(--text-muted);
        }
        .product-card .product-info .product-price {
            display: flex;
            align-items: center;
            gap: 10px;
            margin-top: 8px;
        }
        .product-card .product-info .product-price .current {
            font-weight: 700;
            font-size: 1.2rem;
            color: var(--text);
        }
        .product-card .product-info .product-price .old {
            font-size: 0.9rem;
            color: var(--text-muted);
            text-decoration: line-through;
        }
        .product-card .product-info .product-price .discount {
            background: rgba(233, 69, 96, 0.10);
            color: var(--primary);
            font-weight: 700;
            font-size: 0.7rem;
            padding: 2px 10px;
            border-radius: var(--radius-full);
        }
        .product-card .rating {
            display: flex;
            align-items: center;
            gap: 4px;
            margin-top: 6px;
            font-size: 0.8rem;
            color: #f9b74b;
        }
        .product-card .rating span {
            color: var(--text-muted);
            margin-left: 4px;
        }

        /* ============================================================
                   DEALS
                   ============================================================ */
        .deals-grid {
            display: grid;
            grid-template-columns: repeat(auto-fit, minmax(220px, 1fr));
            gap: 24px;
        }
        .deal-card {
            background: var(--bg-card);
            border-radius: var(--radius);
            padding: 20px;
            text-align: center;
            transition: var(--transition);
            border: 1px solid var(--border);
            position: relative;
            overflow: hidden;
        }
        .deal-card:hover {
            transform: translateY(-6px);
            box-shadow: var(--shadow-hover);
        }
        .deal-card .deal-badge {
            position: absolute;
            top: 14px;
            right: 14px;
            background: var(--primary);
            color: #fff;
            font-weight: 800;
            font-size: 0.8rem;
            padding: 4px 14px;
            border-radius: var(--radius-full);
            animation: pulse-badge 2s infinite;
        }
        @keyframes pulse-badge {
            0%,
            100% {
                transform: scale(1);
            }
            50% {
                transform: scale(1.05);
            }
        }
        .deal-card img {
            width: 100%;
            aspect-ratio: 1/1;
            object-fit: cover;
            border-radius: var(--radius-sm);
            margin-bottom: 12px;
            background: #eee;
        }
        .deal-card h4 {
            font-weight: 600;
        }
        .deal-card .deal-price {
            display: flex;
            justify-content: center;
            align-items: center;
            gap: 10px;
            margin-top: 4px;
        }
        .deal-card .deal-price .current {
            font-weight: 700;
            font-size: 1.2rem;
            color: var(--primary);
        }
        .deal-card .deal-price .old {
            color: var(--text-muted);
            text-decoration: line-through;
            font-size: 0.9rem;
        }

        /* Timer */
        .deal-timer {
            display: flex;
            justify-content: center;
            gap: 8px;
            margin-top: 10px;
        }
        .deal-timer .unit {
            background: var(--bg);
            padding: 4px 10px;
            border-radius: var(--radius-sm);
            font-weight: 700;
            font-size: 0.85rem;
            color: var(--text);
            min-width: 36px;
        }
        .deal-timer .unit span {
            display: block;
            font-weight: 400;
            font-size: 0.55rem;
            color: var(--text-muted);
            text-transform: uppercase;
            letter-spacing: 0.5px;
        }

        /* ============================================================
                   FEATURED
                   ============================================================ */
        .featured-grid {
            display: grid;
            grid-template-columns: repeat(auto-fit, minmax(200px, 1fr));
            gap: 24px;
        }

        /* ============================================================
                   TESTIMONIALS
                   ============================================================ */
        .testimonial-grid {
            display: grid;
            grid-template-columns: repeat(auto-fit, minmax(220px, 1fr));
            gap: 24px;
        }
        .testimonial-card {
            background: var(--bg-card);
            border-radius: var(--radius);
            padding: 28px 24px;
            border: 1px solid var(--border);
            transition: var(--transition);
        }
        .testimonial-card:hover {
            transform: translateY(-4px);
            box-shadow: var(--shadow);
            border-color: rgba(233, 69, 96, 0.15);
        }
        .testimonial-card .stars {
            color: #f9b74b;
            font-size: 0.9rem;
            margin-bottom: 8px;
            letter-spacing: 2px;
        }
        .testimonial-card p {
            font-style: italic;
            color: var(--text-secondary);
            font-size: 0.95rem;
            line-height: 1.6;
        }
        .testimonial-card .author {
            font-weight: 600;
            margin-top: 12px;
            display: flex;
            align-items: center;
            gap: 10px;
        }
        .testimonial-card .author .avatar {
            width: 36px;
            height: 36px;
            border-radius: 50%;
            background: var(--primary);
            color: #fff;
            display: flex;
            align-items: center;
            justify-content: center;
            font-weight: 700;
            font-size: 0.85rem;
        }

        /* ============================================================
                   NEWSLETTER
                   ============================================================ */
        .newsletter-section {
            background: linear-gradient(145deg, #0f0f1f, #1a1a2e);
            color: #fff;
            border-radius: var(--radius);
            padding: 60px 40px;
            text-align: center;
            position: relative;
            overflow: hidden;
            isolation: isolate;
        }
        .newsletter-section::before {
            content: '';
            position: absolute;
            inset: 0;
            background: radial-gradient(ellipse at 30% 50%, rgba(233, 69, 96, 0.15), transparent 60%);
            z-index: 0;
        }
        .newsletter-section .container {
            position: relative;
            z-index: 1;
        }
        .newsletter-section h3 {
            font-size: 2.2rem;
            font-weight: 800;
            letter-spacing: -0.5px;
        }
        .newsletter-section h3 i {
            color: var(--primary);
        }
        .newsletter-section p {
            opacity: 0.75;
            margin: 8px 0 28px;
            max-width: 460px;
            margin-left: auto;
            margin-right: auto;
        }
        .newsletter-section form {
            display: flex;
            flex-wrap: wrap;
            justify-content: center;
            gap: 12px;
            max-width: 520px;
            margin: 0 auto;
        }
        .newsletter-section input {
            flex: 1 1 220px;
            padding: 14px 22px;
            border-radius: var(--radius-full);
            border: 2px solid rgba(255, 255, 255, 0.12);
            background: rgba(255, 255, 255, 0.06);
            color: #fff;
            font-size: 1rem;
            outline: none;
            transition: var(--transition);
            backdrop-filter: blur(4px);
        }
        .newsletter-section input::placeholder {
            color: rgba(255, 255, 255, 0.4);
        }
        .newsletter-section input:focus {
            border-color: var(--primary);
            background: rgba(255, 255, 255, 0.10);
        }
        .newsletter-section button {
            padding: 14px 36px;
            border-radius: var(--radius-full);
            background: var(--primary);
            color: #fff;
            font-weight: 700;
            font-size: 1rem;
            transition: var(--transition);
            border: 2px solid var(--primary);
        }
        .newsletter-section button:hover {
            background: var(--primary-dark);
            border-color: var(--primary-dark);
            transform: scale(1.02);
            box-shadow: 0 8px 28px var(--primary-glow);
        }

        /* ============================================================
                   BRAND STORY / FEATURES
                   ============================================================ */
        .features-grid {
            display: grid;
            grid-template-columns: repeat(auto-fit, minmax(180px, 1fr));
            gap: 24px;
            margin-top: 16px;
        }
        .feature-item {
            text-align: center;
            padding: 20px;
        }
        .feature-item .icon {
            width: 56px;
            height: 56px;
            border-radius: 50%;
            background: rgba(233, 69, 96, 0.08);
            display: flex;
            align-items: center;
            justify-content: center;
            margin: 0 auto 12px;
            font-size: 1.4rem;
            color: var(--primary);
            transition: var(--transition);
        }
        .feature-item:hover .icon {
            background: var(--primary);
            color: #fff;
            transform: scale(1.08) rotate(-4deg);
        }
        .feature-item h5 {
            font-weight: 600;
            font-size: 1rem;
        }
        .feature-item p {
            color: var(--text-muted);
            font-size: 0.85rem;
            margin-top: 2px;
        }

        /* ============================================================
                   FOOTER
                   ============================================================ */
        footer {
            background: #fff;
            border-top: 1px solid var(--border);
            padding: 48px 0 32px;
            margin-top: 20px;
        }
        footer .footer-grid {
            display: grid;
            grid-template-columns: 2fr 1fr 1fr 1fr;
            gap: 40px;
            margin-bottom: 32px;
        }
        footer .brand-footer {
            font-weight: 800;
            font-size: 1.4rem;
            color: var(--primary);
            display: flex;
            align-items: center;
            gap: 8px;
        }
        footer .brand-footer span {
            color: var(--text);
            font-weight: 300;
        }
        footer .footer-about p {
            color: var(--text-secondary);
            font-size: 0.9rem;
            max-width: 280px;
            margin-top: 8px;
            line-height: 1.7;
        }
        footer h5 {
            font-weight: 700;
            font-size: 0.9rem;
            text-transform: uppercase;
            letter-spacing: 0.5px;
            color: var(--text);
            margin-bottom: 12px;
        }
        footer ul li {
            margin-bottom: 6px;
        }
        footer ul a {
            color: var(--text-secondary);
            font-size: 0.9rem;
            transition: var(--transition);
        }
        footer ul a:hover {
            color: var(--primary);
        }
        footer .footer-bottom {
            border-top: 1px solid var(--border);
            padding-top: 24px;
            display: flex;
            justify-content: space-between;
            align-items: center;
            flex-wrap: wrap;
            gap: 12px;
        }
        footer .footer-bottom p {
            color: var(--text-muted);
            font-size: 0.85rem;
        }
        footer .social-links {
            display: flex;
            gap: 10px;
        }
        footer .social-links a {
            width: 40px;
            height: 40px;
            border-radius: 50%;
            background: var(--bg);
            display: flex;
            align-items: center;
            justify-content: center;
            color: var(--text-secondary);
            transition: var(--transition);
            font-size: 1rem;
        }
        footer .social-links a:hover {
            background: var(--primary);
            color: #fff;
            transform: translateY(-3px);
        }

        /* ============================================================
                   BREADCRUMB / TOAST (dummy interactive)
                   ============================================================ */
        .toast {
            position: fixed;
            bottom: 30px;
            right: 30px;
            background: var(--text);
            color: #fff;
            padding: 16px 28px;
            border-radius: var(--radius);
            box-shadow: var(--shadow-hover);
            transform: translateY(120px);
            opacity: 0;
            transition: var(--transition);
            z-index: 9999;
            display: flex;
            align-items: center;
            gap: 12px;
            font-weight: 500;
        }
        .toast.show {
            transform: translateY(0);
            opacity: 1;
        }
        .toast i {
            color: var(--primary);
            font-size: 1.3rem;
        }

        /* ============================================================
                   RESPONSIVE
                   ============================================================ */
        @media (max-width: 1024px) {
            .hero .container {
                grid-template-columns: 1fr;
                text-align: center;
            }
            .hero-content p {
                margin-left: auto;
                margin-right: auto;
            }
            .hero-buttons {
                justify-content: center;
            }
            .hero-visual .hero-grid {
                max-width: 340px;
                margin: 0 auto;
            }
            .hero-badge {
                display: none;
            }
            footer .footer-grid {
                grid-template-columns: 1fr 1fr;
            }
        }

        @media (max-width: 768px) {
            .nav-desktop {
                display: none;
            }
            .menu-toggle {
                display: flex;
            }
            .header-inner {
                padding: 12px 0;
            }
            .brand {
                font-size: 1.3rem;
            }
            .hero {
                padding: 60px 0 50px;
            }
            .hero-content h1 {
                font-size: 2.4rem;
            }
            .hero-content p {
                font-size: 1rem;
            }
            .btn {
                padding: 12px 26px;
                font-size: 0.9rem;
            }
            section {
                padding: 48px 0;
            }
            .section-header h2 {
                font-size: 2rem;
            }
            .products-grid {
                grid-template-columns: repeat(auto-fill, minmax(180px, 1fr));
                gap: 20px;
            }
            .categories-grid {
                grid-template-columns: repeat(auto-fit, minmax(120px, 1fr));
            }
            .deals-grid {
                grid-template-columns: repeat(auto-fit, minmax(160px, 1fr));
            }
            .newsletter-section {
                padding: 40px 24px;
            }
            .newsletter-section h3 {
                font-size: 1.6rem;
            }
            footer .footer-grid {
                grid-template-columns: 1fr;
                gap: 24px;
            }
            footer .footer-bottom {
                flex-direction: column;
                text-align: center;
            }
            .testimonial-grid {
                grid-template-columns: 1fr 1fr;
            }
            .featured-grid {
                grid-template-columns: repeat(auto-fit, minmax(150px, 1fr));
            }
        }

        @media (max-width: 480px) {
            .hero-content h1 {
                font-size: 1.8rem;
            }
            .hero {
                padding: 40px 0 36px;
            }
            .products-grid {
                grid-template-columns: 1fr 1fr;
                gap: 14px;
            }
            .product-card .product-info {
                padding: 12px 14px 14px;
            }
            .product-card .product-info .product-title {
                font-size: 0.85rem;
            }
            .product-card .product-info .product-price .current {
                font-size: 1rem;
            }
            .product-card .product-actions {
                opacity: 1;
                transform: translateY(0);
                bottom: 8px;
                right: 8px;
            }
            .product-card .product-actions button {
                width: 34px;
                height: 34px;
                font-size: 0.8rem;
            }
            .categories-grid {
                grid-template-columns: repeat(2, 1fr);
            }
            .deals-grid {
                grid-template-columns: 1fr 1fr;
            }
            .testimonial-grid {
                grid-template-columns: 1fr;
            }
            .newsletter-section input {
                flex: 1 1 100%;
            }
            .newsletter-section button {
                width: 100%;
            }
            .toast {
                bottom: 16px;
                right: 16px;
                left: 16px;
                padding: 14px 20px;
                font-size: 0.9rem;
            }
            .hero-badge {
                display: none;
            }
            .hero-visual .hero-grid {
                max-width: 260px;
            }
            .hero-visual .hero-grid img:first-child {
                grid-row: span 1;
            }
            .hero-visual .hero-grid {
                grid-template-columns: 1fr 1fr;
            }
            .hero-visual .hero-grid img {
                aspect-ratio: 1/1;
            }
        }

        /* ============================================================
                   UTILITY
                   ============================================================ */
        .bg-soft {
            background: #fafafa;
        }
        .text-center {
            text-align: center;
        }
        .mt-8 {
            margin-top: 8px;
        }
        .mt-12 {
            margin-top: 12px;
        }
        .mt-16 {
            margin-top: 16px;
        }
        .gap-8 {
            gap: 8px;
        }
        .flex-center {
            display: flex;
            align-items: center;
            justify-content: center;
        }
        .fw-700 {
            font-weight: 700;
        }
        .text-muted {
            color: var(--text-muted);
        }
        .text-sm {
            font-size: 0.85rem;
        }
    </style>
</head>
<body>

    <!-- ============================================================
    TOAST NOTIFICATION
    ============================================================ -->
    <div class="toast" id="toast">
        <i class="fas fa-check-circle"></i>
        <span>Added to cart!</span>
    </div>

    <!-- ============================================================
    HEADER
    ============================================================ -->
    <header id="header">
        <div class="container header-inner">
            <a href="#" class="brand">
                <i class="fas fa-store"></i>
                NEXU<span>SHOP</span>
            </a>

            <!-- Desktop Navigation -->
            <nav class="nav-desktop">
                <ul>
                    <li><a href="#" class="active">Home</a></li>
                    <li><a href="#categories">Categories</a></li>
                    <li><a href="#products">Products</a></li>
                    <li><a href="#deals">Deals</a></li>
                    <li><a href="#featured">Featured</a></li>
                </ul>
            </nav>

            <!-- Actions -->
            <div class="actions">
                <button class="icon-btn" aria-label="User account">
                    <i class="far fa-user"></i>
                </button>
                <button class="icon-btn" aria-label="Wishlist">
                    <i class="far fa-heart"></i>
                </button>
                <button class="icon-btn cart-btn" id="cartBtn" aria-label="Shopping cart">
                    <i class="fas fa-shopping-bag"></i>
                    <span class="cart-badge" id="cartBadge">3</span>
                </button>
                <button class="menu-toggle" id="menuToggle" aria-label="Toggle menu">
                    <i class="fas fa-bars"></i>
                </button>
            </div>

            <!-- Mobile Navigation -->
            <nav class="nav-mobile" id="mobileNav">
                <a href="#" class="active">Home</a>
                <a href="#categories">Categories</a>
                <a href="#products">Products</a>
                <a href="#deals">Deals</a>
                <a href="#featured">Featured</a>
                <a href="#testimonials">Reviews</a>
            </nav>
        </div>
    </header>

    <!-- ============================================================
    HERO
    ============================================================ -->
    <section class="hero">
        <div class="container">
            <div class="hero-content">
                <div class="tag" style="display:inline-block;background:rgba(233,69,96,0.15);color:#ff6b81;font-weight:600;font-size:0.75rem;text-transform:uppercase;letter-spacing:1.5px;padding:4px 16px;border-radius:9999px;margin-bottom:16px;">
                    <i class="fas fa-bolt" style="margin-right:6px;"></i> New Collection 2026
                </div>
                <h1>
                    Elevate Your<br />
                    <span class="highlight">Everyday Style</span>
                </h1>
                <p>
                    Discover curated fashion, cutting-edge electronics, and lifestyle essentials —
                    all designed to inspire your daily routine.
                </p>
                <div class="hero-buttons">
                    <a href="#products" class="btn btn-primary">
                        <i class="fas fa-arrow-right"></i> Shop Now
                    </a>
                    <a href="#deals" class="btn btn-outline">
                        <i class="fas fa-tag"></i> View Deals
                    </a>
                </div>
            </div>
            <div class="hero-visual">
                <div class="hero-grid">
                    <img src="https://images.unsplash.com/photo-1521335629791-ce4aec67dd47?w=400&h=500&fit=crop" alt="Fashion" />
                    <img src="https://images.unsplash.com/photo-1517336714731-489689fd1ca8?w=400&h=400&fit=crop" alt="Tech" />
                    <img src="https://images.unsplash.com/photo-1505691938895-1758d7feb511?w=400&h=400&fit=crop" alt="Home" />
                </div>
            </div>
        </div>
        <!-- Floating badge -->
        <div class="hero-badge">
            <i class="fas fa-shipping-fast"></i>
            <div>
                <strong>Free Shipping</strong>
                <span>On orders over $50</span>
            </div>
        </div>
    </section>

    <!-- ============================================================
    CATEGORIES
    ============================================================ -->
    <section id="categories">
        <div class="container">
            <div class="section-header">
                <span class="tag"><i class="fas fa-th-large"></i> Browse</span>
                <h2>Shop by <span class="highlight">Category</span></h2>
                <p>Explore curated collections across lifestyle needs</p>
            </div>
            <div class="categories-grid">
                <div class="category-card">
                    <div class="icon-wrap"><i class="fas fa-tshirt"></i></div>
                    <h4>Fashion</h4>
                    <span class="count">124 items</span>
                </div>
                <div class="category-card">
                    <div class="icon-wrap"><i class="fas fa-laptop"></i></div>
                    <h4>Electronics</h4>
                    <span class="count">87 items</span>
                </div>
                <div class="category-card">
                    <div class="icon-wrap"><i class="fas fa-couch"></i></div>
                    <h4>Home &amp; Living</h4>
                    <span class="count">63 items</span>
                </div>
                <div class="category-card">
                    <div class="icon-wrap"><i class="fas fa-running"></i></div>
                    <h4>Sports</h4>
                    <span class="count">41 items</span>
                </div>
                <div class="category-card">
                    <div class="icon-wrap"><i class="fas fa-book"></i></div>
                    <h4>Books</h4>
                    <span class="count">29 items</span>
                </div>
                <div class="category-card">
                    <div class="icon-wrap"><i class="fas fa-paw"></i></div>
                    <h4>Pets</h4>
                    <span class="count">18 items</span>
                </div>
            </div>
        </div>
    </section>

    <!-- ============================================================
    PRODUCTS
    ============================================================ -->
    <section id="products" class="bg-soft">
        <div class="container">
            <div class="section-header">
                <span class="tag"><i class="fas fa-fire"></i> Trending</span>
                <h2>Popular <span class="highlight">Products</span></h2>
                <p>Handpicked favorites loved by our community</p>
            </div>
            <div class="products-grid" id="productGrid">
                <!-- Product 1 -->
                <div class="product-card" data-id="1">
                    <div class="product-image">
                        <img src="https://images.unsplash.com/photo-1511707171634-5f897ff02aa9?w=400&h=400&fit=crop" alt="Smart Watch" />
                        <span class="product-badge">Sale</span>
                        <div class="product-actions">
                            <button class="add-to-cart" title="Add to cart"><i class="fas fa-bag-shopping"></i></button>
                            <button title="Wishlist"><i class="far fa-heart"></i></button>
                            <button title="Quick view"><i class="far fa-eye"></i></button>
                        </div>
                    </div>
                    <div class="product-info">
                        <div class="product-title">Smart Watch Pro</div>
                        <div class="product-category">Electronics</div>
                        <div class="product-price">
                            <span class="current">$199</span>
                            <span class="old">$249</span>
                            <span class="discount">-20%</span>
                        </div>
                        <div class="rating">
                            <i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star-half-alt"></i>
                            <span>(128)</span>
                        </div>
                    </div>
                </div>

                <!-- Product 2 -->
                <div class="product-card" data-id="2">
                    <div class="product-image">
                        <img src="https://images.unsplash.com/photo-1518444027025-5e3c1a1f1c8b?w=400&h=400&fit=crop" alt="Headphones" />
                        <span class="product-badge">Sale</span>
                        <div class="product-actions">
                            <button class="add-to-cart" title="Add to cart"><i class="fas fa-bag-shopping"></i></button>
                            <button title="Wishlist"><i class="far fa-heart"></i></button>
                            <button title="Quick view"><i class="far fa-eye"></i></button>
                        </div>
                    </div>
                    <div class="product-info">
                        <div class="product-title">Wireless Headphones</div>
                        <div class="product-category">Audio</div>
                        <div class="product-price">
                            <span class="current">$149</span>
                            <span class="old">$199</span>
                            <span class="discount">-25%</span>
                        </div>
                        <div class="rating">
                            <i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i>
                            <span>(203)</span>
                        </div>
                    </div>
                </div>

                <!-- Product 3 -->
                <div class="product-card" data-id="3">
                    <div class="product-image">
                        <img src="https://images.unsplash.com/photo-1526170375885-4d8ecf77b99f?w=400&h=400&fit=crop" alt="Backpack" />
                        <div class="product-actions">
                            <button class="add-to-cart" title="Add to cart"><i class="fas fa-bag-shopping"></i></button>
                            <button title="Wishlist"><i class="far fa-heart"></i></button>
                            <button title="Quick view"><i class="far fa-eye"></i></button>
                        </div>
                    </div>
                    <div class="product-info">
                        <div class="product-title">Designer Backpack</div>
                        <div class="product-category">Accessories</div>
                        <div class="product-price">
                            <span class="current">$89</span>
                            <span class="old">$120</span>
                            <span class="discount">-26%</span>
                        </div>
                        <div class="rating">
                            <i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i>
                            <span>(95)</span>
                        </div>
                    </div>
                </div>

                <!-- Product 4 -->
                <div class="product-card" data-id="4">
                    <div class="product-image">
                        <img src="https://images.unsplash.com/photo-1505740420928-5e560c06d30e?w=400&h=400&fit=crop" alt="Premium Headphones" />
                        <span class="product-badge">New</span>
                        <div class="product-actions">
                            <button class="add-to-cart" title="Add to cart"><i class="fas fa-bag-shopping"></i></button>
                            <button title="Wishlist"><i class="far fa-heart"></i></button>
                            <button title="Quick view"><i class="far fa-eye"></i></button>
                        </div>
                    </div>
                    <div class="product-info">
                        <div class="product-title">Premium Headphones</div>
                        <div class="product-category">Audio</div>
                        <div class="product-price">
                            <span class="current">$249</span>
                            <span class="old">$329</span>
                            <span class="discount">-24%</span>
                        </div>
                        <div class="rating">
                            <i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star-half-alt"></i>
                            <span>(87)</span>
                        </div>
                    </div>
                </div>

                <!-- Product 5 -->
                <div class="product-card" data-id="5">
                    <div class="product-image">
                        <img src="https://images.unsplash.com/photo-1523275335684-37898b6baf30?w=400&h=400&fit=crop" alt="Minimalist Watch" />
                        <div class="product-actions">
                            <button class="add-to-cart" title="Add to cart"><i class="fas fa-bag-shopping"></i></button>
                            <button title="Wishlist"><i class="far fa-heart"></i></button>
                            <button title="Quick view"><i class="far fa-eye"></i></button>
                        </div>
                    </div>
                    <div class="product-info">
                        <div class="product-title">Minimalist Watch</div>
                        <div class="product-category">Accessories</div>
                        <div class="product-price">
                            <span class="current">$129</span>
                            <span class="old">$179</span>
                            <span class="discount">-28%</span>
                        </div>
                        <div class="rating">
                            <i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i>
                            <span>(64)</span>
                        </div>
                    </div>
                </div>

                <!-- Product 6 -->
                <div class="product-card" data-id="6">
                    <div class="product-image">
                        <img src="https://images.unsplash.com/photo-1542291026-7eec264c27ff?w=400&h=400&fit=crop" alt="Sport Sneakers" />
                        <span class="product-badge">Sale</span>
                        <div class="product-actions">
                            <button class="add-to-cart" title="Add to cart"><i class="fas fa-bag-shopping"></i></button>
                            <button title="Wishlist"><i class="far fa-heart"></i></button>
                            <button title="Quick view"><i class="far fa-eye"></i></button>
                        </div>
                    </div>
                    <div class="product-info">
                        <div class="product-title">Sport Sneakers</div>
                        <div class="product-category">Footwear</div>
                        <div class="product-price">
                            <span class="current">$99</span>
                            <span class="old">$139</span>
                            <span class="discount">-29%</span>
                        </div>
                        <div class="rating">
                            <i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i>
                            <span>(156)</span>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <!-- ============================================================
    DEALS
    ============================================================ -->
    <section id="deals">
        <div class="container">
            <div class="section-header">
                <span class="tag"><i class="fas fa-bolt"></i> Limited Time</span>
                <h2>🔥 Hot <span class="highlight">Deals</span></h2>
                <p>Grab these offers before they're gone</p>
            </div>
            <div class="deals-grid">
                <div class="deal-card">
                    <span class="deal-badge">-40%</span>
                    <img src="https://images.unsplash.com/photo-1483985988355-763728e1935b?w=400&h=400&fit=crop" alt="Summer Collection" />
                    <h4>Summer Collection</h4>
                    <div class="deal-price">
                        <span class="current">$59</span>
                        <span class="old">$99</span>
                    </div>
                    <div class="deal-timer">
                        <div class="unit">12 <span>hrs</span></div>
                        <div class="unit">48 <span>min</span></div>
                        <div class="unit">22 <span>sec</span></div>
                    </div>
                </div>
                <div class="deal-card">
                    <span class="deal-badge">-25%</span>
                    <img src="https://images.unsplash.com/photo-1505740420928-5e560c06d30e?w=400&h=400&fit=crop" alt="Noise Cancelling" />
                    <h4>Noise Cancelling</h4>
                    <div class="deal-price">
                        <span class="current">$179</span>
                        <span class="old">$239</span>
                    </div>
                    <div class="deal-timer">
                        <div class="unit">08 <span>hrs</span></div>
                        <div class="unit">32 <span>min</span></div>
                        <div class="unit">15 <span>sec</span></div>
                    </div>
                </div>
                <div class="deal-card">
                    <span class="deal-badge">-30%</span>
                    <img src="https://images.unsplash.com/photo-1523275335684-37898b6baf30?w=400&h=400&fit=crop" alt="Elegant Watch" />
                    <h4>Elegant Watch</h4>
                    <div class="deal-price">
                        <span class="current">$89</span>
                        <span class="old">$129</span>
                    </div>
                    <div class="deal-timer">
                        <div class="unit">18 <span>hrs</span></div>
                        <div class="unit">12 <span>min</span></div>
                        <div class="unit">04 <span>sec</span></div>
                    </div>
                </div>
                <div class="deal-card">
                    <span class="deal-badge">-50%</span>
                    <img src="https://images.unsplash.com/photo-1526170375885-4d8ecf77b99f?w=400&h=400&fit=crop" alt="Urban Backpack" />
                    <h4>Urban Backpack</h4>
                    <div class="deal-price">
                        <span class="current">$49</span>
                        <span class="old">$99</span>
                    </div>
                    <div class="deal-timer">
                        <div class="unit">06 <span>hrs</span></div>
                        <div class="unit">55 <span>min</span></div>
                        <div class="unit">30 <span>sec</span></div>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <!-- ============================================================
    FEATURED
    ============================================================ -->
    <section id="featured" class="bg-soft">
        <div class="container">
            <div class="section-header">
                <span class="tag"><i class="fas fa-star"></i> Editor's Pick</span>
                <h2>✨ Featured <span class="highlight">Picks</span></h2>
                <p>Curated by our style editors for you</p>
            </div>
            <div class="featured-grid">
                <div class="product-card">
                    <div class="product-image">
                        <img src="https://images.unsplash.com/photo-1521335629791-ce4aec67dd47?w=400&h=400&fit=crop" alt="Leather Jacket" />
                        <div class="product-actions">
                            <button class="add-to-cart"><i class="fas fa-bag-shopping"></i></button>
                            <button><i class="far fa-heart"></i></button>
                        </div>
                    </div>
                    <div class="product-info">
                        <div class="product-title">Leather Jacket</div>
                        <div class="product-price"><span class="current">$189</span></div>
                    </div>
                </div>
                <div class="product-card">
                    <div class="product-image">
                        <img src="https://images.unsplash.com/photo-1517336714731-489689fd1ca8?w=400&h=400&fit=crop" alt="Ultrabook Pro" />
                        <div class="product-actions">
                            <button class="add-to-cart"><i class="fas fa-bag-shopping"></i></button>
                            <button><i class="far fa-heart"></i></button>
                        </div>
                    </div>
                    <div class="product-info">
                        <div class="product-title">Ultrabook Pro</div>
                        <div class="product-price"><span class="current">$1,299</span></div>
                    </div>
                </div>
                <div class="product-card">
                    <div class="product-image">
                        <img src="https://images.unsplash.com/photo-1505691938895-1758d7feb511?w=400&h=400&fit=crop" alt="Designer Lamp" />
                        <div class="product-actions">
                            <button class="add-to-cart"><i class="fas fa-bag-shopping"></i></button>
                            <button><i class="far fa-heart"></i></button>
                        </div>
                    </div>
                    <div class="product-info">
                        <div class="product-title">Designer Lamp</div>
                        <div class="product-price"><span class="current">$79</span></div>
                    </div>
                </div>
                <div class="product-card">
                    <div class="product-image">
                        <img src="https://images.unsplash.com/photo-1517649763962-0c623066013b?w=400&h=400&fit=crop" alt="Sunglasses" />
                        <div class="product-actions">
                            <button class="add-to-cart"><i class="fas fa-bag-shopping"></i></button>
                            <button><i class="far fa-heart"></i></button>
                        </div>
                    </div>
                    <div class="product-info">
                        <div class="product-title">Polarized Sunglasses</div>
                        <div class="product-price"><span class="current">$59</span></div>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <!-- ============================================================
    TESTIMONIALS
    ============================================================ -->
    <section id="testimonials">
        <div class="container">
            <div class="section-header">
                <span class="tag"><i class="fas fa-comment"></i> Reviews</span>
                <h2>💬 What Our <span class="highlight">Customers</span> Say</h2>
                <p>Real feedback from real shoppers</p>
            </div>
            <div class="testimonial-grid">
                <div class="testimonial-card">
                    <div class="stars"><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i></div>
                    <p>“Amazing quality and fast shipping. The smart watch exceeded my expectations!”</p>
                    <div class="author"><span class="avatar">AK</span> Alex K.</div>
                </div>
                <div class="testimonial-card">
                    <div class="stars"><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star-half-alt"></i></div>
                    <p>“The backpack is even better than expected. Highly recommend to everyone.”</p>
                    <div class="author"><span class="avatar">JL</span> Jamie L.</div>
                </div>
                <div class="testimonial-card">
                    <div class="stars"><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i></div>
                    <p>“Great customer service and the deals are unbeatable. Will shop again!”</p>
                    <div class="author"><span class="avatar">TR</span> Taylor R.</div>
                </div>
                <div class="testimonial-card">
                    <div class="stars"><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i></div>
                    <p>“My new headphones are a game-changer. Excellent sound and comfort.”</p>
                    <div class="author"><span class="avatar">MS</span> Morgan S.</div>
                </div>
            </div>
        </div>
    </section>

    <!-- ============================================================
    NEWSLETTER
    ============================================================ -->
    <section>
        <div class="container">
            <div class="newsletter-section">
                <div class="container">
                    <h3><i class="fas fa-envelope-open-text"></i> Stay in the Loop</h3>
                    <p>Subscribe for exclusive offers, new drops, and style inspiration — delivered fresh.</p>
                    <form id="newsletterForm">
                        <input type="email" placeholder="Your email address" required id="newsletterInput" />
                        <button type="submit"><i class="fas fa-paper-plane"></i> Subscribe</button>
                    </form>
                    <p style="margin-top:16px;font-size:0.8rem;opacity:0.5;">No spam, unsubscribe anytime.</p>
                </div>
            </div>
        </div>
    </section>

    <!-- ============================================================
    BRAND FEATURES
    ============================================================ -->
    <section class="bg-soft" style="padding:48px 0;">
        <div class="container">
            <div class="features-grid">
                <div class="feature-item">
                    <div class="icon"><i class="fas fa-truck-fast"></i></div>
                    <h5>Free Shipping</h5>
                    <p>On orders over $50</p>
                </div>
                <div class="feature-item">
                    <div class="icon"><i class="fas fa-shield-check"></i></div>
                    <h5>Secure Checkout</h5>
                    <p>Encrypted payments</p>
                </div>
                <div class="feature-item">
                    <div class="icon"><i class="fas fa-rotate-left"></i></div>
                    <h5>30-Day Returns</h5>
                    <p>Hassle-free returns</p>
                </div>
                <div class="feature-item">
                    <div class="icon"><i class="fas fa-headset"></i></div>
                    <h5>24/7 Support</h5>
                    <p>We're here to help</p>
                </div>
            </div>
        </div>
    </section>

    <!-- ============================================================
    FOOTER
    ============================================================ -->
    <footer>
        <div class="container">
            <div class="footer-grid">
                <div class="footer-about">
                    <div class="brand-footer">
                        <i class="fas fa-store"></i> NEXU<span>SHOP</span>
                    </div>
                    <p>Your one-stop destination for fashion, electronics, and lifestyle essentials. Designed to inspire.</p>
                </div>
                <div>
                    <h5>Shop</h5>
                    <ul>
                        <li><a href="#">New Arrivals</a></li>
                        <li><a href="#">Best Sellers</a></li>
                        <li><a href="#">Sale</a></li>
                        <li><a href="#">Gift Cards</a></li>
                    </ul>
                </div>
                <div>
                    <h5>Support</h5>
                    <ul>
                        <li><a href="#">Help Center</a></li>
                        <li><a href="#">Returns</a></li>
                        <li><a href="#">Shipping</a></li>
                        <li><a href="#">Contact</a></li>
                    </ul>
                </div>
                <div>
                    <h5>Company</h5>
                    <ul>
                        <li><a href="#">About Us</a></li>
                        <li><a href="#">Careers</a></li>
                        <li><a href="#">Blog</a></li>
                        <li><a href="#">Press</a></li>
                    </ul>
                </div>
            </div>
            <div class="footer-bottom">
                <p>&copy; 2026 UBook_Vpay · All Rights Reserved</p>
                <div class="social-links">
                    <a href="#" aria-label="Facebook"><i class="fab fa-facebook-f"></i></a>
                    <a href="#" aria-label="Twitter"><i class="fab fa-twitter"></i></a>
                    <a href="#" aria-label="Instagram"><i class="fab fa-instagram"></i></a>
                    <a href="#" aria-label="YouTube"><i class="fab fa-youtube"></i></a>
                </div>
            </div>
        </div>
    </footer>

    <!-- ============================================================
    JAVASCRIPT
    ============================================================ -->
    <script>
        (function() {
            'use strict';

            // ---- Mobile menu toggle ----
            const menuToggle = document.getElementById('menuToggle');
            const mobileNav = document.getElementById('mobileNav');
            menuToggle.addEventListener('click', function() {
                mobileNav.classList.toggle('open');
                const icon = this.querySelector('i');
                if (mobileNav.classList.contains('open')) {
                    icon.className = 'fas fa-times';
                } else {
                    icon.className = 'fas fa-bars';
                }
            });

            // Close mobile nav on link click
            mobileNav.querySelectorAll('a').forEach(function(link) {
                link.addEventListener('click', function() {
                    mobileNav.classList.remove('open');
                    menuToggle.querySelector('i').className = 'fas fa-bars';
                });
            });

            // ---- Header scroll effect ----
            const header = document.getElementById('header');
            window.addEventListener('scroll', function() {
                if (window.scrollY > 20) {
                    header.classList.add('scrolled');
                } else {
                    header.classList.remove('scrolled');
                }
            });

            // ---- Toast notification ----
            const toast = document.getElementById('toast');
            let toastTimeout = null;

            function showToast(message) {
                toast.querySelector('span').textContent = message || 'Added to cart!';
                toast.classList.add('show');
                clearTimeout(toastTimeout);
                toastTimeout = setTimeout(function() {
                    toast.classList.remove('show');
                }, 2400);
            }

            // ---- Add to cart ----
            const cartBadge = document.getElementById('cartBadge');
            let cartCount = parseInt(cartBadge.textContent) || 3;

            document.querySelectorAll('.add-to-cart').forEach(function(btn) {
                btn.addEventListener('click', function(e) {
                    e.stopPropagation();
                    cartCount += 1;
                    cartBadge.textContent = cartCount;
                    // animate badge
                    cartBadge.style.transform = 'scale(1.4)';
                    setTimeout(function() {
                        cartBadge.style.transform = 'scale(1)';
                    }, 200);
                    showToast('Added to cart!');
                });
            });

            // ---- Cart button click (demo) ----
            document.getElementById('cartBtn').addEventListener('click', function() {
                showToast('Cart: ' + cartCount + ' items');
            });

            // ---- Newsletter ----
            const newsletterForm = document.getElementById('newsletterForm');
            const newsletterInput = document.getElementById('newsletterInput');
            newsletterForm.addEventListener('submit', function(e) {
                e.preventDefault();
                const email = newsletterInput.value.trim();
                if (email) {
                    showToast('Subscribed! 🎉');
                    newsletterInput.value = '';
                } else {
                    showToast('Please enter an email.');
                }
            });

            // ---- Product quick view (dummy) ----
            document.querySelectorAll('.product-actions button:last-child').forEach(function(btn) {
                btn.addEventListener('click', function(e) {
                    e.stopPropagation();
                    const card = this.closest('.product-card');
                    const title = card.querySelector('.product-title')?.textContent || 'Product';
                    showToast('Quick view: ' + title);
                });
            });

            // ---- Wishlist (dummy) ----
            document.querySelectorAll('.product-actions button:nth-child(2)').forEach(function(btn) {
                btn.addEventListener('click', function(e) {
                    e.stopPropagation();
                    const icon = this.querySelector('i');
                    if (icon.classList.contains('far')) {
                        icon.className = 'fas fa-heart';
                        icon.style.color = '#e94560';
                        showToast('Added to wishlist ❤️');
                    } else {
                        icon.className = 'far fa-heart';
                        icon.style.color = '';
                        showToast('Removed from wishlist');
                    }
                });
            });

            // ---- Category cards click (demo) ----
            document.querySelectorAll('.category-card').forEach(function(card) {
                card.addEventListener('click', function() {
                    const name = this.querySelector('h4')?.textContent || 'Category';
                    showToast('Browsing: ' + name);
                });
            });

            // ---- Smooth scroll for nav links ----
            document.querySelectorAll('a[href^="#"]').forEach(function(anchor) {
                anchor.addEventListener('click', function(e) {
                    const targetId = this.getAttribute('href');
                    if (targetId === '#') return;
                    const target = document.querySelector(targetId);
                    if (target) {
                        e.preventDefault();
                        const offset = 80;
                        const top = target.getBoundingClientRect().top + window.scrollY - offset;
                        window.scrollTo({ top: top, behavior: 'smooth' });
                    }
                });
            });

            // ---- Deals timer animation (demo: update seconds) ----
            function updateDealTimers() {
                document.querySelectorAll('.deal-timer').forEach(function(timer) {
                    const units = timer.querySelectorAll('.unit');
                    if (units.length >= 3) {
                        let sec = parseInt(units[2].textContent) || 0;
                        sec = (sec + 1) % 60;
                        units[2].innerHTML = String(sec).padStart(2, '0') + ' <span>sec</span>';
                        if (sec === 0) {
                            let min = parseInt(units[1].textContent) || 0;
                            min = (min + 1) % 60;
                            units[1].innerHTML = String(min).padStart(2, '0') + ' <span>min</span>';
                            if (min === 0) {
                                let hrs = parseInt(units[0].textContent) || 0;
                                hrs = (hrs + 1) % 24;
                                units[0].innerHTML = String(hrs).padStart(2, '0') + ' <span>hrs</span>';
                            }
                        }
                    }
                });
            }
            setInterval(updateDealTimers, 1000);

            // ---- Hero badge animation (already CSS) ----

            console.log('UBook_Vpay · Modern Lifestyle Store loaded ✨');

        })();
    </script>

</body>
</html>
