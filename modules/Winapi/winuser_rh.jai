//
// Module Name:
// 
//     winuser_rh.jai
// 
// Abstract:
// 
//     This module defines the 32-Bit Windows resource codes from winuser.jai.
// 

#assert(OS == .WINDOWS);

#load "winapifamily.jai";

RT_MANIFEST                                        :: 24;
CREATEPROCESS_MANIFEST_RESOURCE_ID                 :: 1;
ISOLATIONAWARE_MANIFEST_RESOURCE_ID                :: 2;
ISOLATIONAWARE_NOSTATICIMPORT_MANIFEST_RESOURCE_ID :: 3;
ISOLATIONPOLICY_MANIFEST_RESOURCE_ID               :: 4;
ISOLATIONPOLICY_BROWSER_MANIFEST_RESOURCE_ID       :: 5;
MINIMUM_RESERVED_MANIFEST_RESOURCE_ID              :: 1;   // inclusive 
MAXIMUM_RESERVED_MANIFEST_RESOURCE_ID              :: 16;  // inclusive

/*
 * ShowWindow() Commands
 */
SW_HIDE            :: 0;
SW_SHOWNORMAL      :: 1;
SW_NORMAL          :: 1;
SW_SHOWMINIMIZED   :: 2;
SW_SHOWMAXIMIZED   :: 3;
SW_MAXIMIZE        :: 3;
SW_SHOWNOACTIVATE  :: 4;
SW_SHOW            :: 5;
SW_MINIMIZE        :: 6;
SW_SHOWMINNOACTIVE :: 7;
SW_SHOWNA          :: 8;
SW_RESTORE         :: 9;
SW_SHOWDEFAULT     :: 10;
SW_FORCEMINIMIZE   :: 11;
SW_MAX             :: 11;


/*
 * Old ShowWindow() Commands
 */
HIDE_WINDOW         :: 0;
SHOW_OPENWINDOW     :: 1;
SHOW_ICONWINDOW     :: 2;
SHOW_FULLSCREEN     :: 3;
SHOW_OPENNOACTIVATE :: 4;

/*
 * Identifiers for the WM_SHOWWINDOW message
 */
SW_PARENTCLOSING :: 1;
SW_OTHERZOOM     :: 2;
SW_PARENTOPENING :: 3;
SW_OTHERUNZOOM   :: 4;


/*
 * Virtual Keys, Standard Set
 */
VK_LBUTTON       :: 0x01;
VK_RBUTTON       :: 0x02;
VK_CANCEL        :: 0x03;
VK_MBUTTON       :: 0x04;    /* NOT contiguous with L & RBUTTON */

#run {
    if (_WIN32_WINNT >= 0x0500) {
        VK_XBUTTON1     :: 0x05;    /* NOT contiguous with L & RBUTTON */
        VK_XBUTTON2     :: 0x06;    /* NOT contiguous with L & RBUTTON */
    } /* _WIN32_WINNT >= 0x0500 */
}

/*
 * 0x07 : reserved
 */

VK_BACK           :: 0x08;
VK_TAB            :: 0x09;

/*
 * 0x0A - 0x0B : reserved
 */

VK_CLEAR          :: 0x0C;
VK_RETURN         :: 0x0D;

/*
 * 0x0E - 0x0F : unassigned
 */

VK_SHIFT          :: 0x10;
VK_CONTROL        :: 0x11;
VK_MENU           :: 0x12;
VK_PAUSE          :: 0x13;
VK_CAPITAL        :: 0x14;

VK_KANA           :: 0x15;
VK_HANGEUL        :: 0x15;  /* old name - should be here for compatibility */
VK_HANGUL         :: 0x15;
VK_IME_ON         :: 0x16;
VK_JUNJA          :: 0x17;
VK_FINAL          :: 0x18;
VK_HANJA          :: 0x19;
VK_KANJI          :: 0x19;
VK_IME_OFF        :: 0x1A;

VK_ESCAPE         :: 0x1B;

VK_CONVERT        :: 0x1C;
VK_NONCONVERT     :: 0x1D;
VK_ACCEPT         :: 0x1E;
VK_MODECHANGE     :: 0x1F;

VK_SPACE          :: 0x20;
VK_PRIOR          :: 0x21;
VK_NEXT           :: 0x22;
VK_END            :: 0x23;
VK_HOME           :: 0x24;
VK_LEFT           :: 0x25;
VK_UP             :: 0x26;
VK_RIGHT          :: 0x27;
VK_DOWN           :: 0x28;
VK_SELECT         :: 0x29;
VK_PRINT          :: 0x2A;
VK_EXECUTE        :: 0x2B;
VK_SNAPSHOT       :: 0x2C;
VK_INSERT         :: 0x2D;
VK_DELETE         :: 0x2E;
VK_HELP           :: 0x2F;

/*
 * VK_0 - VK_9 are the same as ASCII '0' - '9' (0x30 - 0x39)
 * 0x3A - 0x40 : unassigned
 * VK_A - VK_Z are the same as ASCII 'A' - 'Z' (0x41 - 0x5A)
 */

VK_LWIN           :: 0x5B;
VK_RWIN           :: 0x5C;
VK_APPS           :: 0x5D;

/*
 * 0x5E : reserved
 */

VK_SLEEP          :: 0x5F;

VK_NUMPAD0        :: 0x60;
VK_NUMPAD1        :: 0x61;
VK_NUMPAD2        :: 0x62;
VK_NUMPAD3        :: 0x63;
VK_NUMPAD4        :: 0x64;
VK_NUMPAD5        :: 0x65;
VK_NUMPAD6        :: 0x66;
VK_NUMPAD7        :: 0x67;
VK_NUMPAD8        :: 0x68;
VK_NUMPAD9        :: 0x69;
VK_MULTIPLY       :: 0x6A;
VK_ADD            :: 0x6B;
VK_SEPARATOR      :: 0x6C;
VK_SUBTRACT       :: 0x6D;
VK_DECIMAL        :: 0x6E;
VK_DIVIDE         :: 0x6F;
VK_F1             :: 0x70;
VK_F2             :: 0x71;
VK_F3             :: 0x72;
VK_F4             :: 0x73;
VK_F5             :: 0x74;
VK_F6             :: 0x75;
VK_F7             :: 0x76;
VK_F8             :: 0x77;
VK_F9             :: 0x78;
VK_F10            :: 0x79;
VK_F11            :: 0x7A;
VK_F12            :: 0x7B;
VK_F13            :: 0x7C;
VK_F14            :: 0x7D;
VK_F15            :: 0x7E;
VK_F16            :: 0x7F;
VK_F17            :: 0x80;
VK_F18            :: 0x81;
VK_F19            :: 0x82;
VK_F20            :: 0x83;
VK_F21            :: 0x84;
VK_F22            :: 0x85;
VK_F23            :: 0x86;
VK_F24            :: 0x87;

#run {
    if (_WIN32_WINNT >= 0x0604) {
        /*
        * 0x88 - 0x8F : UI navigation
        */
        VK_NAVIGATION_VIEW     :: 0x88; // reserved
        VK_NAVIGATION_MENU     :: 0x89; // reserved
        VK_NAVIGATION_UP       :: 0x8A; // reserved
        VK_NAVIGATION_DOWN     :: 0x8B; // reserved
        VK_NAVIGATION_LEFT     :: 0x8C; // reserved
        VK_NAVIGATION_RIGHT    :: 0x8D; // reserved
        VK_NAVIGATION_ACCEPT   :: 0x8E; // reserved
        VK_NAVIGATION_CANCEL   :: 0x8F; // reserved
    }
} /* _WIN32_WINNT >= 0x0604 */

VK_NUMLOCK        :: 0x90;
VK_SCROLL         :: 0x91;

/*
 * NEC PC-9800 kbd definitions
 */
VK_OEM_NEC_EQUAL  :: 0x92;   // '=' key on numpad

/*
 * Fujitsu/OASYS kbd definitions
 */
VK_OEM_FJ_JISHO   :: 0x92;   // 'Dictionary' key
VK_OEM_FJ_MASSHOU :: 0x93;   // 'Unregister word' key
VK_OEM_FJ_TOUROKU :: 0x94;   // 'Register word' key
VK_OEM_FJ_LOYA    :: 0x95;   // 'Left OYAYUBI' key
VK_OEM_FJ_ROYA    :: 0x96;   // 'Right OYAYUBI' key

/*
 * 0x97 - 0x9F : unassigned
 */

/*
 * VK_L* & VK_R* - left and right Alt, Ctrl and Shift virtual keys.
 * Used only as parameters to GetAsyncKeyState() and GetKeyState().
 * No other API or message will distinguish left and right keys in this way.
 */
VK_LSHIFT         :: 0xA0;
VK_RSHIFT         :: 0xA1;
VK_LCONTROL       :: 0xA2;
VK_RCONTROL       :: 0xA3;
VK_LMENU          :: 0xA4;
VK_RMENU          :: 0xA5;

