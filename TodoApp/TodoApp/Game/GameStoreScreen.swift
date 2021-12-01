//
//  GameStoreScreen.swift
//  TodoApp
//
//  Created by burak cakir on 1.12.2021.
//

import SwiftUI

struct GameStoreScreen: View {
    let gameStore = GameStore()
    var body: some View {
        List(gameStore.games){(game) in
            Text(game.name)
        }
}

struct GameStoreScreen_Previews: PreviewProvider {
    static var previews: some View {
        GameStoreScreen()
    }
}
}
