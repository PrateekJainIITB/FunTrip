#!/bin/bash

# Array of states
states=(
  "Andhra Pradesh"
  "Arunachal Pradesh"
  "Assam"
  "Bihar"
  "Chhattisgarh"
  "Goa"
  "Gujarat"
  "Haryana"
  "Himachal Pradesh"
  "Jharkhand"
  "Karnataka"
  "Kerala"
  "Madhya Pradesh"
  "Maharashtra"
  "Manipur"
  "Meghalaya"
  "Mizoram"
  "Nagaland"
  "Odisha"
  "Punjab"
  "Rajasthan"
  "Sikkim"
  "Tamil Nadu"
  "Telangana"
  "Tripura"
  "Uttar Pradesh"
  "Uttarakhand"
  "West Bengal"
)

# Create HTML files for states
for state in "${states[@]}"; do
  # Replace spaces with underscores to create valid filenames
  filename="${state// /-}.html"
  
  # Create HTML content
  cat <<EOF > "$filename"


<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>$state</title>

  <!-- 
    - favicon
  -->
<link rel="icon" href="/favicon.ico" type="image/x-icon">

  <!-- 
    - custom css link
  -->
  <link rel="stylesheet" href="./style.css">

  <!-- 
    - google font link
  -->
  <link rel="preconnect" href="https://fonts.googleapis.com">
  <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
  <link
    href="https://fonts.googleapis.com/css2?family=Abril+Fatface&family=Comforter+Brush&family=Heebo:wght@400;500;600;700&display=swap"
    rel="stylesheet">
<!-- Meta tags for SEO -->
  <meta name="description" content="FunTrip $state trip planner - Your go-to destination for joyful and memorable journeys. Explore our wide range of travel options and unleash joy in every adventure.">
  <meta name="keywords" content="$state travel, $state trip planner, destinations,$state blog, $state">
  <meta name="author" content="Prateek Jain">
  <meta name="robots" content="index, follow">
  <meta name="canonical" href="https://www.funtrip.in/destinations/$filename">
  <meta property="og:title" content="FunTrip - Unleashing Joy in Every Journey">
  <meta property="og:description" content="FunTrip is your go-to destination for joyful and memorable journeys. Explore our wide range of travel options and unleash joy in every adventure.">
  <meta property="og:url" content="https://www.funtrip.in//destinations/$filename">
  <meta property="og:type" content="website">
<!-- Include this line in the head section of your HTML document -->
<link rel="stylesheet" type="text/css" href="travel-styles.css">

</head>

