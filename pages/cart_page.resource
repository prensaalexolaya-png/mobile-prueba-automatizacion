*** Keywords ***
Abrir checkout desde carrito
    Wait Until Element Is Visible    accessibility_id=Proceed To Checkout button    10s
    Click Element    accessibility_id=Proceed To Checkout button