// 
// Module Name:
// 
//     commctrl_rh.jai
// 
// Abstract:
// 
//     This module defines the 32-Bit Windows resource codes from commctrl.jai
// 

#assert(OS == .WINDOWS);

HDS_HORZ               :: 0x0000;
HDS_BUTTONS            :: 0x0002;
HDS_HOTTRACK           :: 0x0004;
HDS_HIDDEN             :: 0x0008;

HDS_DRAGDROP           :: 0x0040;
HDS_FULLDRAG           :: 0x0080;
HDS_FILTERBAR          :: 0x0100;

#run {
    if (NTDDI_VERSION >= NTDDI_WINXP) {
        HDS_FLAT               :: 0x0200;
    }

    if (NTDDI_VERSION >= NTDDI_VISTA) {
        HDS_CHECKBOXES         :: 0x0400;
        HDS_NOSIZING           :: 0x0800;
        HDS_OVERFLOW           :: 0x1000;
    }
}

TBSTYLE_BUTTON         :: 0x0000;  // obsolete; use BTNS_BUTTON instead
TBSTYLE_SEP            :: 0x0001;  // obsolete; use BTNS_SEP instead
TBSTYLE_CHECK          :: 0x0002;  // obsolete; use BTNS_CHECK instead
TBSTYLE_GROUP          :: 0x0004;  // obsolete; use BTNS_GROUP instead
TBSTYLE_CHECKGROUP     :: (TBSTYLE_GROUP | TBSTYLE_CHECK);     // obsolete; use BTNS_CHECKGROUP instead
TBSTYLE_DROPDOWN       :: 0x0008;  // obsolete; use BTNS_DROPDOWN instead
TBSTYLE_AUTOSIZE       :: 0x0010;  // obsolete; use BTNS_AUTOSIZE instead
TBSTYLE_NOPREFIX       :: 0x0020;  // obsolete; use BTNS_NOPREFIX instead

TBSTYLE_TOOLTIPS       :: 0x0100;
TBSTYLE_WRAPABLE       :: 0x0200;
TBSTYLE_ALTDRAG        :: 0x0400;
TBSTYLE_FLAT           :: 0x0800;
TBSTYLE_LIST           :: 0x1000;
TBSTYLE_CUSTOMERASE    :: 0x2000;
TBSTYLE_REGISTERDROP   :: 0x4000;
TBSTYLE_TRANSPARENT    :: 0x8000;


BTNS_BUTTON        :: TBSTYLE_BUTTON;      // 0x0000
BTNS_SEP           :: TBSTYLE_SEP;        // 0x0001
BTNS_CHECK         :: TBSTYLE_CHECK;       // 0x0002
BTNS_GROUP         :: TBSTYLE_GROUP;       // 0x0004
BTNS_CHECKGROUP    :: TBSTYLE_CHECKGROUP;  // (TBSTYLE_GROUP | TBSTYLE_CHECK)
BTNS_DROPDOWN      :: TBSTYLE_DROPDOWN;    // 0x0008
BTNS_AUTOSIZE      :: TBSTYLE_AUTOSIZE;    // 0x0010 automatically calculate the cx of the button
BTNS_NOPREFIX      :: TBSTYLE_NOPREFIX;    // 0x0020 this button should not have accel prefix
BTNS_SHOWTEXT      :: 0x0040;              // ignored unless TBSTYLE_EX_MIXEDBUTTONS is set
BTNS_WHOLEDROPDOWN :: 0x0080;          // draw drop-down arrow, but without split arrow section


RBS_TOOLTIPS                 :: 0x00000100;
RBS_VARHEIGHT                :: 0x00000200;
RBS_BANDBORDERS              :: 0x00000400;
RBS_FIXEDORDER               :: 0x00000800;
RBS_REGISTERDROP             :: 0x00001000;
RBS_AUTOSIZE                 :: 0x00002000;
RBS_VERTICALGRIPPER          :: 0x00004000;  // this always has the vertical gripper (default for horizontal mode)
RBS_DBLCLKTOGGLE             :: 0x00008000;

