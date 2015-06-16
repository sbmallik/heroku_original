Given(/^I am on the puppy adoption site$/) do
    visit(HomePage)
end

When(/^I click the view details button for "([^"]*)"$/) do | name |
    on(HomePage).select_puppy
end

When(/^I click the adopt me button$/) do
    on(DetailsPage).add_to_cart
end

When(/^I click the complete the adoption button$/) do
    on(ShoppingCartPage).proceed_to_checkout
end

When(/^I enter "([^"]*)" in the name field$/) do | name |
    on(CheckoutPage).name = name
end

When(/^I enter "([^"]*)" in the address field$/) do | address |
    on(CheckoutPage).address = address
end

When(/^I enter "([^"]*)" in the email field$/) do | email |
    on(CheckoutPage).email = email
end

When(/^I select "([^"]*)" from the pay type dropdown$/) do | pay_type |
    on(CheckoutPage).pay_type = pay_type
end

When(/^I click the Place Order button$/) do
    on(CheckoutPage).place_order
end

Then(/^I should see "([^"]*)"$/) do | message |
    expect(@current_page.text).to include message
end
