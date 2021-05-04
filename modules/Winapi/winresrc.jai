// 
// Module Name:
// 
//     winresrc.jai
// 
// Abstract:
// 
//     This module defines the 32-Bit Windows resource codes.
// 

#run {
    if !defined(WINVER) {
        define(*WINVER, 0x500);
    }

    if !defined(_WIN32_IE) {
        define(*_WIN32_IE, 0x0501);
    }

    if !defined(_WIN32_WINDOWS) {
        define(*_WIN32_WINDOWS, 0x0410);
    }

    if !defined(_WIN32_WINNT) {
        define(*_WIN32_WINNT, 0x0500);
    }
}

#load "winuser_rh.jai";
#load "commctrl_rh.jai";
#load "dde_rh.jai";
#load "winnt_rh.jai";
#load "dlgs.jai";
#load "winver.jai";

