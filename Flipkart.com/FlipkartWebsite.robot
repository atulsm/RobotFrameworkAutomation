*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${SLEEP}    4s
${BROWSER}    chrome

*** Keywords ***
Login to Flipkart as a known user
	Open Browser    https://seller.flipkart.com/sell-online/    ${BROWSER}
	Sleep    ${SLEEP}
	Wait Until Page Contains Element    //span[@class="sc-drlKqa liyBOt"]
	Click Element    //span[@class="sc-drlKqa liyBOt"]
	Sleep    ${SLEEP}
	Wait Until Page Contains Element    //input[@name="username"]
	Input Text    //input[@name="username"]    nishant
	Sleep    ${SLEEP}
	Wait Until Page Contains Element    //input[@name="password"]
	Input Text    //input[@name="password"]    asdf1234
	Sleep    ${SLEEP}
	Wait Until Page Contains Element    xpath=(//span)[49]
	Click Element    xpath=(//span)[49]
	Sleep    ${SLEEP}

*** Test Cases ***
Successful Login Test
    Log  %{PATH}
    Login to Flipkart as a known user

