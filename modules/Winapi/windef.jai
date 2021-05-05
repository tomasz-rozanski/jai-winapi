//                                                                            
// Module Name:
//
//     windef.jai
//
// Abstract: 
//
//     Basic Windows Type Definitions                                
//                                                                            

#assert(OS == .WINDOWS);

#load "winapifamily.jai";

#run {
    if defined(_M_CEE_PURE) {
        define(*WINAPI_INLINE, __clrcall);
    }
}

#load "minwindef.jai";

#run {
    if !defined(WINVER) {
        define(*WINVER, 0x0500);
    } /* WINVER */

    if !defined(NT_INCLUDED) {
        #load "winnt.jai";
    } /* NT_INCLUDED */

    if !defined(WIN_INTERNAL) {
        if WINAPI_FAMILY_PARTITION(WINAPI_PARTITION_APP | WINAPI_PARTITION_SYSTEM | WINAPI_PARTITION_GAMES) {
            DECLARE_HANDLE(HWND);
            DECLARE_HANDLE(HHOOK);
        } /* WINAPI_FAMILY_PARTITION(WINAPI_PARTITION_APP | \
        WINAPI_PARTITION_SYSTEM | WINAPI_PARTITION_GAMES) */
        if defined(WINABLE) {
            if WINAPI_FAMILY_PARTITION(WINAPI_PARTITION_DESKTOP) {
                DECLARE_HANDLE(HEVENT);
            } /* WINAPI_FAMILY_PARTITION(WINAPI_PARTITION_DESKTOP) */
        }
    }

    if WINAPI_FAMILY_PARTITION(WINAPI_PARTITION_APP | WINAPI_PARTITION_SYSTEM | WINAPI_PARTITION_GAMES) {
        if !defined(_MAC) || !defined(GDI_INTERNAL) {
            if defined(STRICT) {
                HGDIOBJ : Type : *void; // *void NEAR
            } else {
                DECLARE_HANDLE(HGDIOBJ);
            }
        }
        if !defined(_MAC) || !defined(WIN_INTERNAL) {
            DECLARE_HANDLE(HACCEL);
        }
        if !defined(_MAC) || !defined(GDI_INTERNAL) {
            DECLARE_HANDLE(HBITMAP);
            DECLARE_HANDLE(HBRUSH);
        }
        if (WINVER >= 0x0400) {
            DECLARE_HANDLE(HCOLORSPACE);
        } /* WINVER >= 0x0400 */
        if !defined(_MAC) || !defined(GDI_INTERNAL) {
            DECLARE_HANDLE(HDC);
        }
        DECLARE_HANDLE(HGLRC); // OpenGL
        DECLARE_HANDLE(HDESK);
        DECLARE_HANDLE(HENHMETAFILE);

        if !defined(_MAC) || !defined(GDI_INTERNAL) {
            DECLARE_HANDLE(HFONT);
        }
        DECLARE_HANDLE(HICON);

        if !defined(_MAC) || !defined(WIN_INTERNAL) {
            DECLARE_HANDLE(HMENU);
        }
        if !defined(_MAC) || !defined(GDI_INTERNAL) {
            DECLARE_HANDLE(HPALETTE);
            DECLARE_HANDLE(HPEN);
        }
        if (WINVER >= 0x0400) {
            DECLARE_HANDLE(HWINEVENTHOOK);
        } /* WINVER >= 0x0400 */
    } /* WINAPI_FAMILY_PARTITION(WINAPI_PARTITION_APP | 
    WINAPI_PARTITION_SYSTEM | WINAPI_PARTITION_GAMES) */

    if (WINVER >= 0x0500) {
        if !defined(_MAC) {
            if WINAPI_FAMILY_PARTITION(WINAPI_PARTITION_APP | WINAPI_PARTITION_SYSTEM) {
                DECLARE_HANDLE(HMONITOR);
            } /* WINAPI_FAMILY_PARTITION(WINAPI_PARTITION_APP |
            WINAPI_PARTITION_SYSTEM) */
        }
        if WINAPI_FAMILY_PARTITION(WINAPI_PARTITION_DESKTOP) {
            DECLARE_HANDLE(HUMPD);
        } /* WINAPI_FAMILY_PARTITION(WINAPI_PARTITION_DESKTOP) */
    } /* WINVER >= 0x0500 */

    if WINAPI_FAMILY_PARTITION(WINAPI_PARTITION_APP | WINAPI_PARTITION_SYSTEM |
    WINAPI_PARTITION_GAMES) {
        if !defined(_MAC) {
            HICON :: HCURSOR; /* HICONs & HCURSORs are polymorphic */
        } else {
            DECLARE_HANDLE(HCURSOR); /* HICONs & HCURSORs are not polymorphic */
        }

        DWORD :: COLORREF;
    } /* WINAPI_FAMILY_PARTITION(WINAPI_PARTITION_APP | \
    WINAPI_PARTITION_SYSTEM | WINAPI_PARTITION_GAMES) */

    if WINAPI_FAMILY_PARTITION(WINAPI_PARTITION_DESKTOP) {
        DWORD :: *LPCOLORREF;
        define(*HFILE_ERROR, ((HFILE) -1));
    } /* WINAPI_FAMILY_PARTITION(WINAPI_PARTITION_DESKTOP) */

    if WINAPI_FAMILY_PARTITION(WINAPI_PARTITION_APP | WINAPI_PARTITION_SYSTEM | WINAPI_PARTITION_GAMES) {
        tagRECT :: struct {
            left: LONG;
            top: LONG;
            right: LONG;
            bottom: LONG;
        }

        RECT :: tagRECT;
        PRECT, NPRECT, LPRECT, LPCRECT :: *RECT;

        _RECTL :: struct {
            left: LONG;
            top: LONG;
            right: LONG;
            bottom: LONG;
        }

        RECTL :: _RECTL;
        PRECTL, LPRECTL, LPCRECTL :: *RECTL;

        tagPOINT :: struct {
            x: LONG;
            y: LONG;
        } 
        POINT :: tagPoint;
        PPOINT, NPPOINT, LPPOINT :: *POINT;

        _POINTL :: struct {
            x: LONG;
            y: LONG;
        } 
        POINTL :: _POINTL;
        PPOINTL :: *POINTL;

        tagSIZE :: struct {
            cx: LONG;
            cy: LONG;
        } 
        SIZE :: tagSIZE; 
        PSIZE, LPSIZE :: *SIZE;

        SIZEL :: SIZE;
        PSIZEL, LPSIZEL :: *SIZE;

        tagPOINTS :: struct {
            if !defined(_MAC) {
                x: SHORT;
                y: SHORT;
            } else {
                y: SHORT;
                x: SHORT;
            }
        } 
        POINTS :: tagPOINTS;
        PPOINTS, LPPOINTS :: *POINTS;

        APP_LOCAL_DEVICE_ID_SIZE :: 32;

        APP_LOCAL_DEVICE_ID :: struct {
            value: [APP_LOCAL_DEVICE_ID_SIZE] BYTE;
        }
    } /* WINAPI_FAMILY_PARTITION(WINAPI_PARTITION_APP | \
    WINAPI_PARTITION_SYSTEM | WINAPI_PARTITION_GAMES) */
}

