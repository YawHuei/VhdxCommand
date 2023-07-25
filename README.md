# VhdxCommand
 Vhdx Iso manage Command line


Source From https://github.com/microsoft/Windows-classic-samples/tree/main/Samples/Hyper-V/Storage

Compile with Visual Studio 2022

Supported Names and Arguments:
   GetVirtualDiskInformation <path>
   CreateFixedVirtualDisk <path> <file size> <block size> <logical sector size> <physical sector size>
   CreateDynamicVirtualDisk <path> <file size> <block size> <logical sector size> <physical sector size>
   CreateDifferencingVirtualDisk <path> <parent path>
   AttachVirtualDisk <path> <readonly>
   DetachVirtualDisk <path>
   SetVirtualDiskInformation <child> <parent> <physical sector size>
   MergeVirtualDisk <path>
   CompactVirtualDisk <path>
   ResizeVirtualDisk <path> 2147483648
   MirrorVirtualDisk <source> <destination>
   RawIO <source> <destination>
   EnumerateUserMetaData <path>
   SetUserMetaData <path> <metadata int>
   GetUserMetaData <path>
   DeleteUserMetaData <path>
   AddVirtualDiskParent <path> <parent path>
   GetStorageDependencyInformation [<volume> | <disk>]
   GetAllAttachedVirtualDiskPhysicalPaths
