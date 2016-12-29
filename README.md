*** Revision History ***

v1.00 - Technical Assesment of Applicant, Milton John Parcia for myAmaysim 


A. Introduction:
This test suite aims to test Call Forwarding Settings of MyAmaysim User Management Page

Language Used: Ruby-2.2.6 with Selenium Web Driver for Windows (x64)

B. Setup Test Environment:
1. Install ruby-2.2.6 for Windows in the following environment
    https://rubyinstaller.org/downloads/
2. After Successfully installing ruby, install Selenium WebDriver
   - go to cmd prompt
   - enter the following command 'gem install selenium-webdriver'
3. Install chromedriver: http://chromedriver.storage.googleapis.com/2.24/chromedriver_win32.zip
   
   
C. Executing the Automation Script:
1. Execute the MyAmaySim_TestExecution.rb
   - go to cmd prompt
   - execute the command 'ruby MyAmaySim_TestExecution.rb'
   
* Note: Please Include or uncomment all test cases you want to execute. Refer to MyAmaySim_TestCases.rb for the list of test cases

D. Release Notes:

1. MyAmaySim_SiteElements.rb
   - includes all Elements used during the testing

2. MyAmaySim_Testcases.rb
   - Repository of the test cases that can be run

3. MyAmaySim_TestExecution.rb
   - Main Class. lists all test cases to be executed
