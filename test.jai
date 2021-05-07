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
main :: () { 
    l := LOWORD(0x12345678);
    print("LOWORD(0x12345678) is %\n", formatInt(l, 16));

    h := HIWORD(0x12345678);
    print("HIWORD(0x12345678) is %\n", formatInt(h, 16));

    lb := LOBYTE(0x1234);
    print("LOBYTE(0x1234) is %\n", formatInt(lb, 16));

    hb := HIBYTE(0x1234);
    print("HIBYTE(0x1234) is %\n", formatInt(hb, 16));
}

#run main();

