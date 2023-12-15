//
//  ListPlantMedi.swift
//  ProjetoLittleBotanist
//
//  Created by User on 21/11/23.
//

import SwiftUI

struct ListPlantMedi: View {
    var body: some View {
        NavigationView {
            ZStack {
                Color("MarromClaro")
                    .edgesIgnoringSafeArea(.all)
                
                VStack (spacing: 10){
                  Text("")
                    HStack (spacing: 15){
                        Text("Plantas Medicinais:")
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
                    HStack (spacing: -1){
                        
                        VStack{
                            
                            NavigationLink(destination: AboutCamomila(),label : {
                                Image("Camomila")
                            }).padding(.leading,-30)
                            
                            NavigationLink(destination: AboutBabosa(),label : {
                                Image("Babosa1")
                            }).padding(.leading,-45)
                                Spacer()
                            
                    }
                        VStack{
                            NavigationLink(destination: AboutCidreira(),label : {
                                Image("Cidreira")
                            }).padding([.leading, .bottom],6.0).frame(width: 149.0)
                            
                            NavigationLink(destination: AboutManjericao(),label : {
                                Image("Manjericao")
                            })
                            Spacer().frame(height: 11.0)
//                            Star()
                       

                    }

                    }
//                    Star()

                }
            }
        }
    }
}
    

extension Font {
    static func Itim(size: CGFloat) -> Font {
        return .custom("Itim-Regular", size: size)
    }
}


struct ListPlantMedi_Previews: PreviewProvider {
    static var previews: some View {
        ListPlantMedi()
    }
}
