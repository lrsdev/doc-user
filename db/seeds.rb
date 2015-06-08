Location.create(id: 1, name: 'St Claire', location_type: 0, blurb: 'Nice beach, just 5 minutes drive from the City Center', 
                dog_guidelines: 'No dogs North of esplanade', dog_status: 0, geo_access_points: 'MULTIPOINT((-45.9092631 170.4885635))',
                image: open('http://ih0.redbubble.net/image.3998569.1307/flat,550x550,075,f.jpg', "r"),
               image_file_name: 'stclaire.jpg')

Location.create(id: 2, name: 'St Kilda', location_type: 0, blurb: '5 minutes drive from the city, South of St. Claire.',
                dog_guidelines: 'Dogs okay in all areas of beach', dog_status: 0, geo_access_points: 'MULTIPOINT((-45.901957 170.5056987))',
                image: open('http://images.travelpod.com/tw_slides/ta00/cb6/fd0/st-kilda-beach-dunedin-christchurch.jpg', "r"),
                image_file_name: 'stkilda.jpg')

Location.create(id: 3, name: 'Allans Beach', location_type: 0, blurb: 'Lovely beach out on the peninsula, backdrop to Papanui inlet.',
		dog_status: 2, geo_access_points: 'MULTIPOINT((-45.8464573 170.6609251))', dog_guidelines: 'Dogs allowed everywhere',
		image: open('http://images.fineartamerica.com/images-medium-large/allans-beach--new-zealand-czrart.jpg', "r"),
		image_file_name: 'allans.jpg')

Location.create(id: 4, name: 'Brighton Beach', location_type: 0, blurb: 'Located 30 minutes drive South of the city, its great.',
		dog_guidelines: 'Dogs okay from the Big Rock tot he small cliff at the north end of the domain of Brighton Road',
		dog_status: 2, geo_access_points: 'MULTIPOINT((-45.9468324 170.335150099))',
		image: open('http://www.wallyandbarbara.com/newzealand/images4/P1040906.JPG', "r"),
		image_file_name: 'brighton.jpg')

Location.create(id: 5, name: 'Tunnel Beach', location_type: 0, blurb: 'Best at low tide this twenty minute easy walk.',
		dog_status: 2, geo_access_points: 'MULTIPOINT((-45.92077530 170.45918719))', dog_guidelines: 'Dogs allowed everywhere',
		image: open('http://www.chrisgin.com/images/seascapes/large/TunnelBeach_1095.jpg', "r"),
		image_file_name: 'tunnelbeach.jpg')

User.create(id: 1, first_name: 'Samuel', last_name: 'Stewart', email: 'sam@stewpot.nz', password: 'foo')

Report.create(location_id: 1, user_id: 1, geolocation: 'POINT(-45.912665 170.489735)', blurb: "Spotted Penguin playing in the surf",
             image: open('http://d1k2jfc4wnfimc.cloudfront.net/assets/matakohe/images/contentfill.jpg', "r"),
             image_file_name: 'penguin.jpg', submitted_at: DateTime.now)

Report.create(location_id: 1, user_id: 1, geolocation: 'POINT(-45.913587 170.488179)', blurb: "Spotted Penguin shore near Salt Water Pool",
             image: open('http://d1k2jfc4wnfimc.cloudfront.net/assets/matakohe/images/contentfill.jpg', "r"),
             image_file_name: 'penguin.jpg', submitted_at: DateTime.now)

Report.create(location_id: 2, user_id: 1, geolocation: 'POINT(-45.908496 170.531367)', blurb: "Spotted Sea Lion near lookout, far North end of beach.",
             image: open('https://animalblawg.files.wordpress.com/2010/11/the-california-sea-lion.jpg', "r"),
             image_file_name: 'sealion.jpg', submitted_at: DateTime.now)