#run {
    if (_WIN32_WINNT >= 0x0500) {
        VK_BROWSER_BACK        :: 0xA6;
        VK_BROWSER_FORWARD     :: 0xA7;
        VK_BROWSER_REFRESH     :: 0xA8;
        VK_BROWSER_STOP        :: 0xA9;
        VK_BROWSER_SEARCH      :: 0xAA;
        VK_BROWSER_FAVORITES   :: 0xAB;
        VK_BROWSER_HOME        :: 0xAC;
        VK_VOLUME_MUTE         :: 0xAD;
        VK_VOLUME_DOWN         :: 0xAE;
        VK_VOLUME_UP           :: 0xAF;
        VK_MEDIA_NEXT_TRACK    :: 0xB0;
        VK_MEDIA_PREV_TRACK    :: 0xB1;
        VK_MEDIA_STOP          :: 0xB2;
        VK_MEDIA_PLAY_PAUSE    :: 0xB3;
        VK_LAUNCH_MAIL         :: 0xB4;
        VK_LAUNCH_MEDIA_SELECT :: 0xB5;
        VK_LAUNCH_APP1         :: 0xB6;
        VK_LAUNCH_APP2         :: 0xB7;
    }
} /* _WIN32_WINNT >= 0x0500 */

/*
 * 0xB8 - 0xB9 : reserved
 */

VK_OEM_1          :: 0xBA;   // ';:' for US
VK_OEM_PLUS       :: 0xBB;   // '+' any country
VK_OEM_COMMA      :: 0xBC;   // ',' any country
VK_OEM_MINUS      :: 0xBD;   // '-' any country
VK_OEM_PERIOD     :: 0xBE;   // '.' any country
VK_OEM_2          :: 0xBF;   // '/?' for US
VK_OEM_3          :: 0xC0;   // '`~' for US

/*
 * 0xC1 - 0xC2 : reserved
 */

 #run {
     if (_WIN32_WINNT >= 0x0604) {
         /*
         * 0xC3 - 0xDA : Gamepad input
         */
         VK_GAMEPAD_A                        :: 0xC3; // reserved
         VK_GAMEPAD_B                        :: 0xC4; // reserved
         VK_GAMEPAD_X                        :: 0xC5; // reserved
         VK_GAMEPAD_Y                        :: 0xC6; // reserved
         VK_GAMEPAD_RIGHT_SHOULDER           :: 0xC7; // reserved
         VK_GAMEPAD_LEFT_SHOULDER            :: 0xC8; // reserved
         VK_GAMEPAD_LEFT_TRIGGER             :: 0xC9; // reserved
         VK_GAMEPAD_RIGHT_TRIGGER            :: 0xCA; // reserved
         VK_GAMEPAD_DPAD_UP                  :: 0xCB; // reserved
         VK_GAMEPAD_DPAD_DOWN                :: 0xCC; // reserved
         VK_GAMEPAD_DPAD_LEFT                :: 0xCD; // reserved
         VK_GAMEPAD_DPAD_RIGHT               :: 0xCE; // reserved
         VK_GAMEPAD_MENU                     :: 0xCF; // reserved
         VK_GAMEPAD_VIEW                     :: 0xD0; // reserved
         VK_GAMEPAD_LEFT_THUMBSTICK_BUTTON   :: 0xD1; // reserved
         VK_GAMEPAD_RIGHT_THUMBSTICK_BUTTON  :: 0xD2; // reserved
         VK_GAMEPAD_LEFT_THUMBSTICK_UP       :: 0xD3; // reserved
         VK_GAMEPAD_LEFT_THUMBSTICK_DOWN     :: 0xD4; // reserved
         VK_GAMEPAD_LEFT_THUMBSTICK_RIGHT    :: 0xD5; // reserved
         VK_GAMEPAD_LEFT_THUMBSTICK_LEFT     :: 0xD6; // reserved
         VK_GAMEPAD_RIGHT_THUMBSTICK_UP      :: 0xD7; // reserved
         VK_GAMEPAD_RIGHT_THUMBSTICK_DOWN    :: 0xD8; // reserved
         VK_GAMEPAD_RIGHT_THUMBSTICK_RIGHT   :: 0xD9; // reserved
         VK_GAMEPAD_RIGHT_THUMBSTICK_LEFT    :: 0xDA; // reserved
     } /* _WIN32_WINNT >= 0x0604 */
 }


VK_OEM_4         :: 0xDB; //  '[{' for US
VK_OEM_5         :: 0xDC; //  '\|' for US
VK_OEM_6         :: 0xDD; //  ']}' for US
VK_OEM_7         :: 0xDE; //  ''"' for US
VK_OEM_8         :: 0xDF;

/*
 * 0xE0 : reserved
 */

/*
 * Various extended or enhanced keyboards
 */
VK_OEM_AX        :: 0xE1; //  'AX' key on Japanese AX kbd
VK_OEM_102       :: 0xE2;  //  "<>" or "\|" on RT 102-key kbd.
VK_ICO_HELP      :: 0xE3;  //  Help key on ICO
VK_ICO_00        :: 0xE4;  //  00 key on ICO

#run {
     if (WINVER >= 0x0400) {
         VK_PROCESSKEY   :: 0xE5;
     }
 }/* WINVER >= 0x0400 */

VK_ICO_CLEAR      :: 0xE6;

#run {
     if (_WIN32_WINNT >= 0x0500) {
         VK_PACKET         :: 0xE7;
     }
 } /* _WIN32_WINNT >= 0x0500 */

/*
 * 0xE8 : unassigned
 */

/*
 * Nokia/Ericsson definitions
 */
VK_OEM_RESET     :: 0xE9;
VK_OEM_JUMP      :: 0xEA;
VK_OEM_PA1       :: 0xEB;
VK_OEM_PA2       :: 0xEC;
VK_OEM_PA3       :: 0xED;
VK_OEM_WSCTRL    :: 0xEE;
VK_OEM_CUSEL     :: 0xEF;
VK_OEM_ATTN      :: 0xF0;
VK_OEM_FINISH    :: 0xF1;
VK_OEM_COPY      :: 0xF2;
VK_OEM_AUTO      :: 0xF3;
VK_OEM_ENLW      :: 0xF4;
VK_OEM_BACKTAB   :: 0xF5;
VK_ATTN          :: 0xF6;
VK_CRSEL         :: 0xF7;
VK_EXSEL         :: 0xF8;
VK_EREOF         :: 0xF9;
VK_PLAY          :: 0xFA;
VK_ZOOM          :: 0xFB;
VK_NONAME        :: 0xFC;
VK_PA1           :: 0xFD;
VK_OEM_CLEAR     :: 0xFE;

/*
 * 0xFF : reserved
 */


/*
 * Window Messages
 */

WM_NULL                        :: 0x0000;
WM_CREATE                      :: 0x0001;
WM_DESTROY                     :: 0x0002;
WM_MOVE                        :: 0x0003;
WM_SIZE                        :: 0x0005;

WM_ACTIVATE                    :: 0x0006;
/*
 * WM_ACTIVATE state values
 */
WA_INACTIVE     :: 0;
WA_ACTIVE       :: 1;
WA_CLICKACTIVE  :: 2;

WM_SETFOCUS                    :: 0x0007;
WM_KILLFOCUS                   :: 0x0008;
WM_ENABLE                      :: 0x000A;
WM_SETREDRAW                   :: 0x000B;
WM_SETTEXT                     :: 0x000C;
WM_GETTEXT                     :: 0x000D;
WM_GETTEXTLENGTH               :: 0x000E;
WM_PAINT                       :: 0x000F;
WM_CLOSE                       :: 0x0010;

#run {
    if !defined(_WIN32_WCE) {
        WM_QUERYENDSESSION             :: 0x0011;
        WM_QUERYOPEN                   :: 0x0013;
        WM_ENDSESSION                  :: 0x0016;
    }
}

WM_QUIT                        :: 0x0012;
WM_ERASEBKGND                  :: 0x0014;
WM_SYSCOLORCHANGE              :: 0x0015;
WM_SHOWWINDOW                  :: 0x0018;
WM_WININICHANGE                :: 0x001A;

#run {
    if (WINVER >= 0x0400) {
        WM_SETTINGCHANGE               :: WM_WININICHANGE;
    }
} /* WINVER >= 0x0400 */

#run {
    if (NTDDI_VERSION >= NTDDI_WIN10_19H1) {}
} // NTDDI_VERSION >= NTDDI_WIN10_19H1


WM_DEVMODECHANGE               :: 0x001B;
WM_ACTIVATEAPP                 :: 0x001C;
WM_FONTCHANGE                  :: 0x001D;
WM_TIMECHANGE                  :: 0x001E;
WM_CANCELMODE                  :: 0x001F;
WM_SETCURSOR                   :: 0x0020;
WM_MOUSEACTIVATE               :: 0x0021;
WM_CHILDACTIVATE               :: 0x0022;
WM_QUEUESYNC                   :: 0x0023;

WM_GETMINMAXINFO               :: 0x0024;
WM_PAINTICON                   :: 0x0026;
WM_ICONERASEBKGND              :: 0x0027;
WM_NEXTDLGCTL                  :: 0x0028;
WM_SPOOLERSTATUS               :: 0x002A;
WM_DRAWITEM                    :: 0x002B;
WM_MEASUREITEM                 :: 0x002C;
WM_DELETEITEM                  :: 0x002D;
WM_VKEYTOITEM                  :: 0x002E;
WM_CHARTOITEM                  :: 0x002F;
WM_SETFONT                     :: 0x0030;
WM_GETFONT                     :: 0x0031;
WM_SETHOTKEY                   :: 0x0032;
WM_GETHOTKEY                   :: 0x0033;
WM_QUERYDRAGICON               :: 0x0037;
WM_COMPAREITEM                 :: 0x0039;

#run {
    if (WINVER >= 0x0500) {
        if !defined(_WIN32_WCE) {
            WM_GETOBJECT                   :: 0x003D;
        }
    }
} // WINVER >= 0x0500 */