/* mode selections for the device mode function */
DM_UPDATE :: 1;
DM_COPY   :: 2;
DM_PROMPT :: 4;
DM_MODIFY :: 8;

DM_IN_BUFFER   :: DM_MODIFY;
DM_IN_PROMPT   :: DM_PROMPT;
DM_OUT_BUFFER  :: DM_COPY;
DM_OUT_DEFAULT :: DM_UPDATE;

/* device capabilities indices */
DC_FIELDS           :: 1;
DC_PAPERS           :: 2;
DC_PAPERSIZE        :: 3;
DC_MINEXTENT        :: 4;
DC_MAXEXTENT        :: 5;
DC_BINS             :: 6;
DC_DUPLEX           :: 7;
DC_SIZE             :: 8;
DC_EXTRA            :: 9;
DC_VERSION          :: 10;
DC_DRIVER           :: 11;
DC_BINNAMES         :: 12;
DC_ENUMRESOLUTIONS  :: 13;
DC_FILEDEPENDENCIES :: 14;
DC_TRUETYPE         :: 15;
DC_PAPERNAMES       :: 16;
DC_ORIENTATION      :: 17;
DC_COPIES           :: 18;


#run {
    if WINAPI_FAMILY_PARTITION(WINAPI_PARTITION_DESKTOP) {
        define(*_DPI_AWARENESS_CONTEXTS_);

        DECLARE_HANDLE(DPI_AWARENESS_CONTEXT);

        DPI_AWARENESS :: enum {
            DPI_AWARENESS_INVALID :: -1;
            DPI_AWARENESS_UNAWARE :: 0;
            DPI_AWARENESS_SYSTEM_AWARE :: 1;
            DPI_AWARENESS_PER_MONITOR_AWARE :: 2;
        }

        DPI_AWARENESS_CONTEXT_UNAWARE :: ((DPI_AWARENESS_CONTEXT) -1);
        DPI_AWARENESS_CONTEXT_SYSTEM_AWARE :: ((DPI_AWARENESS_CONTEXT) -2);
        DPI_AWARENESS_CONTEXT_PER_MONITOR_AWARE :: ((DPI_AWARENESS_CONTEXT) -3);
        DPI_AWARENESS_CONTEXT_PER_MONITOR_AWARE_V2 :: ((DPI_AWARENESS_CONTEXT) -4);
        DPI_AWARENESS_CONTEXT_UNAWARE_GDISCALED :: ((DPI_AWARENESS_CONTEXT) -5);

        DPI_HOSTING_BEHAVIOR :: enum {
            DPI_HOSTING_BEHAVIOR_INVALID :: -1;
            DPI_HOSTING_BEHAVIOR_DEFAULT :: 0;
            DPI_HOSTING_BEHAVIOR_MIXED :: 1;
        } 
    }
}

