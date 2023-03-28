<!-- ABOUT THE PROJECT -->
<h1 align="center">
  <br>
    <a href="#" target="_blank"><img src="TripPal.png" width="200"></a>
  <br>
  <p>TripPal</p>
</h1>

TripPal adalah Aplikasi iOS (Travel Dairy Digital) yang menyediakan berbagai informasi tempat-tempat baru mulai dari tempat rekreasi, restoran, cafe, mall, tempat olahraga sampai tempat untuk healing.

Klik hyperlink ini untuk melihat [Prototype Sketch](https://sketch.com/s/bec7193a-0455-44dd-a4eb-3b3406871c37)

### Preview
<p align="center">
  <a href="#" target="_blank"><img src="1.png" width="200"></a>
  <a href="#" target="_blank"><img src="2.gif" width="200"></a>
  <a href="#" target="_blank"><img src="3.png" width="200"></a>
</p>

<!-- ABOUT THE FILE & FOLDER STRUCTURE -->
## Folder & File Structure
Berikut struktur file dan folder pada TripPal:

    .
    ├── TripPals.swift          # Root Project: Konfigurasi ContentView
    ├── ContentView.swift       # Tampilan Home Page
    ├── Assets                  # Aset Logo & Gambar
    ├── DetailPageView.swift    # Tampilan Detail Page
    ├── Component               # Component: Berisikan Reusable Component (Card, Search Bar, dan Text Field)
    │   ├── CategoryCard.swift  # Berisikan Komponen Category Card (DetailPageView)
    │   ├── Slideshow.swift     # Berisikan Komponen Slideshow (DetailPageView)
    │   ├── searchBar.swift     # Berisikan Komponen SearchBar (ContentView)
    │   ├── scoringCard.swift   # Berisikan Komponen ScoringCard (ContentView)
    │   ├── locationCard.swift  # Berisikan Komponen LocationCard Static (ContentView)
    │   ├── Card.swift          # Berisikan Komponen MainCard Dynamic (ContentView)
    │   ├── Rating.swift        # Berisikan Komponen Rating (DetailPageView)
    │   ├── PhotoPicker.swift   # Berisikan Komponen Photo Picker (DetailPageView)
    │   └── TripBuddy.swift     # Berisikan Komponen TextField (DetailPageView)
    │
    └── Model                   # Berisikan Data Type Declaration & List Of Data
        ├── CategoryModel.swift # Berisikan Data Type & List of Data for Category Card (DetailPageView)
        └── MainCard.swift      # Berisikan Data Type & List of Data for Main Card (ContentView)

<!-- List of Features -->
## Features:

* Reusable Components
* Photo Picker with PhotosUI (Upload Images)
* Grid Layout (Horizontal)
* All Stacks (HStack, VStack, ZStack)
* All ScrollView (Horizontal & Vertical)
* Rating with Mask
* Slideshow with TabView
* Search Bar
* Basic Navigations with Navigation Link
* Declarative UI with @State & @Binding
* Importation Assets from Sketch for Image Assets

<!-- Used Tools -->
## Build With:

* [Swift](https://www.swift.org/documentation/)
* [SwiftUI](https://developer.apple.com/documentation/swiftui/)
* [PhotosUI](https://developer.apple.com/documentation/swiftui/)
* [Xcode](https://developer.apple.com/xcode/)
* [Sketch](https://sketch.com/s/bec7193a-0455-44dd-a4eb-3b3406871c37)

<!-- How to Install -->
## Installation
Untuk menggunakan repositori ini, ikutilah petunjuk penggunaan berikut dan pastikan git sudah terinstall pada komputer (semua perintah dilaksanakan pada `cmd.exe` atau `terminal`):

1. Lakukan download .zip atau `clone` repositori dengan cara:
```bash
git clone https://github.com/theresatiffanytan/TripPal.git
```

2. Jika sudah Download / Clone Project, silahkan buka Project di Xcode dengan Klik Open a Project or File.
3. Pastikan untuk memilih iPhone 14 pada Target Simulator (Kolom Device dibagian atas XCode). 
4. Build & Run

<!-- Contributors -->
## Contributors

Anggota Kelompok 22 (Nano Challenge 1) Apple Academy Indonesia Cohort 6 yang berkontribusi dalam pengerjaan proyek terdiri dari :
* [Theresa Tiffany](https://github.com/theresatiffanytan)
* [Deka Primatio](https://www.github.com/dekapd99)
* [Sebastian Gery](https://github.com/sebastiangery)

<!-- What Kind of License? -->
## License
MIT License: Copyright (c) 2022 
Tiffany Deka Gery

DISCLAIMER: ASSETS ARE USED FOR EDUCATION PURPOSE ONLY, NOT FOR COMMERCIAL PURPOSES

Assets Source: GOOGLE IMAGE (GOOGLE REVIEWS) & [SF SYMBOLS 4 ICON](https://developer.apple.com/sf-symbols/)

<p align="right">(<a href="#top">back to top</a>)</p>