WM_COMPACTING                  :: 0x0041;
WM_COMMNOTIFY                  :: 0x0044;  /* no longer suported */;
WM_WINDOWPOSCHANGING           :: 0x0046;
WM_WINDOWPOSCHANGED            :: 0x0047;

WM_POWER                       :: 0x0048;
/*
 * wParam for WM_POWER window message and DRV_POWER driver notification
 */
PWR_OK              :: 1;
PWR_FAIL            :: (-1);
PWR_SUSPENDREQUEST  :: 1;
PWR_SUSPENDRESUME   :: 2;
PWR_CRITICALRESUME  :: 3;

WM_COPYDATA                    :: 0x004A;
WM_CANCELJOURNAL               :: 0x004B;

#run {
    if (WINVER >= 0x0400) {
        WM_NOTIFY                      :: 0x004E;
        WM_INPUTLANGCHANGEREQUEST      :: 0x0050;
        WM_INPUTLANGCHANGE             :: 0x0051;
        WM_TCARD                       :: 0x0052;
        WM_HELP                        :: 0x0053;
        WM_USERCHANGED                 :: 0x0054;
        WM_NOTIFYFORMAT                :: 0x0055;

        NFR_ANSI                            :: 1;
        NFR_UNICODE                         :: 2;
        NF_QUERY                            :: 3;
        NF_REQUERY                          :: 4;

        WM_CONTEXTMENU                 :: 0x007B;
        WM_STYLECHANGING               :: 0x007C;
        WM_STYLECHANGED                :: 0x007D;
        WM_DISPLAYCHANGE               :: 0x007E;
        WM_GETICON                     :: 0x007F;
        WM_SETICON                     :: 0x0080;
    } /* WINVER >= 0x0400 */
}

WM_NCCREATE                    :: 0x0081;
WM_NCDESTROY                   :: 0x0082;
WM_NCCALCSIZE                  :: 0x0083;
WM_NCHITTEST                   :: 0x0084;
WM_NCPAINT                     :: 0x0085;
WM_NCACTIVATE                  :: 0x0086;
WM_GETDLGCODE                  :: 0x0087;

#run {
    if !defined(_WIN32_WCE) {
        WM_SYNCPAINT                   :: 0x0088;
    }
}

WM_NCMOUSEMOVE                 :: 0x00A0;
WM_NCLBUTTONDOWN               :: 0x00A1;
WM_NCLBUTTONUP                 :: 0x00A2;
WM_NCLBUTTONDBLCLK             :: 0x00A3;
WM_NCRBUTTONDOWN               :: 0x00A4;
WM_NCRBUTTONUP                 :: 0x00A5;
WM_NCRBUTTONDBLCLK             :: 0x00A6;
WM_NCMBUTTONDOWN               :: 0x00A7;
WM_NCMBUTTONUP                 :: 0x00A8;
WM_NCMBUTTONDBLCLK             :: 0x00A9;


#run {
    if (_WIN32_WINNT >= 0x0500) {
        WM_NCXBUTTONDOWN               :: 0x00AB;
        WM_NCXBUTTONUP                 :: 0x00AC;
        WM_NCXBUTTONDBLCLK             :: 0x00AD;
    } /* _WIN32_WINNT >= 0x0500 */

    if (_WIN32_WINNT >= 0x0501) {
        WM_INPUT_DEVICE_CHANGE         :: 0x00FE;
    } /* _WIN32_WINNT >= 0x0501 */

    if (_WIN32_WINNT >= 0x0501) {
        WM_INPUT                       :: 0x00FF;
    } /* _WIN32_WINNT >= 0x0501 */
}

WM_KEYFIRST                    :: 0x0100;
WM_KEYDOWN                     :: 0x0100;
WM_KEYUP                       :: 0x0101;
WM_CHAR                        :: 0x0102;
WM_DEADCHAR                    :: 0x0103;
WM_SYSKEYDOWN                  :: 0x0104;
WM_SYSKEYUP                    :: 0x0105;
WM_SYSCHAR                     :: 0x0106;
WM_SYSDEADCHAR                 :: 0x0107;

#run {
    if (_WIN32_WINNT >= 0x0501) {
        WM_UNICHAR                     :: 0x0109;
        WM_KEYLAST                     :: 0x0109;
        UNICODE_NOCHAR                 :: 0xFFFF;
    } else {
        WM_KEYLAST                     :: 0x0108;
    } /* _WIN32_WINNT >= 0x0501 */

    if (WINVER >= 0x0400) {
        WM_IME_STARTCOMPOSITION        :: 0x010D;
        WM_IME_ENDCOMPOSITION          :: 0x010E;
        WM_IME_COMPOSITION             :: 0x010F;
        WM_IME_KEYLAST                 :: 0x010F;
    } // WINVER >= 0x0400 */
}

WM_INITDIALOG                  :: 0x0110;
WM_COMMAND                     :: 0x0111;
WM_SYSCOMMAND                  :: 0x0112;
WM_TIMER                       :: 0x0113;
WM_HSCROLL                     :: 0x0114;
WM_VSCROLL                     :: 0x0115;
WM_INITMENU                    :: 0x0116;
WM_INITMENUPOPUP               :: 0x0117;

#run {
    if (WINVER >= 0x0601) {
        WM_GESTURE                     :: 0x0119;
        WM_GESTURENOTIFY               :: 0x011A;
    } /* WINVER >= 0x0601 */
}

WM_MENUSELECT                  :: 0x011F;
WM_MENUCHAR                    :: 0x0120;
WM_ENTERIDLE                   :: 0x0121;

#run {
    if (WINVER >= 0x0500) {
        if !defined(_WIN32_WCE) {
            WM_MENURBUTTONUP               :: 0x0122;
            WM_MENUDRAG                    :: 0x0123;
            WM_MENUGETOBJECT               :: 0x0124;
            WM_UNINITMENUPOPUP             :: 0x0125;
            WM_MENUCOMMAND                 :: 0x0126;

            if !defined(_WIN32_WCE) {
                if (_WIN32_WINNT >= 0x0500) {
                    WM_CHANGEUISTATE               :: 0x0127;
                    WM_UPDATEUISTATE               :: 0x0128;
                    WM_QUERYUISTATE                :: 0x0129;

                    /*
                    * LOWORD(wParam) values in WM_*UISTATE*
                    */
                    UIS_SET                         :: 1;
                    UIS_CLEAR                       :: 2;
                    UIS_INITIALIZE                  :: 3;

                    /*
                    * HIWORD(wParam) values in WM_*UISTATE*
                    */
                    UISF_HIDEFOCUS                 :: 0x1;
                    UISF_HIDEACCEL                 :: 0x2;
                    if (_WIN32_WINNT >= 0x0501) {
                        UISF_ACTIVE                 ::    0x4;
                    } /* _WIN32_WINNT >= 0x0501 */
                } /* _WIN32_WINNT >= 0x0500 */
            }
        }
    } /* WINVER >= 0x0500 */
}

WM_CTLCOLORMSGBOX              :: 0x0132;
WM_CTLCOLOREDIT                :: 0x0133;
WM_CTLCOLORLISTBOX             :: 0x0134;
WM_CTLCOLORBTN                 :: 0x0135;
WM_CTLCOLORDLG                 :: 0x0136;
WM_CTLCOLORSCROLLBAR           :: 0x0137;
WM_CTLCOLORSTATIC              :: 0x0138;
MN_GETHMENU                    :: 0x01E1;

WM_MOUSEFIRST                  :: 0x0200;
WM_MOUSEMOVE                   :: 0x0200;
WM_LBUTTONDOWN                 :: 0x0201;
WM_LBUTTONUP                   :: 0x0202;
WM_LBUTTONDBLCLK               :: 0x0203;
WM_RBUTTONDOWN                 :: 0x0204;
WM_RBUTTONUP                   :: 0x0205;
WM_RBUTTONDBLCLK               :: 0x0206;
WM_MBUTTONDOWN                 :: 0x0207;
WM_MBUTTONUP                   :: 0x0208;
WM_MBUTTONDBLCLK               :: 0x0209;

if (_WIN32_WINNT >= 0x0400) || (_WIN32_WINDOWS > 0x0400) {
    WM_MOUSEWHEEL                  :: 0x020A;
}

if (_WIN32_WINNT >= 0x0500) {
    WM_XBUTTONDOWN                 :: 0x020B;
    WM_XBUTTONUP                   :: 0x020C;
    WM_XBUTTONDBLCLK               :: 0x020D;
}

if (_WIN32_WINNT >= 0x0600) {
    WM_MOUSEHWHEEL                 :: 0x020E;
}

if (_WIN32_WINNT >= 0x0600) {
    WM_MOUSELAST                   :: 0x020E;
} else if (_WIN32_WINNT >= 0x0500) {
    WM_MOUSELAST                   :: 0x020D;
} else if (_WIN32_WINNT >= 0x0400) || (_WIN32_WINDOWS > 0x0400) {
    WM_MOUSELAST                   :: 0x020A;
} else {
    WM_MOUSELAST                   :: 0x0209;
} /* (_WIN32_WINNT >= 0x0600) */


if (_WIN32_WINNT >= 0x0400) {
/* Value for rolling one detent */
WHEEL_DELTA                    :: 120;
    GET_WHEEL_DELTA_WPARAM(wParam)  :: ((short)HIWORD(wParam));

/* Setting to scroll one page for SPI_GET/SETWHEELSCROLLLINES */
    WHEEL_PAGESCROLL               :: (UINT_MAX);
} /* _WIN32_WINNT >= 0x0400 */