TTS_ALWAYSTIP          :: 0x01;
TTS_NOPREFIX           :: 0x02;
TTS_NOANIMATE          :: 0x10;
TTS_NOFADE             :: 0x20;
TTS_BALLOON            :: 0x40;
TTS_CLOSE              :: 0x80;

#run {
    if (NTDDI_VERSION >= NTDDI_VISTA) {
        TTS_USEVISUALSTYLE     :: 0x100;  // Use themed hyperlinks;
    }
}


SBARS_SIZEGRIP         :: 0x0100;
SBARS_TOOLTIPS         :: 0x0800;

// this is a status bar flag, preference to SBARS_TOOLTIPS
SBT_TOOLTIPS           :: 0x0800;


TBS_AUTOTICKS          :: 0x0001;
TBS_VERT               :: 0x0002;
TBS_HORZ               :: 0x0000;
TBS_TOP                :: 0x0004;
TBS_BOTTOM             :: 0x0000;
TBS_LEFT               :: 0x0004;
TBS_RIGHT              :: 0x0000;
TBS_BOTH               :: 0x0008;
TBS_NOTICKS            :: 0x0010;
TBS_ENABLESELRANGE     :: 0x0020;
TBS_FIXEDLENGTH        :: 0x0040;
TBS_NOTHUMB            :: 0x0080;
TBS_TOOLTIPS           :: 0x0100;
TBS_REVERSED           :: 0x0200; // Accessibility hint: the smaller number (usually the min value) means "high" and the larger number (usually the max value) means "low"

TBS_DOWNISLEFT         :: 0x0400;  // Down=Left and Up=Right (default is Down=Right and Up=Left)

#run {
    if (_WIN32_IE >= 0x0600) {
        TBS_NOTIFYBEFOREMOVE   :: 0x0800;  // Trackbar should notify parent before repositioning the slider due to user action (enables snapping)
    }

    if (NTDDI_VERSION >= NTDDI_VISTA) {
        TBS_TRANSPARENTBKGND   :: 0x1000;  // Background is painted by the parent via WM_PRINTCLIENT
    }
}

UDS_WRAP               :: 0x0001;
UDS_SETBUDDYINT        :: 0x0002;
UDS_ALIGNRIGHT         :: 0x0004;
UDS_ALIGNLEFT          :: 0x0008;
UDS_AUTOBUDDY          :: 0x0010;
UDS_ARROWKEYS          :: 0x0020;
UDS_HORZ               :: 0x0040;
UDS_NOTHOUSANDS        :: 0x0080;
UDS_HOTTRACK           :: 0x0100;


PBS_SMOOTH             :: 0x01;
PBS_VERTICAL           :: 0x04;

#run {
    if (NTDDI_VERSION >= NTDDI_WINXP) {
        PBS_MARQUEE            :: 0x08;
    }       // (NTDDI_VERSION >= NTDDI_WINXP)

    if (NTDDI_VERSION >= NTDDI_VISTA) {
        PBS_SMOOTHREVERSE      :: 0x10;
    }       // (NTDDI_VERSION >= NTDDI_VISTA)
}

//====== COMMON CONTROL STYLES ================================================

CCS_TOP                :: 0x00000001L;
CCS_NOMOVEY            :: 0x00000002L;
CCS_BOTTOM             :: 0x00000003L;
CCS_NORESIZE           :: 0x00000004L;
CCS_NOPARENTALIGN      :: 0x00000008L;
CCS_ADJUSTABLE         :: 0x00000020L;
CCS_NODIVIDER          :: 0x00000040L;
CCS_VERT               :: 0x00000080L;
CCS_LEFT               :: (CCS_VERT | CCS_TOP);
CCS_RIGHT              :: (CCS_VERT | CCS_BOTTOM);
CCS_NOMOVEX            :: (CCS_VERT | CCS_NOMOVEY);


