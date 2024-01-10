class Movie{

  static List<Movie> getMovies()=> [
    Movie(
  "Guardian: The Lonely and Great God (2016–2017)",
      "16 ",
      "TV-14",
      "120 min",
      "Comedy,Drama,Fantasy",
      "2 h",
      "December 2, 2016 (South Korea)",
      "South Korea",
      "Korean",
      "Goblin",
      [
        "utilities/Images/goblin.jpg",
        "utilities/Images/goblin2.jpg"
      ],
        "In his quest for a bride to break his immortal curse, Dokkaebi,"
            "a 939-year-old guardian of souls, meets a grim reaper and a sprigh"
            "tly student with a tragic past."
  ),
    Movie(
  "Crash Landing on You (2019–2020)",
      "23 ",
      "TV-14",
      '70 min',
      "Comedy,Romance",
      "1 h 10 min",
      "December 14, 2019 (United States)",
      "South Korea",
      "Korean",
      "Love's Emergency Landing",
      [
        "utilities/Images/crash landing.jpg",
            "utilities/Images/crash landing2.jpg"
      ],
      "The absolute top secret love story of a chaebol heiress who made an emergency landing in North"
          " Korea because of a paragliding accident and a North Korean special"
          " officer who falls in love with her and who is hiding and protecting "
          "her."
    ),

    Movie(
    "Itaewon Class (2020) ",
        "16 ",
        "TV-MA",
        "70 min",
        "Drama,Romance",
        "1 h 10 min",
        "January 31, 2020 (United States)",
        "South Korea",
        "Korean",
        "Tầng Lớp Itaewon",
      [
        "utilities/Images/iteawon classes.jpg",
            "utilities/Images/itaewon classes2.png"
      ],
      "An ex-con opens a street bar in Itaewon, while also seeking"
          " revenge on the family who was responsible for his father's death."
    ),

    Movie(
    "Hotel Del Luna (2019) ",
        "16 ",
        "TV",
        "80 min",
        "Action,Comedy,Drama",
        "1 h 20 min",
        "September 3, 2021 (United States)",
        "South Korea",
        "Korean",
        "Hotel Delluna",
      [
        "utilities/Images/hotel del luna.jpg",
            "utilities/Images/hotel del luna2.jpg"
      ],
      "When he's invited to manage a hotel for dead souls, an elite hotelier "
          "gets to know the establishment's ancient owner and her strange world."
    ),

    Movie(
    "Strong Girl Bong-soon (2017)",
        "16 ",
        "TV-14",
        "67 min",
        "Comedy,Crime,Drama",
        "1 h 7 min",
        "February 24, 2017 (United States)",
        "South Korea",
        "Korean",
        "Strong Woman Do Bong-soon",
        [
          "utilities/Images/strong girl.webp",
              "utilities/Images/strong girl2.jpg"
        ],
      "Do Bong-soon is a woman born with superhuman strength that comes from "
          "the long line of women possessing it. when Ahn Min Hyuk, the CEO of ainsoft, a gaming "
          "company witnesses her strength he hires her as his personal bodyguard."
    ),

    Movie(
    "What's Wrong with Secretary Kim (2018)",
        "25 ",
        "TV-G",
        "60 min",
        "Comedy,Mystery,Romance",
        "1 h",
        "June 6, 2018 (United States)",
        "South Korea",
      "Korean",
      "Why Secretary Kim",
      [
        "utilities/Images/secretary kim.jpg",
            "utilities/Images/secretary kim2.jpg"
      ],
      "A romance between perfect "
          "but narcissistic second generation heir and his capable assistant."
    )
  ];

  String title;
  String episodes;
  String certificate;
  String time;
  String genres;
  String runtime;
  String released;
  String country;
  String language;
  String otherName;
  List<String> image;
  String plot;

  Movie(
      this.title,
      this.episodes,
      this.certificate,
      this.time,
      this.genres,
      this.runtime,
      this.released,
      this.country,
      this.language,
      this.otherName,
      this.image,
      this.plot,
      );
}