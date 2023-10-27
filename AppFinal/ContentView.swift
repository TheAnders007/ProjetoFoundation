//
//  ContentView.swift
//  AppFinal
//
//  Created by User on 10/10/23.
//

import SwiftUI



struct ContentView: View {
    
    
    var body: some View {
        
        NavigationStack{
            ZStack{
                Color("sand")
                    .edgesIgnoringSafeArea(.all)
                VStack(spacing: 60){
                    Text("CATEGORIAS")
                        .font(.system(size: 40))
                        .foregroundColor(.brown)
                        .bold()
                    
                    HStack(spacing: 20){
                        Button{}
                    label: {
                        Image("FACEIS")
                            .resizable()
                            .frame(width: 169, height: 60)
                           
                    }
                        Button{}
                    label: {
                        Image("COMESTIVEIS")
                            .resizable()
                            .frame(width: 165, height: 56)
                    }
                    }
                    
                    HStack(spacing: 20){
                        Button{}
                    label: {
                        Image("MEDICINAIS")
                            .resizable()
                            .frame(width: 165, height: 56)
                    }
                        Button{}
                    label: {
                        Image("VENENOSAS")
                            .resizable()
                            .frame(width: 165, height: 56)
                    }
                    }
              
                    Image("Mensagem")
                        .resizable()
                        .frame(width: 360, height: 300)
                }
                
            }
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView( )
    }
}
