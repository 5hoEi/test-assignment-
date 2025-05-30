*** Variables ***
&{common_locator}
...     lbl_alert_message=//div[@class='flash success' and contains(text(),'***string***')]
...     lbl_alert_error_message=//div[@class='flash error' and contains(text(),'***string***')]