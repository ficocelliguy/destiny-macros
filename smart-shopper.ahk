#NoEnv
#SingleInstance Force
#KeyHistory 0
SetBatchLines -1
ListLines Off
SendMode Input

alt & `::
SetTimer, start_click_loop_2000, off
SetTimer, start_click_loop_rapid, off
SetTimer, start_dismantle_loop, off
return

alt & 1::
SetTimer, start_click_loop_2000, 2000
return

alt & 2::
SetTimer, start_click_loop_rapid, 100
return

alt & 3::
SetTimer, start_dismantle_loop, 2000
return

start_click_loop_2000() {
     Click down
     Sleep, 2000
     Click up
}

start_click_loop_rapid() {
     Click
}

start_dismantle_loop() {
     Send {f down}
     Sleep, 2000
     Send {f up}
}