// 
// Module Name:
// 
//     windows.jai
// 
// Abstract:
// 
//     Master module for Windows applications.
// 

#assert (OS == .WINDOWS);

#load "winapifamily.jai";
#load "sdkddkver.jai";

#run 
{
    if WINAPI_FAMILY_PARTITION(WINAPI_PARTITION_APP | WINAPI_PARTITION_SYSTEM | 
    WINAPI_PARTITION_GAMES) {

        if defined(RC_INVOKED) && !defined(NOWINRES) {

            #load "winresrc.jai";


        } else {

            if defined(RC_INVOKED) {
                // Turn off a bunch of stuff to ensure that RC files compile OK
                define(*NOATOM);
                define(*NOGDI);
                define(*NOGDICAPMASKS);
                define(*NOMETAFILE);
                define(*NOMINMAX);
                define(*NOMSG);
                define(*NOOPENFILE);
                define(*NORASTEROPS);
                define(*NOSCROLL);
                define(*NOSOUND);
                define(*NOSYSMETRICS);
                define(*NOTEXTMETRIC);
                define(*NOWH);
                define(*NOCOMM);
                define(*NOKANJI);
                define(*NOCRYPT);
                define(*NOMCX);
            }

            if !defined(_68K_) && !defined(_MPPC_) && !defined(_X86_) && 
            !defined(_IA64_) && !defined(_AMD64_) && !defined(_ARM_) &&
            !defined(_ARM64_) && defined(_M_IX86) {
                define(*_X86_);
                if !defined(_CHPE_X86_ARM64_) && defined(_M_HYBRID) {
                    define(*_CHPE_X86_ARM64_);
                }
            }

            if !defined(_68K_) && !defined(_MPPC_) && !defined(_X86_) && 
            !defined(_IA64_) && !defined(_AMD64_) && !defined(_ARM_) &&
            !defined(_ARM64_) && defined(_M_AMD64) {
                define(*_AMD64_);
            }

            if !defined(_68K_) && !defined(_MPPC_) && !defined(_X86_) &&
            !defined(_IA64_) && !defined(_AMD64_) && !defined(_ARM_) &
            !defined(_ARM64_) && defined(_M_ARM) {
                define(*_ARM_);
            }

            if !defined(_68K_) && !defined(_MPPC_) && !defined(_X86_) &&
            !defined(_IA64_) && !defined(_AMD64_) && !defined(_ARM_) &&
            !defined(_ARM64_) && defined(_M_ARM64) {
                define(*_ARM64_);
            }

            if !defined(_68K_) && !defined(_MPPC_) && !defined(_X86_) &&
            !defined(_IA64_) && !defined(_AMD64_) && !defined(_ARM_) &&
            !defined(_ARM64_) && defined(_M_M68K) {
                define(*_68K_);
            }

            if !defined(_68K_) && !defined(_MPPC_) && !defined(_X86_) &&
            !defined(_IA64_) && !defined(_AMD64_) && !defined(_ARM_) && 
            !defined(_ARM64_) && defined(_M_MPPC) {
                define(*_MPPC_);
            }

            if !defined(_68K_) && !defined(_MPPC_) && !defined(_X86_) &&
            !defined(_M_IX86) && !defined(_AMD64_) && !defined(_ARM_) &&
            !defined(_ARM64_) && defined(_M_IA64) {
                if !defined(_IA64_) {
                    define(*_IA64_);
                } /* !_IA64_ */
            }

            if !defined(_MAC) {
                if defined(_68K_) || defined(_MPPC_) {
                    define(*_MAC);
                }
            }

            if defined(_MSC_VER) {
                if (_MSC_VER >= 800) {
                    if !defined(__cplusplus) {
                        //  pragma warning(disable : 4116) 
                    }
                }
            }

            if !defined(RC_INVOKED) {
                if (_MSC_VER >= 800) {
                    // pragma warning(disable : 4514)
                    if !defined(__WINDOWS_DONT_DISABLE_PRAGMA_PACK_WARNING__) {
                        // pragma warning(disable : 4103)
                    }
                    if _MSC_VER >= 1200 {
                        // pragma warning(push)
                    }
                    // pragma warning(disable : 4001)
                    // pragma warning(disable : 4201)
                    // pragma warning(disable : 4214)
                }
                #load "excpt.jai";
                #load "stdarg.jai";
            } /* RC_INVOKED */

            #load "windef.jai";
            #load "winbas.jai";
            #load "wingdi.jai";
            #load "winuser.jai";
            if !defined(_MAC) || defined(_WIN32NLS) {
                #load "winnls.jai";
            }
            if !defined(_MAC) {
                #load "wincon.jai";
                #load "winver.jai";
            }
            if !defined(_MAC) || defined(_WIN32REG) {
                #load "winreg.jai";
            }
            if !defined(_MAC) {
                #load "winnetwk.jai";
            }

            if !defined(WIN32_LEAN_AND_MEAN) {
                #load "cderr.jai";
                #load "dde.jai";
                #load "ddeml.jai";
                #load "dlgs.jai";
                if !defined(_MAC) {
                    #load "lzexpand.jai";
                    #load "mmsystem.jai";
                    #load "nb30.jai";
                    #load "rpc.jai";
                }
                #load "shellapi.jai";
                if !defined(_MAC) {
                    #load "winperf.jai";
                    #load "winsock.jai";
                }
                if !defined(NOCRYPT) { 
                    #load "wincrypt.jai";
                    #load "winefs.jai";
                    #load "winscard.jai";
                }

                if !defined(NOGDI) {
                    if !defined(_MAC) {
                        #load "winspool.jai";
                        if defined(INC_OLE1) {
                            #load "ole.jai";
                        } else {
                            #load "ole2.jai";
                        } /* !INC_OLE1 */
                    } /* !MAC */
                    #load "commdlg.jai";
                } /* !NOGDI */
            } /* WIN32_LEAN_AND_MEAN */

            #load "stralign.jai";

            if defined(_MAC) {
                #load "winwlm.jai";
            }

            if defined(INC_OLE2) {
                #load "ole2.jai";
            } /* INC_OLE2 */

            if !defined(_MAC) {
                if !defined(NOSERVICE) {
                    #load "winsvc.jai";
                }

                if (WINVER >= 0x0400) {
                    if !defined(NOMCX) {
                        #load "mcx.jai";
                    } /* NOMCX */

                    if !defined(NOIME) {
                        #load "imm.jai";
                    }
                } /* WINVER >= 0x0400 */
            }

            if !defined(RC_INVOKED) {
                if (_MSC_VER >= 800) {
                    if _MSC_VER >= 1200 {
                        // pragma warning(pop)
                    } else {
                        // pragma warning(default : 4001)
                        // pragma warning(default : 4201)
                        // pragma warning(default : 4214)
                    }
                }
            } /* RC_INVOKED */

        } /* RC_INVOKED */

    } /* WINAPI_FAMILY_PARTITION(WINAPI_PARTITION_APP | \
    WINAPI_PARTITION_SYSTEM | WINAPI_PARTITION_GAMES) */
}

