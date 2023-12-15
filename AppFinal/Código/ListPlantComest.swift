//
//  ListPlantComest.swift
//  ProjetoLittleBotanist
//
//  Created by User on 24/10/23.
//

import SwiftUI

struct ListPlantComest: View {
    var body: some View {
        NavigationView {
            ZStack {
                Color("MarromClaro")
                    .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
                
                VStack (spacing: 5){
                  Text("")
                    HStack (spacing: 10){
                        Text("Plantas Comestíveis:")
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
                    HStack (spacing: 2){
                        
                        VStack{
                            
                            NavigationLink(destination: AboutCebolinha(),label : {
                                Image("Cebolinha")
                            }).padding(.leading,10)
                            
                            NavigationLink(destination: AboutHortela(),label : {
                                Image("Hortela")
                            }).padding(.leading,10)
                            
                    }
                        VStack{
                            NavigationLink(destination: AboutAlecrim(),label : {
                                Image("alecrim")
                            }).padding([.bottom, .trailing],30)
                            
                            NavigationLink(destination: AboutAPimentinha(),label : {
                                Image("Pimenta")
                            }).padding([.bottom, .trailing],20)
                            Spacer().frame(height: 99)
                    }
                        
                        
                    }
                    
                }
            }
        }
    }
}
    

extension Font {
    static func itim(size: CGFloat) -> Font {
        return .custom("Itim-Regular", size: size)
    }
}

#Preview {
    ListPlantComest()
}
