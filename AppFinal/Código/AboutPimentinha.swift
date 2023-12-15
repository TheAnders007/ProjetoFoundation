//
//  AboutCebolinha.swift
//  ProjetoLittleBotanist
//
//  Created by User on 10/11/23.
//

import SwiftUI

struct AboutAPimentinha: View {
    
    @State private var showingLocal = false
    @State private var showingDiario = false
    @State private var showingInformacoes = false
    
    var body: some View {
        NavigationView {
            ZStack{
                ImgView("Painel1")
                    .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
                    .offset(x: 0, y: -30)
                
                VStack (spacing: 18){
                    Text("")
                    HStack (spacing: 10){
                        Text("Pimentinha")
                            .font(.Cuprum(size: 35))
                            .padding(.trailing, 50)
                            .foregroundColor(Color("Marrom"))
                        Text(".........................")
                            .foregroundColor(Color("Verde Claro"))
                        
                    }
                    
                    HStack (spacing: 15){
                        
                        VStack  {
                            Image("Temp")
                            Text("25-30ºC")
                                .font(.system(size: 15))
                            
                            Image("Water")
                            Text("1-2 dias")
                                .font(.system(size: 15))
                            
                            Image("Wh")
                            Text("60 cm")
                                .font(.system(size: 15))
                            
                            Spacer().frame(height: 49)
                            
                        } .padding(.leading, 50)
                        
                        Spacer().frame(width: 2)
                        
                        VStack{
                            Image("Planta3")
                                .padding(.trailing, 10)
                            Spacer().frame(height: 9)
                            
                        }
                        
                    }
                    
                    VStack  (spacing: 210){
                        Text("Sobre") .foregroundColor(Color.white)
                            .font(.itim(size: 37))
                            .padding(.horizontal,15)
                            .background(Color("VerdeMedio"))
                            .cornerRadius(10)
                            .padding(.trailing, 240)
                        
                        Spacer().frame(height: 110)
                        
                    }
                    
                }
                
                VStack{
                    Image("Barra")
                        .padding(.trailing, 169)
                    Spacer().frame(height: 645)
                    
                }
                
                VStack(spacing: 430){
                    Text("")
                    VStack{
                        Text("""
                             Pimenta é uma planta de sabor ardido possuindo diversas espécies que variam de acordo com o país
                             
                             🌱 **1. Vaso:**
                              Escolha um vaso grande, com pelo menos 30 cm de diâmetro, para acomodar o crescimento robusto das plantas de pimenta.
                             
                             🌱 **2. Sementes ou Mudas de Pimenta:**
                              **Opção 1:** Selecione sementes de pimenta e plante-as diretamente no vaso.
                              **Opção 2:** Compre mudas saudáveis de pimenta para transplante.
                             
                             """)
                        .font(.system(size: 16))
                        .multilineTextAlignment(.leading)
                        .lineLimit(36)
                        .frame(width: 355, height: 290)
                        
                    }
                }
                
                VStack (spacing: 20){
                    Button(action: {self.showingDiario.toggle()}) {
                        Image("Diario")
                           
                    }
                    .sheet(isPresented: $showingDiario) {
                        
                        DiarioViewControllerRepresentable(nomePlanta: "Pimentinha")
                    }
                    .padding(.leading, 305)
                    .offset(x: 0, y: 65)
                    
                    Spacer().frame(height: 420)
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
                                    Image("PimentinhaOrigem")
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
                        InformacoesViewControllerRepresentable(nomePlanta: "Pimentinha", texxx: """
    𝟭. 𝗘𝘀𝗰𝗼𝗹𝗵𝗮 𝗱𝗼 𝗟𝗼𝗰𝗮𝗹:
    - Coloque o vaso em um local ensolarado com pelo menos 6 horas de luz solar direta por dia.

    𝟮. 𝗣𝗿𝗲𝗽𝗮𝗿𝗼 𝗱𝗼 𝗦𝗼𝗹𝗼:
    Preencha o vaso com a mistura de solo, deixando espaço suficiente para as raízes das plantas de pimenta.
                                
    𝟯. 𝗣𝗹𝗮𝗻𝘁𝗶𝗼 𝗱𝗮𝘀 𝗦𝗲𝗺𝗲𝗻𝘁𝗲𝘀 𝗼𝘂 𝗠𝘂𝗱𝗮𝘀:
    - Opção 1: Plante as sementes a uma profundidade adequada e cubra levemente com terra.
    - Opção 2: Transplante as mudas para o solo, garantindo que fiquem na mesma profundidade que estavam no recipiente original.
                                
    𝟰. 𝗥𝗲𝗴𝗮 𝗜𝗻𝗶𝗰𝗶𝗮𝗹:
    - Regue as sementes ou mudas imediatamente após o plantio para ajudar no estabelecimento.

    𝟱. 𝗖𝘂𝗶𝗱𝗮𝗱𝗼 𝗰𝗼𝗺 𝗮 𝗥𝗲𝗴𝗮:
    - Mantenha o solo uniformemente úmido, evitando períodos de seca extrema.

    𝟲. 𝗔𝗱𝘂𝗯𝗮𝗿:
    - Adube as plantas a cada 4-6 semanas com um adubo equilibrado, especialmente durante o período de crescimento ativo.
    
    𝟳. 𝗣𝗼𝗱𝗮:
    - Realize podas para promover o crescimento e remover flores excessivas no início para direcionar a energia para o desenvolvimento das plantas.

    𝟴. 𝗖𝗼𝗹𝗵𝗲𝗶𝘁𝗮:
    - Comece a colher as pimentas quando atingirem o tamanho desejado e tiverem uma cor vibrante. Use tesouras ou facas para evitar danos às plantas.

    𝟵. 𝗖𝘂𝗶𝗱𝗮𝗱𝗼:
    - Fique atento a pragas e doenças, aplicando tratamentos adequados, se necessário. Ofereça suporte às plantas conforme elas crescem, se necessário.                            
    """)
                            
                    }
                    
                    .position(x: 330, y: -70)
                }
            }
        }
    }
}


#Preview {
    AboutAPimentinha()
}

