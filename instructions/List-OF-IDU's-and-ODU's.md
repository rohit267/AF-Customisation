
Note: This list is still under review, the information in this table maybe be inaccurate to some extent. 

# 📦 List of IDUs

| Model   | Manufacturer | Firmware Prefix    | Bootloader Access | DebugPorts | RootAccess | Openwrt_version | Known Issues ?                                          |
| ------- | ------------ | ------------------ | ----------------- | ---------- | ---------- | --------------- | ------------------------------------------------------- |
| IDU6101 | Arcadyan     | ARCNJIO_JIDU6101_R | ✅                 | uart       | ✅          | 21.02-SNAPSHOT  | 160mhz wont work on fw v2.0.9                           |
| IDU6801 | GMOB         | GMOBJIO_JIDU6801_R | ✅                 | uart       | ✅          | 21.02-SNAPSHOT  | 160mhz wont work on fw v2.0.9                           |
| IDU6601 | SPED         | SPEDJIO_JIDU6601_R | ✅                 | uart       | ✅          | 21.02-SNAPSHOT  | 160mhz wont work on fw v2.0.9                           |
| IDU6401 | Sercomm      | SRCMJIO_JIDU6401_R | ✅                 | uart       | ✅          | 21.02-SNAPSHOT  | 160mhz wont work on fw v2.0.9                           |
| IDU6701 | Skyworth     | SKYWJIO_JIDU6701_R | ✅                 | uart       | ✅          | 21.02-SNAPSHOT  | 160mhz wont work on fw v2.0.9                           |
| IDU6811 | Telpa        | JIO_JIDU6J11_R     | ❓                 | uart       | ✅          | 19.07-SNAPSHOT  | Some users faced setting not persisting across reboots. |
|         |              |                    |                   |            |            |                 |                                                         |

# 📡 List of ODUs

| Model     | Manufacturer / Assembler      | Module Used                                   | Firmware_release         | DebugPorts                         | RootAccess                   | Extra Info                                           |
| --------- | ----------------------------- | --------------------------------------------- | ------------------------ | ---------------------------------- | ---------------------------- | ---------------------------------------------------- |
| JODU52040 | Askey                         | RG500Q-EA (SDX55)                             | JODU52040_REL_07_27_00_S | uart✅ usb✅                         | yes✅, via usb -> adb -> ssh  |                                                      |
| JODU52041 | Askey                         | RG500Q-EA(SDX55) _(?) - Needs cross-checking_ | TBD                      | uart✅ usb✅                         | yes✅, via usb -> adb -> ssh  |                                                      |
| JODU51641 | ❓ Unknown                     | ❓ Unknown                                     | TBD                      | uart❓ usb❓                         | Not yet, Unconfirmed❓        |                                                      |
| JODU51642 | Compal NXP                    | ❓ Unknown                                     | TBD                      | uart✅ usb❌(unknown, driver)        | Not yet, Console locked      |                                                      |
| JODU52240 | Arcadyan                      | RG520F-JO(SDX65)                              | TBD                      | uart❓ usb❓                         | Not yet, Unconfirmed❓        | Latest FW updates have disabled the webui abilities. |
| JODU52140 | SPPEDTECH / NEOLYNC / LUXSLAM | RG520F-JO(SDX65)                              | TBD                      | uart✅ usb❌(doesnt expose any port) | Not yet, Console locked      |                                                      |
| JODU51741 | GeneralMobile                 | ❓ Unknown                                     | TBD                      | uart❓ usb✅(exposes only fastboot)  | Not yet, only Fastboot works |                                                      |

TBD: To be determined yet 

## Firmware links

| Firmware ID        | V2.0.9                                                                                | V2.0.16                                                            |
| ------------------ | ------------------------------------------------------------------------------------- | ------------------------------------------------------------------ |
| ARCNJIO_JIDU6101_R | [Download](https://mega.nz/file/q9oURIQb#--QU1QC0MsjTGuY_jh0NIB0XVuEL5Qh7fsrgT34bGCM) |                                                                    |
| GMOBJIO_JIDU6801_R | [Download](https://mega.nz/file/fhJi3BiZ#Dp_WtubqyFGhrk33rYGgdKgQUw7ax0FmUHaisNYmyd8) | [Download](https://mega.nz/folder/31YTlSbI#Ar-aQK605GZqI_1zc_PZtw) |
| SPEDJIO_JIDU6601_R | [Download](https://mega.nz/file/T5g03aLZ#AGr7fBJDbpa0dLXrL-bAdALjEBgAT1wVzL7ncA0RJq8) |                                                                    |
| SRCMJIO_JIDU6401_R | [Download](https://mega.nz/file/Pkh0SbpB#kBpW7ls7Y2GJ7Y47DmgzzHNd-OCBSEBUoMblwyovp_E) |                                                                    |
| SKYWJIO_JIDU6701_R | [Download](https://mega.nz/file/LgYkUTBJ#btKP77FlbvokfYR0mmBQCQEtCoLaAkIqjt7SpdKoiBI) |                                                                    |

