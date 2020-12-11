*** Settings ***
Library  Collections
Library  Selenium2Library

# Suite Setup     Open browser    ${URL}   ${BROWSER}
# Suite Teardown  Close All Browsers

*** Variables ***
${SEARCH_URL}       https://www.amazon.com/
${BROWSER}          headlessfirefox


*** Test Cases ***
TC-02 Login To Amazon Using Firefox		     
	Open Browser	${SEARCH_URL}	browser=${BROWSER}
	Wait Until Element Is Visible	//div[@id='nav-logo']//a//span
	sleep	2s
	Capture Page Screenshot
	