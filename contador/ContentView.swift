//
//  ContentView.swift
//  contador
//
//  Created by Guilherme Gomes on 25/09/21.
//

import SwiftUI

struct ContentView: View {
    @ObservedObject var contadorVM: ContadorViewModel
    
    var body: some View {
        VStack {
            contador
            HStack {
                btnIncrementa
                btnDecrementa
            }
        }
    }
}

extension ContentView{
    var contador: some View{
        Text(self.contadorVM.qtd.description)
            .fontWeight(.bold)
            .padding()
            .font(.title)
    }
}

extension ContentView{
    var btnIncrementa: some View{
        Button("+"){
            self.contadorVM.incrementa()
        }
        .font(.title)
        .padding()
    }
}

extension ContentView{
    var btnDecrementa: some View{
        Button("-"){
            self.contadorVM.decrementa()
        }
        .font(.title)
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(contadorVM:ContadorViewModel())
    }
}
