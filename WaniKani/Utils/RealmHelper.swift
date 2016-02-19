//
//  RealmHelper.swift
//  WaniKani
//
//  Created by Andriy K. on 2/18/16.
//  Copyright © 2016 Andriy K. All rights reserved.
//

import Foundation
import RealmSwift

private let appGroupIdentifier = "group.com.haawa.WaniKani"

public let realmQueue = dispatch_queue_create("REALM", DISPATCH_QUEUE_SERIAL)
public let waniRealmConfiguration: Realm.Configuration = {
  
  let fileManager = NSFileManager.defaultManager()
  
  //Generate new realm path based on app group
  let appGroupURL: NSURL = fileManager.containerURLForSecurityApplicationGroupIdentifier(appGroupIdentifier)!
  let realmPath = appGroupURL.path! + "/default.realm"
  
  //Set the realm path to the new directory
  var config = Realm.Configuration.defaultConfiguration
  config.path = realmPath
  
  return config
}()

public var realm: Realm {
  let q = try! Realm(configuration: waniRealmConfiguration)
  print("")
  print("")
  print("")
  print("")
  
  print("e: \(q.path)")
  
  print("")
  print("")
  print("")
  print("")
  return q
}