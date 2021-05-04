// 
// Module Name:
// 
//     sdkddkver.jai
// 
// Abstract:
// 
//     Master module for versioning windows SDK/DDK.
// 

#assert(OS == .WINDOWS);

#import "Basic";

//
// _WIN32_WINNT version constants
//
_WIN32_WINNT_NT4          :: 0x0400;
_WIN32_WINNT_WIN2K        :: 0x0500;
_WIN32_WINNT_WINXP        :: 0x0501;
_WIN32_WINNT_WS03         :: 0x0502;
_WIN32_WINNT_WIN6         :: 0x0600;
_WIN32_WINNT_VISTA        :: 0x0600;
_WIN32_WINNT_WS08         :: 0x0600;
_WIN32_WINNT_LONGHORN     :: 0x0600;
_WIN32_WINNT_WIN7         :: 0x0601;
_WIN32_WINNT_WIN8         :: 0x0602;
_WIN32_WINNT_WINBLUE      :: 0x0603;
_WIN32_WINNT_WINTHRESHOLD :: 0x0A00; /* ABRACADABRA_THRESHOLD*/
_WIN32_WINNT_WIN10        :: 0x0A00; /* ABRACADABRA_THRESHOLD*/

//
// _WIN32_IE_ version constants
//
_WIN32_IE_IE20    :: 0x0200;
_WIN32_IE_IE30    :: 0x0300;
_WIN32_IE_IE302   :: 0x0302;
_WIN32_IE_IE40    :: 0x0400;
_WIN32_IE_IE401   :: 0x0401;
_WIN32_IE_IE50    :: 0x0500;
_WIN32_IE_IE501   :: 0x0501;
_WIN32_IE_IE55    :: 0x0550;
_WIN32_IE_IE60    :: 0x0600;
_WIN32_IE_IE60SP1 :: 0x0601;
_WIN32_IE_IE60SP2 :: 0x0603;
_WIN32_IE_IE70    :: 0x0700;
_WIN32_IE_IE80    :: 0x0800;
_WIN32_IE_IE90    :: 0x0900;
_WIN32_IE_IE100   :: 0x0A00;
_WIN32_IE_IE110   :: 0x0A00;  /* ABRACADABRA_THRESHOLD */

//
// IE <-> OS version mapping
//
// NT4 supports IE versions 2.0 -> 6.0 SP1
_WIN32_IE_NT4          :: _WIN32_IE_IE20;
_WIN32_IE_NT4SP1       :: _WIN32_IE_IE20;
_WIN32_IE_NT4SP2       :: _WIN32_IE_IE20;
_WIN32_IE_NT4SP3       :: _WIN32_IE_IE302;
_WIN32_IE_NT4SP4       :: _WIN32_IE_IE401;
_WIN32_IE_NT4SP5       :: _WIN32_IE_IE401;
_WIN32_IE_NT4SP6       :: _WIN32_IE_IE50;
// Win98 supports IE versions 4.01 -> 6.0 SP1
_WIN32_IE_WIN98        :: _WIN32_IE_IE401;
// Win98SE supports IE versions 5.0 -> 6.0 SP1
_WIN32_IE_WIN98SE      :: _WIN32_IE_IE50;
// WinME supports IE versions 5.5 -> 6.0 SP1
_WIN32_IE_WINME        :: _WIN32_IE_IE55;
// Win2k supports IE versions 5.01 -> 6.0 SP1
_WIN32_IE_WIN2K        :: _WIN32_IE_IE501;
_WIN32_IE_WIN2KSP1     :: _WIN32_IE_IE501;
_WIN32_IE_WIN2KSP2     :: _WIN32_IE_IE501;
_WIN32_IE_WIN2KSP3     :: _WIN32_IE_IE501;
_WIN32_IE_WIN2KSP4     :: _WIN32_IE_IE501;
_WIN32_IE_XP           :: _WIN32_IE_IE60;
_WIN32_IE_XPSP1        :: _WIN32_IE_IE60SP1;
_WIN32_IE_XPSP2        :: _WIN32_IE_IE60SP2;
_WIN32_IE_WS03         :: 0x0602;
_WIN32_IE_WS03SP1      :: _WIN32_IE_IE60SP2;
_WIN32_IE_WIN6         :: _WIN32_IE_IE70;
_WIN32_IE_LONGHORN     :: _WIN32_IE_IE70;
_WIN32_IE_WIN7         :: _WIN32_IE_IE80;
_WIN32_IE_WIN8         :: _WIN32_IE_IE100;
_WIN32_IE_WINBLUE      :: _WIN32_IE_IE100;
_WIN32_IE_WINTHRESHOLD :: _WIN32_IE_IE110;  /* ABRACADABRA_THRESHOLD */
_WIN32_IE_WIN10        :: _WIN32_IE_IE110;  /* ABRACADABRA_THRESHOLD */


//
// NTDDI version constants
//
NTDDI_WIN2K        :: 0x05000000;
NTDDI_WIN2KSP1     :: 0x05000100;
NTDDI_WIN2KSP2     :: 0x05000200;
NTDDI_WIN2KSP3     :: 0x05000300;
NTDDI_WIN2KSP4     :: 0x05000400;

