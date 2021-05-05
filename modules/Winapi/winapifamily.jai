// 
// Module Name:
// 
//     winpackagefamily.jai
// 
// Abstract:
// 
//     API family partitioning based on packages.
// 

#assert (OS == .WINDOWS);

#import "Basic";
#load "winpackagefamily.jai";

// WINAPI_FAMILY
WINAPI_FAMILY_PC_APP      :: 2;
WINAPI_FAMILY_PHONE_APP   :: 3;
WINAPI_FAMILY_SYSTEM      :: 4;
WINAPI_FAMILY_SERVER      :: 5;
WINAPI_FAMILY_GAMES       :: 6;
WINAPI_FAMILY_DESKTOP_APP :: 100;

WINAPI_FAMILY_APP :: WINAPI_FAMILY_PC_APP;

#run define(*WINAPI_FAMILY, WINAPI_FAMILY_DESKTOP_APP);
#run assert(WINAPI_FAMILY_DESKTOP_APP == WINAPI_FAMILY);


// WINAPI_PARTITION

#run define_winapi_partition(*WINAPI_PARTITION_DESKTOP, WINAPI_FAMILY_DESKTOP_APP);

#run define_winapi_partition(*WINAPI_PARTITION_APP, 
                             WINAPI_FAMILY_DESKTOP_APP, WINAPI_FAMILY_PC_APP, WINAPI_FAMILY_PHONE_APP);

#run define_winapi_partition(*WINAPI_PARTITION_PC_APP, 
                             WINAPI_FAMILY_DESKTOP_APP, WINAPI_FAMILY_PC_APP);

#run define_winapi_partition(*WINAPI_PARTITION_PHONE_APP, WINAPI_FAMILY_PHONE_APP);

#run define_winapi_partition(*WINAPI_PARTITION_GAMES,
                            WINAPI_FAMILY_GAMES,
                            WINAPI_FAMILY_DESKTOP_APP);

#run define_winapi_partition(*WINAPI_PARTITION_SYSTEM, WINAPI_FAMILY_SYSTEM, WINAPI_FAMILY_SERVER);

WINAPI_FAMILY_PARTITION :: Partitions => Partitions;

_WINAPI_DEPRECATED_DECLARATION :: #string DONE
#deprecated "This API cannot be used in the context of the caller's application type."
DONE

#if #run WINAPI_FAMILY_PARTITION(WINAPI_PARTITION_APP) && !WINAPI_FAMILY_PARTITION(WINAPI_PARTITION_DESKTOP) {
    APP_DEPRECATED_HRESULT : string : #run sprint("% %", HRESULT, _WINAPI_DEPRECATED_DECLARATION);
};


