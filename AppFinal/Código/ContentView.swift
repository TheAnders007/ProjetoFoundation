//
//  ContentView.swift
//  ProjetoLittleBotanist
//
//  Created by User on 17/10/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationStack{
            ZStack {
                
                ImgView("ImgInicial")
                    .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
                
                VStack {
                    Spacer().frame(height: 410)
                    HStack {
                        Spacer().frame(width:12)
                        
                        NavigationLink(destination: TelaCategorias(), label: {
                            Label("INICIAR", image: "seta")
                                .font(.system(size: 30))
                                .foregroundColor(.white)
                                .padding(.vertical,10)
                                .padding(.horizontal,50)
                                .background(Color("MarromEsc"))
                                .cornerRadius(15
                                )
                            Spacer()
                        })
                        
                    }
                }
                
            }
            }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
