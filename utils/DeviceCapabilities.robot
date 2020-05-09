*** Keywords ***
Get Device Dimensions
  ${device_size}=               Get Element Size        //android.widget.LinearLayout
  ${values}=                    Get Dictionary Values   ${device_size}
  ${DEVICE_HEIGHT}=             Get From List           ${values}       0
  ${DEVICE_WIDHT}=              Get From List           ${values}       1
  Set Global Variable           ${DEVICE_HEIGHT}
  Set Global Variable           ${DEVICE_WIDHT}

Swipe Up Half
  ${start_x}=           Evaluate        ${DEVICE_WIDHT} / 2
  ${start_y}=           Evaluate        ${DEVICE_HEIGHT} / 2
  ${end_x}=             Evaluate        ${DEVICE_WIDHT} / 2
  ${end_y}=             Evaluate        ${DEVICE_HEIGHT} * 9.95
  Swipe                 ${start_x}      ${start_y}  ${end_x}  ${end_y}  1000

Swipe Down Half
  ${start_x}=           Evaluate        ${DEVICE_WIDHT} / 2
  ${start_y}=           Evaluate        ${DEVICE_HEIGHT} / 2
  ${end_x}=             Evaluate        ${DEVICE_WIDHT} / 2
  ${end_y}=             Evaluate        ${DEVICE_HEIGHT} * 0.05
  Swipe                 ${start_x}      ${start_y}  ${end_x}  ${end_y}  1000
