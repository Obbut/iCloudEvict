//
//  main.swift
//  iCloudEvict
//
//  Created by Robbert Brandsma on 11-06-15.
//  Copyright © 2015 Robbert Brandsma. All rights reserved.
//

import AppKit

if Process.arguments.count != 3 {
    fatalError("Usage:\niCloudEvict evict <filepath>\niCloudEvict download <filepath>")
}

let evict: Bool
switch Process.arguments[1] {
case "evict":
    evict = true
case "download":
    evict = false
default:
    fatalError("The first argument can be 'evict' or 'download'")
}

let path = Process.arguments[2]

do {
    let URL = NSURL(fileURLWithPath: path)
    if evict {
        try NSFileManager.defaultManager().evictUbiquitousItemAtURL(URL)
    } else {
        try NSFileManager.defaultManager().startDownloadingUbiquitousItemAtURL(URL)
    }
    
    print("Complete.")
} catch let error {
    fatalError("The file(s) could not be evicted or downloaded:\n\(error)")
}