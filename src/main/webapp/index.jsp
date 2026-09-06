<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>ShopVibe · Your Lifestyle Store</title>
  <link href="https://fonts.googleapis.com/css2?family=Inter:wght@400;600;700&display=swap" rel="stylesheet">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.0/css/all.min.css">

  <style>
    /* RESET */
    * { margin:0; padding:0; box-sizing:border-box; }
    body { font-family:'Inter', sans-serif; background:#f4f5f7; color:#222; line-height:1.6; }

    a { text-decoration:none; color:inherit; }
    img { max-width:100%; display:block; }

    /* HEADER */
    header {
      background:#fff;
      border-bottom:1px solid #ddd;
      position:sticky; top:0; z-index:100;
    }
    .header-inner {
      max-width:1200px; margin:auto;
      display:flex; justify-content:space-between; align-items:center;
      padding:12px 20px;
    }
    .brand { font-weight:700; font-size:1.5rem; color:#e94560; display:flex; align-items:center; gap:8px; }
    nav ul { display:flex; list-style:none; gap:20px; }
    nav a { font-weight:600; color:#555; padding:6px 12px; border-radius:6px; transition:.3s; }
    nav a:hover { background:#e94560; color:#fff; }

    .actions { display:flex; gap:12px; align-items:center; }
    .icon-btn { border:none; background:none; font-size:1.2rem; cursor:pointer; color:#444; position:relative; }
    .cart-badge { position:absolute; top:-6px; right:-6px; background:#e94560; color:#fff; font-size:.7rem; border-radius:50%; padding:2px 6px; }

    /* HERO */
    .hero {
      background:linear-gradient(135deg,#1a1a2e,#16213e);
      color:#fff; text-align:center; padding:80px 20px;
    }
    .hero h1 { font-size:2.8rem; font-weight:700; margin-bottom:16px; }
    .hero p { max-width:600px; margin:auto; opacity:.85; margin-bottom:24px; }
    .btn { display:inline-block; padding:12px 28px; border-radius:30px; font-weight:600; transition:.3s; }
    .btn-primary { background:#e94560; color:#fff; }
    .btn-primary:hover { background:#ff6b6b; }
    .btn-outline { border:2px solid #fff; color:#fff; }
    .btn-outline:hover { background:#fff; color:#16213e; }

    /* SECTIONS */
    section { padding:60px 20px; }
    .section-header { text-align:center; margin-bottom:36px; }
    .section-header h2 { font-size:2rem; font-weight:700; }
    .section-header p { color:#666; margin-top:6px; }

    /* GRID */
    .grid { display:grid; gap:24px; }
    .categories { grid-template-columns:repeat(auto-fit,minmax(140px,1fr)); }
    .products { grid-template-columns:repeat(auto-fit,minmax(250px,1fr)); }

    .card {
      background:#fff; border-radius:12px; padding:20px; text-align:center;
      box-shadow:0 4px 12px rgba(0,0,0,.05); transition:.3s;
    }
    .card:hover { transform:translateY(-6px); box-shadow:0 8px 20px rgba(0,0,0,.1); }
    .card h4 { margin-top:12px; font-weight:600; }

    .product-card img { border-radius:12px; margin-bottom:12px; }
    .price { font-weight:700; color:#e94560; }
    .old-price { text-decoration:line-through; color:#999; margin-left:8px; }

    /* FOOTER */
    footer {
      background:#fff; border-top:1px solid #ddd; padding:40px 20px; text-align:center; color:#666;
    }
    footer .social { display:flex; justify-content:center; gap:12px; margin-top:16px; }
    footer .social a { width:40px; height:40px; border-radius:50%; background:#f4f5f7; display:flex; align-items:center; justify-content:center; transition:.3s; }
    footer .social a:hover { background:#e94560; color:#fff; }
  </style>
</head>
<body>

  <!-- HEADER -->
  <header>
    <div class="header-inner">
      <a href="#" class="brand"><i class="fas fa-store"></i> ShopVibe</a>
      <nav>
        <ul>
          <li><a href="#">Home</a></li>
          <li><a href="#categories">Categories</a></li>
          <li><a href="#products">Products</a></li>
          <li><a href="#deals">Deals</a></li>
        </ul>
      </nav>
      <div class="actions">
        <button class="icon-btn"><i class="far fa-user"></i></button>
        <button class="icon-btn"><i class="far fa-heart"></i></button>
        <button class="icon-btn"><i class="fas fa-shopping-bag"></i><span class="cart-badge">0</span></button>
      </div>
    </div>
  </header>

  <!-- HERO -->
  <section class="hero">
    <h1>Discover Exclusive Deals</h1>
    <p>Shop the latest fashion, tech, and lifestyle products with unbeatable discounts.</p>
    <a href="#products" class="btn btn-primary">Shop Now</a>
    <a href="#deals" class="btn btn-outline">View Deals</a>
  </section>

  <!-- CATEGORIES -->
  <section id="categories">
    <div class="section-header">
      <h2>Shop by Category</h2>
      <p>Find products across curated collections</p>
    </div>
    <div class="grid categories">
      <div class="card"><i class="fas fa-tshirt fa-2x"></i><h4>Fashion</h4></div>
      <div class="card"><i class="fas fa-laptop fa-2x"></i><h4>Electronics</h4></div>
      <div class="card"><i class="fas fa-couch fa-2x"></i><h4>Home</h4></div>
      <div class="card"><i class="fas fa-basketball-ball fa-2x"></i><h4>Sports</h4></div>
    </div>
  </section>

  <!-- PRODUCTS -->
  <section id="products">
    <div class="section-header">
      <h2>Trending Products</h2>
      <p>Popular picks loved by our customers</p>
    </div>
    <div class="grid products">
      <div class="card product-card">
        <img src="https://via.placeholder.com/250x180" alt="Product">
        <h4>Smart Watch</h4>
        <p class="price">$199 <span class="old-price">$249</span></p>
      </div>
      <div class="card product-card">
        <img src="https://via.placeholder.com/250x180" alt="Product">
        <h4>Wireless Headphones</h4>
        <p class="price">$149 <span class="old-price">$199</span></p>
      </div>
      <div class="card product-card">
        <img src="https://via.placeholder.com/250x180" alt="Product">
        <h4>Designer Backpack</h4>
        <p class="price">$89 <span class="old-price">$120</span></p>
      </div>
    </div>
  </section>

  <!-- FOOTER -->
  <footer>
    <p>&copy; 2026 ShopVibe · All Rights Reserved</p>
    <div class="social">
      <a href="#"><i class="fab fa-facebook-f"></i></a>
      <a href="#"><i class="fab fa-twitter"></i></a>
      <a href="#"><i class="fab fa-instagram"></i></a>
    </div>
  </footer>

</body>
</html>