<body id="top">

  <!-- 
    - #HEADER
  -->

  <header class="header" data-header>
    <div class="container">

      <a href="/index.html" class="navbar-link">
        <h1 class="logo">FunTrip</h1>
      </a>

      <button class="nav-toggle-btn" data-nav-toggle-btn aria-label="Toggle Menu">
        <ion-icon name="menu-outline" class="open"></ion-icon>
        <ion-icon name="close-outline" class="close"></ion-icon>
      </button>

      <nav class="navbar">

        <ul class="navbar-list">
            <li><a href="/index.html" class="navbar-link">Home</a></li>
            <li><a href="/trip-planner.html" class="navbar-link">Trip Planner</a></li>
            <li><a href="/destinations.html" class="navbar-link">Destinations</a></li>
            <li><a href="/blog.html" class="navbar-link">Blog</a></li>
            <li><a href="/about-us.html" class="navbar-link">About Us</a></li>
            <li><a href="/contact.html" class="navbar-link">Contact Us</a></li>
        </ul>

        <a href="/story.html" class="btn btn-secondary">Stories</a>

    </nav>

    </div>
  </header>


  <main>
  <article style="display: flex; flex-direction: column; align-items: center;">
      
      <!-- 
        - #DESTINATION
      -->

      <section class="section destination">
        <div class="container">

         
          <p class="section-subtitle">Destinations in $state</p>

          <h2 class="h2 section-title">Explore the Beauty of $state </h2>

          <ul class="destination-list">

            <li class="w-50">
              <a href="./Taj_Mahal_-_Sunset_Silhouette,_Uttar_Pradesh.html" class="destination-card">

                <figure class="card-banner">
                  <img src="./Taj Mahal - Sunset Silhouette, Uttar Pradesh.png" width="1140" height="1100" loading="lazy"
                    alt="Taj Mahal, Agra" class="img-cover">
                </figure>

                <div class="card-content">
                  <p class="card-subtitle">Taj Mahal</p>

                  <h3 class="h3 card-title">Agra</h3>
                </div>

              </a>
            </li>

            <li class="w-50">
              <a href="./Golden_Temple,_Punjab.html" class="destination-card">

                <figure class="card-banner">
                  <img src="./Golden Temple, Punjab.png" width="1140" height="1100" loading="lazy"
                    alt="Golden Temple, Punjab" class="img-cover">
                </figure>

                <div class="card-content">
                  <p class="card-subtitle">Golden Temple</p>

                  <h3 class="h3 card-title">Punjab</h3>
                </div>

              </a>
            </li>

            <li>
              <a href="./Neermahal,_Tripura.html" class="destination-card">

                <figure class="card-banner">
                  <img src="./Neermahal, Tripura.png" width="1110" height="480" loading="lazy"
                    alt="Neermahal, Tripura" class="img-cover">
                </figure>

                <div class="card-content">
                  <p class="card-subtitle">Neermahal</p>

                  <h3 class="h3 card-title">Tripura</h3>
                </div>

              </a>
            </li>

            <li>
              <a href="./VENGURLA_BEACH,_Maharashtra.html" class="destination-card">

                <figure class="card-banner">
                  <img src="./VENGURLA BEACH, Maharashtra.png" width="1110" height="480" loading="lazy"
                    alt="VENGURLA BEACH, Maharashtra" class="img-cover">
                </figure>

                <div class="card-content">
                  <p class="card-subtitle">VENGURLA BEACH</p>

                  <h3 class="h3 card-title">Maharashtra</h3>
                </div>

              </a>
            </li>

            <li>
              <a href="./Rishikesh,_Uttarakhand.html" class="destination-card">

                <figure class="card-banner">
                  <img src="./Rishikesh, Uttarakhand.png" width="1110" height="480" loading="lazy"
                    alt="Rishikesh, Uttarakhand" class="img-cover">
                </figure>

                <div class="card-content">
                  <p class="card-subtitle">Rishikesh</p>

                  <h3 class="h3 card-title">Uttarakhand</h3>
                </div>

              </a>
            </li>

          </ul>

        </div>
      </section>
  
    </article>
  </main>





  <!-- 
    - #FOOTER
  -->

  <footer class="footer" style="background-image: url('./assets/images/footer-bg.png')">
    <div class="container">

      <div class="footer-top">

        <ul class="footer-list">

          <li>
            <p class="footer-list-title">Top destination</p>
          </li>

          <li>
            <a href="/destinations/Taj_Mahal_-_Sunset_Silhouette,_Uttar_Pradesh.html" class="footer-link">Taj Mahal, Agra</a>
          </li>

          <li>
            <a href="/destinations/Rishikesh,_Uttarakhand.html" class="footer-link">Rishikesh, Uttarakhand</a>
          </li>

          <li>
            <a href="/destinations/Rameshwaram_Temple.html" class="footer-link">Rameshwaram, Tamil Nadu</a>
          </li>

          <li>
            <a href="/destinations/Gulmarg_Bowl,_Jammu_and_Kashmir.html" class="footer-link">Gulmarg Bowl, Jammu and Kashmir</a>
          </li>

          <li>
            <a href="/destinations/Auroville,_Puducherry.html" class="footer-link">Auroville, Puducherry</a>
          </li>

        </ul>

        <ul class="footer-list">

          <li>
            <p class="footer-list-title">Categories</p>
          </li>

          <li>
            <a href="#" class="footer-link">Travel</a>
          </li>

          <li>
            <a href="#" class="footer-link">Lifestyle</a>
          </li>

          <li>
            <a href="#" class="footer-link">Fashion</a>
          </li>

          <li>
            <a href="#" class="footer-link">Education</a>
          </li>

          <li>
            <a href="#" class="footer-link">Food & Drink</a>
          </li>

        </ul>

        <ul class="footer-list">

          <li>
            <p class="footer-list-title">Quick links</p>
          </li>

          <li>
            <a href="/about-us.html" class="footer-link">About</a>
          </li>

          <li>
            <a href="/contact.html" class="footer-link">Contact</a>
          </li>

          <li>
            <a href="/trip-planner.html" class="footer-link">Trip-planner</a>
          </li>

          <li>
            <a href="/blog.html" class="footer-link">Blogs</a>
          </li>

          
          <li>
            <a href="/Terms_and_Conditions.html" class="footer-link">Terms & Conditions</a>
          </li>


        </ul>

        <div class="footer-list">

          <p class="footer-list-title">Get a newsletter</p>

          <p class="newsletter-text">
            For the latest deals and tips, travel no further than your inbox
          </p>

          <form action="" class="newsletter-form">
            <input type="email" name="email" required placeholder="Email address" class="newsletter-input">

            <button type="submit" class="btn btn-primary">Subscribe</button>
          </form>

        </div>

      </div>

      <div class="footer-bottom">

        <a href="/index.html" class="logo">Fun Trip</a>

        <p>&copy; 2024 FunTrip.in. All rights reserved.</p>

        <ul class="social-list">

          <li>
            <a href="#" class="social-link">
              <ion-icon name="logo-facebook"></ion-icon>
            </a>
          </li>

          <li>
            <a href="#" class="social-link">
              <ion-icon name="logo-twitter"></ion-icon>
            </a>
          </li>

          <li>
            <a href="#" class="social-link">
              <ion-icon name="logo-instagram"></ion-icon>
            </a>
          </li>

          <li>
            <a href="#" class="social-link">
              <ion-icon name="logo-linkedin"></ion-icon>
            </a>
          </li>

          <li>
            <a href="#" class="social-link">
              <ion-icon name="logo-google"></ion-icon>
            </a>
          </li>

        </ul>

      </div>

    </div>
  </footer>






  <!-- 
    - #GO TO TOP
  -->

  <a href="#top" class="go-top" data-go-top aria-label="Go To Top">
    <ion-icon name="chevron-up-outline"></ion-icon>
  </a>





  <!-- 
    - custom js link
  -->
  <script src="/assets/js/script.js"></script>

  <!-- 
    - ionicon link
  -->
  <script type="module" src="https://unpkg.com/ionicons@5.5.2/dist/ionicons/ionicons.esm.js"></script>
  <script nomodule src="https://unpkg.com/ionicons@5.5.2/dist/ionicons/ionicons.js"></script>

</body>

</html>
EOF

  echo "Created: $filename"
done
