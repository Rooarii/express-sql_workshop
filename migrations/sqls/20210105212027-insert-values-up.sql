/* Replace with your SQL commands */
-- insert values into planet table
INSERT INTO planet (name) 
VALUES 
	("unknown"),
	("Krypton"),
	("Zenn-La"),
    ("Titan"),
    ("Zen-Whoberi"),
    ("X Tree"),
    ("Tamaran"),
    ("Mars");

-- insert values into alien table
INSERT INTO alien
	(first_name, last_name, surname, poster, planet_id)
VALUES
	("Clark", "KENT", "Superman", "https://upload.wikimedia.org/wikipedia/en/3/35/Supermanflying.png",2),
    ("Norrin", "Radd", "Silver Surfer", "https://upload.wikimedia.org/wikipedia/en/9/92/Silver_Surfer.jpg", 3),
    ("Thanos","Titan","Thanos","https://upload.wikimedia.org/wikipedia/en/thumb/c/cd/Thanos_Infinity_4.png/250px-Thanos_Infinity_4.png",4),
    ("Gamora", "Titan", "Gamora","https://upload.wikimedia.org/wikipedia/en/thumb/0/08/Gamora-cover.jpg/250px-Gamora-cover.jpg",5),
    ("","","Groot", "https://img1.pnghut.com/23/4/9/kTqbC6t1Ki/marvel-avengers-alliance-comics-film-figurine-youtube.jpg",6),
    ("", "", "Corvus Glaive", "https://upload.wikimedia.org/wikipedia/en/2/2b/Corvus_Glaive.jpg", 1 ),
    ("", "", "Starfire", "https://comicvine1.cbsistatic.com/uploads/scale_small/11112/111123579/7631659-starfire1.jpg", 7),
    ("","", "Ganthet","https://imgix-media.wbdndc.net/cms/filer_public/03/e9/03e92716-0367-4836-a7ba-437708ce12f5/ganthet-profile-gl_53_22_cmyk-v1-401x600-masthead.jpg",1),
    ("J'onn", "J'onzz", "Martian Manhunter","https://i.pinimg.com/originals/e0/31/6c/e0316c74e85c184c94c3b5bf25bf07ab.jpg",8),
    ("Elon", "Musk", "Elon", "https://media.lesechos.com/api/v1/images/view/5f3f5be68fe56f0be8160fab/1280x720/0603734518167-web-tete.jpg",8),
    ("Edgar", "", "La bestiole", "https://vignette1.wikia.nocookie.net/men-in-black/images/2/25/Edgar-bug_SS_01.jpg",1),
    ("","","Alien", "https://i.pinimg.com/originals/8a/ee/ef/8aeeef467e0d213c57a6db7a137ed989.jpg",1);