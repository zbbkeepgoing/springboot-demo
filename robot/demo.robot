*** Settings ***
Library           Selenium2Library

*** Keywords ***
Open Headless Chrome
  [Arguments]  ${url}
  ${chrome_options}=  Evaluate  sys.modules['selenium.webdriver'].ChromeOptions()  sys, selenium.webdriver
  Call Method   ${chrome_options}    add_argument    no-sandbox
  Call Method   ${chrome_options}    add_argument    headless
  Call Method   ${chrome_options}    add_argument    disable-gpu
  Create Webdriver  Chrome  chrome_options=${chrome_options}
  Go To  ${url}

*** Test Cases ***
Demo
    Open Headless Chrome    http://192.168.88.130:8080
    Wait Until Page Contains    This request is IndexApi
    Click Element    rightaway
    Wait Until Page Contains    This request is RightawayApi
    Click Element    sleep
    Wait Until Page Contains    This request is SleepApi
    Close Browser

Baidu
    Open Headless Chrome    https://www.baidu.com   
    Wait Until Page Contains    baidu
    Close Browser
