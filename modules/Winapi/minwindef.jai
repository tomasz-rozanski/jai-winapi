// 
// Module Name:
//     minwindef.jai
// 
// Abstract:
//     Basic Windows Type Definitions for minwin partition
// 

#assert(OS == .WINDOWS);

#import "Basic";

// #load "specstrings.jai"; // probably not needed

#load "winapifamily.jai";

#run {
    if WINAPI_FAMILY_PARTITION(WINAPI_PARTITION_APP | WINAPI_PARTITION_SYSTEM | WINAPI_PARTITION_GAMES) {

        if !defined(NO_STRICT) {
            if !defined(STRICT) {
                STRICT :: 1;
            }
        }

        // Win32 defines _WIN32 automatically,
        // but Macintosh doesn't, so if we are using
        // Win32 Functions, we must do it here

        if defined(_MAC) {
            if !defined(_WIN32) {
                define(*_WIN32);
            }
        } //_MAC

        if !defined(WIN32) {
            define(*WIN32);
        }

        /*
        * BASETYPES is defined in ntdef.h if these types are already defined
        */

        if !defined(BASETYPES) {
            define(*BASETYPES);
            ULONG :: u32;
            PULONG :: *ULONG;
            USHORT :: u16;
            PUSHORT :: *USHORT;
            UCHAR :: u8;
            PUCHAR :: *UCHAR;
            // typedef _Null_terminated_ char *PSZ;
        }

        MAX_PATH :: 260;

        if !defined(NULL) {
            NULL :: null;
        }

        if !defined(FALSE) {
            FALSE :: 0;
        }

        if !defined(TRUE) {
            TRUE :: 1;
        }

        if !defined(IN) {
            define(*IN);
        }

        if !defined(OUT) {
            define(*OUT);
        }

        if !defined(OPTIONAL) {
            define(*OPTIONAL);
        }

        /* Probably not needed

        #undef far
        #undef near
        #undef pascal

        #define far
        #define near

        #if (!defined(_MAC)) && ((_MSC_VER >= 800) || defined(_STDCALL_SUPPORTED))
        #define pascal __stdcall
        #else
        #define pascal
        #endif

        #if defined(DOSWIN32) || defined(_MAC)
        #define cdecl _cdecl
        #ifndef CDECL
        #define CDECL _cdecl
        #endif
        #else
        #define cdecl
        #ifndef CDECL
        #define CDECL
        #endif
        #endif

        #ifdef _MAC
        #define CALLBACK    PASCAL
        #define WINAPI      CDECL
        #define WINAPIV     CDECL
        #define APIENTRY    WINAPI
        #define APIPRIVATE  CDECL
        #ifdef _68K_
        #define PASCAL      __pascal
        #else
        #define PASCAL
        #endif
        #elif (_MSC_VER >= 800) || defined(_STDCALL_SUPPORTED)
        #define CALLBACK    __stdcall
        #define WINAPI      __stdcall
        #define WINAPIV     __cdecl
        #define APIENTRY    WINAPI
        #define APIPRIVATE  __stdcall
        #define PASCAL      __stdcall
        #else
        #define CALLBACK
        #define WINAPI
        #define WINAPIV
        #define APIENTRY    WINAPI
        #define APIPRIVATE
        #define PASCAL      pascal
        #endif

        #ifndef _M_CEE_PURE
        #ifndef WINAPI_INLINE
        #define WINAPI_INLINE  WINAPI
        #endif
        #endif

        #undef FAR
        #undef  NEAR
        #define FAR                 far
        #define NEAR                near
        #ifndef CONST
        #define CONST               const
        #endif
        */

        DWORD :: u32;
        BOOL :: s32;
        BYTE :: u8;
        WORD :: u16;
        FLOAT :: float;
        PFLOAT :: *FLOAT;
        PBOOL :: *BOOL;
        LPBOOL :: *BOOL;
        PBYTE :: *BYTE;
        LPBYTE :: *BYTE;
        PINT :: *INT;
        LPINT :: *INT;
        PWORD :: *WORD;
        LPWORD :: *WORD;
        LPLONG :: *LONG;
        PDWORD :: *DWORD;
        LPDWORD :: *DWORD;
        LPVOID :: *void;
        LPCVOID :: *void;

        INT :: s32;
        UINT :: u32;
        PUINT :: *u32;


        if !defined(NT_INCLUDED) {
            #load "winnt.jai";
        } /* NT_INCLUDED */

        /* Types use for passing & returning polymorphic values */
        WPARAM :: UINT_PTR;
        LPARAM :: LONG_PTR;
        LRESULT :: LONG_PTR;

        MAKEWORD :: (low_byte: BYTE, high_byte: BYTE) -> WORD {
            result :=  cast(WORD) low_byte | ((cast(WORD) high_byte) << 8);
            return result;
        }

        MAKELONG :: (low_word: WORD, high_word: WORD) -> LONG {
            result := cast(LONG) low_word | ((cast(LONG) high_word) << 16);
            return result;
        }

        LOWORD :: (l: LONG) -> WORD {
            result: WORD = xx (l & 0xffff);
            return result;
        }

        HIWORD :: (l: LONG) -> WORD {
            result: WORD = xx ((l >> 16)& 0xffff);
            return result;
        }

        LOBYTE :: (w: WORD) -> BYTE {
            result: BYTE = xx (w & 0xff);
            return result;
        }

        HIBYTE :: (w: WORD) -> BYTE {
            result: BYTE = xx ((w >> 8) & 0xff);
            return result;
        }

        SPHANDLE :: *HANDLE;
        LPHANDLE :: HANDLE;
        HGLOBAL :: HANDLE;
        HLOCAL :: HANDLE;
        GLOBALHANDLE :: HANDLE;
        LOCALHANDLE :: HANDLE;

        /* Probably not needed
        #ifndef _MAC
        #ifdef _WIN64
        typedef INT_PTR (FAR WINAPI *FARPROC)();
        typedef INT_PTR (NEAR WINAPI *NEARPROC)();
        typedef INT_PTR (WINAPI *PROC)();
        #else
        typedef int (FAR WINAPI *FARPROC)();
        typedef int (NEAR WINAPI *NEARPROC)();
        typedef int (WINAPI *PROC)();
        #endif  // _WIN64
        #else
        typedef int (CALLBACK *FARPROC)();
        typedef int (CALLBACK *NEARPROC)();
        typedef int (CALLBACK *PROC)();
        #endif
        #if _MSC_VER >= 1200
        #pragma warning(pop)
        #endif
        #else
        typedef INT_PTR (WINAPI *FARPROC)(void);
        typedef INT_PTR (WINAPI *NEARPROC)(void);
        typedef INT_PTR (WINAPI *PROC)(void);
        #endif
        */ 

        ATOM :: WORD;   //BUGBUG - might want to remove this from minwin

        DECLARE_HANDLE(HKEY);
        PHKEY :: *HKEY;
        DECLARE_HANDLE(HMETAFILE);
        DECLARE_HANDLE(HINSTANCE);
        HMODULE :: HINSTANCE;      /* HMODULEs can be used in place of HINSTANCEs */
        DECLARE_HANDLE(HRGN);
        DECLARE_HANDLE(HRSRC);
        DECLARE_HANDLE(HSPRITE);
        DECLARE_HANDLE(HLSURF);
        DECLARE_HANDLE(HSTR);
        DECLARE_HANDLE(HTASK);
        DECLARE_HANDLE(HWINSTA);
        DECLARE_HANDLE(HKL);

        if !defined(_MAC) {
            HFILE :: INT;
        } else {
            HFILE :: short;
        }

        //
        //  File System time stamps are represented with the following structure:
        //

        _FILETIME :: struct {
            dwLowDateTime: DWORD;
            dwHighDateTime: DWORD;
        }
        FILETIME :: _FILETIME;
        PFILETIME :: *_FILETIME; 
        LPFILETIME :: *_FILETIME;

        define(*_FILETIME_);

    } /* WINAPI_FAMILY_PARTITION(WINAPI_PARTITION_APP | WINAPI_PARTITION_SYSTEM | WINAPI_PARTITION_GAMES) */
}

