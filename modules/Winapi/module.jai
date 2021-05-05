//
// Module name:
//
//     winapi/module.jai
//
// Abstract:
//
//     Setup module for Windows applications.
//

#assert(OS == .WINDOWS);

#module_parameters () (
    __cplusplus := false,

    NOWINRES := false,
    _INC_WINDOWS := false,
    INC_OLE1 := false,
    INC_OLE2 := false,
    NOCRYPT := false,
    NOGDI := false,
    NOIME := false,
    NOMCX := false,
    NOSERVICE := false,
    RC_INVOKED := false,
    WIN32_LEAN_AND_MEAN := false,

    WINAPI_FAMILY := 0,

    WINAPI_PARTITION_DESKTOP := false,
    WINAPI_PARTITION_APP := false,
    WINAPI_PARTITION_PC_APP := false,
    WINAPI_PARTITION_PHONE_APP := false,
    WINAPI_PARTITION_GAMES := false,
    WINAPI_PARTITION_SYSTEM := false,
    WINAPI_PARTITION_SERVER := false,

    APP_DEPRECATED_HRESULT  := false,

    // Compiler options
    _MSC_VER := 0x1200,

    // CPU architecture
    _68K_ := false,
    _MPPC_ := false,
    _X86_ := true,
    _IA64_ := false,
    _AMD64_ := false,
    _ARM_ := false,
    _ARM64_ := false,
    _M_IX86 := false,
    _CHPE_X86_ARM64_ := false,
    _M_HYBRID := false,
    _M_AMD64 := false,
    _AMD64__68K_ := false,
    _M_ARM := false,
    _ARM__68K_ := false,
    _X86__IA64_ := false,
    _M_ARM64 := false,
    _M_M68K := false,
    _M_MPPC := false,
    _M_IA64 := false,
    _MAC_68K_ := false,
    _MAC := false,

    _WIN32_WINDOWS := 0,
    _WIN32_WINNT := 0,
    NTDDI_VERSION := 0,
    MIDL_PASS := false,
    _CHICAGO_ := false,

    NOATOM  := false,
    NOGDICAPMASKS := false,
    NOMETAFILE := false,
    NOMINMAX := false,
    NOMSG := false,
    NOOPENFILE := false,
    NORASTEROPS := false,
    NOSCROLL := false,
    NOSOUND := false,
    NOSYSMETRICS := false,
    NOTEXTMETRIC := false,
    NOWH := false,
    NOCOMM := false,
    NOKANJI := false,

    __WINDOWS_DONT_DISABLE_PRAGMA_PACK_WARNING__ := false,
    _WIN32NLS := false,
    _WIN32REG := false
);


_WIN32_IE := 0;
WINVER := 0x0500;
DECLSPEC_DEPRECATED_DDK_WIN2K := false;
DECLSPEC_DEPRECATED_DDK_WINXP := false;
DECLSPEC_DEPRECATED_DDK_WIN2003 := false;
DECLSPEC_DEPRECATED_DDK_WIN6 := false;
DECLSPEC_DEPRECATED_DDK_LONGHORN := false;


#load "windows.jai";


// Helper procedures
define :: (x: *$T) { << x = 1; }

define :: (x: *$T, alt_value: T) { << x = alt_value; }

define :: (x: *bool) { << x = true; }

define :: (x: *bool, alt_value: bool) { << x = alt_value; }

defined :: (x: bool) -> bool {
    return x == true;
}

defined :: (x: $T) -> bool {
    return x > 0;
}

// winapifamily
define_winapi_partition :: (partition: *bool, reqs: ..int) {
    if << partition == true return;

    result := false;
    for reqs {
        result ||= (WINAPI_FAMILY == it);
    }

    << partition = result;
}

