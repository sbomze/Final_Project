
require "mechanize"
agent = Mechanize.new
page = agent.get("https://action.aclu.org/secure/donate-to-aclu")
forms = page.forms
form = forms.first

form.radiobutton_with(:name => "submitted[donation][amount]", :value => "other").check
form['submitted[donation][other_amount]'] = 5

form['submitted[donor_information][first_name]'] = "Steve"
form['submitted[donor_information][last_name]'] = "Bomze"
form['submitted[donor_information][email]'] = "steve.bomze@gmail.com"

form['submitted[billing_information][zip]'] = 92663
form['submitted[billing_information][address]'] = "209 40th Street"
form['submitted[billing_information][address_line_2]'] = "Apt B"
form['submitted[billing_information][city]'] = "Newport Beach"
form['submitted[billing_information][state]'] = 12

form['submitted[credit_card_information][card_number]'] = 4737028980185345
form['submitted[credit_card_information][expiration_date][card_expiration_month]'] = 8
form['submitted[credit_card_information][expiration_date][card_expiration_year]'] = 2019
form['submitted[credit_card_information][card_cvv]'] = 977

form.submit