LWS_TRANSPARENT    :: 0x0001;
LWS_IGNORERETURN   :: 0x0002;

#run {
    if (NTDDI_VERSION >= NTDDI_VISTA) {
        LWS_NOPREFIX       :: 0x0004;
        LWS_USEVISUALSTYLE :: 0x0008;
        LWS_USECUSTOMTEXT  :: 0x0010;
        LWS_RIGHT          :: 0x0020;
    } // (NTDDI_VERSION >= NTDDI_VISTA)
}


LVS_ICON               :: 0x0000;
LVS_REPORT             :: 0x0001;
LVS_SMALLICON          :: 0x0002;
LVS_LIST               :: 0x0003;
LVS_TYPEMASK           :: 0x0003;
LVS_SINGLESEL          :: 0x0004;
LVS_SHOWSELALWAYS      :: 0x0008;
LVS_SORTASCENDING      :: 0x0010;
LVS_SORTDESCENDING     :: 0x0020;
LVS_SHAREIMAGELISTS    :: 0x0040;
LVS_NOLABELWRAP        :: 0x0080;
LVS_AUTOARRANGE        :: 0x0100;
LVS_EDITLABELS         :: 0x0200;
LVS_OWNERDATA          :: 0x1000;
LVS_NOSCROLL           :: 0x2000;

LVS_TYPESTYLEMASK      :: 0xfc00;

LVS_ALIGNTOP           :: 0x0000;
LVS_ALIGNLEFT          :: 0x0800;
LVS_ALIGNMASK          :: 0x0c00;

LVS_OWNERDRAWFIXED     :: 0x0400;
LVS_NOCOLUMNHEADER     :: 0x4000;
LVS_NOSORTHEADER       :: 0x8000;


TVS_HASBUTTONS         :: 0x0001;
TVS_HASLINES           :: 0x0002;
TVS_LINESATROOT        :: 0x0004;
TVS_EDITLABELS         :: 0x0008;
TVS_DISABLEDRAGDROP    :: 0x0010;
TVS_SHOWSELALWAYS      :: 0x0020;
TVS_RTLREADING         :: 0x0040;

TVS_NOTOOLTIPS         :: 0x0080;
TVS_CHECKBOXES         :: 0x0100;
TVS_TRACKSELECT        :: 0x0200;
TVS_SINGLEEXPAND       :: 0x0400;
TVS_INFOTIP            :: 0x0800;
TVS_FULLROWSELECT      :: 0x1000;
TVS_NOSCROLL           :: 0x2000;
TVS_NONEVENHEIGHT      :: 0x4000;
TVS_NOHSCROLL          :: 0x8000;  // TVS_NOSCROLL overrides this

#run {
    if (NTDDI_VERSION >= NTDDI_WINXP) {
        TVS_EX_NOSINGLECOLLAPSE    :: 0x0001;
    }

    if (NTDDI_VERSION >= NTDDI_VISTA) {
        TVS_EX_MULTISELECT         :: 0x0002;
        TVS_EX_DOUBLEBUFFER        :: 0x0004;
        TVS_EX_NOINDENTSTATE       :: 0x0008;
        TVS_EX_RICHTOOLTIP         :: 0x0010;
        TVS_EX_AUTOHSCROLL         :: 0x0020;
        TVS_EX_FADEINOUTEXPANDOS   :: 0x0040;
        TVS_EX_PARTIALCHECKBOXES   :: 0x0080;
        TVS_EX_EXCLUSIONCHECKBOXES :: 0x0100;
        TVS_EX_DIMMEDCHECKBOXES    :: 0x0200;
        TVS_EX_DRAWIMAGEASYNC      :: 0x0400;
    }

    if (NTDDI_VERSION >= NTDDI_WINTHRESHOLD) {
    }
}


