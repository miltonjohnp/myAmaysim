require_relative 'myAmaySim_SiteElements.rb'

class TestCases

	def TestCase1
		puts "***** EXECUTING TEST CASE 1 *******"
		puts "Description: Successfully Set Forwarding call number starting with 0412\n\n"
		
		browser = SiteElements.new("https://www.amaysim.com.au/my-account/my-amaysim/login")
		wait = Selenium::WebDriver::Wait.new(:timeout => 10)	
		wait.until{"browser.login_title"}
		
		puts "Login Page is Displayed. Proceeding with login..."
		browser.login_username.send_keys('0468827174')
		browser.login_password.send_keys('theHoff34')
		browser.login_button.click
		sleep 9
		wait.until{"browser.customer_greeting"}
		
		puts "Login is successful.Navigating to MySettings page..."	
		wait.until{"mysettings_link"}
		browser.mysettings_link.click
		sleep 9
		wait.until{"browser.mysettings_title"}

		puts "MySettings Page is loaded. Editing Call Forwarding Settings..."
		$i = 0
		while $i < 15 do
			browser.tab()
			$i += 1
		end
		sleep 3
		wait.until{"browser.callforward_edit"}
		browser.callforward_edit.click
		sleep 10

		puts "Edit Call Forwarding Popup is displayed. Clicking Confirm Button..."

		browser.callforward_popup_confirm.click
		sleep 4
		
		puts "Setting CallForwarding divert number to 0412345123..."
		$a = 0
		while $a < 22 do
			browser.tab()
			$a += 1
		end
		sleep 3
		browser.callforward_divert_number.clear
		sleep 3
		browser.callforward_divert_number.send_keys "0412345123"
		browser.tab()
		sleep 3

		puts "Values are changed. Saving call forwarding form..."
		browser.callforward_save_button.click
		sleep 4
		wait.until{"browser.callforward_update_success"}
		sleep 9
		puts "CallForwarding Settings successfully updated"


		browser.close_browser
		
		puts "\nTest Case 1: [PASSED]\n\n"
	end

	def TestCase2
		puts "***** EXECUTING TEST CASE 2 *******"
		puts "Description: Successfully Set Forwarding call number starting with 02\n\n"
		
		browser = SiteElements.new("https://www.amaysim.com.au/my-account/my-amaysim/login")
		wait = Selenium::WebDriver::Wait.new(:timeout => 10)	
		wait.until{"browser.login_title"}
		
		puts "Login Page is Displayed. Proceeding with login..."
		browser.login_username.send_keys('0468827174')
		browser.login_password.send_keys('theHoff34')
		browser.login_button.click
		sleep 9
		wait.until{"browser.customer_greeting"}
		
		puts "Login is successful.Navigating to MySettings page..."	
		wait.until{"mysettings_link"}
		browser.mysettings_link.click
		sleep 9
		wait.until{"browser.mysettings_title"}

		puts "MySettings Page is loaded. Editing Call Forwarding Settings..."
		$i = 0
		while $i < 15 do
			browser.tab()
			$i += 1
		end
		sleep 3
		wait.until{"browser.callforward_edit"}
		browser.callforward_edit.click
		sleep 10

		puts "Edit Call Forwarding Popup is displayed. Clicking Confirm Button..."

		browser.callforward_popup_confirm.click
		sleep 4
		
		puts "Setting CallForwarding divert number to 0287654321..."
		$a = 0
		while $a < 22 do
			browser.tab()
			$a += 1
		end
		sleep 3
		browser.callforward_divert_number.clear
		sleep 3
		browser.callforward_divert_number.send_keys "0287654321"
		browser.tab()
		sleep 3

		puts "Values are changed. Saving call forwarding form..."
		browser.callforward_save_button.click
		sleep 4
		wait.until{"browser.callforward_update_success"}
		sleep 9
		puts "CallForwarding Settings successfully updated"


		browser.close_browser
		
		puts "\nTest Case 2: [PASSED]\n\n"
	end

	def TestCase3
		puts "***** EXECUTING TEST CASE 3 *******"
		puts "Description: Forwarding settings is not saved when number not starting with 02 or 0412\n\n"
		
		browser = SiteElements.new("https://www.amaysim.com.au/my-account/my-amaysim/login")
		wait = Selenium::WebDriver::Wait.new(:timeout => 10)	
		wait.until{"browser.login_title"}
		
		puts "Login Page is Displayed. Proceeding with login..."
		browser.login_username.send_keys('0468827174')
		browser.login_password.send_keys('theHoff34')
		browser.login_button.click
		sleep 9
		wait.until{"browser.customer_greeting"}
		
		puts "Login is successful.Navigating to MySettings page..."	
		wait.until{"mysettings_link"}
		browser.mysettings_link.click
		sleep 9
		wait.until{"browser.mysettings_title"}

		puts "MySettings Page is loaded. Editing Call Forwarding Settings..."
		$i = 0
		while $i < 15 do
			browser.tab()
			$i += 1
		end
		sleep 3
		wait.until{"browser.callforward_edit"}
		browser.callforward_edit.click
		sleep 10

		puts "Edit Call Forwarding Popup is displayed. Clicking Confirm Button..."

		browser.callforward_popup_confirm.click
		sleep 4
		
		puts "Setting CallForwarding divert number to 111111111..."
		$a = 0
		while $a < 22 do
			browser.tab()
			$a += 1
		end
		sleep 3
		browser.callforward_divert_number.clear
		sleep 3
		browser.callforward_divert_number.send_keys "1111111111"
		browser.tab()
		sleep 3

		puts "Values are changed. Saving call forwarding form..."
		browser.callforward_save_button.click
		sleep 4
		wait.until{"browser.callforward_update_failed"}
		sleep 9
		puts "Call Forwarding Settings was not updated. Error is displayed"


		browser.close_browser
		
		puts "\nTest Case 3: [PASSED]\n\n"
	end

	def TestCase4
		puts "***** EXECUTING TEST CASE 4 *******"
		puts "Description: Forwarding settings is not saved when number is starting with 02 or 0412 but less than 10 numbers\n\n"
		
		browser = SiteElements.new("https://www.amaysim.com.au/my-account/my-amaysim/login")
		wait = Selenium::WebDriver::Wait.new(:timeout => 10)	
		wait.until{"browser.login_title"}
		
		puts "Login Page is Displayed. Proceeding with login..."
		browser.login_username.send_keys('0468827174')
		browser.login_password.send_keys('theHoff34')
		browser.login_button.click
		sleep 9
		wait.until{"browser.customer_greeting"}
		
		puts "Login is successful.Navigating to MySettings page..."	
		wait.until{"mysettings_link"}
		browser.mysettings_link.click
		sleep 9
		wait.until{"browser.mysettings_title"}

		puts "MySettings Page is loaded. Editing Call Forwarding Settings..."
		$i = 0
		while $i < 15 do
			browser.tab()
			$i += 1
		end
		sleep 3
		wait.until{"browser.callforward_edit"}
		browser.callforward_edit.click
		sleep 10

		puts "Edit Call Forwarding Popup is displayed. Clicking Confirm Button..."

		browser.callforward_popup_confirm.click
		sleep 4
		
		puts "Setting CallForwarding divert number to 041254321..."
		$a = 0
		while $a < 22 do
			browser.tab()
			$a += 1
		end
		sleep 3
		browser.callforward_divert_number.clear
		sleep 3
		browser.callforward_divert_number.send_keys "041254321"
		browser.tab()
		sleep 3

		puts "Values are changed. Saving call forwarding form..."
		browser.callforward_save_button.click
		sleep 4
		wait.until{"browser.callforward_update_failed"}
		sleep 9
		puts "Call Forwarding Settings was not updated. Error is displayed"


		browser.close_browser
		
		puts "\nTest Case 4: [PASSED]\n\n"
	end

	def TestCase5
		puts "***** EXECUTING TEST CASE 5 *******"
		puts "Description: Forwarding settings is not saved when using alphabetical characters\n\n"
		
		browser = SiteElements.new("https://www.amaysim.com.au/my-account/my-amaysim/login")
		wait = Selenium::WebDriver::Wait.new(:timeout => 10)	
		wait.until{"browser.login_title"}
		
		puts "Login Page is Displayed. Proceeding with login..."
		browser.login_username.send_keys('0468827174')
		browser.login_password.send_keys('theHoff34')
		browser.login_button.click
		sleep 9
		wait.until{"browser.customer_greeting"}
		
		puts "Login is successful.Navigating to MySettings page..."	
		wait.until{"mysettings_link"}
		browser.mysettings_link.click
		sleep 9
		wait.until{"browser.mysettings_title"}

		puts "MySettings Page is loaded. Editing Call Forwarding Settings..."
		$i = 0
		while $i < 15 do
			browser.tab()
			$i += 1
		end
		sleep 3
		wait.until{"browser.callforward_edit"}
		browser.callforward_edit.click
		sleep 10

		puts "Edit Call Forwarding Popup is displayed. Clicking Confirm Button..."

		browser.callforward_popup_confirm.click
		sleep 4
		
		puts "Setting CallForwarding divert number to abcdefghij..."
		$a = 0
		while $a < 22 do
			browser.tab()
			$a += 1
		end
		sleep 3
		browser.callforward_divert_number.clear
		sleep 3
		browser.callforward_divert_number.send_keys "abcdefghij"
		browser.tab()
		sleep 3

		puts "Values are changed. Saving call forwarding form..."
		browser.callforward_save_button.click
		sleep 4
		wait.until{"browser.callforward_update_failed"}
		sleep 9
		puts "Call Forwarding Settings was not updated. Error is displayed"


		browser.close_browser
		
		puts "\nTest Case 5: [PASSED]\n\n"
	end

	def TestCase6
		puts "***** EXECUTING TEST CASE 6 *******"
		puts "Description: Forwarding settings is not saved when using symbols\n\n"
		
		browser = SiteElements.new("https://www.amaysim.com.au/my-account/my-amaysim/login")
		wait = Selenium::WebDriver::Wait.new(:timeout => 10)	
		wait.until{"browser.login_title"}
		
		puts "Login Page is Displayed. Proceeding with login..."
		browser.login_username.send_keys('0468827174')
		browser.login_password.send_keys('theHoff34')
		browser.login_button.click
		sleep 9
		wait.until{"browser.customer_greeting"}
		
		puts "Login is successful.Navigating to MySettings page..."	
		wait.until{"mysettings_link"}
		browser.mysettings_link.click
		sleep 9
		wait.until{"browser.mysettings_title"}

		puts "MySettings Page is loaded. Editing Call Forwarding Settings..."
		$i = 0
		while $i < 15 do
			browser.tab()
			$i += 1
		end
		sleep 3
		wait.until{"browser.callforward_edit"}
		browser.callforward_edit.click
		sleep 10

		puts "Edit Call Forwarding Popup is displayed. Clicking Confirm Button..."

		browser.callforward_popup_confirm.click
		sleep 4
		
		puts "Setting CallForwarding divert number to !@#$%^&*()..."
		$a = 0
		while $a < 22 do
			browser.tab()
			$a += 1
		end
		sleep 3
		browser.callforward_divert_number.clear
		sleep 3
		browser.callforward_divert_number.send_keys "!@#$%^&*()"
		browser.tab()
		sleep 3

		puts "Values are changed. Saving call forwarding form..."
		browser.callforward_save_button.click
		sleep 4
		wait.until{"browser.callforward_update_failed"}
		sleep 9
		puts "Call Forwarding Settings was not updated. Error is displayed"


		browser.close_browser
		
		puts "\nTest Case 6: [PASSED]\n\n"
	end
end