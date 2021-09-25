//
//  ContadorViewModel.swift
//  contador
//
//  Created by Guilherme Gomes on 25/09/21.
//

import SwiftUI

class ContadorViewModel: ObservableObject{
    @Published var qtd: Int = 0
    
    func incrementa() {
        if (self.qtd < 30){
            self.qtd += 1
        }
    }
    
    func decrementa(){
        if (self.qtd > 0){
            self.qtd -= 1
        }
    }
}
