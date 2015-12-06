//
//  main.swift
//  BlueZ
//
//  Created by Alsey Coleman Miller on 12/6/15.
//  Copyright © 2015 PureSwift. All rights reserved.
//

#if os(Linux)
    import CBlueZ
    import Glibc
    import SwiftBlueZ
#elseif os(OSX)
    import Darwin.C
#endif

print("Initializing first Bluetooth Adapter")

guard let adapter = Bluetooth.Adapter() else {
    
    print("No Bluetooth adapters found")
    
    exit(0)
}

print("Found Bluetooth adapter with device ID: \(adapter.deviceIdentifier)")