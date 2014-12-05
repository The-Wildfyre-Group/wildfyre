
   # Exercise
   Category.where(id: 1, name: "Exercise", slug: "exercise").first_or_create!
   ToDo.where(id: 1, name: "Running", category_id: 1, slug: "running").first_or_create!
   ToDo.where(id: 2, name: "Stretching", category_id: 1, slug: "stretching").first_or_create!
   ToDo.where(id: 3, name: "Weight Lifting", category_id: 1, slug: "weight-lifting").first_or_create!
   ToDo.where(id: 4, name: "Basketball", category_id: 1, slug: "basketball").first_or_create!
   ToDo.where(id: 5, name: "Football", category_id: 1, slug: "football").first_or_create!
   ToDo.where(id: 6, name: "Swimming", category_id: 1, slug: "swimming").first_or_create!
   ToDo.where(id: 7, name: "Cycling", category_id: 1, slug: "cycling").first_or_create!
   ToDo.where(id: 8, name: "Calisthenics", category_id: 1, slug: "calisthenics").first_or_create!
   ToDo.where(id: 9, name: "Meditation", category_id: 1, slug: "meditation").first_or_create!
   ToDo.where(id: 10, name: "Plyometrics", category_id: 1, slug: "plyometrics").first_or_create!
   
   # Content
   Category.where(id: 2, name: "Content", slug: "content").first_or_create!
   ToDo.where(id: 11, name: "Add Basic Listing", category_id: 2, slug: "add-basic-listing").first_or_create!
   ToDo.where(id: 12, name: "Add Full Listing", category_id: 2, slug: "add-full-listing").first_or_create!
   ToDo.where(id: 13, name: "Add Deal or Package", category_id: 2, slug: "add-deal-or-package").first_or_create!
   ToDo.where(id: 14, name: "Add Award", category_id: 2, slug: "add-award").first_or_create!
   ToDo.where(id: 15, name: "Add Feature", category_id: 2, slug: "add-feature").first_or_create!
   ToDo.where(id: 16, name: "Add News", category_id: 2, slug: "add-news").first_or_create!
   ToDo.where(id: 17, name: "Add Workout", category_id: 2, slug: "add-workout").first_or_create!
   ToDo.where(id: 18, name: "Add Product", category_id: 2, slug: "add-product").first_or_create!
   ToDo.where(id: 19, name: "Collect Photo", category_id: 2, slug: "collect-photo").first_or_create!
   
   # Business Development
   Category.where(id: 3, name: "Business Development", slug: "business-development").first_or_create!
   ToDo.where(id: 20, name: "Create Email Campaign", category_id: 3, slug: "create-email-campaign").first_or_create!
   ToDo.where(id: 21, name: "Send Email Campaign", category_id: 3, slug: "send-email-campaign").first_or_create!
   ToDo.where(id: 22, name: "Personal Email", category_id: 3, slug: "personal-email").first_or_create!
   ToDo.where(id: 23, name: "LinkedIn Communication", category_id: 3, slug: "linkedin-communication").first_or_create!
   ToDo.where(id: 24, name: "Facebook Communication", category_id: 3, slug: "facebook-communication").first_or_create!
   ToDo.where(id: 25, name: "Add Business Contact", category_id: 3, slug: "add-business-contact").first_or_create!   
   
   # Site Development
   Category.where(id: 4, name: "Site Development", slug: "site-development").first_or_create!
   ToDo.where(id: 26, name: "Re-code", category_id: 4, slug: "recode").first_or_create!
   ToDo.where(id: 27, name: "Testing", category_id: 4, slug: "testing").first_or_create!
   ToDo.where(id: 28, name: "Debugging", category_id: 4, slug: "debugging").first_or_create!
   ToDo.where(id: 29, name: "Add Site Feature", category_id: 4, slug: "add-site-feature").first_or_create!
   ToDo.where(id: 30, name: "Remove Site Feature", category_id: 4, slug: "remove-site-feature").first_or_create!
   ToDo.where(id: 31, name: "Expand Site Feature", category_id: 4, slug: "expand-site-feature").first_or_create!
   ToDo.where(id: 32, name: "Caching", category_id: 4, slug: "caching").first_or_create!
   ToDo.where(id: 33, name: "Optimizing", category_id: 4, slug: "optimizing").first_or_create!
   ToDo.where(id: 34, name: "Add JS / JQuery / Ajax", category_id: 4, slug: "add-js-jq-ajax").first_or_create!
   ToDo.where(id: 35, name: "Create Heroku Application", category_id: 4, slug: "create-heroku-application").first_or_create!
   ToDo.where(id: 36, name: "Push to Heroku", category_id: 4, slug: "push-to-heroku").first_or_create!
   ToDo.where(id: 37, name: "Landing Page", category_id: 4, slug: "landing-page").first_or_create!
   
   # TRAVEL
   Category.where(id: 5, name: "Travel", slug: "travel").first_or_create!
   ToDo.where(id: 38, name: "Book Flight", category_id: 5, slug: "book-flight").first_or_create!
   ToDo.where(id: 39, name: "Flight", category_id: 5, slug: "flight").first_or_create!
   ToDo.where(id: 40, name: "Road Trip", category_id: 5, slug: "road-trip").first_or_create!
   
   # Becoming Better Developers
   Category.where(id: 6, name: "Development & Design", slug: "development-and-design").first_or_create!
   ToDo.where(id: 41, name: "Ruby & Ruby on Rails", category_id: 6, slug: "ruby-on-rails").first_or_create!
   ToDo.where(id: 42, name: "Javascript", category_id: 6, slug: "javascript").first_or_create!
   ToDo.where(id: 43, name: "Typing", category_id: 6, slug: "typing").first_or_create!
   ToDo.where(id: 44, name: "Git", category_id: 6, slug: "git").first_or_create!
   ToDo.where(id: 45, name: "SASS", category_id: 6, slug: "sass").first_or_create!
   ToDo.where(id: 46, name: "LESS", category_id: 6, slug: "less").first_or_create!
   ToDo.where(id: 47, name: "Regex", category_id: 6, slug: "regex").first_or_create!
   ToDo.where(id: 48, name: "JQuery & AJAX", category_id: 6, slug: "jquery-and-ajax").first_or_create!
   ToDo.where(id: 49, name: "Unix", category_id: 6, slug: "unix").first_or_create!
   ToDo.where(id: 50, name: "SQL", category_id: 6, slug: "sql").first_or_create!
   ToDo.where(id: 51, name: "Bootstrap", category_id: 6, slug: "bootstrap").first_or_create!
   
   # Leisure
   Category.where(id: 7, name: "Leisure", slug: "leisure").first_or_create!
   ToDo.where(id: 52, name: "Movie", category_id: 7, slug: "movie").first_or_create!
   ToDo.where(id: 53, name: "TV Show", category_id: 7, slug: "tv-show").first_or_create!
   ToDo.where(id: 54, name: "Date", category_id: 7, slug: "date").first_or_create!
   ToDo.where(id: 55, name: "Sporting Event", category_id: 7, slug: "sporting-event").first_or_create!
   ToDo.where(id: 56, name: "Sporting Game", category_id: 7, slug: "sporting-game").first_or_create!
   ToDo.where(id: 57, name: "Happy Hour", category_id: 7, slug: "happy-hour").first_or_create!
   ToDo.where(id: 58, name: "Drinks", category_id: 7, slug: "drinks").first_or_create!
   ToDo.where(id: 59, name: "Cookout", category_id: 7, slug: "cookout").first_or_create!
   ToDo.where(id: 60, name: "Phone Call", category_id: 7, slug: "phone-call").first_or_create!
   
   # Productivity
   Category.where(id: 8, name: "Productivity", slug: "productivity").first_or_create!
   ToDo.where(id: 61, name: "Schedule Next Day", category_id: 8, slug: "schedule-next-day").first_or_create!
   ToDo.where(id: 62, name: "Create To-do List", category_id: 8, slug: "create-to-do-list").first_or_create!
   ToDo.where(id: 63, name: "Consider Adjustment", category_id: 8, slug: "consider-adjustment").first_or_create!
   ToDo.where(id: 64, name: "2-2-1 Meeting", category_id: 8, slug: "2-2-1-meeting").first_or_create!
   ToDo.where(id: 65, name: "Morning Check-in", category_id: 8, slug: "morning-check-in").first_or_create!
   ToDo.where(id: 66, name: "Organize Google Docs", category_id: 8, slug: "organize-google-docs").first_or_create!
   ToDo.where(id: 67, name: "Organize Inbox", category_id: 8, slug: "organize-inbox").first_or_create!
   ToDo.where(id: 68, name: "Respond to Email", category_id: 8, slug: "respond-to-email").first_or_create!
   
   
   # Site Development
   Category.where(id: 9, name: "Best Practice", slug: "best-practice").first_or_create!
   ToDo.where(id: 69, name: "Improve Vocabulary", category_id: 9, slug: "improve-vocabulary").first_or_create!
   
   
   # Budget
   Category.where(id: 10, name: "Budget", slug: "budget").first_or_create!
   ToDo.where(id: 70, name: "Report Budget", category_id: 10, slug: "report-budget").first_or_create!
   ToDo.where(id: 71, name: "Check Bank Account Balance", category_id: 10, slug: "check-bank-account-balance").first_or_create!
   ToDo.where(id: 72, name: "Check Elance Balance", category_id: 10, slug: "check-elance-balance").first_or_create!
   ToDo.where(id: 73, name: "Pay Elance Balance", category_id: 10, slug: "pay-elance-balance").first_or_create!
   ToDo.where(id: 74, name: "Check Paypal", category_id: 10, slug: "check-paypal").first_or_create!
   ToDo.where(id: 75, name: "Check GoDaddy", category_id: 10, slug: "check-godaddy").first_or_create!
   ToDo.where(id: 76, name: "Buy or Renew Domain", category_id: 10, slug: "buy-or-renew-domain").first_or_create!
   ToDo.where(id: 77, name: "Monthly Budget", category_id: 10, slug: "monthly-budget").first_or_create!
   
   # Personal
   Category.where(id: 11, name: "Personal", slug: "personal").first_or_create!
   ToDo.where(id: 78, name: "Student Loan", category_id: 11, slug: "student-loan").first_or_create!
   ToDo.where(id: 79, name: "Phone Bill", category_id: 11, slug: "phone-bill").first_or_create!
   ToDo.where(id: 80, name: "Mortgage", category_id: 11, slug: "mortgage").first_or_create!
   ToDo.where(id: 81, name: "Dry Cleaning", category_id: 11, slug: "dry-cleaning").first_or_create!
   ToDo.where(id: 82, name: "Laundry", category_id: 11, slug: "laundry").first_or_create!
   ToDo.where(id: 83, name: "Groceries", category_id: 11, slug: "groceries").first_or_create!
   ToDo.where(id: 84, name: "File Taxes", category_id: 11, slug: "file-taxes").first_or_create!
   ToDo.where(id: 85, name: "Cleaning", category_id: 11, slug: "cleaning").first_or_create!
   ToDo.where(id: 86, name: "Cooking", category_id: 11, slug: "cooking").first_or_create!
   
   # Family
   Category.where(id: 12, name: "Family", slug: "family").first_or_create!
   ToDo.where(id: 87, name: "Birthday Reminder", category_id: 12, slug: "birthday-reminder").first_or_create!
   ToDo.where(id: 88, name: "Call Family Member", category_id: 12, slug: "call-family-member").first_or_create!
   
   
   
   # Websites
   
   # TRAVLRS
   Site.where(id: 1, name: "SpaTRAVLR", slug: "spatravlr", status: "In Progress", url: "http://www.spatravlr.com", git: "https://bitbucket.org/wildfyre/spatravlr", primary: true, renewal_date: "June 9 2015".to_date).first_or_create!
   Site.where(id: 2, name: "GolfTRAVLR", slug: "golftravlr", status: "Not Started", url: "http://www.golftravlr.com", git: "https://github.com/The-Wildfyre-Group/golftravlr", primary: true, renewal_date: "June 9 2015".to_date).first_or_create!
   Site.where(id: 3, name: "RetreatTRAVLR", slug: "retreattravlr", status: "In Progress", url: "http://www.retreattravlr.com", git: nil, primary: true, renewal_date: "June 9 2015".to_date).first_or_create!
   Site.where(id: 4, name: "WellnessTRAVLR", slug: "wellnesstravlr", status: "Not started", url: "http://www.wellnesstravlr.com", git: nil, primary: true, renewal_date: "June 9 2015".to_date).first_or_create!
   Site.where(id: 5, name: "CasinoTRAVLR", slug: "casinotravlr", status: "Landing Page", url: "http://www.casinotravlr.com", git: "https://github.com/The-Wildfyre-Group/casinotravlr", primary: true, renewal_date: "March 19 2015".to_date).first_or_create!
   Site.where(id: 6, name: "FoodTRAVLR", slug: "foodtravlr", status: "Landing Page", url: "http://www.foodtravlr.com", git: "https://github.com/The-Wildfyre-Group/foodtravlr", primary: true, renewal_date: "June 9 2015".to_date).first_or_create!
   Site.where(id: 7, name: "YogaTRAVLR", slug: "yogatravlr", status: "Landing Page", url: "http://www.yogatravlr.com", git: "https://github.com/The-Wildfyre-Group/yogatravlr", primary: true, renewal_date: "June 9 2015".to_date).first_or_create!
   Site.where(id: 8, name: "BeautyTRAVLR", slug: "beautytravlr", status: "Not Started", url: "http://www.beautytravlr.com", git: "https://github.com/The-Wildfyre-Group/beautytravlr", primary: true, renewal_date: "June 9 2015".to_date).first_or_create!
   Site.where(id: 9, name: "WineTRAVLR", slug: "winetravlr", status: "Not Started", url: "http://www.winetravlr.com", git: "https://github.com/The-Wildfyre-Group/winetravlr", primary: true, renewal_date: "August 6 2015".to_date).first_or_create!
   Site.where(id: 10, name: "CruiseTRAVLR", slug: "cruisetravlr", status: "Not Started", url: "http://www.cruisetravlr.com", git: "https://github.com/The-Wildfyre-Group/cruisetravlr", primary: true, renewal_date: "June 21 2015".to_date).first_or_create!
   Site.where(id: 11, name: "EcoTRAVLR", slug: "ecotravlr", status: "Not Started", url: "http://www.ecotravlr.com", git: nil, primary: true, renewal_date: "June 9 2015".to_date).first_or_create!
   Site.where(id: 12, name: "EnduranceTRAVLR", slug: "endurancetravlr", status: "Not Started", url: "http://www.endurancetravlr.com", git: nil, primary: true, renewal_date: "June 9 2015".to_date).first_or_create!
   Site.where(id: 13, name: "BusinessTRAVLR", slug: "businesstravlr", status: "Not Started", url: "http://www.businesstravlr.com", git: nil, primary: true).first_or_create!
   Site.where(id: 14, name: "CampTRAVLR", slug: "camptravlr", status: "Not Started", url: "http://www.camptravlr.com", git: "https://github.com/The-Wildfyre-Group/camptravlr", primary: true, renewal_date: "June 9 2015".to_date).first_or_create!
   Site.where(id: 15, name: "All-InclusiveTRAVLR", slug: "allinclusivetravlr", status: "Not Started", url: "http://www.all-inclusivetravlr.com", git: nil, primary: true, renewal_date: "June 9 2015".to_date).first_or_create!
   Site.where(id: 16, name: "MultiSportTRAVLR", slug: "multisporttravlr", status: "Not Started", url: "http://www.multisporttravlr.com", git: nil, primary: true, renewal_date: "June 9 2015".to_date).first_or_create!
   Site.where(id: 17, name: "MarathonTRAVLR", slug: "marathontravlr", status: "Not Started", url: "http://www.marathontravlr.com", git: nil, primary: true, renewal_date: "June 9 2015".to_date).first_or_create!
   Site.where(id: 18, name: "MedicalTRAVLR", slug: "medicaltravlr", status: "Not Started", url: "http://www.medicaltravlr.com", git: nil, primary: true, renewal_date: "June 9 2015".to_date).first_or_create!
   Site.where(id: 19, name: "MusicTRAVLR", slug: "musictravlr", status: "Not Started", url: "http://www.musictravlr.com", git: nil, primary: true, renewal_date: "June 9 2015".to_date).first_or_create!
   Site.where(id: 20, name: "BudgetTRAVLR", slug: "budgettravlr", status: "Not Started", url: "http://www.budgettravlr.com", git: nil, primary: true, renewal_date: "June 9 2015".to_date).first_or_create!
   Site.where(id: 21, name: "IslandTRAVLR", slug: "islandtravlr", status: "Not Started", url: "http://www.islandtravlr.com", git: nil, primary: true, renewal_date: "June 9 2015".to_date).first_or_create!
   Site.where(id: 22, name: "HealthTRAVLR", slug: "healthtravlr", status: "Not Started", url: "http://www.healthtravlr.com", git: nil, primary: true, renewal_date: "June 29 2015".to_date).first_or_create!
   Site.where(id: 23, name: "ResortTRAVLR", slug: "resorttravlr", status: "Not Started", url: "http://www.resorttravlr.com", git: nil, primary: true, renewal_date: "June 9 2015".to_date).first_or_create!
   Site.where(id: 24, name: "Green-TRAVLR", slug: "greentravlr", status: "Not Started", url: "http://www.green-travlr.com", git: nil, primary: true, renewal_date: "June 9 2015".to_date).first_or_create!
   Site.where(id: 25, name: "GayTRAVLR", slug: "gaytravlr", status: "Not Started", url: "http://www.gaytravlr.com", git: nil, primary: true, renewal_date: "Aug 3 2015".to_date).first_or_create!
   Site.where(id: 26, name: "PrideTRAVLR", slug: "pridetravlr", status: "Not Started", url: "http://www.pridetravlr.com", git: nil, primary: true, renewal_date: "June 9 2015".to_date).first_or_create!
   Site.where(id: 27, name: "OutdoorTRAVLR", slug: "outdoortravlr", status: "Not Started", url: "http://www.outdoortravlr.com", git: nil, primary: true, renewal_date: "June 9 2015".to_date).first_or_create!
   Site.where(id: 28, name: "FamilyTRAVLR", slug: "familytravlr", status: "Not Started", url: "http://www.familytravlr.com", git: nil, primary: true, renewal_date: "June 9 2015".to_date).first_or_create!
   Site.where(id: 29, name: "FestivalTRAVLR", slug: "festivaltravlr", status: "Not Started", url: "http://www.festivaltravlr.com", git: nil, primary: true, renewal_date: "June 9 2015".to_date).first_or_create!
   Site.where(id: 30, name: "SpiritualTRAVLR", slug: "spiritualtravlr", status: "Not Started", url: "http://www.spiritualtravlr.com", git: "https://github.com/The-Wildfyre-Group/spiritualtravlr", primary: true, renewal_date: "June 9 2015".to_date).first_or_create!
   Site.where(id: 31, name: "SoloTRAVLR", slug: "solotravlr", status: "Not Started", url: "http://www.solotravlr.com", git: nil, primary: true, renewal_date: "June 9 2015".to_date).first_or_create!
   Site.where(id: 32, name: "CasualTRAVLR", slug: "casualtravlr", status: "Not Started", url: "http://www.casualtravlr.com", git: nil, primary: true, renewal_date: "Aug 6 2015".to_date).first_or_create!
   Site.where(id: 33, name: "OneTRAVLR", slug: "onetravlr", status: "Not Started", url: "http://www.onetravlr.com", git: nil, primary: true, renewal_date: "June 27 2015".to_date).first_or_create!
   Site.where(id: 34, name: "MedTRAVLR", slug: "medtravlr", status: "Not Started", url: "http://www.medtravlr.com", git: nil, primary: true, renewal_date: "June 27 2015".to_date).first_or_create!
   Site.where(id: 35, name: "AsianTRAVLR", slug: "asiantravlr", status: "Backorder", url: "http://www.asiantravlr.com", git: nil, primary: true, renewal_date: nil).first_or_create!
   Site.where(id: 36, name: "WeddingTRAVLR", slug: "weddingtravlr", status: "Not Started", url: "http://www.weddingtravlr.com", git: "https://github.com/The-Wildfyre-Group/weddingtravlr", primary: true, renewal_date: "June 9 2015".to_date).first_or_create!
   Site.where(id: 37, name: "HoneymoonTRAVLR", slug: "honeymoontravlr", status: "Not Purchased", url: "http://www.honeymoontravlr.com", git: "https://github.com/The-Wildfyre-Group/honeymoontravlr", primary: true, renewal_date: nil).first_or_create!
   Site.where(id: 38, name: "TRAVLR Concierge", slug: "travlrconcierge", status: "Not Started", url: "http://www.travlrconcierge.com", git: nil, primary: true, renewal_date: "July 11 2015".to_date).first_or_create!  #38
   
   
   # Minority
   Site.where(id: 39, name: "BlackCFA", slug: "blackcfa", status: "In Progress", url: "http://www.blackcfa.com", git: "https://github.com/The-Wildfyre-Group/bcfa", primary: true, renewal_date: "September 9 2015".to_date).first_or_create!
   Site.where(id: 40, name: "BlackCPA", slug: "blackcpa", status: "In Progress", url: "http://www.blackcpa.com", git: "https://github.com/The-Wildfyre-Group/bcpa", primary: true, renewal_date: "September 9 2015".to_date).first_or_create!
   Site.where(id: 41, name: "BlackLawyer", slug: "blacklawyer", status: "Not Started", url: "http://www.blacklawyer.com", git: "https://github.com/The-Wildfyre-Group/blawyer", primary: true, renewal_date: "September 9 2015".to_date).first_or_create!
   Site.where(id: 42, name: "BlackDesigner", slug: "blackdesigner", status: "Not Started", url: "http://www.blackdesigner.co", git: nil, primary: true, renewal_date: "September 9 2015".to_date).first_or_create!
   Site.where(id: 43, name: "BlackDeveloper", slug: "blackdeveloper", status: "Not Started", url: "http://www.blackdeveloper.co", git: nil, primary: true, renewal_date: "September 24 2015".to_date).first_or_create!
   Site.where(id: 44, name: "BlackDoctor", slug: "blackdoctor", status: "Not Started", url: "http://www.blackdoctor.co", git: nil, primary: true, renewal_date: "September 9 2015".to_date).first_or_create!
   Site.where(id: 45, name: "Black Graduate.com", slug: "blackgraduate", status: "Not Started", url: "http://www.blackgraduate.com", git: nil, primary: true, renewal_date: "May 31 2015".to_date).first_or_create!
   Site.where(id: 46, name: "Black Graduate.org", slug: "blackgraduate-org", status: "Not Started", url: "http://www.blackgraduate.org", git: nil, primary: true, renewal_date: "May 31 2015".to_date).first_or_create!
   Site.where(id: 47, name: "Black Hollywood", slug: "blackhollywood", status: "Not Started", url: "http://www.blackhollywood.co", git: nil, primary: true, renewal_date: "September 24 2015".to_date).first_or_create!
   Site.where(id: 48, name: "Black Investor", slug: "blackinvestor", status: "Not Started", url: "http://www.blackinvestor.co", git: nil, primary: true, renewal_date: "September 9 2015".to_date).first_or_create!
   Site.where(id: 49, name: "BlackPHD", slug: "blackphd", status: "Not Started", url: "http://www.blackphd.co", git: nil, primary: true, renewal_date: "September 9 2015".to_date).first_or_create!
   Site.where(id: 50, name: "BlackScientist", slug: "blackscientist", status: "Not Started", url: "http://www.blackscientist.co", git: nil, primary: true, renewal_date: "September 24 2015".to_date).first_or_create!
   Site.where(id: 51, name: "BlackWealth", slug: "blackwealth", status: "Not Started", url: "http://www.blackwealth.co", git: nil, primary: true, renewal_date: "September 24 2015".to_date).first_or_create!
   Site.where(id: 52, name: "BlackMBA", slug: "blackmba", status: "Not Started", url: "http://www.blackmba.co", git: nil, primary: true, renewal_date: "September 24 2015".to_date).first_or_create!
   Site.where(id: 53, name: "BlackNeighborhoods", slug: "blackneighborhoods", status: "Not Started", url: "http://www.blackneighborhoods.com", git: nil, primary: true, renewal_date: "September 25 2015".to_date).first_or_create!
   Site.where(id: 54, name: "BlackEngineer", slug: "blackengineer", status: "Not Started", url: "http://www.blackengineer.co", git: nil, primary: true, renewal_date: "September 9 2015".to_date).first_or_create!
   Site.where(id: 55, name: "BlackAthlete", slug: "blackathlete", status: "Not Started", url: "http://www.blackathlete.co", git: nil, primary: true, renewal_date: "September 9 2015".to_date).first_or_create!
   Site.where(id: 56, name: "Blacks.in", slug: "blacksin", status: "Not Started", url: "http://www.blacks.in", git: nil, primary: true, renewal_date: "September 25 2015".to_date).first_or_create!
   Site.where(id: 57, name: "Blacks Family", slug: "blackfamily", status: "Not Started", url: "http://www.blackfamily.co", git: nil, primary: true, renewal_date: "September 24 2015".to_date).first_or_create!
   Site.where(id: 58, name: "Blacks Entrepreneur", slug: "blackentrepreneur", status: "Not Started", url: "http://www.blackentrepreneur.co", git: nil, primary: true, renewal_date: "September 24 2015".to_date).first_or_create!
   Site.where(id: 59, name: "Blacks Executive", slug: "blackexecutive", status: "Not Started", url: "http://www.blackexecutive.com", git: nil, primary: true, renewal_date: "September 9 2015".to_date).first_or_create! #21
   
   # Football
   Site.where(id: 60, name: "Cornerback Training", slug: "cornerback-training", status: "Active", url: "http://www.cornerbacktraining.com", git: "https://bitbucket.org/miler350/cornerback-training", primary: true, renewal_date: "April 16 2015".to_date).first_or_create!
   Site.where(id: 61, name: "Defensive Back Training", slug: "defensive-back-training", status: "Not Started", url: "http://www.defensiveback-training.com", git: nil, primary: true, renewal_date: "June 14 2015".to_date).first_or_create!
   Site.where(id: 62, name: "DLineman Training", slug: "dlinemantraining", status: "Not Started", url: "http://www.dlinemantraining.com", git: nil, primary: true, renewal_date: "June 14 2015".to_date).first_or_create!
   Site.where(id: 63, name: "DLineman-Training", slug: "dlineman-training", status: "Alternate URL", url: "http://www.dlineman-training.com", git: nil, primary: false, renewal_date: "June 14 2015".to_date).first_or_create!
   Site.where(id: 64, name: "OLineman-Training", slug: "olinemantraining", status: "Alternate URL", url: "http://www.olineman-training.com", git: nil, primary: false, renewal_date: "June 14 2015".to_date).first_or_create!
   Site.where(id: 65, name: "OLineman Training", slug: "olineman-training", status: "Not Started", url: "http://www.olinemantraining.com", git: nil, primary: true, renewal_date: "June 14 2015".to_date).first_or_create!
   Site.where(id: 66, name: "Running Back Training", slug: "runningback-training", status: "Not Started", url: "http://www.runningbacktraining.com", git: nil, primary: true, renewal_date: "June 14 2015".to_date).first_or_create!
   Site.where(id: 67, name: "Running Back-Training", slug: "running-back-training", status: "Alternate URL", url: "http://www.runningback-training.com", git: nil, primary: false, renewal_date: "June 14 2015".to_date).first_or_create!
   Site.where(id: 68, name: "Receiver Training", slug: "receiver-training", status: "Not Started", url: "http://www.receiver-training.com", git: nil, primary: true, renewal_date: "June 14 2015".to_date).first_or_create!
   Site.where(id: 69, name: "Inside The Combine", slug: "inside-the-combine", status: "Not Started", url: "http://www.insidethecombine.com", git: nil, primary: true, renewal_date: "April 15 2015".to_date).first_or_create!
   Site.where(id: 70, name: "Kicker Training", slug: "kickertraining", status: "Not Started", url: "http://www.kickertraining.com", git: nil, primary: true, renewal_date: "June 14 2015".to_date).first_or_create!
   Site.where(id: 71, name: "Kicker-Training", slug: "kicker-training", status: "Alternate URL", url: "http://www.kicker-training.com", git: nil, primary: false, renewal_date: "June 14 16 2015".to_date).first_or_create!
   Site.where(id: 72, name: "Tightend Training", slug: "tightendtraining", status: "Not Started", url: "http://www.tightendtraining.com", git: nil, primary: true, renewal_date: "June 14 2015".to_date).first_or_create!
   Site.where(id: 73, name: "Tightend-Training", slug: "tightend-training", status: "Alternate URL", url: "http://www.tightend-training.com", git: nil, primary: false, renewal_date: "June 14 2015".to_date).first_or_create!
   Site.where(id: 74, name: "Linebacker Training", slug: "linebacker-training", status: "Not Started", url: "http://www.linebacker-training.com", git: nil, primary: true, renewal_date: "June 14 2015".to_date).first_or_create!
   Site.where(id: 75, name: "Train For Football", slug: "train-for-football", status: "Not Started", url: "http://www.trainforfootball.com", git: nil, primary: true, renewal_date: "June 14 2015".to_date).first_or_create! #16
   
   
   # Wildfyre
   Site.where(id: 76, name: "Wildfyre Group", slug: "wildfyre-group", status: "Active", url: "http://www.wildfyregroup.com", git: "https://github.com/The-Wildfyre-Group/wildfyre", primary: true, renewal_date: "May 10 2015".to_date).first_or_create!
   Site.where(id: 77, name: "Wildfyre Capital", slug: "wildfyre-capital", status: "Not Started", url: "http://www.wildfyrecapital.com", git: nil, primary: true, renewal_date: "September 25 2015".to_date).first_or_create!
   Site.where(id: 78, name: "Wildfyre Media", slug: "wildfyre-media", status: "Not Started", url: "http://www.wildfyremedia.com", git: nil, primary: true, renewal_date: "May 10 2015".to_date).first_or_create!
   Site.where(id: 79, name: "Wildfyre Ventures", slug: "wildfyre-ventures", status: "Not Started", url: "http://www.wildfyreventures.com", git: nil, primary: true, renewal_date: "May 10 2015".to_date).first_or_create!
   Site.where(id: 80, name: "Wildfyre Inc", slug: "wildfyre-inc", status: "Not Started", url: "http://www.wildfyreinc.com", git: nil, primary: true, renewal_date: "May 10 2015".to_date).first_or_create!
   Site.where(id: 81, name: "Wildfyre Partners", slug: "wildfyre-partners", status: "Not Started", url: "http://www.wildfyrepartners.com", git: nil, primary: true, renewal_date: "May 10 2015".to_date).first_or_create!
   Site.where(id: 82, name: "Wildfyre.in", slug: "wildfyre-in", status: "Not Started", url: "http://www.wildfyre.in", git: nil, primary: true, renewal_date: "September 25 2015".to_date).first_or_create! #7
   
   # Education
   Site.where(id: 83, name: "CFA Casts", slug: "cfacasts", status: "Not Started", url: "http://www.cfacasts.com", git: nil, primary: true, renewal_date: "September 25 2015".to_date).first_or_create!
   Site.where(id: 84, name: "Exam Casts", slug: "examcasts", status: "Not Started", url: "http://www.examcasts.com", git: nil, primary: true, renewal_date: "September 25 2015".to_date).first_or_create!
   Site.where(id: 85, name: "CFA Hero", slug: "cfahero", status: "Not Started", url: "http://www.cfahero.com", git: nil, primary: true, renewal_date: "September 25 2015".to_date).first_or_create! #3
   
   # Design & UX
   Site.where(id: 86, name: "UX Alerts", slug: "ux-alerts", status:  "Idle", url: "http://www.uxalerts.com", git: "https://github.com/The-Wildfyre-Group/uxalerts", primary: true,renewal_date: "July 1 2015".to_date).first_or_create!
   Site.where(id: 87, name: "UX Review", slug: "ux-review", status: "Not Started", url: "http://www.uxreview.co", git: nil, primary: true, renewal_date: "July 8 2015".to_date).first_or_create!
   Site.where(id: 88, name: "Frontend Everything", slug: "frontend-everything", status: "Not Started", url: "http://www.frontendeverything.com", git: nil, primary: true, renewal_date: "July 1 2015".to_date).first_or_create! #3
    
   # Spa
   Site.where(id: 89, name: "SpaLocal", slug: "spalocal", status: "Not Started", url: "http://www.spalocal.com", git: nil, primary: true, renewal_date: "June 30 2015".to_date).first_or_create!
   Site.where(id: 90, name: "Spa Events", slug: "spaevents", status: "Not Started", url: "http://www.spaevents.co", git: nil, primary: true, renewal_date: "July 13 2015".to_date).first_or_create!
   Site.where(id: 91, name: "Spa IQ", slug: "spaiq", status: "Not Started", url: "http://www.spaiq.com", git: nil, primary: true, renewal_date: "June 19 2015".to_date).first_or_create!
   Site.where(id: 92, name: "Spalytics", slug: "spalytics", status: "Not Started", url: "http://www.spalytics.com", git: nil, primary: true, renewal_date: "March 19 2015".to_date).first_or_create!
   Site.where(id: 93, name: "Spa Directors", slug: "spadirectors", status: "In Progress", url: "http://www.spadirectors.com", git: nil, primary: true, renewal_date: "July 13 2015".to_date).first_or_create! #5
   
   # Retail
   Site.where(id: 94, name: "Ten Twelve", slug: "ten-twelve", status: "Not Purchased", git: "https://github.com/The-Wildfyre-Group/tentwelve", primary: true, renewal_date: nil).first_or_create! #1
   
   # Sports, Fitness, Health & Wellness
  
   Site.where(id: 95, name: "Sports Agent Insider", slug: "sports-agent-insider", status: "Not Started", url: "http://www.sportsagentinsider.com", git: nil, primary: true, renewal_date: "April 15 2015".to_date).first_or_create!
   Site.where(id: 96, name: "Brokered Health", slug: "brokered-health", status: "Not Started", url: "http://www.brokeredhealth.com", git: nil, primary: true, renewal_date: "April 17 2015".to_date).first_or_create!
   Site.where(id: 97, name: "Play Safe Sports.co", slug: "playsafesports", status: "Not Started", url: "http://www.playsafesports.co", git: nil, primary: true, renewal_date: "October 16 2015".to_date).first_or_create!
   Site.where(id: 98, name: "Play Safe Sports.tv", slug: "playsafesports-tv", status: "Not Started", url: "http://www.playsafesports.tv", git: nil, primary: true, renewal_date: "October 16 2015".to_date).first_or_create!
   Site.where(id: 99, name: "Play Safe Sports.net", slug: "playsafesports-net", status: "Not Started", url: "http://www.playsafesports.net", git: nil, primary: true, renewal_date: "October 16 2015".to_date).first_or_create!
   Site.where(id: 100, name: "NCAA Prep", slug: "ncaaprep", status: "Not Started", url: "http://www.ncaaprep.com", git: nil, primary: true, renewal_date: "September 30 2015".to_date).first_or_create!
   Site.where(id: 101, name: "Ms. Thick Fitness", slug: "ms-thick-fitness", status: "Not Started", url: "http://www.msthickfitness.com", git: "https://github.com/The-Wildfyre-Group/msthickfitness", primary: true, renewal_date: "September 25 2015".to_date).first_or_create!
   Site.where(id: 102, name: "Ms. Black Fitness", slug: "ms-black-fitness", status: "Not Purchased", url: "http://www.msblackfitness.com", git: nil, primary: true, renewal_date: nil).first_or_create!
   Site.where(id: 103, name: "Make a Workout", slug: "makeaworkout", status: "Not Started", url: "http://www.makeaworkout.com", git: nil, primary: true, renewal_date: "July 12 2015".to_date).first_or_create!
   Site.where(id: 104, name: "Healthstimate", slug: "healthstimate",status: "healthstimate", url: "http://www.healthstimate.com", git: nil, primary: true, renewal_date: "April 17 2015".to_date).first_or_create!
   Site.where(id: 105, name: "Healthstimate.org", slug: "healthstimate-org", status: "Not Started", url: "http://www.healthstimate.org", git: nil, primary: true, renewal_date: "April 17 2015".to_date).first_or_create!
   
   # Social Causes
  
   Site.where(id: 106, name: "Obescity", slug: "obescity", status: "Not Started", url: "http://www.obescity.org", git: nil, primary: true, renewal_date: "August 14 2015".to_date).first_or_create!
   Site.where(id: 107, name: "Spoke Org", slug: "spoke", status: "Not Purchased", url: nil, git: nil, primary: true, renewal_date: nil).first_or_create! #2
  
   
   # Consumer Finance
   Site.where(id: 108, name: "Budgify", slug: "budgify", status: "Not Started", url: "http://www.budgify.com", git: nil, primary: true, renewal_date: "Feb 10 2015".to_date).first_or_create!
   Site.where(id: 109, name: "RetireSimply", slug: "retire-simply", status: "Idle", url: "http://www.retiresimply.com", git: nil, primary: true, renewal_date: "March 1 2015".to_date).first_or_create!
   Site.where(id: 110, name: "RetireSmartly", slug: "retire-smartly", status: "Not Started", url: "http://www.retiresmartly.com", git: nil, primary: true, renewal_date: "January 2 2015".to_date).first_or_create! #3
   
   # Credentials
   Site.where(id: 111, name: "Credential Simply", slug: "credential-simply", status: "Not Started", url: "http://www.credentialsimply.com", git: nil, primary: true, renewal_date: "March 19 2015".to_date).first_or_create! #1
   
   # Hair
   Site.where(id: 112, name: "Cultivatd", slug: "cultivatd", status: "Not Started", url: "http://www.cultivatd.com", git: nil, primary: true, renewal_date: "April 26 2015".to_date).first_or_create! #1
   Site.where(id: 113, name: "UrbanCosmo", slug: "urban-cosmo", status: "Not Started", url: "http://www.urbancosmo.com", git: nil, primary: true, renewal_date: "April 30 2015".to_date).first_or_create!
   
   # Misc
   Site.where(id: 114, name: "Price Grader", slug: "price-grader", status: "Not Started", url: "http://www.pricegrader.com", git: nil, primary: true, renewal_date: "June 4 2015".to_date).first_or_create!
   Site.where(id: 115, name: "Vurtuo", slug: "vurtuo", status: "Not Started", url: "http://www.vurtuo.com", git: nil, primary: true, renewal_date: "April 19 2015".to_date).first_or_create!
   Site.where(id: 116, name: "Beechii", slug: "beechii", status: "Not Started", url: "http://www.beechii.com", git: nil, primary: true, renewal_date: "August 30 2016".to_date).first_or_create!
   Site.where(id: 117, name: "Wildlyfe", slug: "wildlyfe", status: "Not Started", url: "http://www.wildlyfe.com", git: nil, primary: true, renewal_date: "August 6 2015".to_date).first_or_create!
   Site.where(id: 118, name: "Stock Economics", slug: "stock-economics", status: "Not Started", url: "http://www.stockeconomics.com", git: nil, primary: true, renewal_date: "April 1 2015".to_date).first_or_create! #5
   Site.where(id: 119, name: "Qwolo", slug: "qwolo", status: "Not Started", url: "http://www.qwolo.com", git: nil, primary: true, renewal_date: "March 6 2015".to_date).first_or_create!
   Site.where(id: 120, name: "Drippit", slug: "drippit", status: "Not Started", url: "http://www.drippit.com", git: nil, primary: true, renewal_date: "December 13 2015".to_date).first_or_create!
   
   # Consulting
   Site.where(id: 121, name: "Obamacare Consulting", slug: "obamacare-consulting", status: "Not Started", url: "http://www.obamacareconsulting.com", git: nil, primary: true, renewal_date: "September 30 2015".to_date).first_or_create! #1
   
   # Personal 
   Site.where(id: 122, name: "Khadijah Coakley", slug: "khadijah-coakley", status: "Not Started", url: "http://www.khadijahcoakley.com", git: "https://github.com/The-Wildfyre-Group/khadijahcoakley", primary: true, renewal_date: "March 29 2015".to_date).first_or_create!
   Site.where(id: 123, name: "Cordis Stanfield", slug: "cordis-stanfield", status: "Not Started", url: "http://www.cordisstanfield.com", git: nil, primary: true, renewal_date: "August 31 2015".to_date).first_or_create! #2
   
   # Family 
   Site.where(id: 124, name: "Pettie Family", slug: "pettie-family", status: "Not Started", url: "http://www.pettiefamily.com", git: nil, primary: true, renewal_date: "April 18 2015".to_date).first_or_create!
   
   
   Tag.where(name: "TRAVLR", slug: "travlr").first_or_create!
   Tag.where(name: "Spa", slug: "spa").first_or_create!
   Tag.where(name: "CFA", slug: "cfa").first_or_create!
   Tag.where(name: "Minority", slug: "minority").first_or_create!
   Tag.where(name: "Finance", slug: "finance").first_or_create!
   Tag.where(name: "Football", slug: "football").first_or_create!
   Tag.where(name: "Education", slug: "education").first_or_create!
   Tag.where(name: "Sports", slug: "sports").first_or_create!
   Tag.where(name: "WF", slug: "wf").first_or_create!
   Tag.where(name: "Design", slug: "design").first_or_create!
   Tag.where(name: "Personal", slug: "personal").first_or_create!
   Tag.where(name: "UX", slug: "ux").first_or_create!
   Tag.where(name: "Analytics", slug: "analytics").first_or_create!     
   Tag.where(name: "Retail", slug: "retail").first_or_create! 
   Tag.where(name: "Fitness", slug: "fitness").first_or_create!
   Tag.where(name: "Cause", slug: "cause").first_or_create!
   Tag.where(name: "Health", slug: "health").first_or_create!
   Tag.where(name: "Hair", slug: "hair").first_or_create!
   Tag.where(name: "Consulting", slug: "consulting").first_or_create!
   Tag.where(name: "Credentialing", slug: "credentialing").first_or_create!
   Tag.where(name: "Misc", slug: "misc").first_or_create!
   Tag.where(name: "CSS3", slug: "css3").first_or_create!
   Tag.where(name: "HTML5", slug: "html5").first_or_create!
   Tag.where(name: "Asset Pipeline", slug: "asset-pipeline").first_or_create!
   Tag.where(name: "Bootstrap", slug: "bootstrap").first_or_create!
   Tag.where(name: "Foundation", slug: "foundation").first_or_create!
   Tag.where(name: "Grunt", slug: "grunt").first_or_create!
   Tag.where(name: "SASS", slug: "sass").first_or_create!
   Tag.where(name: "LESS", slug: "less").first_or_create!
   Tag.where(name: "Unix", slug: "unix").first_or_create!
   Tag.where(name: "Typing", slug: "typing").first_or_create! 
   Tag.where(name: "Javascript", slug: "javascript").first_or_create!
   Tag.where(name: "JQuery", slug: "jquery").first_or_create!
   Tag.where(name: "AJAX", slug: "ajax").first_or_create!
   Tag.where(name: "Lynda", slug: "lynda").first_or_create!
   Tag.where(name: "SQL", slug: "sql").first_or_create!
   Tag.where(name: "Regex", slug: "regex").first_or_create!
   Tag.where(name: "Ruby", slug: "ruby").first_or_create!
   Tag.where(name: "Ruby on Rails", slug: "ruby-on-rails").first_or_create! 
   Tag.where(name: "Heroku", slug: "heroku").first_or_create!
   Tag.where(name: "GIT", slug: "git").first_or_create!  
   
   
   Project.where(name: "Take Action Performance", slug: "take-action-performance",  status: "In Progress", url: "http://www.takeactionperformance.com", git: "https://github.com/The-Wildfyre-Group/tap", description: "Full platform for athlete needs: nutrition, performance, injuries, specialists, etc." ).first_or_create!
   Project.where(name: "Cordial Health", slug: "cordial-health", status: "In Progress", url: "http://www.cordialhealth.com", git: "https://github.com/The-Wildfyre-Group/cordial", description: "Site highlighting the chiropractice practice of Casey Cordial.").first_or_create!
   Project.where(name: "Maureen Cordial", slug: "maureen-cordial", status: "In Progress", url: "http://www.maureencordial.com", git: "https://github.com/The-Wildfyre-Group/maureen", description: "Site highlighting the psychiatrist practice of Maureen Cordial.")
   Project.where(name: "ArtRecessTravel", slug: "art-recess-travel", status: "Idle", url: "http://www.artrecesstravel.com", git: nil, description: "Site for Maggie's media venture.").first_or_create!
   Project.where(name: "Wheel2Live", slug: "wheel2live", status: "In Progress", url: "http://www.wheel2live.com", git: "https://github.com/The-Wildfyre-Group/wheel2live", description: "Wheel2Live is a social organization that organizes cross country wheelchair rides and raises money for charity.").first_or_create!
   
   
   
   
   
   
   
   
   
  
   