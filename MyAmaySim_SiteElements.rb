require 'selenium-webdriver'

class SiteElements

	#Login to Amaysim
	def initialize(url)
		@driver = Selenium::WebDriver.for :chrome
		@driver.manage.window.maximize
		@driver.navigate.to url
	end

	def login_title()
			@driver.find_elements(class_name: "uluru")
	end

	def login_username()
			return @driver.find_element(id: "my_amaysim2_user_session_login")
	end

	def login_password()
		return @driver.find_element(id: "password")
	end

	def login_button()
		return @driver.find_element(id: "login_button")
	end

	def customer_greeting()
		@driver.find_element(class_name: "customer-name-greeting")
	end

	def mysettings_link()
		return @driver.find_element(link: "My Settings")
	end

	def mysettings_title()
		@driver.find_element(text: "My Settings")
	end

	def callforward_edit()
		return @driver.find_element(id: "edit_settings_call_forwarding")
	end

	def callforward_popup_confirm()
		return @driver.find_element(class_name: "confirm_popup_confirm")
	end

	def callforward_update_form()
		@driver.find_element(id: "update_call_forwarding_form")
	end

	def callforward_no()
		return @driver.find_element(id: "my_amaysim2_setting_call_divert_false")
	end

	def callforward_yes()
		return @driver.find_element(id: "my_amaysim2_setting_call_divert_true")
	end

	def callforward_divert_number()
		return @driver.find_element(id: "my_amaysim2_setting_call_divert_number")
	end	

	def callforward_save_button()
		return @driver.find_element(class_name: "button-green-action")
	end

	def callforward_update_success()
		@driver.find_element(class_name: "ama-hero-heading popup-success")
	end

	def callforward_update_failed()
		@driver.find_element(text: "Please enter your phone number in the following format: 0412 345 678 or 02 1234 5678")
	end

	def close_popup()
		return @driver.find_element(class_name: "close-reveal-modal")
	end

	def tab()
		return @driver.action.send_keys(:tab).perform
	end

	def close_browser()
		 @driver.quit
	end
end