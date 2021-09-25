//
//  contadorApp.swift
//  contador
//
//  Created by Guilherme Gomes on 25/09/21.
//

import SwiftUI

@main
struct contadorApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView(contadorVM:ContadorViewModel())
        }
    }
}
