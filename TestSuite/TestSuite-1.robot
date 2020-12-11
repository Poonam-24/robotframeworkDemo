*** Settings ***
Library  Collections
Library  Selenium2Library

# Suite Setup     Open browser    ${URL}   ${BROWSER}
# Suite Teardown  Close All Browsers

*** Variables ***
${SEARCH_URL}       https://www.amazon.com/
${BROWSER}          Chrome


*** Test Cases ***
TC-01 Login To Amazon Using Chrome	
	${chrome_options} =     Evaluate    sys.modules['selenium.webdriver'].ChromeOptions()    sys, selenium.webdriver
    Call Method    ${chrome_options}   add_argument    headless
    Call Method    ${chrome_options}   add_argument    no-sandbox
	Call Method    ${chrome_options}   add_argument    disable-dev-shm-usage
    ${options}=     Call Method     ${chrome_options}    to_capabilities     
	
	Open Browser	${SEARCH_URL}	browser=${BROWSER}	desired_capabilities=${options}
	Wait Until Element Is Visible	//div[@id='nav-logo']//a//span
	sleep	2s
	Capture Page Screenshot

TC-02 Login To Amazon Using Chrome	
	${chrome_options} =     Evaluate    sys.modules['selenium.webdriver'].ChromeOptions()    sys, selenium.webdriver
    Call Method    ${chrome_options}   add_argument    headless
    Call Method    ${chrome_options}   add_argument    no-sandbox
	Call Method    ${chrome_options}   add_argument    disable-dev-shm-usage
    ${options}=     Call Method     ${chrome_options}    to_capabilities     
	
	Open Browser	${SEARCH_URL}	browser=${BROWSER}	desired_capabilities=${options}
	Wait Until Element Is Visible	//div[@id='nav-logo']//a//span
	sleep	2s
	Capture Page Screenshot	

TC-03 Login To Amazon Using Chrome	
	${chrome_options} =     Evaluate    sys.modules['selenium.webdriver'].ChromeOptions()    sys, selenium.webdriver
    Call Method    ${chrome_options}   add_argument    headless
    Call Method    ${chrome_options}   add_argument    no-sandbox
	Call Method    ${chrome_options}   add_argument    disable-dev-shm-usage
    ${options}=     Call Method     ${chrome_options}    to_capabilities     
	
	Open Browser	${SEARCH_URL}	browser=${BROWSER}	desired_capabilities=${options}
	Wait Until Element Is Visible	//div[@id='nav-logo']//a//span
	sleep	2s
	Capture Page Screenshot	
	