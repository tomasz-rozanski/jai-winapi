// 
// Module Name:
// 
//    winver.jai
//
// Abstract:
// 
//     Version management functions, types, and definitions
//

#assert(OS == .WINDOWS);

#load "winapifamily.jai";

// #load "specstrings.jai"; // make sense of SAL annotations first
#load "verrsrc.jai";

#run {
    if WINAPI_FAMILY_PARTITION(WINAPI_PARTITION_DESKTOP | WINAPI_PARTITION_SYSTEM) {
        if !defined(RC_INVOKED) { 

            /* ----- Function prototypes ----- */
            version :: #foreign_system_library "version";

            VerFindFileA :: (
                uFlags: DWORD,
                szFileName: LPCSTR,
                szWinDir: LPCSTR,
                szAppDir: LPCSTR,
                szCurDir: LPSTR,
                puCurDirLen: PUINT,
                szDestDir: LPSTR,
                puDestDirLen: PUINT
            ) -> DWORD #foreign version #deprecated "Use VerFindFileW instead.";

            VerFindFileW :: (
                uFlags:      DWORD,   
                szFileName:  LPCWSTR,
                szWinDir:    LPCWSTR, 
                szAppDir:    LPCWSTR, 
                szCurDir:    LPWSTR,  
                puCurDirLen: PUINT,   
                szDestDir:   LPWSTR,  
                puDestDirLen: PUINT
            ) -> DWORD #foreign version;

            if defined(UNICODE) {
                VerFindFile :: VerFindFileW;
            } else {
                VerFindFile :: VerFindFileA;
            } // !UNICODE
        } // RC_INVOKED
    } /* WINAPI_FAMILY_PARTITION(WINAPI_PARTITION_DESKTOP | WINAPI_PARTITION_SYSTEM) */

    if WINAPI_FAMILY_PARTITION(WINAPI_PARTITION_DESKTOP) {
        if !defined(RC_INVOKED) {

            VerInstallFileA :: (
                uFlags: DWORD,
                szSrcFileName: LPCSTR,
                szDestFileName: LPCSTR,
                szSrcDir: LPCSTR,
                szDestDir: LPCSTR,
                szCurDir: LPCSTR,
                szTmpFile: LPSTR, 
                puTmpFileLen: PUINT
            ) -> DWORD #foreign version #deprecated "Use VerInstallFileW instead.";

            VerInstallFileW :: (
                uFlags: DWORD,
                szSrcFileName: LPCWSTR,
                szDestFileName: LPCWSTR,
                szSrcDir: LPCWSTR,
                szDestDir: LPCWSTR,
                szCurDir: LPCWSTR,
                szTmpFile: LPWSTR,
                puTmpFileLen: PUINT
            ) -> DWORD #foreign version;

            if defined(UNICODE) {
                VerInstallFile :: VerInstallFileW;
            } else {
                VerInstallFile :: VerInstallFileA;
            } // !UNICODE
        } // RC_INVOKED
    } /* WINAPI_FAMILY_PARTITION(WINAPI_PARTITION_DESKTOP) */

    if WINAPI_FAMILY_PARTITION(WINAPI_PARTITION_APP | WINAPI_PARTITION_SYSTEM) {
        if !defined(RC_INVOKED) {
            /* Returns size of version info in bytes */
            GetFileVersionInfoSizeA :: (
                lptstrFilename: LPCSTR, /* Filename of version stamped file */
                lpdwHandle: DWORD       /* Information for use by GetFileVersionInfo */
            ) -> DWORD #foreign version #deprecated "Use GetFileVersionInfoSizeW instead.";

            /* Returns size of version info in bytes */
            GetFileVersionInfoSizeW :: (
                lptstrFilename: LPCWSTR, /* Filename of version stamped file */
                lpdwHandle: LPDWORD       /* Information for use by GetFileVersionInfo */
            ) -> DWORD #foreign version;

            if defined(UNICODE) {
                GetFileVersionInfoSize :: GetFileVersionInfoSizeW;
            } else {
                GetFileVersionInfoSize :: GetFileVersionInfoSizeA;
            } // !UNICODE

            /* Read version info into buffer */
            GetFileVersionInfoA :: (
                lptstrFilename: LPCSTR, /* Filename of version stamped file */
                dwHandle: DWORD,          /* Information from GetFileVersionSize */
                dwLen: DWORD,             /* Length of buffer for info */
                lpData: LPVOID             /* Buffer to place the data structure */
            ) -> BOOL #foreign version #deprecated "Use GetFileVersionInfoW instead.";

            /* Read version info into buffer */
            GetFileVersionInfoW :: (
                lptstrFilename: LPCWSTR, /* Filename of version stamped file */
                dwHandle: DWORD,          /* Information from GetFileVersionSize */
                dwLen: DWORD,             /* Length of buffer for info */
                lpData: LPVOID            /* Buffer to place the data structure */
            ) -> BOOL #foreign version;

            if defined(UNICODE) {
                GetFileVersionInfo :: GetFileVersionInfoW;
            } else {
                GetFileVersionInfo :: GetFileVersionInfoA;
            } // !UNICODE

            GetFileVersionInfoSizeExA :: (
                dwFlags: DWORD, 
                lpwstrFilename: LPCSTR, 
                lpdwHandle: LPDWORD
            ) -> DWORD #foreign version #deprecated "Use GetFileVersionInfoSizeExW instead";

            GetFileVersionInfoSizeExW :: (
                dwFlags: DWORD, 
                lpwstrFilename: LPCWSTR, 
                lpdwHandle: LPDWORD
            ) -> DWORD #foreign version;

            if defined(UNICODE) {
                GetFileVersionInfoSizeEx :: GetFileVersionInfoSizeExW;
            } else {
                GetFileVersionInfoSizeEx :: GetFileVersionInfoSizeExA;
            } // !UNICODE

            GetFileVersionInfoExA :: ( 
                dwFlags: DWORD,
                lpwstrFilename: LPCSTR,
                dwHandle: DWORD,
                dwLen: DWORD,
                lpData: LPVOID
            ) -> BOOL #foreign version #deprecated "Use GetFileVersionInfoExW instead";

            GetFileVersionInfoExW :: (
                dwFlags: DWORD,
                lpwstrFilename: LPCWSTR,
                dwHandle: DWORD,
                dwLen: DWORD,
                lpData: LPVOID
            ) -> BOOL #foreign version;

            if defined(UNICODE) {
                GetFileVersionInfoEx :: GetFileVersionInfoExW;
            } else {
                GetFileVersionInfoEx :: GetFileVersionInfoExA;
            } // !UNICODE
        } // RC_INVOKED
    } /* WINAPI_FAMILY_PARTITION(WINAPI_PARTITION_APP | WINAPI_PARTITION_SYSTEM) */

    if WINAPI_FAMILY_PARTITION(WINAPI_PARTITION_DESKTOP) {
        if !defined(RC_INVOKED) {}  /* !RC_INVOKED */
    } /* WINAPI_FAMILY_PARTITION(WINAPI_PARTITION_DESKTOP) */

    if WINAPI_FAMILY_PARTITION(WINAPI_PARTITION_APP | WINAPI_PARTITION_SYSTEM) {
        if !defined(RC_INVOKED) {

            VerLanguageNameA :: (
                wLang: DWORD,
                szLang: LPSTR,
                cchLang: DWORD
            ) -> DWORD #foreign version #deprecated "Use VerLanguageNameW instead";

            VerLanguageNameW :: (
                wLang: DWORD,
                szLang: LPWSTR,
                cchLang: DWORD
            ) -> DWORD #foreign version;

            if defined(UNICODE) {
                VerLanguageName :: VerLanguageNameW;
            } else {
                VerLanguageName :: VerLanguageNameA;
            } // !UNICODE

            VerQueryValueA :: (
                pBlock: LPCVOID,
                lpSubBlock: LPCSTR,
                lplpBuffer: *LPVOID,
                puLen: PUINT
            ) -> BOOL #foreign version #deprecated "Use VerQueryValueW instead.";

            VerQueryValueW :: (
                pBlock: LPCVOID,
                lpSubBlock: LPCWSTR,
                lplpBuffer: *LPVOID,
                puLen: PUINT
            ) -> BOOL #foreign version;

            if defined(UNICODE) {
                VerQueryValue :: VerQueryValueW;
            } else {
                VerQueryValue :: VerQueryValueA;
            } // !UNICODE
        }  /* !RC_INVOKED */
    } /* WINAPI_FAMILY_PARTITION(WINAPI_PARTITION_APP | WINAPI_PARTITION_SYSTEM) */
}

