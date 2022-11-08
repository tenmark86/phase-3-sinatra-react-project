puts "🌱 Seeding contests..."

s1 = Site.create(site_name: "premierleague")
s2 = Site.create(site_name: "espn")
s3 = Site.create(site_name: "skysports")
s4 = Site.create(site_name: "bundesliga")
s5 = Site.create(site_name: "eredivisie")

Contest.create(
    contest_name: "premier league Liverpool vs Manchester city",
    url: "https://www.premierleague.com/match/75064",
    start_time: "2022-11-12 02:30:00.000",
    end_time: "2022-11-12 04:00:00.000",
    duration: 90,
    site_id: s1.id,
    hosting_website: "premierleague"
)
Contest.create(
    contest_name: "laliga Barcelona vs Real Madrid ",
    url: "https://www.espn.com/soccer/report/_/gameId/643856",
    start_time: "2022-11-12 15:38:00.000",
    end_time: "2022-11-12 18:30:00.000",
    duration: 90,
    site_id: s2.id,
    hosting_website: "espn"
)
Contest.create(
    contest_name: "Serie a Napoli vs Udinese",
    url: "https://www.skysports.com/football/napoli-vs-udinese/470046",
    start_time: "2022-11-12 14:30:00.000",
    end_time: "2022-11-12 17:30:00.000",
    duration: 90,
    site_id: s3.id,
    hosting_website: "skysports"
)
Contest.create(
    contest_name: "Bundesliga Bayern vs Borussia Dortmund ",
    url: "https://www.bundesliga.com/en/bundesliga/matchday/2022-2023/15/fc-schalke-04-vs-fc-bayern-muenchen/liveticker",
    start_time: "2022-11-12 14:35:00.000",
    end_time: "2022-11-12 16:50:00.000",
    duration: 90, 
    site_id: s4.id,
    hosting_website: "bundesliga"
)
Contest.create(
    contest_name: "Eredivisie FC EMMEM VS AJAX",
    url: "https://eredivisie.eu/competition/match/emmen-ajax/",
    start_time: "2022-11-12 12:00:00.000",
    end_time: "2022-11-12 13:40:00.000",
    duration: 90,
    site_id: s5.id,
    hosting_website: "eredivisie"
)

puts "✅ Done seeding!"
