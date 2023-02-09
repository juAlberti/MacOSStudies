//
//  main.swift
//  ViewCodeAppKit
//
//  Created by Julia Alberti Maia on 08/02/23.
//

import AppKit

let app = NSApplication.shared
let delegate = AppDelegate()

app.delegate = delegate

_ = NSApplicationMain(CommandLine.argc, CommandLine.unsafeArgv)
