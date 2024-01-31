//
//  Peer_Programming_AssignmentApp.swift
//  Peer Programming Assignment
//
//  Created by Eddy Wang on 1/29/24.
//

import FirebaseCore
import SwiftUI

@main
struct Peer_Programming_AssignmentApp: App {
    init() {
        FirebaseApp.configure()
    }
    var body: some Scene {
        WindowGroup {
            MainView()
        }
    }
}