NTDDI_WINXP        :: 0x05010000;
NTDDI_WINXPSP1     :: 0x05010100;
NTDDI_WINXPSP2     :: 0x05010200;
NTDDI_WINXPSP3     :: 0x05010300;
NTDDI_WINXPSP4     :: 0x05010400;

NTDDI_WS03         :: 0x05020000;
NTDDI_WS03SP1      :: 0x05020100;
NTDDI_WS03SP2      :: 0x05020200;
NTDDI_WS03SP3      :: 0x05020300;
NTDDI_WS03SP4      :: 0x05020400;

NTDDI_WIN6         :: 0x06000000;
NTDDI_WIN6SP1      :: 0x06000100;
NTDDI_WIN6SP2      :: 0x06000200;
NTDDI_WIN6SP3      :: 0x06000300;
NTDDI_WIN6SP4      :: 0x06000400;

NTDDI_VISTA        :: NTDDI_WIN6;
NTDDI_VISTASP1     :: NTDDI_WIN6SP1;
NTDDI_VISTASP2     :: NTDDI_WIN6SP2;
NTDDI_VISTASP3     :: NTDDI_WIN6SP3;
NTDDI_VISTASP4     :: NTDDI_WIN6SP4;

NTDDI_LONGHORN     :: NTDDI_VISTA;

NTDDI_WS08         :: NTDDI_WIN6SP1;
NTDDI_WS08SP2      :: NTDDI_WIN6SP2;
NTDDI_WS08SP3      :: NTDDI_WIN6SP3;
NTDDI_WS08SP4      :: NTDDI_WIN6SP4;

NTDDI_WIN7         :: 0x06010000;
NTDDI_WIN8         :: 0x06020000;
NTDDI_WINBLUE      :: 0x06030000;
NTDDI_WINTHRESHOLD :: 0x0A000000;  /* ABRACADABRA_THRESHOLD */
NTDDI_WIN10        :: 0x0A000000;  /* ABRACADABRA_THRESHOLD */
NTDDI_WIN10_TH2    :: 0x0A000001;  /* ABRACADABRA_WIN10_TH2 */
NTDDI_WIN10_RS1    :: 0x0A000002;  /* ABRACADABRA_WIN10_RS1 */
NTDDI_WIN10_RS2    :: 0x0A000003;  /* ABRACADABRA_WIN10_RS2 */
NTDDI_WIN10_RS3    :: 0x0A000004;  /* ABRACADABRA_WIN10_RS3 */
NTDDI_WIN10_RS4    :: 0x0A000005;  /* ABRACADABRA_WIN10_RS4 */
NTDDI_WIN10_RS5    :: 0x0A000006;  /* ABRACADABRA_WIN10_RS5 */
NTDDI_WIN10_19H1   :: 0x0A000007;  /* ABRACADABRA_WIN10_19H1*/
NTDDI_WIN10_VB     :: 0x0A000008;  /* ABRACADABRA_WIN10_VB */

WDK_NTDDI_VERSION  :: NTDDI_WIN10_VB; /* ABRACADABRA_WIN10_VB */


//
// masks for version macros
//
OSVERSION_MASK  :: 0xFFFF0000;
SPVERSION_MASK  :: 0x0000FF00;
SUBVERSION_MASK :: 0x000000FF;


//
// macros to extract various version fields from the NTDDI version
//

OSVER :: version => (version & OSVERSION_MASK);
SPVER :: version => (cast(int)version & SPVERSION_MASK) >> 8;
SUBVER :: version => (version & SUBVERSION_MASK);

DECLSPEC_DEPRECATED_DDK: bool;

#run {
    if DECLSPEC_DEPRECATED_DDK == true {

        // deprecate in 2k or later
        if (NTDDI_VERSION >= NTDDI_WIN2K) {
            DECLSPEC_DEPRECATED_DDK_WIN2K = DECLSPEC_DEPRECATED_DDK;
        } else {
            DECLSPEC_DEPRECATED_DDK_WIN2K = true;
        }

        // deprecate in XP or later
        if (NTDDI_VERSION >= NTDDI_WINXP) {
            DECLSPEC_DEPRECATED_DDK_WINXP = DECLSPEC_DEPRECATED_DDK;
        } else {
            DECLSPEC_DEPRECATED_DDK_WINXP = true;
        }

        // deprecate in WS03 or later
        if (NTDDI_VERSION >= NTDDI_WS03) {
            DECLSPEC_DEPRECATED_DDK_WIN2003 = DECLSPEC_DEPRECATED_DDK;
        } else {
            DECLSPEC_DEPRECATED_DDK_WIN2003 = true;
        }

        // deprecate in WIN6 or later
        if (NTDDI_VERSION >= NTDDI_WIN6) {
            DECLSPEC_DEPRECATED_DDK_WIN6 = DECLSPEC_DEPRECATED_DDK;
        } else {
            DECLSPEC_DEPRECATED_DDK_WIN6 = true;
        }

        DECLSPEC_DEPRECATED_DDK_LONGHORN = DECLSPEC_DEPRECATED_DDK_WIN6;
    }
}


