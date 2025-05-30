*** Variables ***
&{login_locator}
...     lbl_login_page=xpath=//h2[text()='${login_page.lbl_login_header}']
...     lbl_login_form=id=login
...     txt_username=id=username
...     txt_password=id=password
...     btn_login=xpath=//button/i[contains(text(),'${login_page.lbl_login}')]