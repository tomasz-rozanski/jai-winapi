//
// Module Name:
// 
//     dde_rh.jai
// 
// Abstract:
// 
//     This module defines the 32-Bit Windows resource codes from dde.jai.
// 

/* DDE window messages */

WM_DDE_FIRST	   :: 0x03E0;
WM_DDE_INITIATE    :: (WM_DDE_FIRST);
WM_DDE_TERMINATE   :: (WM_DDE_FIRST+1);
WM_DDE_ADVISE	   :: (WM_DDE_FIRST+2);
WM_DDE_UNADVISE    :: (WM_DDE_FIRST+3);
WM_DDE_ACK	       :: (WM_DDE_FIRST+4);
WM_DDE_DATA	       :: (WM_DDE_FIRST+5);
WM_DDE_REQUEST	   :: (WM_DDE_FIRST+6);
WM_DDE_POKE	       :: (WM_DDE_FIRST+7);
WM_DDE_EXECUTE	   :: (WM_DDE_FIRST+8);
WM_DDE_LAST	       :: (WM_DDE_FIRST+8);