if (_WIN32_WINNT >= 0x0500) {
    GET_KEYSTATE_WPARAM(wParam)    :: (LOWORD(wParam));
    GET_NCHITTEST_WPARAM(wParam)   :: ((short)LOWORD(wParam));
    GET_XBUTTON_WPARAM(wParam)     :: (HIWORD(wParam));

/* XButton values are WORD flags */
    XBUTTON1     :: 0x0001;
    XBUTTON2     :: 0x0002;
/* Were there to be an XBUTTON3, its value would be 0x0004 */
} /* _WIN32_WINNT >= 0x0500 */

WM_PARENTNOTIFY                :: 0x0210;
WM_ENTERMENULOOP               :: 0x0211;
WM_EXITMENULOOP                :: 0x0212;

if (WINVER >= 0x0400) {
    WM_NEXTMENU                    :: 0x0213;
    WM_SIZING                      :: 0x0214;
    WM_CAPTURECHANGED              :: 0x0215;
    WM_MOVING                      :: 0x0216;
    WM_POWERBROADCAST              :: 0x0218;
} /* WINVER >= 0x0400 */

if (WINVER >= 0x0400) {
    WM_DEVICECHANGE                :: 0x0219;
} /* WINVER >= 0x0400 */

WM_MDICREATE                   :: 0x0220;
WM_MDIDESTROY                  :: 0x0221;
WM_MDIACTIVATE                 :: 0x0222;
WM_MDIRESTORE                  :: 0x0223;
WM_MDINEXT                     :: 0x0224;
WM_MDIMAXIMIZE                 :: 0x0225;
WM_MDITILE                     :: 0x0226;
WM_MDICASCADE                  :: 0x0227;
WM_MDIICONARRANGE              :: 0x0228;
WM_MDIGETACTIVE                :: 0x0229;

WM_MDISETMENU                  :: 0x0230;
WM_ENTERSIZEMOVE               :: 0x0231;
WM_EXITSIZEMOVE                :: 0x0232;
WM_DROPFILES                   :: 0x0233;
WM_MDIREFRESHMENU              :: 0x0234;

if (WINVER >= 0x0602) {
    WM_POINTERDEVICECHANGE         :: 0x238;
    WM_POINTERDEVICEINRANGE        :: 0x239;
    WM_POINTERDEVICEOUTOFRANGE     :: 0x23A;
} /* WINVER >= 0x0602 */


if (WINVER >= 0x0601) {
    WM_TOUCH                       :: 0x0240;
} /* WINVER >= 0x0601 */

if (WINVER >= 0x0602) {
    WM_NCPOINTERUPDATE             :: 0x0241;
    WM_NCPOINTERDOWN               :: 0x0242;
    WM_NCPOINTERUP                 :: 0x0243;
    WM_POINTERUPDATE               :: 0x0245;
    WM_POINTERDOWN                 :: 0x0246;
    WM_POINTERUP                   :: 0x0247;
    WM_POINTERENTER                :: 0x0249;
    WM_POINTERLEAVE                :: 0x024A;
    WM_POINTERACTIVATE             :: 0x024B;
    WM_POINTERCAPTURECHANGED       :: 0x024C;
    WM_TOUCHHITTESTING             :: 0x024D;
    WM_POINTERWHEEL                :: 0x024E;
    WM_POINTERHWHEEL               :: 0x024F;
    DM_POINTERHITTEST              :: 0x0250;
    WM_POINTERROUTEDTO             :: 0x0251;
    WM_POINTERROUTEDAWAY           :: 0x0252;
    WM_POINTERROUTEDRELEASED       :: 0x0253;
} /* WINVER >= 0x0602 */


if (WINVER >= 0x0400) {
    WM_IME_SETCONTEXT              :: 0x0281;
    WM_IME_NOTIFY                  :: 0x0282;
    WM_IME_CONTROL                 :: 0x0283;
    WM_IME_COMPOSITIONFULL         :: 0x0284;
    WM_IME_SELECT                  :: 0x0285;
    WM_IME_CHAR                    :: 0x0286;
} /* WINVER >= 0x0400 */
if (WINVER >= 0x0500) {
    WM_IME_REQUEST                 :: 0x0288;
} /* WINVER >= 0x0500 */
if (WINVER >= 0x0400) {
    WM_IME_KEYDOWN                 :: 0x0290;
    WM_IME_KEYUP                   :: 0x0291;
} /* WINVER >= 0x0400 */

if ((_WIN32_WINNT >= 0x0400) || (WINVER >= 0x0500)) {
    WM_MOUSEHOVER                  :: 0x02A1;
    WM_MOUSELEAVE                  :: 0x02A3;
}
if (WINVER >= 0x0500) {
    WM_NCMOUSEHOVER                :: 0x02A0;
    WM_NCMOUSELEAVE                :: 0x02A2;
} /* WINVER >= 0x0500 */

if (_WIN32_WINNT >= 0x0501) {
    WM_WTSSESSION_CHANGE           :: 0x02B1;

    WM_TABLET_FIRST                :: 0x02c0;
    WM_TABLET_LAST                 :: 0x02df;
} /* _WIN32_WINNT >= 0x0501 */

if (WINVER >= 0x0601) {
    WM_DPICHANGED                  :: 0x02E0;
} /* WINVER >= 0x0601 */
if (WINVER >= 0x0605) {
    WM_DPICHANGED_BEFOREPARENT     :: 0x02E2;
    WM_DPICHANGED_AFTERPARENT      :: 0x02E3;
    WM_GETDPISCALEDSIZE            :: 0x02E4;
} /* WINVER >= 0x0605 */


WM_CUT                         :: 0x0300;
WM_COPY                        :: 0x0301;
WM_PASTE                       :: 0x0302;
WM_CLEAR                       :: 0x0303;
WM_UNDO                        :: 0x0304;
WM_RENDERFORMAT                :: 0x0305;
WM_RENDERALLFORMATS            :: 0x0306;
WM_DESTROYCLIPBOARD            :: 0x0307;
WM_DRAWCLIPBOARD               :: 0x0308;
WM_PAINTCLIPBOARD              :: 0x0309;
WM_VSCROLLCLIPBOARD            :: 0x030A;
WM_SIZECLIPBOARD               :: 0x030B;
WM_ASKCBFORMATNAME             :: 0x030C;
WM_CHANGECBCHAIN               :: 0x030D;
WM_HSCROLLCLIPBOARD            :: 0x030E;
WM_QUERYNEWPALETTE             :: 0x030F;
WM_PALETTEISCHANGING           :: 0x0310;
WM_PALETTECHANGED              :: 0x0311;
WM_HOTKEY                      :: 0x0312;

if (WINVER >= 0x0400) {
    WM_PRINT                       :: 0x0317;
    WM_PRINTCLIENT                 :: 0x0318;
} /* WINVER >= 0x0400 */

if (_WIN32_WINNT >= 0x0500) {
    WM_APPCOMMAND                  :: 0x0319;
} /* _WIN32_WINNT >= 0x0500 */

if (_WIN32_WINNT >= 0x0501) {
    WM_THEMECHANGED                :: 0x031A;
} /* _WIN32_WINNT >= 0x0501 */


if (_WIN32_WINNT >= 0x0501) {
    WM_CLIPBOARDUPDATE             :: 0x031D;
} /* _WIN32_WINNT >= 0x0501 */

if (_WIN32_WINNT >= 0x0600) {
    WM_DWMCOMPOSITIONCHANGED       :: 0x031E;
    WM_DWMNCRENDERINGCHANGED       :: 0x031F;
    WM_DWMCOLORIZATIONCOLORCHANGED :: 0x0320;
    WM_DWMWINDOWMAXIMIZEDCHANGE    :: 0x0321;
} /* _WIN32_WINNT >= 0x0600 */

if (_WIN32_WINNT >= 0x0601) {
    WM_DWMSENDICONICTHUMBNAIL          :: 0x0323;
    WM_DWMSENDICONICLIVEPREVIEWBITMAP  :: 0x0326;
} /* _WIN32_WINNT >= 0x0601 */


if (WINVER >= 0x0600) {
    WM_GETTITLEBARINFOEX           :: 0x033F;
} /* WINVER >= 0x0600 */

if (WINVER >= 0x0400) {
} /* WINVER >= 0x0400 */


if (WINVER >= 0x0400) {
    WM_HANDHELDFIRST               :: 0x0358;
    WM_HANDHELDLAST                :: 0x035F;

    WM_AFXFIRST                    :: 0x0360;
    WM_AFXLAST                     :: 0x037F;
} /* WINVER >= 0x0400 */

WM_PENWINFIRST                 :: 0x0380;
WM_PENWINLAST                  :: 0x038F;


if (WINVER >= 0x0400) {
    WM_APP                         :: 0x8000;
} /* WINVER >= 0x0400 */


/*
 * NOTE: All Message Numbers below 0x0400 are RESERVED.
 *
 * Private Window Messages Start Here:
 */
 WM_USER                        :: 0x0400;

if (WINVER >= 0x0400) {
/*  wParam for WM_SIZING message  */
WMSZ_LEFT          :: 1;
WMSZ_RIGHT         :: 2;
WMSZ_TOP           :: 3;
WMSZ_TOPLEFT       :: 4;
WMSZ_TOPRIGHT      :: 5;
WMSZ_BOTTOM        :: 6;
WMSZ_BOTTOMLEFT    :: 7;
WMSZ_BOTTOMRIGHT   :: 8;
} /* WINVER >= 0x0400 */

