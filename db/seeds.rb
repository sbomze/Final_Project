Charity.destroy_all
User.destroy_all
Donation.destroy_all

Charity.create!([
  {id: 1, image_url: "https://upload.wikimedia.org/wikipedia/en/thumb/f/f3/American_Civil_Liberties_Union_logo.svg/500px-American_Civil_Liberties_Union_logo.svg.png", name: "ACLU", mission: "For almost 100 years, the ACLU has worked to defend and preserve the individual rights and liberties guarateed by the Constitution and laws of the United States.", rating: 4.9}, {id:2, image_url: "http://photos-images.active.com/file/3/1/original/e1ce5ec5-bf63-48a0-89f1-05db6e7a0098.jpg", name: "Habitat for Humanity", mission: "Habitat for Humanity is a global nonprofit housing organization working in nearly 1,400 communities across the United States and in approximately 70 countries around the world. Habitat’s vision is of a world where everyone has a decent place to live. Habitat works toward our vision by building strength, stability and self-reliance in partnership with people and families in need of a decent and affordable home.", rating: 4.8}, {id: 3, image_url: 'http://www.pembrokemall.com/media/1075/American-Red-Cross.jpg', name: "American Red Cross", mission: "The American Red Cross prevents and alleviates human suffering in the face of emergencies by mobilizing the power of volunteers and the generosity of donors.​", rating: 4.7}, {id: 4, image_url: "http://www.simplyasia.co.za/wp-content/uploads/2015/04/Lunchbox-Fund-Logo.jpg.jpg", mission: "The Lunchbox Fund is a non-profit organization that has fostered education via nutrition since 2005. The Fund is dedicated to providing a daily meal for orphaned and vulnerable school children in township and rural areas of South Africa.", rating: 4.6}, {id: 5, image_url: "http://www.resortsuite.com/working/wp-content/uploads/2016/09/Stand-Up-To-Cancer.jpg", mission: "Stand Up To Cancer’s (SU2C) mission is to raise funds to accelerate the pace of groundbreaking translational research that can get new therapies to patients quickly and save lives now. SU2C brings together the best and the brightest researchers and mandates collaboration among the cancer community. By galvanizing the entertainment industry, SU2C has set out to generate awareness, educate the public on cancer prevention and help more people diagnosed with cancer become long-term survivors.", rating: 4.5}

  ])

  User.create!([
    {id: 1, first_name: "Steve", last_name: "Bomze", user_name: "sbomze", email: "steve.bomze@gmail.com", password: "Pardigm567", zip_code: 19087, address: "209 40th Street", address_2: "Apt B", city: "Newport Beach", state_province: "California", country: "United States", card_number: "4737028980185345", expiration_date: "May 2019", security_code: 977}])

    Donation.create!([
      {id: 1, user_id: 1, charity_id: 1, amount: 1, frequency: "daily"}])

      puts "There are now #{Charity.count} charities in the database."
      puts "There are now #{User.count} users in the database."
      puts "There are now #{Donation.count} donations in the database."