TCS_SCROLLOPPOSITE     :: 0x0001;   // assumes multiline tab
TCS_BOTTOM             :: 0x0002;
TCS_RIGHT              :: 0x0002;
TCS_MULTISELECT        :: 0x0004;  // allow multi-select in button mode
TCS_FLATBUTTONS        :: 0x0008;
TCS_FORCEICONLEFT      :: 0x0010;
TCS_FORCELABELLEFT     :: 0x0020;
TCS_HOTTRACK           :: 0x0040;
TCS_VERTICAL           :: 0x0080;
TCS_TABS               :: 0x0000;
TCS_BUTTONS            :: 0x0100;
TCS_SINGLELINE         :: 0x0000;
TCS_MULTILINE          :: 0x0200;
TCS_RIGHTJUSTIFY       :: 0x0000;
TCS_FIXEDWIDTH         :: 0x0400;
TCS_RAGGEDRIGHT        :: 0x0800;
TCS_FOCUSONBUTTONDOWN  :: 0x1000;
TCS_OWNERDRAWFIXED     :: 0x2000;
TCS_TOOLTIPS           :: 0x4000;
TCS_FOCUSNEVER         :: 0x8000;


ACS_CENTER             :: 0x0001;
ACS_TRANSPARENT        :: 0x0002;
ACS_AUTOPLAY           :: 0x0004;
ACS_TIMER              :: 0x0008;  // don't use threads... use timers


MCS_DAYSTATE       :: 0x0001;
MCS_MULTISELECT    :: 0x0002;
MCS_WEEKNUMBERS    :: 0x0004;
MCS_NOTODAYCIRCLE  :: 0x0008;
MCS_NOTODAY        :: 0x0010;

#run {
    if (NTDDI_VERSION >= NTDDI_VISTA) {
        MCS_NOTRAILINGDATES :: 0x0040;
        MCS_SHORTDAYSOFWEEK :: 0x0080;
        MCS_NOSELCHANGEONNAV:: 0x0100;
    }
}



DTS_UPDOWN         :: 0x0001; // use UPDOWN instead of MONTHCAL
DTS_SHOWNONE       :: 0x0002; // allow a NONE selection
DTS_SHORTDATEFORMAT:: 0x0000; // use the short date format (app must forward WM_WININICHANGE messages)
DTS_LONGDATEFORMAT :: 0x0004; // use the long date format (app must forward WM_WININICHANGE messages)
DTS_SHORTDATECENTURYFORMAT:: 0x000C; // short date format with century (app must forward WM_WININICHANGE messages)
DTS_TIMEFORMAT     :: 0x0009; // use the time format (app must forward WM_WININICHANGE messages)
DTS_APPCANPARSE    :: 0x0010; // allow user entered strings (app MUST respond to DTN_USERSTRING)
DTS_RIGHTALIGN     :: 0x0020; // right-align popup instead of left-align it


PGS_VERT               :: 0x00000000;
PGS_HORZ               :: 0x00000001;
PGS_AUTOSCROLL         :: 0x00000002;
PGS_DRAGNDROP          :: 0x00000004;


// style definition
NFS_EDIT               :: 0x0001;
NFS_STATIC             :: 0x0002;
NFS_LISTCOMBO          :: 0x0004;
NFS_BUTTON             :: 0x0008;
NFS_ALL                :: 0x0010;
NFS_USEFONTASSOC       :: 0x0020;


// BUTTON STYLES
BS_SPLITBUTTON         :: 0x0000000CL;
BS_DEFSPLITBUTTON      :: 0x0000000DL;
BS_COMMANDLINK         :: 0x0000000EL;
BS_DEFCOMMANDLINK      :: 0x0000000FL;

// SPLIT BUTTON INFO mask flags
BCSIF_GLYPH            :: 0x0001;
BCSIF_IMAGE            :: 0x0002;
BCSIF_STYLE            :: 0x0004;
BCSIF_SIZE             :: 0x0008;

// SPLIT BUTTON STYLE flags
BCSS_NOSPLIT           :: 0x0001;
BCSS_STRETCH           :: 0x0002;
BCSS_ALIGNLEFT         :: 0x0004;
BCSS_IMAGE             :: 0x0008;