if !defined(NONCMESSAGES) {

/*
 * WM_NCHITTEST and MOUSEHOOKSTRUCT Mouse Position Codes
 */
HTERROR            :: (-2);
HTTRANSPARENT      :: (-1);
HTNOWHERE          :: 0;
HTCLIENT           :: 1;
HTCAPTION          :: 2;
HTSYSMENU          :: 3;
HTGROWBOX          :: 4;
HTSIZE             :: HTGROWBOX;
HTMENU             :: 5;
HTHSCROLL          :: 6;
HTVSCROLL          :: 7;
HTMINBUTTON        :: 8;
HTMAXBUTTON        :: 9;
HTLEFT             :: 10;
HTRIGHT            :: 11;
HTTOP              :: 12;
HTTOPLEFT          :: 13;
HTTOPRIGHT         :: 14;
HTBOTTOM           :: 15;
HTBOTTOMLEFT       :: 16;
HTBOTTOMRIGHT      :: 17;
HTBORDER           :: 18;
HTREDUCE           :: HTMINBUTTON;
HTZOOM             :: HTMAXBUTTON;
HTSIZEFIRST        :: HTLEFT;
HTSIZELAST         :: HTBOTTOMRIGHT;


if (WINVER >= 0x0400) {
    HTOBJECT           :: 19;
    HTCLOSE            :: 20;
    HTHELP             :: 21;
} /* WINVER >= 0x0400 */


/*
 * SendMessageTimeout values
 */
 SMTO_NORMAL        :: 0x0000;
 SMTO_BLOCK         :: 0x0001;
 SMTO_ABORTIFHUNG   :: 0x0002;

if (WINVER >= 0x0500) {
    SMTO_NOTIMEOUTIFNOTHUNG :: 0x0008;
} /* WINVER >= 0x0500 */
if (WINVER >= 0x0600) {
    SMTO_ERRORONEXIT   :: 0x0020;
} /* WINVER >= 0x0600 */
if (WINVER >= 0x0602) {
} /* WINVER >= 0x0602 */
} /* !NONCMESSAGES */

/*
 * WM_MOUSEACTIVATE Return Codes
 */
 MA_ACTIVATE        :: 1;
 MA_ACTIVATEANDEAT  :: 2;
 MA_NOACTIVATE      :: 3;
 MA_NOACTIVATEANDEAT:: 4;

/*
 * WM_SETICON / WM_GETICON Type Codes
 */
 ICON_SMALL         :: 0;
 ICON_BIG           :: 1;
if (_WIN32_WINNT >= 0x0501) {
    ICON_SMALL2        :: 2;
} /* _WIN32_WINNT >= 0x0501 */


/*
 * WM_SIZE message wParam values
 */
 SIZE_RESTORED      :: 0;
 SIZE_MINIMIZED     :: 1;
 SIZE_MAXIMIZED     :: 2;
 SIZE_MAXSHOW       :: 3;
 SIZE_MAXHIDE       :: 4;

/*
 * Obsolete constant names
 */
 SIZENORMAL         :: SIZE_RESTORED;
 SIZEICONIC         :: SIZE_MINIMIZED;
 SIZEFULLSCREEN     :: SIZE_MAXIMIZED;
 SIZEZOOMSHOW       :: SIZE_MAXSHOW;
 SIZEZOOMHIDE       :: SIZE_MAXHIDE;

/*
 * WM_NCCALCSIZE "window valid rect" return values
 */
 WVR_ALIGNTOP       :: 0x0010;
 WVR_ALIGNLEFT      :: 0x0020;
 WVR_ALIGNBOTTOM    :: 0x0040;
 WVR_ALIGNRIGHT     :: 0x0080;
 WVR_HREDRAW        :: 0x0100;
 WVR_VREDRAW        :: 0x0200;
 WVR_REDRAW         :: (WVR_HREDRAW | WVR_VREDRAW);
WVR_VALIDRECTS     :: 0x0400;


if !defined(NOKEYSTATES) {

/*
 * Key State Masks for Mouse Messages
 */
 MK_LBUTTON         :: 0x0001;
 MK_RBUTTON         :: 0x0002;
 MK_SHIFT           :: 0x0004;
 MK_CONTROL         :: 0x0008;
 MK_MBUTTON         :: 0x0010;
if (_WIN32_WINNT >= 0x0500) {
    MK_XBUTTON1        :: 0x0020;
    MK_XBUTTON2        :: 0x0040;
} /* _WIN32_WINNT >= 0x0500 */

} /* !NOKEYSTATES */


if (_WIN32_WINNT >= 0x0400) {
if !defined(NOTRACKMOUSEEVENT) {

    TME_HOVER      :: 0x00000001;
    TME_LEAVE      :: 0x00000002;
if (WINVER >= 0x0500) {
    TME_NONCLIENT  :: 0x00000010;
} /* WINVER >= 0x0500 */
TME_QUERY      :: 0x40000000;
TME_CANCEL     :: 0x80000000;


HOVER_DEFAULT  :: 0xFFFFFFFF;
} /* _WIN32_WINNT >= 0x0400 */
if (_WIN32_WINNT >= 0x0400) {

} /* !NOTRACKMOUSEEVENT */
} /* _WIN32_WINNT >= 0x0400 */


/*
 * Window Styles
 */
 WS_OVERLAPPED      :: 0x00000000L;
 WS_POPUP           :: 0x80000000L;
 WS_CHILD           :: 0x40000000L;
 WS_MINIMIZE        :: 0x20000000L;
 WS_VISIBLE         :: 0x10000000L;
 WS_DISABLED        :: 0x08000000L;
 WS_CLIPSIBLINGS    :: 0x04000000L;
 WS_CLIPCHILDREN    :: 0x02000000L;
 WS_MAXIMIZE        :: 0x01000000L;
 WS_CAPTION         :: 0x00C00000L;     /* WS_BORDER | WS_DLGFRAME  */
 WS_BORDER          :: 0x00800000L;
 WS_DLGFRAME        :: 0x00400000L;
 WS_VSCROLL         :: 0x00200000L;
 WS_HSCROLL         :: 0x00100000L;
 WS_SYSMENU         :: 0x00080000L;
 WS_THICKFRAME      :: 0x00040000L;
 WS_GROUP           :: 0x00020000L;
 WS_TABSTOP         :: 0x00010000L;

 WS_MINIMIZEBOX     :: 0x00020000L;
 WS_MAXIMIZEBOX     :: 0x00010000L;


 WS_TILED           :: WS_OVERLAPPED;
 WS_ICONIC          :: WS_MINIMIZE;
 WS_SIZEBOX         :: WS_THICKFRAME;
 WS_TILEDWINDOW     :: WS_OVERLAPPEDWINDOW;

/*
 * Common Window Styles
 */
 WS_OVERLAPPEDWINDOW :: (WS_OVERLAPPED | WS_CAPTION | WS_SYSMENU | 
 WS_THICKFRAME | WS_MINIMIZEBOX | WS_MAXIMIZEBOX);

WS_POPUPWINDOW     :: (WS_POPUP | WS_BORDER | WS_SYSMENU);

WS_CHILDWINDOW     :: (WS_CHILD);

/*
 * Extended Window Styles
 */
 WS_EX_DLGMODALFRAME    :: 0x00000001L;
 WS_EX_NOPARENTNOTIFY   :: 0x00000004L;
 WS_EX_TOPMOST          :: 0x00000008L;
 WS_EX_ACCEPTFILES      :: 0x00000010L;
 WS_EX_TRANSPARENT      :: 0x00000020L;
if (WINVER >= 0x0400) {
    WS_EX_MDICHILD         :: 0x00000040L;
    WS_EX_TOOLWINDOW       :: 0x00000080L;
    WS_EX_WINDOWEDGE       :: 0x00000100L;
    WS_EX_CLIENTEDGE       :: 0x00000200L;
    WS_EX_CONTEXTHELP      :: 0x00000400L;

} /* WINVER >= 0x0400 */
if (WINVER >= 0x0400) {

    WS_EX_RIGHT            :: 0x00001000L;
    WS_EX_LEFT             :: 0x00000000L;
    WS_EX_RTLREADING       :: 0x00002000L;
    WS_EX_LTRREADING       :: 0x00000000L;
    WS_EX_LEFTSCROLLBAR    :: 0x00004000L;
    WS_EX_RIGHTSCROLLBAR   :: 0x00000000L;

    WS_EX_CONTROLPARENT    :: 0x00010000L;
    WS_EX_STATICEDGE       :: 0x00020000L;
    WS_EX_APPWINDOW        :: 0x00040000L;


    WS_EX_OVERLAPPEDWINDOW :: (WS_EX_WINDOWEDGE | WS_EX_CLIENTEDGE);
    WS_EX_PALETTEWINDOW    :: (WS_EX_WINDOWEDGE | WS_EX_TOOLWINDOW | WS_EX_TOPMOST);

} /* WINVER >= 0x0400 */

if (_WIN32_WINNT >= 0x0500) {
    WS_EX_LAYERED          :: 0x00080000;

} /* _WIN32_WINNT >= 0x0500 */


if (WINVER >= 0x0500) {
    WS_EX_NOINHERITLAYOUT  :: 0x00100000L; // Disable inheritence of mirroring by children
} /* WINVER >= 0x0500 */

if (WINVER >= 0x0602) {
    WS_EX_NOREDIRECTIONBITMAP:: 0x00200000L;
} /* WINVER >= 0x0602 */

if (WINVER >= 0x0500) {
    WS_EX_LAYOUTRTL        :: 0x00400000L; // Right to left mirroring
} /* WINVER >= 0x0500 */

