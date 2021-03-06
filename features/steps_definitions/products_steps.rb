Then("I do login with phone number {string} and password {string}") do |phone_number, password|
  login_function(phone_number, password)
end

Then("I click Pulsa Seluler menu") do
 text("Pulsa Seluler").click
end

Then("I fill phone number") do
  click_zero
  click_eight
  click_one
  click_five
  click_one
  click_seven
  click_nine
  click_three
  click_eight
  click_one
  click_six
  click_six
  Appium::TouchAction.new.tap(x:954, y: 1647).perform
end

Then("I choose {string}") do |value|
  text("#{value}").click
end

Then("I choose Saldo Payfazz as payment method") do
  text("Saldo Payfazz").click
end

Then("I click Bayar Sekarang") do
  find_element(id: "button_pay_now").click
end

Then("I input pin {string}") do |value|
  find_element(id: "et_big_input").send_keys(value)
end

Then("I click Nanti Saja button") do
  find_element(id: "button2").click
end

Then("I verify my payment") do
  find_element(id: "lottie_animation_layout")
end

Then("I click Kembali Ke Menu Utama button") do
  find_element(id: "button").click
end


Then(/^I verify that was Pulsa Seluler page$/) do
  text("Pulsa Seluler")
end

Then(/^I swipe to find Pulsa Seluler menu$/) do
  Appium::TouchAction.new.swipe(start_x: 0.5, start_y: 0.4, end_x: 0.5, end_y: 1, duration: 600).perform
end