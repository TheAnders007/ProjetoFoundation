//
//  AboutCebolinha.swift
//  ProjetoLittleBotanist
//
//  Created by User on 31/10/23.
//

import SwiftUI

struct AboutPeperomia: View {
    @State private var showingDiario = false
    var body: some View {
        NavigationView {
            ZStack{
                ImgView("Painel1")
                    .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
                
                VStack (spacing: 24){
                    Text("")
                    HStack (spacing: 10){
                        Text("Peperomia")
                            .font(.Cuprum(size: 40))
                            .padding(.trailing, 50)
                            .foregroundColor(Color("Marrom"))
                            .offset(y: 125)
                        Text(".........................")
                            .foregroundColor(Color("Verde Claro"))
                        
                    }
                    
                    HStack (spacing: -15){
                        
                        VStack  (spacing: 10){
                            Image("Temp")
                            Text("13-24ºC")
                                .font(.system(size: 15))
                            
                            Image("Water")
                            Text("4-7 dias")
                                .font(.system(size: 15))
                            
                            Image("Wh")
                            Text("30-50cm")
                                .font(.system(size: 15))
                            
                            Spacer().frame(height: -79)
                            
                        } .padding(.top, 100)
                        
                        Spacer().frame(width:7)
                        
                        VStack{
                            Image("PeperomiaSombra")
                            Spacer().frame(height: 79)
                                .offset(x: /*@START_MENU_TOKEN@*/10.0/*@END_MENU_TOKEN@*/, y: 123)

                        }
                        
                    }
                    
                    VStack  (spacing: 200){
                        Text("Sobre") .foregroundColor(Color.white)
                            .font(.itim(size: 37))
                            .padding(.horizontal,15)
                            .background(Color("VerdeMedio"))
                            .cornerRadius(10)
                            .padding(.trailing, 240)
                            
                        
                        Spacer().frame(height: 190)
                        
                    }
                    
                }
                
                VStack{
                    Image("Barra")
                        .padding(.trailing, 169)
                    Spacer().frame(height: 622)
                    
                }
                
                VStack(spacing: 535){
                    Text("")
                    VStack{
                        Text("""
                             A Peperomia é uma planta conhecida por suas folhas espessas e variadas. Originária das Américas, tem diversidade de cores e formas.
                             
                             🌱 **1. Vaso:**
                             - Escolha um vaso pequeno a médio com boa retenção de umidade e boa drenagem para evitar enxarcamento.

                             🌱 **2. Solo:**
                             - Use substrato leve e bem drenado e uma mistura de solo para vasos com perlita para garantir boa aeração e evitar o acúmulo de água.
                             
                             """)
                        .font(.system(size: 16))
                        .multilineTextAlignment(.leading)
                            .lineLimit(36)
                            .frame(width: 355, height: 290)
                        
                    }
                }
                VStack (spacing: 190){
                    Button(action: {self.showingDiario.toggle()}) {
                        Image("Diario")
                            .padding(.leading, 299)
                    }
                    .sheet(isPresented: $showingDiario) {
                        // Use a UIViewControllerRepresentable para integrar a DiarioViewController ao SwiftUI
                        DiarioViewControllerRepresentable(nomePlanta: "Peperomia")
                    }
                    Spacer().frame(height: 469)

                }
                
            }
        }
    }
}

#Preview {
    AboutPeperomia()
}
