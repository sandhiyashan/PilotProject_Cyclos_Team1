***Settings***
Documentation    All the page object and keyword of Member account page
Library    SeleniumLibrary
Resource    HomeResource.robot

*** Variables ***
${Banking_page_verify}    xpath://div[text()='Banking']
${Banking_page_keyword}    Banking
${receive_qr}    xpath://div[text()='Receive QR-code']
${receive_qr_keyword}    Receive QR-code payment
${Receive_qr_key_xpath}    xpath://div[text()=' Receive QR-code payment ']
${balance_xpath}    xpath://div[@class='status-label col-6 col-sm-3']/following-sibling::div
${table_xpath}    xpath://table[@class='table table-hover cursor-pointer']
${amount_css}    css:div[class='input-group'] input
${descript_css}    css:div[class='label-value-container'] textarea
${gen_qr}    xpath://button[@class='btn d-flex justify-content-center align-items-center w-100 h-100 btn-primary']
${error_mess}    xpath:(//div[@class='d-flex label-value-value']/field-errors/div)

*** Keywords ***
Verify the Banking page is displayed
    Element Text Should Be    ${Banking_page_verify}    ${Banking_page_keyword}

Verify the Receive qr code page
    Wait Until Element Is Visible    ${receive_qr}
    Click Element   ${receive_qr}
    Element Text Should Be    ${Receive_qr_key_xpath}    ${receive_qr_keyword}

Fill the payment form with valid data
    [Arguments]    ${amount}    ${description}
    Input Text    ${amount_css}    ${amount}
    Input Text    ${descript_css}    ${description}
    Click Button    ${gen_qr}

Verify the qr code is displayed
    Wait Until Element Is Visible    ${gen_qr}
    Element Should Be Visible    ${gen_qr}

Fill the payment form with invalid data
    [Arguments]    ${amount}    ${description}
    Input Text    ${amount_css}    ${amount}
    Input Text    ${descript_css}    ${description}
    Click Button    ${gen_qr}

verify error message is displayed
    Element Should Be Visible    ${error_mess}