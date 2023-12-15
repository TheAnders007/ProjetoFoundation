//
//  ContentView.swift
//  AppFinal
//
//  Created by User on 10/10/23.
//

import SwiftUI



struct TelaCategorias: View {
    
    
    @State var displayMenu = false
    
    var body: some View {
        
        NavigationStack{
           
            ZStack{
                Color("MarromClaro")
                    .edgesIgnoringSafeArea(.all)
                VStack(spacing: 70){
                
                        Text("CATEGORIAS")
                            .font(.system(size: 40))
                            .foregroundColor(.brown)
                            .bold()
                            .toolbar {
                                Button {
                                    displayMenu = true
                                } label: {
                                    Image(systemName: "info.circle")
                                }
                            }
                            .sheet(isPresented: $displayMenu) {
                                ZStack{
                                    Color("MarromClaro")
                                        .edgesIgnoringSafeArea(.all)
                                    VStack (spacing: 5){
                                        Text("NÓS, A EQUIPE SUNRISE, TRAZEMOS A VOCÊ O APLICATIVO QUE IRÁ AJUDAR VOCÊ A CUIDAR DA SUA SAÚDE MENTAL - LITTLE BOTANIST -, POR MEIO DO INCENTIVO AO HOBBY DE PLANTIO, VISTO QUE TAL PRÁTICA AJUDA NA SENSAÇÃO DE BEM-ESTAR.")
                                            .font(Font.custom("Itim-Regular", size: 20))
                                            .foregroundColor(.brown)
                                            .padding()
                                            .presentationDetents([.medium])
                                        Text("ALÉM DE AJUDAR NA SUA SAÚDE, INCENTIVAMOS O CONHECIMENTO SOBRE A BOTÂNICA, TENDO, ALÉM DE UM AUXÍLIO PSICOLÓGICO, UM UP EDUCACIONAL, ILUMINANDO O SEU CONHECIMENTO. ")
                                            .font(Font.custom("Itim-Regular", size: 20))
                                            .foregroundColor(.brown)
                                            .padding()
                                    }
                                }
                            }
                    HStack(spacing: 20){
                        
                        NavigationLink(destination: ListPlantOrna(),label : {
                            Image("OrnamentaisBarra")})
                              .frame(width: 169, height: 60)
                           
                    
                        NavigationLink(destination:
                            ListPlantComest(), label: {
                            Image("COMESTIVEIS")})
                              .frame(width: 165, height: 56)
                    }
                    
                    
                    HStack(spacing: 20){
                        NavigationLink(destination:
                            ListPlantMedi(), label: {
                            Image("MEDICINAIS")})
                            .frame(width: 165, height: 56)
                    }
              
                    Image("Mensagem")
                        .resizable()
                        .frame(width: 360, height: 300)
                }
                
            }
        }
        
    }
}



struct TelaCategorias_Previews: PreviewProvider {
    static var previews: some View {
        TelaCategorias( )
    }
}
