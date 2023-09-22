//
//  ContentView.swift
//  ColecoesComForEach
//
//  Created by User on 19/09/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView{
            TelaArray()
                .tabItem{
                    Image(systemName: "list.bullet")
                    Text("Arrays")
                }
            TelaDicionarios()
                .tabItem{
                    Image(systemName: "book")
                    Text("Dicionários")
                }
            TelaTuplas()
                .tabItem{
                    Image(systemName: "text.book.closed")
                    Text("Tuplas")
                }
            TelaSet()
                .tabItem{
                    Image(systemName: "square.and.pencil")
                    Text("Sets")
                }
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
