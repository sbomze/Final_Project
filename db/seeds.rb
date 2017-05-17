Charity.destroy_all

Charity.create!([
  {image_url: "https://en.wikipedia.org/wiki/File:American_Civil_Liberties_Union_logo.svg", name: "ACLU", mission: "For almost 100 years, the ACLU has worked to defend and preserve the individual rights and liberties guaranteed by the Constitution and laws of the United States.", rating: 4.9}])

  puts "There are now #{Charity.count} charities in the database."
