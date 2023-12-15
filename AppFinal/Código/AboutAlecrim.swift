//
//  AboutCebolinha.swift
//  ProjetoLittleBotanist
//
//  Created by User on 10/11/23.
//

import SwiftUI

struct AboutAlecrim: View {
    
    @State private var showingLocal = false
    @State private var showingDiario = false
    @State private var showingInformacoes = false
    
    var body: some View {
        NavigationView {
            ZStack{
                ImgView("Painel1")
                    .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
                    .offset(x: 0, y: -30)
                
                VStack (spacing: 10){
                    Text("")
                    HStack (spacing: 10){
                        Text("Alecrim")
                            .font(.Cuprum(size: 40))
                            .padding(.trailing, 50)
                            .offset(y: -15)
                            .foregroundColor(Color("Marrom"))
                        Text(".........................")
                            .foregroundColor(Color("Verde Claro"))
                           
                        
                    }
                    
                    HStack (spacing: 19){
                        
                        VStack  {
                            Image("Temp")
                            Text("25-30ºC")
                                .font(.system(size: 15))
                            
                            Image("Water")
                            Text("3 dias")
                                .font(.system(size: 15))
                            
                            Image("Wh")
                            Text("60cm-1,8m")
                                .font(.system(size: 15))
                            
                            Spacer().frame(height: 49)
                            
                        } .padding(.leading, 50)
                        
                        Spacer().frame(width: 2)
                        
                        VStack{
                            Image("Planta2")
                            .padding(.trailing, 20)
                            Spacer().frame(height: 9)

                        }
                        
                    }
                    
                    VStack  (spacing: 200){
                        Text("Sobre") .foregroundColor(Color.white)
                            .font(.itim(size: 37))
                            .padding(.horizontal,15)
                            .background(Color("VerdeMedio"))
                            .cornerRadius(10)
                            .padding(.trailing, 240)
                        
                        Spacer().frame(height: 90)
                        
                    }
                    
                }
                
                VStack{
                    Image("Barra")
                        .padding(.trailing, 169)
                    Spacer().frame(height: 635)
                    
                }
                
                VStack(spacing: 399){
                    Text("")
                    VStack{
                        Text("""
                             O alecrim é que ele é extremamente resistente a temperaturas altas e pode ser mantido em solo pouco umedecido
                             
                             🌱 **1. Vaso:**
                              Escolha um vaso espaçoso, com boa drenagem, com pelo menos 30 cm de diâmetro.
                             
                             🌱 **2. Solo:**
                              Opte por uma mistura bem drenada, como solo para vasos com areia ou perlita.
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
                           
                    }
                    .sheet(isPresented: $showingDiario) {
                        
                        DiarioViewControllerRepresentable(nomePlanta: "Alecrim")
                    }
                    .padding(.leading, 305)
                    .offset(x: 0, y: 65)
                    
                    Spacer().frame(height: 330)
                        .toolbar {
                            Button {
                                showingLocal = true
                            } label: {
                                Image("Local")
                                    .resizable()
                                    .frame(width: 35, height: 60)
                                    .padding(.trailing, 10)
                            }
                        }
                        .sheet(isPresented: $showingLocal) {
                            ZStack{
                                Color("Areia")
                                    .edgesIgnoringSafeArea(.all)
                                VStack (spacing: 5){
                                    Image("AlecrimOrigem")
                                        .resizable()
                                        .frame(width: 395, height: 440)
                                        .offset(x: 0, y: 15)
                                        .presentationDetents([.medium])
                                    
                                }
                            }
                        }
                    
                    
                    Button(action: {
                        self.showingInformacoes.toggle()
                    }
                    ) {
                        
                        Image("plantar")
                           
                           
                    }
                   
                    .sheet(isPresented: $showingInformacoes) {
                        InformacoesViewControllerRepresentable(nomePlanta: "Alecrim", texxx: """
𝟭. 𝗘𝘀𝗰𝗼𝗹𝗵𝗮 𝗱𝗼 𝗟𝗼𝗰𝗮𝗹:
- Posicione o vaso em um local ensolarado com pelo menos 6 horas de luz solar direta por dia.

𝟮. 𝗣𝗿𝗲𝗽𝗮𝗿𝗼 𝗱𝗼 𝗦𝗼𝗹𝗼:
- Encha o vaso com a mistura de solo, deixando espaço suficiente para as raízes.

𝟯. 𝗣𝗹𝗮𝗻𝘁𝗶𝗼 𝗱𝗮𝘀 𝗠𝘂𝗱𝗮𝘀:
- Faça um buraco no solo e transplante as mudas, garantindo que fiquem na mesma profundidade que estavam no recipiente original.

𝟰. 𝗥𝗲𝗴𝗮 𝗜𝗻𝗶𝗰𝗶𝗮𝗹:
- Regue as mudas após o plantio para estabelecer as raízes.

𝟱. 𝗖𝘂𝗶𝗱𝗮𝗱𝗼 𝗰𝗼𝗺 𝗮 𝗥𝗲𝗴𝗮:
- Deixe o solo secar entre as regas; o alecrim prefere solos mais secos.

𝟲. 𝗔𝗱𝘂𝗯𝗮𝗿:
- Adube a cada 4-6 semanas com um adubo equilibrado, especialmente durante a estação de crescimento.

𝟳. 𝗣𝗼𝗱𝗮:
- Realize podas regulares para manter a forma e incentivar o crescimento compacto. Remova ramos mortos ou doentes.

𝟴. 𝗖𝗼𝗹𝗵𝗲𝗶𝘁𝗮:
- Comece a colher quando o alecrim atingir pelo menos 15 cm de altura. Use uma tesoura afiada para cortar os ramos.

𝟵. 𝗖𝘂𝗶𝗱𝗮𝗱𝗼:
- Monitore a planta para pragas e doenças. Se necessário, trate com métodos orgânicos apropriados.
""")
                        
                            
                    }
                    
                    .position(x: 330, y: -320)

                }
            }
        }
    }
}


#Preview {
    AboutAlecrim()
}