if (_WIN32_WINNT >= 0x0501) {
    WS_EX_COMPOSITED       :: 0x02000000L;
} /* _WIN32_WINNT >= 0x0501 */
if (_WIN32_WINNT >= 0x0500) {
    WS_EX_NOACTIVATE       :: 0x08000000L;
} /* _WIN32_WINNT >= 0x0500 */


/*
 * Class styles
 */
 CS_VREDRAW         :: 0x0001;
 CS_HREDRAW         :: 0x0002;
 CS_DBLCLKS         :: 0x0008;
 CS_OWNDC           :: 0x0020;
 CS_CLASSDC         :: 0x0040;
 CS_PARENTDC        :: 0x0080;
 CS_NOCLOSE         :: 0x0200;
 CS_SAVEBITS        :: 0x0800;
 CS_BYTEALIGNCLIENT :: 0x1000;
 CS_BYTEALIGNWINDOW :: 0x2000;
 CS_GLOBALCLASS     :: 0x4000;

 CS_IME             :: 0x00010000;
if (_WIN32_WINNT >= 0x0501) {
    CS_DROPSHADOW      :: 0x00020000;
} /* _WIN32_WINNT >= 0x0501 */



/*
 * Predefined Clipboard Formats
 */
 CF_TEXT            :: 1;
 CF_BITMAP          :: 2;
 CF_METAFILEPICT    :: 3;
 CF_SYLK            :: 4;
 CF_DIF             :: 5;
 CF_TIFF            :: 6;
 CF_OEMTEXT         :: 7;
 CF_DIB             :: 8;
 CF_PALETTE         :: 9;
 CF_PENDATA         :: 10;
 CF_RIFF            :: 11;
 CF_WAVE            :: 12;
 CF_UNICODETEXT     :: 13;
 CF_ENHMETAFILE     :: 14;
if (WINVER >= 0x0400) {
    CF_HDROP           :: 15;
    CF_LOCALE          :: 16;
} /* WINVER >= 0x0400 */
if (WINVER >= 0x0500) {
    CF_DIBV5           :: 17;
} /* WINVER >= 0x0500 */