//
// if versions aren't already defined, default to most current
//

NTDDI_VERSION_FROM_WIN32_WINNT2 :: (ver: int) -> int { return ver << 16; }
#assert(NTDDI_VERSION_FROM_WIN32_WINNT2(0x1234) == 0x12340000);
NTDDI_VERSION_FROM_WIN32_WINNT :: NTDDI_VERSION_FROM_WIN32_WINNT2;
//NTDDI_VERSION_FROM_WIN32_WINNT :: (ver: int) -> int { return NTDDI_VERSION_FROM_WIN32_WINNT2(ver); }
#assert(NTDDI_VERSION_FROM_WIN32_WINNT2(1234) == NTDDI_VERSION_FROM_WIN32_WINNT2(1234));

#run {
    if defined(_WIN32_WINNT) && !defined(_CHICAGO_) {
        _WIN32_WINNT = 0x0A00;
    }
}

#run {
    if NTDDI_VERSION == 0 {
        if _WIN32_WINNT > 0 {
            if (_WIN32_WINNT <= _WIN32_WINNT_WINBLUE) {
                // set NTDDI_VERSION based on _WIN32_WINNT
                NTDDI_VERSION = NTDDI_VERSION_FROM_WIN32_WINNT(_WIN32_WINNT);
            } else if (_WIN32_WINNT >= _WIN32_WINNT_WIN10) {
                // set NTDDI_VERSION to default to WDK_NTDDI_VERSION
                NTDDI_VERSION = WDK_NTDDI_VERSION;
            }
        } else {
            // set NTDDI_VERSION to default to latest if _WIN32_WINNT isn't set
            NTDDI_VERSION = 0x0A000008;
        }
    }
}

#run {
    if WINVER == 0 {
        if _WIN32_WINNT > 0 {
            // set WINVER based on _WIN32_WINNT
            WINVER = _WIN32_WINNT;
        } else {
            WINVER = 0x0A00;
        }
    }
}

#run {
    if _WIN32_IE == 0 {
        if _WIN32_WINNT > 0 {
            // set _WIN32_IE based on _WIN32_WINNT
            if (_WIN32_WINNT <= _WIN32_WINNT_NT4)
            _WIN32_IE = _WIN32_IE_IE50;
            else if #run (_WIN32_WINNT <= _WIN32_WINNT_WIN2K)
            _WIN32_IE = _WIN32_IE_IE501;
            else if #run (_WIN32_WINNT <= _WIN32_WINNT_WINXP)
            _WIN32_IE = _WIN32_IE_IE60;
            else if #run (_WIN32_WINNT <= _WIN32_WINNT_WS03)
            _WIN32_IE = _WIN32_IE_WS03;
            else if #run (_WIN32_WINNT <= _WIN32_WINNT_VISTA)
            _WIN32_IE = _WIN32_IE_LONGHORN;
            else if #run (_WIN32_WINNT <= _WIN32_WINNT_WIN7)
            _WIN32_IE = _WIN32_IE_WIN7;
            else if #run (_WIN32_WINNT <= _WIN32_WINNT_WIN8)
            _WIN32_IE = _WIN32_IE_WIN8;
        } else {
            _WIN32_IE = 0x0A00;
        } 
    } else {
        _WIN32_IE = 0x0A00;
    }
}

//
// Sanity check for compatible versions
//
#run {
    if defined(_WIN32_WINNT) && !defined(MIDL_PASS) && !defined(RC_INVOKED) {

        if (defined(WINVER) && (WINVER < 0x0400) && (_WIN32_WINNT > 0x0400)) {
            log_error("% setting conflicts with % setting\n", WINVER, _WIN32_WINNT);
        }

        if (((OSVERSION_MASK & NTDDI_VERSION) == NTDDI_WIN2K) && 
        (_WIN32_WINNT != _WIN32_WINNT_WIN2K)) {
            log_error("% setting conflicts with % setting\n", NTDDI_VERSION, _WIN32_WINNT);
        }

        if (((OSVERSION_MASK & NTDDI_VERSION) == NTDDI_WINXP) && 
        (_WIN32_WINNT != _WIN32_WINNT_WINXP)) {
            log_error("% setting conflicts with % setting\n", NTDDI_VERSION, _WIN32_WINNT);
        }

        if (((OSVERSION_MASK & NTDDI_VERSION) == NTDDI_WS03) && 
        (_WIN32_WINNT != _WIN32_WINNT_WS03)) {
            log_error("% setting conflicts with % setting\n", NTDDI_VERSION, _WIN32_WINNT);
        }

        if (((OSVERSION_MASK & NTDDI_VERSION) == NTDDI_VISTA) && 
        (_WIN32_WINNT != _WIN32_WINNT_VISTA)) {
            log_error("% setting conflicts with % setting\n", NTDDI_VERSION, _WIN32_WINNT);
        }

        if ((_WIN32_WINNT < _WIN32_WINNT_WIN2K) && (_WIN32_IE > _WIN32_IE_IE60SP1)) {
            log_error("% settings conflicts with % setting\n", _WIN32_WINNT, _WIN32_IE);
        }
    }
}

