Charity.destroy_all
User.destroy_all
Donation.destroy_all

Charity.create!([
  {id: 1, image_url: "https://upload.wikimedia.org/wikipedia/en/thumb/f/f3/American_Civil_Liberties_Union_logo.svg/500px-American_Civil_Liberties_Union_logo.svg.png", name: "ACLU", mission: "For almost 100 years, the ACLU has worked to defend and preserve the individual rights and liberties guaranteed by the Constitution and laws of the United States.", rating: 4.9}])

  User.create!([
    {id: 1, first_name: "Steve", last_name: "Bomze", user_name: "sbomze", email: "steve.bomze@gmail.com", zip_code: 19087, address: "209 40th Street", address_2: "Apt B", city: "Newport Beach", state_province: "California", country: "United States", card_number: 4737028980185345, expiration_date: "May 2019", security_code: 977}])

    Donation.create!([
      {id: 1, user_id: 1, charity_id: 1, amount: 1, frequency: "daily"}])

      puts "There are now #{Charity.count} charities in the database."
      puts "There are now #{User.count} users in the database."
      puts "There are now #{Donation.count} donations in the database."
