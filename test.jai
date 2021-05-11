#import "Basic";
//#import "Winapi";
//#load "modules/Winapi/winver.jai";

LONG :: s64;
ULONG :: u64;

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
PINT :: *int;
LPINT :: *int;
PWORD :: *WORD;
LPWORD :: *WORD;
LPLONG :: *s32;
PDWORD :: *DWORD;
LPDWORD :: *DWORD;
LPVOID :: *void;
LPCVOID :: *void;

INT :: s32;
UINT :: u32;
PUINT :: *u32;

main :: () { 
}

#run main();