if (WINVER >= 0x0500) {
    CF_MAX             :: 18;
} else {
    if(WINVER >= 0x0400) {
CF_MAX             :: 17;
} else {
CF_MAX             :: 15;
}

CF_OWNERDISPLAY    :: 0x0080;
CF_DSPTEXT         :: 0x0081;
CF_DSPBITMAP       :: 0x0082;
CF_DSPMETAFILEPICT :: 0x0083;
CF_DSPENHMETAFILE  :: 0x008E;

/*
 * "Private" formats don't get GlobalFree()'d
 */
 CF_PRIVATEFIRST    :: 0x0200;
 CF_PRIVATELAST     :: 0x02FF;

/*
 * "GDIOBJ" formats do get DeleteObject()'d
 */
 CF_GDIOBJFIRST     :: 0x0300;
 CF_GDIOBJLAST      :: 0x03FF;


/* ;win40  -- A lot of MF_* flags have been renamed as MFT_* and MFS_* flags */
/*
 * Menu flags for Add/Check/EnableMenuItem()
 */
 MF_INSERT          :: 0x00000000L;
 MF_CHANGE          :: 0x00000080L;
 MF_APPEND          :: 0x00000100L;
 MF_DELETE          :: 0x00000200L;
 MF_REMOVE          :: 0x00001000L;

 MF_BYCOMMAND       :: 0x00000000L;
 MF_BYPOSITION      :: 0x00000400L;

 MF_SEPARATOR       :: 0x00000800L;

 MF_ENABLED         :: 0x00000000L;
 MF_GRAYED          :: 0x00000001L;
 MF_DISABLED        :: 0x00000002L;

 MF_UNCHECKED       :: 0x00000000L;
 MF_CHECKED         :: 0x00000008L;
 MF_USECHECKBITMAPS :: 0x00000200L;

 MF_STRING          :: 0x00000000L;
 MF_BITMAP          :: 0x00000004L;
 MF_OWNERDRAW       :: 0x00000100L;

 MF_POPUP           :: 0x00000010L;
 MF_MENUBARBREAK    :: 0x00000020L;
 MF_MENUBREAK       :: 0x00000040L;

 MF_UNHILITE        :: 0x00000000L;
 MF_HILITE          :: 0x00000080L;

if (WINVER >= 0x0400) {
    MF_DEFAULT         :: 0x00001000L;
} /* WINVER >= 0x0400 */
MF_SYSMENU         :: 0x00002000L;
MF_HELP            :: 0x00004000L;
if (WINVER >= 0x0400) {
    MF_RIGHTJUSTIFY    :: 0x00004000L;
} /* WINVER >= 0x0400 */

MF_MOUSESELECT     :: 0x00008000L;
if (WINVER >= 0x0400) {
    MF_END             :: 0x00000080L;  /* Obsolete -- only used by old RES files */
} /* WINVER >= 0x0400 */


if (WINVER >= 0x0400) {
    MFT_STRING         :: MF_STRING;
    MFT_BITMAP         :: MF_BITMAP;
    MFT_MENUBARBREAK   :: MF_MENUBARBREAK;
    MFT_MENUBREAK      :: MF_MENUBREAK;
    MFT_OWNERDRAW      :: MF_OWNERDRAW;
    MFT_RADIOCHECK     :: 0x00000200L;
    MFT_SEPARATOR      :: MF_SEPARATOR;
    MFT_RIGHTORDER     :: 0x00002000L;
    MFT_RIGHTJUSTIFY   :: MF_RIGHTJUSTIFY;

/* Menu flags for Add/Check/EnableMenuItem() */
MFS_GRAYED         :: 0x00000003L;
MFS_DISABLED       :: MFS_GRAYED;
MFS_CHECKED        :: MF_CHECKED;
MFS_HILITE         :: MF_HILITE;
MFS_ENABLED        :: MF_ENABLED;
MFS_UNCHECKED      :: MF_UNCHECKED;
MFS_UNHILITE       :: MF_UNHILITE;
MFS_DEFAULT        :: MF_DEFAULT;
} /* WINVER >= 0x0400 */

MF_END            :: 0x00000080L;
/*
 * System Menu Command Values
 */
 SC_SIZE        :: 0xF000;
 SC_MOVE        :: 0xF010;
 SC_MINIMIZE    :: 0xF020;
 SC_MAXIMIZE    :: 0xF030;
 SC_NEXTWINDOW  :: 0xF040;
 SC_PREVWINDOW  :: 0xF050;
 SC_CLOSE       :: 0xF060;
 SC_VSCROLL     :: 0xF070;
 SC_HSCROLL     :: 0xF080;
 SC_MOUSEMENU   :: 0xF090;
 SC_KEYMENU     :: 0xF100;
 SC_ARRANGE     :: 0xF110;
 SC_RESTORE     :: 0xF120;
 SC_TASKLIST    :: 0xF130;
 SC_SCREENSAVE  :: 0xF140;
 SC_HOTKEY      :: 0xF150;
if (WINVER >= 0x0400) {
    SC_DEFAULT     :: 0xF160;
    SC_MONITORPOWER:: 0xF170;
    SC_CONTEXTHELP :: 0xF180;
    SC_SEPARATOR   :: 0xF00F;
} /* WINVER >= 0x0400 */

if (WINVER >= 0x0600) {
    SCF_ISSECURE   :: 0x00000001;
} /* WINVER >= 0x0600 */

GET_SC_WPARAM(wParam) :: ((int)wParam & 0xFFF0);

/*
 * Obsolete names
 */
 SC_ICON        :: SC_MINIMIZE;
 SC_ZOOM        :: SC_MAXIMIZE;


/*
 * OEM Resource Ordinal Numbers
 */
 OBM_CLOSE          :: 32754;
 OBM_UPARROW        :: 32753;
 OBM_DNARROW        :: 32752;
 OBM_RGARROW        :: 32751;
 OBM_LFARROW        :: 32750;
 OBM_REDUCE         :: 32749;
 OBM_ZOOM           :: 32748;
 OBM_RESTORE        :: 32747;
 OBM_REDUCED        :: 32746;
 OBM_ZOOMD          :: 32745;
 OBM_RESTORED       :: 32744;
 OBM_UPARROWD       :: 32743;
 OBM_DNARROWD       :: 32742;
 OBM_RGARROWD       :: 32741;
 OBM_LFARROWD       :: 32740;
 OBM_MNARROW        :: 32739;
 OBM_COMBO          :: 32738;
 OBM_UPARROWI       :: 32737;
 OBM_DNARROWI       :: 32736;
 OBM_RGARROWI       :: 32735;
 OBM_LFARROWI       :: 32734;

 OBM_OLD_CLOSE      :: 32767;
 OBM_SIZE           :: 32766;
 OBM_OLD_UPARROW    :: 32765;
 OBM_OLD_DNARROW    :: 32764;
 OBM_OLD_RGARROW    :: 32763;
 OBM_OLD_LFARROW    :: 32762;
 OBM_BTSIZE         :: 32761;
 OBM_CHECK          :: 32760;
 OBM_CHECKBOXES     :: 32759;
 OBM_BTNCORNERS     :: 32758;
 OBM_OLD_REDUCE     :: 32757;
 OBM_OLD_ZOOM       :: 32756;
 OBM_OLD_RESTORE    :: 32755;


 OCR_NORMAL         :: 32512;
 OCR_IBEAM          :: 32513;
 OCR_WAIT           :: 32514;
 OCR_CROSS          :: 32515;
 OCR_UP             :: 32516;
 OCR_SIZE           :: 32640;   /* OBSOLETE: use OCR_SIZEALL */
 OCR_ICON           :: 32641;   /* OBSOLETE: use OCR_NORMAL */
 OCR_SIZENWSE       :: 32642;
 OCR_SIZENESW       :: 32643;
 OCR_SIZEWE         :: 32644;
 OCR_SIZENS         :: 32645;
 OCR_SIZEALL        :: 32646;
 OCR_ICOCUR         :: 32647;   /* OBSOLETE: use OIC_WINLOGO */
 OCR_NO             :: 32648;
if (WINVER >= 0x0500) {
    OCR_HAND           :: 32649;
} /* WINVER >= 0x0500 */
if (WINVER >= 0x0400) {
    OCR_APPSTARTING    :: 32650;
} /* WINVER >= 0x0400 */


OIC_SAMPLE         :: 32512;
OIC_HAND           :: 32513;
OIC_QUES           :: 32514;
OIC_BANG           :: 32515;
OIC_NOTE           :: 32516;
if (WINVER >= 0x0400) {
    OIC_WINLOGO        :: 32517;
    OIC_WARNING        :: OIC_BANG;
    OIC_ERROR          :: OIC_HAND;
    OIC_INFORMATION    :: OIC_NOTE;
} /* WINVER >= 0x0400 */
if (WINVER >= 0x0600) {
    OIC_SHIELD         :: 32518;
} /* WINVER >= 0x0600 */


/*
 * Standard Icon IDs
 */
if defined(RC_INVOKED) {
    IDI_APPLICATION    :: 32512;
    IDI_HAND           :: 32513;
    IDI_QUESTION       :: 32514;
    IDI_EXCLAMATION    :: 32515;
    IDI_ASTERISK       :: 32516;
if (WINVER >= 0x0400) {
    IDI_WINLOGO        :: 32517;
} /* WINVER >= 0x0400 */
if (WINVER >= 0x0600) {
    IDI_SHIELD         :: 32518;
} /* WINVER >= 0x0600 */
} else {
    IDI_APPLICATION    :: MAKEINTRESOURCE(32512);
    IDI_HAND           :: MAKEINTRESOURCE(32513);
    IDI_QUESTION       :: MAKEINTRESOURCE(32514);
    IDI_EXCLAMATION    :: MAKEINTRESOURCE(32515);
    IDI_ASTERISK       :: MAKEINTRESOURCE(32516);
if (WINVER >= 0x0400) {
    IDI_WINLOGO        :: MAKEINTRESOURCE(32517);
} /* WINVER >= 0x0400 */
if (WINVER >= 0x0600) {
    IDI_SHIELD         :: MAKEINTRESOURCE(32518);
} /* WINVER >= 0x0600 */
} /* RC_INVOKED */

if (WINVER >= 0x0400) {
    IDI_WARNING    :: IDI_EXCLAMATION;
    IDI_ERROR      :: IDI_HAND;
    IDI_INFORMATION:: IDI_ASTERISK;
} /* WINVER >= 0x0400 */


/*
 * Dialog Box Command IDs
 */
 IDOK               :: 1;
 IDCANCEL           :: 2;
 IDABORT            :: 3;
 IDRETRY            :: 4;
 IDIGNORE           :: 5;
 IDYES              :: 6;
 IDNO               :: 7;
if (WINVER >= 0x0400) {
    IDCLOSE        :: 8;
    IDHELP         :: 9;
} /* WINVER >= 0x0400 */

if (WINVER >= 0x0500) {
    IDTRYAGAIN     :: 10;
    IDCONTINUE     :: 11;
} /* WINVER >= 0x0500 */

if (WINVER >= 0x0501) {
if !defined(IDTIMEOUT) {
    IDTIMEOUT:: 32000;
}
} /* WINVER >= 0x0501 */


/*
 * Edit Control Styles
 */
 ES_LEFT            :: 0x0000L;
 ES_CENTER          :: 0x0001L;
 ES_RIGHT           :: 0x0002L;
 ES_MULTILINE       :: 0x0004L;
 ES_UPPERCASE       :: 0x0008L;
 ES_LOWERCASE       :: 0x0010L;
 ES_PASSWORD        :: 0x0020L;
 ES_AUTOVSCROLL     :: 0x0040L;
 ES_AUTOHSCROLL     :: 0x0080L;
 ES_NOHIDESEL       :: 0x0100L;
 ES_OEMCONVERT      :: 0x0400L;
 ES_READONLY        :: 0x0800L;
 ES_WANTRETURN      :: 0x1000L;
if (WINVER >= 0x0400) {
    ES_NUMBER          :: 0x2000L;
} /* WINVER >= 0x0400 */


/*
 * Edit Control Messages
 */
 EM_GETSEL              :: 0x00B0;
 EM_SETSEL              :: 0x00B1;
 EM_GETRECT             :: 0x00B2;
 EM_SETRECT             :: 0x00B3;
 EM_SETRECTNP           :: 0x00B4;
 EM_SCROLL              :: 0x00B5;
 EM_LINESCROLL          :: 0x00B6;
 EM_SCROLLCARET         :: 0x00B7;
 EM_GETMODIFY           :: 0x00B8;
 EM_SETMODIFY           :: 0x00B9;
 EM_GETLINECOUNT        :: 0x00BA;
 EM_LINEINDEX           :: 0x00BB;
 EM_SETHANDLE           :: 0x00BC;
 EM_GETHANDLE           :: 0x00BD;
 EM_GETTHUMB            :: 0x00BE;
 EM_LINELENGTH          :: 0x00C1;
 EM_REPLACESEL          :: 0x00C2;
 EM_GETLINE             :: 0x00C4;
 EM_LIMITTEXT           :: 0x00C5;
 EM_CANUNDO             :: 0x00C6;
 EM_UNDO                :: 0x00C7;
 EM_FMTLINES            :: 0x00C8;
 EM_LINEFROMCHAR        :: 0x00C9;
 EM_SETTABSTOPS         :: 0x00CB;
 EM_SETPASSWORDCHAR     :: 0x00CC;
 EM_EMPTYUNDOBUFFER     :: 0x00CD;
 EM_GETFIRSTVISIBLELINE :: 0x00CE;
 EM_SETREADONLY         :: 0x00CF;
 EM_SETWORDBREAKPROC    :: 0x00D0;
 EM_GETWORDBREAKPROC    :: 0x00D1;
 EM_GETPASSWORDCHAR     :: 0x00D2;
if (WINVER >= 0x0400) {
    EM_SETMARGINS          :: 0x00D3;
    EM_GETMARGINS          :: 0x00D4;
    EM_SETLIMITTEXT        :: EM_LIMITTEXT;   /* ;win40 Name change */
    EM_GETLIMITTEXT        :: 0x00D5;
    EM_POSFROMCHAR         :: 0x00D6;
    EM_CHARFROMPOS         :: 0x00D7;
} /* WINVER >= 0x0400 */

if (WINVER >= 0x0500) {
    EM_SETIMESTATUS        :: 0x00D8;
    EM_GETIMESTATUS        :: 0x00D9;
} /* WINVER >= 0x0500 */

if (WINVER >= 0x0604) {
    EM_ENABLEFEATURE       :: 0x00DA;
} /* WINVER >= 0x0604 */



/*
 * Button Control Styles
 */
 BS_PUSHBUTTON      :: 0x00000000L;
 BS_DEFPUSHBUTTON   :: 0x00000001L;
 BS_CHECKBOX        :: 0x00000002L;
 BS_AUTOCHECKBOX    :: 0x00000003L;
 BS_RADIOBUTTON     :: 0x00000004L;
 BS_3STATE          :: 0x00000005L;
 BS_AUTO3STATE      :: 0x00000006L;
 BS_GROUPBOX        :: 0x00000007L;
 BS_USERBUTTON      :: 0x00000008L;
 BS_AUTORADIOBUTTON :: 0x00000009L;
 BS_PUSHBOX         :: 0x0000000AL;
 BS_OWNERDRAW       :: 0x0000000BL;
 BS_TYPEMASK        :: 0x0000000FL;
 BS_LEFTTEXT        :: 0x00000020L;
if (WINVER >= 0x0400) {
    BS_TEXT            :: 0x00000000L;
    BS_ICON            :: 0x00000040L;
    BS_BITMAP          :: 0x00000080L;
    BS_LEFT            :: 0x00000100L;
    BS_RIGHT           :: 0x00000200L;
    BS_CENTER          :: 0x00000300L;
    BS_TOP             :: 0x00000400L;
    BS_BOTTOM          :: 0x00000800L;
    BS_VCENTER         :: 0x00000C00L;
    BS_PUSHLIKE        :: 0x00001000L;
    BS_MULTILINE       :: 0x00002000L;
    BS_NOTIFY          :: 0x00004000L;
    BS_FLAT            :: 0x00008000L;
    BS_RIGHTBUTTON     :: BS_LEFTTEXT;
} /* WINVER >= 0x0400 */

/*
 * User Button Notification Codes
 */
 BN_CLICKED         :: 0;
 BN_PAINT           :: 1;
 BN_HILITE          :: 2;
 BN_UNHILITE        :: 3;
 BN_DISABLE         :: 4;
 BN_DOUBLECLICKED   :: 5;
if (WINVER >= 0x0400) {
    BN_PUSHED          :: BN_HILITE;
    BN_UNPUSHED        :: BN_UNHILITE;
    BN_DBLCLK          :: BN_DOUBLECLICKED;
    BN_SETFOCUS        :: 6;
    BN_KILLFOCUS       :: 7;
} /* WINVER >= 0x0400 */

/*
 * Button Control Messages
 */
 BM_GETCHECK       :: 0x00F0;
 BM_SETCHECK       :: 0x00F1;
 BM_GETSTATE       :: 0x00F2;
 BM_SETSTATE       :: 0x00F3;
 BM_SETSTYLE       :: 0x00F4;
if (WINVER >= 0x0400) {
    BM_CLICK          :: 0x00F5;
    BM_GETIMAGE       :: 0x00F6;
    BM_SETIMAGE       :: 0x00F7;
} /* WINVER >= 0x0400 */
if (WINVER >= 0x0600) {
    BM_SETDONTCLICK   :: 0x00F8;
} /* WINVER >= 0x0600 */

if (WINVER >= 0x0400) {
    BST_UNCHECKED     :: 0x0000;
    BST_CHECKED       :: 0x0001;
    BST_INDETERMINATE :: 0x0002;
    BST_PUSHED        :: 0x0004;
    BST_FOCUS         :: 0x0008;
} /* WINVER >= 0x0400 */

/*
 * Static Control Constants
 */
 SS_LEFT            :: 0x00000000L;
 SS_CENTER          :: 0x00000001L;
 SS_RIGHT           :: 0x00000002L;
 SS_ICON            :: 0x00000003L;
 SS_BLACKRECT       :: 0x00000004L;
 SS_GRAYRECT        :: 0x00000005L;
 SS_WHITERECT       :: 0x00000006L;
 SS_BLACKFRAME      :: 0x00000007L;
 SS_GRAYFRAME       :: 0x00000008L;
 SS_WHITEFRAME      :: 0x00000009L;
 SS_USERITEM        :: 0x0000000AL;
 SS_SIMPLE          :: 0x0000000BL;
 SS_LEFTNOWORDWRAP  :: 0x0000000CL;
if (WINVER >= 0x0400) {
    SS_OWNERDRAW       :: 0x0000000DL;
    SS_BITMAP          :: 0x0000000EL;
    SS_ENHMETAFILE     :: 0x0000000FL;
    SS_ETCHEDHORZ      :: 0x00000010L;
    SS_ETCHEDVERT      :: 0x00000011L;
    SS_ETCHEDFRAME     :: 0x00000012L;
    SS_TYPEMASK        :: 0x0000001FL;
} /* WINVER >= 0x0400 */
if (WINVER >= 0x0501) {
    SS_REALSIZECONTROL :: 0x00000040L;
} /* WINVER >= 0x0501 */
SS_NOPREFIX        :: 0x00000080L; /* Don't do "&" character translation */
if (WINVER >= 0x0400) {
    SS_NOTIFY          :: 0x00000100L;
    SS_CENTERIMAGE     :: 0x00000200L;
    SS_RIGHTJUST       :: 0x00000400L;
    SS_REALSIZEIMAGE   :: 0x00000800L;
    SS_SUNKEN          :: 0x00001000L;
    SS_EDITCONTROL     :: 0x00002000L;
    SS_ENDELLIPSIS     :: 0x00004000L;
    SS_PATHELLIPSIS    :: 0x00008000L;
    SS_WORDELLIPSIS    :: 0x0000C000L;
    SS_ELLIPSISMASK    :: 0x0000C000L;
} /* WINVER >= 0x0400 */



/*
 * Dialog Styles
 */
 DS_ABSALIGN        :: 0x01L;
 DS_SYSMODAL        :: 0x02L;
 DS_LOCALEDIT       :: 0x20L;   /* Edit items get Local storage. */
 DS_SETFONT         :: 0x40L;   /* User specified font for Dlg controls */
 DS_MODALFRAME      :: 0x80L;   /* Can be combined with WS_CAPTION  */
 DS_NOIDLEMSG       :: 0x100L;  /* WM_ENTERIDLE message will not be sent */
 DS_SETFOREGROUND   :: 0x200L;  /* not in win3.1 */


if (WINVER >= 0x0400) {
    DS_3DLOOK          :: 0x0004L;
    DS_FIXEDSYS        :: 0x0008L;
    DS_NOFAILCREATE    :: 0x0010L;
    DS_CONTROL         :: 0x0400L;
    DS_CENTER          :: 0x0800L;
    DS_CENTERMOUSE     :: 0x1000L;
    DS_CONTEXTHELP     :: 0x2000L;

    DS_SHELLFONT       :: (DS_SETFONT | DS_FIXEDSYS);
} /* WINVER >= 0x0400 */

if defined(_WIN32_WCE) && (_WIN32_WCE >= 0x0500) {
DS_USEPIXELS       :: 0x8000L;
}


/*
 * Listbox Styles
 */
 LBS_NOTIFY           :: 0x0001L;
 LBS_SORT             :: 0x0002L;
 LBS_NOREDRAW         :: 0x0004L;
 LBS_MULTIPLESEL      :: 0x0008L;
 LBS_OWNERDRAWFIXED   :: 0x0010L;
 LBS_OWNERDRAWVARIABLE:: 0x0020L;
 LBS_HASSTRINGS       :: 0x0040L;
 LBS_USETABSTOPS      :: 0x0080L;
 LBS_NOINTEGRALHEIGHT :: 0x0100L;
 LBS_MULTICOLUMN      :: 0x0200L;
 LBS_WANTKEYBOARDINPUT:: 0x0400L;
 LBS_EXTENDEDSEL      :: 0x0800L;
 LBS_DISABLENOSCROLL  :: 0x1000L;
 LBS_NODATA           :: 0x2000L;
if (WINVER >= 0x0400) {
    LBS_NOSEL            :: 0x4000L;
} /* WINVER >= 0x0400 */
LBS_COMBOBOX         :: 0x8000L;

LBS_STANDARD         :: (LBS_NOTIFY | LBS_SORT | WS_VSCROLL | WS_BORDER);


/*
 * Combo Box styles
 */
 CBS_SIMPLE           :: 0x0001L;
 CBS_DROPDOWN         :: 0x0002L;
 CBS_DROPDOWNLIST     :: 0x0003L;
 CBS_OWNERDRAWFIXED   :: 0x0010L;
 CBS_OWNERDRAWVARIABLE:: 0x0020L;
 CBS_AUTOHSCROLL      :: 0x0040L;
 CBS_OEMCONVERT       :: 0x0080L;
 CBS_SORT             :: 0x0100L;
 CBS_HASSTRINGS       :: 0x0200L;
 CBS_NOINTEGRALHEIGHT :: 0x0400L;
 CBS_DISABLENOSCROLL  :: 0x0800L;
if (WINVER >= 0x0400) {
    CBS_UPPERCASE        :: 0x2000L;
    CBS_LOWERCASE        :: 0x4000L;
} /* WINVER >= 0x0400 */


/*
 * Scroll Bar Styles
 */
 SBS_HORZ                   :: 0x0000L;
 SBS_VERT                   :: 0x0001L;
 SBS_TOPALIGN               :: 0x0002L;
 SBS_LEFTALIGN              :: 0x0002L;
 SBS_BOTTOMALIGN            :: 0x0004L;
 SBS_RIGHTALIGN             :: 0x0004L;
 SBS_SIZEBOXTOPLEFTALIGN    :: 0x0002L;
 SBS_SIZEBOXBOTTOMRIGHTALIGN:: 0x0004L;
 SBS_SIZEBOX                :: 0x0008L;
if (WINVER >= 0x0400) {
    SBS_SIZEGRIP               :: 0x0010L;
} /* WINVER >= 0x0400 */


/*
 * Commands to pass to WinHelp()
 */
 HELP_CONTEXT     :: 0x0001L;  /* Display topic in ulTopic */
 HELP_QUIT        :: 0x0002L;  /* Terminate help */
 HELP_INDEX       :: 0x0003L;  /* Display index */
 HELP_CONTENTS    :: 0x0003L;
 HELP_HELPONHELP  :: 0x0004L;  /* Display help on using help */
 HELP_SETINDEX    :: 0x0005L;  /* Set current Index for multi index help */
 HELP_SETCONTENTS :: 0x0005L;
 HELP_CONTEXTPOPUP:: 0x0008L;
 HELP_FORCEFILE   :: 0x0009L;
 HELP_KEY         :: 0x0101L;  /* Display topic for keyword in offabData */
 HELP_COMMAND     :: 0x0102L;
 HELP_PARTIALKEY  :: 0x0105L;
 HELP_MULTIKEY    :: 0x0201L;
 HELP_SETWINPOS   :: 0x0203L;
if (WINVER >= 0x0400) {
    HELP_CONTEXTMENU :: 0x000a;
    HELP_FINDER      :: 0x000b;
    HELP_WM_HELP     :: 0x000c;
    HELP_SETPOPUP_POS:: 0x000d;

    HELP_TCARD             :: 0x8000;
    HELP_TCARD_DATA        :: 0x0010;
    HELP_TCARD_OTHER_CALLER:: 0x0011;

// These are in winhelp.h in Win95.
IDH_NO_HELP                    :: 28440;
IDH_MISSING_CONTEXT            :: 28441; // Control doesn't have matching help context
IDH_GENERIC_HELP_BUTTON        :: 28442; // Property sheet help button
IDH_OK                         :: 28443;
IDH_CANCEL                     :: 28444;
IDH_HELP                       :: 28445;

} /* WINVER >= 0x0400 */
