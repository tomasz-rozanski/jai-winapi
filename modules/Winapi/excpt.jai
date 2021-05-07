//
// Module Name:
//     excpt.jai
//
// Abstract:
//     The declarations of the compiler-dependent intrinsics, support functions, and
//     keywords which implement the structured exception handling extensions.
//

#assert(OS == .WINDOWS);

define(*_INC_EXCPT);

#load "vcruntime.jai";

// Exception disposition return values
_EXCEPTION_DISPOSITION :: enum {
    ExceptionContinueExecution;
    ExceptionContinueSearch;
    ExceptionNestedException;
    ExceptionCollidedUnwind;
}

EXCEPTION_DISPOSITION :: _EXCEPTION_DISPOSITION;

#run {
    // SEH handler
    if defined(_M_IX86) && !defined(_CHPE_X86_ARM64_EH_) {

        _EXCEPTION_RECORD :: struct {};
        _CONTEXT :: struct {};

        _except_handler :: (
            _ExceptionRecord: *_EXCEPTION_RECORD,
            _EstablisherFrame: *void,
            _ContextRecord: *_CONTEXT,
            _DispatcherContext: *void
        ) -> EXCEPTION_DISPOSITION #c_call; // @todo

    } else if defined(_M_X64) || defined(_M_ARM) || defined(_M_ARM64) || defined(_CHPE_X86_ARM64_EH_) {
        if !defined(_M_CEE_PURE) {

            _EXCEPTION_RECORD :: struct {};
            _CONTEXT :: struct {};
            _DISPATCHER_CONTEXT :: struct {};

            __C_specific_handler :: (
                ExceptionRecord: *_EXCEPTION_RECORD,
                EstablisherFrame: *void,
                ContextRecord: *_CONTEXT,
                DispatcherContext: *_DISPATCHER_CONTEXT
            ) -> EXCEPTION_DISPOSITION #c_call; // @todo
        }
    }
}


// SEH intrinsics
/* Not sure how to handle those:
#define GetExceptionCode            _exception_code
#define exception_code              _exception_code
#define GetExceptionInformation()   ((struct _EXCEPTION_POINTERS *)_exception_info())
#define exception_info()            ((struct _EXCEPTION_POINTERS *)_exception_info())
#define AbnormalTermination         _abnormal_termination
#define abnormal_termination        _abnormal_termination

unsigned long __cdecl _exception_code(void);
void *        __cdecl _exception_info(void);
int           __cdecl _abnormal_termination(void);
*/ @todo


// Defined values for the exception filter expression
EXCEPTION_EXECUTE_HANDLER    :: 1;
EXCEPTION_CONTINUE_SEARCH    :: 0;
EXCEPTION_CONTINUE_EXECUTION :: (-1);

