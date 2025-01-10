#!/bin/bash

# Array of places
places=(
  "Atal Tunnel, Rohtang (Kullu), Himachal Pradesh"
  "Attari - Wagah Border, Amritsar, Punjab"
  "Auroville, Puducherry"
  "Badami Caves, Badami, Karnataka"
  "Batasia Loop, Darjeeling, West Bengal"
  "Bhitarkanika Mangrove Walk Odisha"
  "Castle of Beino (Kolodyne), Mizoram"
  "Chandu Beach, Thotlakonda, Visakhapatnam, Andhra Pradesh"
  "Chittorgarh Fort, Rajasthan"
  "Coimbatore - Avalanche, Tamil Nadu"
  "Creepers on Beach, Kadmat Island, Lakshadweep"
  "Ever Living Museum, Shillong, Meghalaya"
  "Fatehpur Sikri, Uttar Pradesh"
  "Gir Lion, Gujarat"
  "Golden Temple, Punjab"
  "Govardhan Kusum Sarovar, Uttar Pradesh"
  "Gulmarg Bowl, Jammu and Kashmir"
  "Hornbill Festival, Nagaland"
  "Hot Air Balloon, Rajasthan"
  "Jonha Falls, Jharkhand"
  "Key Monastery, Lahaul-Spiti, Himachal Pradesh"
  "Konark Dance Festival, Odisha"
  "Lalbagh Palace, Indore, Madhya Pradesh"
  "Lucknow Railway Station, Lucknow, Uttar Pradesh"
  "Madiya Tribal Dance, Chattisgarh"
  "Maharashtrian Thali, Maharashtra"
  "Mahatma Gandhi Museaum Rajkot Gujarat"
  "Neermahal, Tripura"
  "PARASAILING- Tarkali, Maharashtra"
  "PHEK, Nagaland"
  "Pahalgam Golf Course, Jammu and Kashmir"
  "Pattachitra Painting, Odisha"
  "Pinjore Garden, Panchkula, Haryana"
  "Ram Tirth Amritsar, Punjab"
  "Rameshwaram Temple"
  "Rameswaram, Tamil Nadu"
  "Ramoji Film City, Hyderabad, Telangana"
  "Rath Yatra, Odisha"
  "Rih Dil-Tiau, Mizoram"
  "Rishikesh, Uttarakhand"
  "Rock Garden, Chandigarh"
  "Root Bridge at Mawlynnong, Meghalaya"
  "Sagol Kangjei (Polo), Traditional Game, Manipur"
  "Sea Walker North Bay, Andmand & Nicobar Island"
  "Shad Suk Mynsiem-Khasi"
  "Snake Boat Race, Marine Drive, Kochi, Kerala"
  "Solomon’s Temple, Mizoram"
  "Star Fish, Agatti Island, Lakshadweep"
  "Sunset Gadisar Lake, Rajasthan"
  "Taj Mahal - Sunset Silhouette, Uttar Pradesh"
  "Tampara Lake Front, Odisha"
  "Theyyam Dance, Kerala"
  "Ullal Beach, Mangalore, Karnataka"
  "Umaid Bhawan, Jodhpur, Rajasthan"
  "VENGURLA BEACH, Maharashtra"
  "Van Vihar Tourist Complex, Khanvel, Dadar and Nagar Haveli"
  "Venkatappa Art Gallery, Bangalore, Karnataka"
  "Vrindavan Holi, Uttar Pradesh"
  "White Rann, Gujarat"
)

# Create HTML files
for place in "${places[@]}"; do
  # Replace spaces with underscores to create valid filenames
  filename="${place// /_}.html"
  
  # Create HTML content
  cat <<EOF > "$filename"

<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>$place</title>

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
  <meta name="description" content="FunTrip to $place  - Your go-to destination for joyful and memorable journeys. Explore our wide range of travel options and unleash joy in every adventure.">
  <meta name="keywords" content="travel to $place, $place trip planner, $place, $place trip, hotel near $place ,">
  <meta name="author" content="Prateek Jain">
  <meta name="robots" content="index, follow">
  <meta name="canonical" href="https://www.funtrip.in/destinations/$filename">
  <meta property="og:title" content="FunTrip - Unleashing Joy in Every Journey">
  <meta property="og:description" content="FunTrip is your go-to destination for joyful and memorable journeys.Enjoy a fun trip to $place with us. Explore our wide range of travel options and unleash joy in every adventure.">
  <meta property="og:url" content="https://www.funtrip.in/destinations/$filename">
  <meta property="og:type" content="website">
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
      <h1 style="text-align: center;">$place</h1>

  <img src="./$place.png" alt="$place Image" style="width:100%; max-width:800px; height:auto;">
 
  <p>Content for $place goes here...</p>
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
