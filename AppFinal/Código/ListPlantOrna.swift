//
//  ListPlantComest.swift
//  ProjetoLittleBotanist
//
//  Created by User on 24/10/23.
//

import SwiftUI

struct ListPlantOrna: View {
    var body: some View {
        NavigationView {
            ZStack {
                Color("MarromClaro")
                    .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
                
                VStack (spacing: 5){
                  Text("")
                    HStack (spacing: 10){
                        Text("Plantas Ornamentais:")
                            .font(.itim(size: 30))
                            .multilineTextAlignment(.leading)
                            .padding([.top, .leading, .bottom],10)
                            .padding(.trailing, 10.0)
                            
                            .background(Color("Marrom"))
                            .cornerRadius(10)
                            .foregroundColor(Color("MarromClaro"))
                        Text(".................................")
                            .foregroundColor(Color("MarromClaro"))
                        
                    }
                    HStack (spacing: 10){
                        
                        VStack{
                            
                            NavigationLink(destination: AboutFicus(),label : {
                                Image("Ficus")
                            }).padding(.leading,30)
                            Spacer().frame(height: 35)
                            NavigationLink(destination: AboutPeperomia(),label : {
                                Image("Peperomia")
                            }).padding(.leading,30)
                            
                    }
                        VStack{
                            NavigationLink(destination: AboutLiriodaPaz(),label : {
                                Image("Lirio")
                            }).padding(.trailing,5.0)
                            
                            NavigationLink(destination: AboutRafia(),label : {
                                Image("Rafia") 
                            }).padding([.bottom, .trailing],-5)
                            Spacer().frame(height: 89)
                    }
                        
                        
                    }
                    
                }
            }
        }
    }
}
    


#Preview {
    ListPlantOrna()
}
