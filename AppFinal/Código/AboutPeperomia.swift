//
//  AboutCebolinha.swift
//  ProjetoLittleBotanist
//
//  Created by User on 31/10/23.
//

import SwiftUI

struct AboutPeperomia: View {
    
    @State private var showingDiario = false
    @State private var showingLocal = false
    @State private var showingInformacoes = false
    
    var body: some View {
        NavigationView {
            ZStack{
                ImgView("Painel1")
                    .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
                    .position(x: 197, y: 490)

                
                VStack (spacing: 14){
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
                                .offset(x: 30)
                            Spacer().frame(height: 79)
                                .offset(x: /*@START_MENU_TOKEN@*/10.0/*@END_MENU_TOKEN@*/, y: 123)

                        }
                        
                    }
                    
                    VStack  (spacing: 135){
                        Text("Sobre") .foregroundColor(Color.white)
                            .font(.itim(size: 37))
                            .padding(.horizontal,15)
                            .background(Color("VerdeMedio"))
                            .cornerRadius(10)
                            .padding(.trailing, 240)
                            
                        
                        Spacer().frame(height: 320)
                        
                    }
                    
                }
                
                VStack{
                    Image("Barra")
                        .padding(.trailing, 169)
                    Spacer().frame(height: 689)
                    
                }
                
                VStack(spacing: 430){
                    Text("")
                    VStack{
                        Text("""
                             A Peperomia é uma planta conhecida por suas folhas espessas e variadas. Originária das Américas, tem diversidade de cores e formas.
                             
                             🌱 **1. Vaso:**
                             - Escolha um vaso médio com boa retenção de umidade e boa drenagem para evitar enxarcamento.

                             🌱 **2. Solo:**
                             - Use substrato leve e bem drenado e uma mistura de solo para vasos com perlita para garantir boa aeração e evitar o acúmulo de água.
                             
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
                        
                        DiarioViewControllerRepresentable(nomePlanta: "Peperomia")
                    }
                    .padding(.leading, 305)
                    .offset(x: 0, y: 65)
                    
                    Spacer().frame(height: 330)
                    
                        .padding(.leading, 305)
                        .offset(x: 0, y: 65)
                    
                    Spacer().frame(height: 360)
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
                                    Image("PeperomiaOrigem")
                                        .resizable()
                                        .frame(width: 395, height: 440)
                                        .offset(x: 0, y: 15)
                                        .presentationDetents([.medium])
                                    
                                }
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
                    InformacoesViewControllerRepresentable(nomePlanta: "Peperomia", texxx: """
    𝟭. 𝗘𝘀𝗰𝗼𝗹𝗵𝗮 𝗱𝗼 𝗟𝗼𝗰𝗮𝗹:
    - Coloque o vaso em um local com luz indireta brilhante. Evite a luz solar direta intensa, pois isso pode causar danos às folhas.
    
    𝟮. 𝗣𝗿𝗲𝗽𝗮𝗿𝗼 𝗱𝗼 𝗦𝗼𝗹𝗼:
    Encha o vaso com a mistura de solo, garantindo uma boa drenagem.
                                
    𝟯. 𝗣𝗹𝗮𝗻𝘁𝗶𝗼 𝗱𝗮𝘀 𝗠𝘂𝗱𝗮𝘀:
    Faça um pequeno buraco na mistura de solo e plante a muda de peperomia, mantendo a mesma profundidade que estava no recipiente original.
                                
    𝟰. 𝗥𝗲𝗴𝗮 𝗜𝗻𝗶𝗰𝗶𝗮𝗹:
    - Regue a muda imediatamente após o plantio para auxiliar no estabelecimento.
    
    𝟱. 𝗖𝘂𝗶𝗱𝗮𝗱𝗼 𝗰𝗼𝗺 𝗮 𝗥𝗲𝗴𝗮:
    - Mantenha o solo levemente úmido. Regue quando a camada superior do solo estiver seca ao toque.
    
    𝟲. 𝗔𝗱𝘂𝗯𝗮𝗿:
    - Fertilize mensalmente durante a primavera e o verão, reduzindo as aplicações no outono e no inverno.
    
    𝟳. 𝗣𝗼𝗱𝗮:
    - Remova folhas antigas ou danificadas para manter a aparência da planta. A peperomia não requer poda significativa.

    𝟴. 𝗟𝗶𝗺𝗽𝗲𝘇𝗮:
    - Limpe regularmente as folhas com um pano úmido para remover poeira e manter a planta saudável.

    𝟵. 𝗖𝘂𝗶𝗱𝗮𝗱𝗼:
    - Esteja atento a sinais de pragas, como ácaros ou cochonilhas. Trate conforme necessário usando métodos adequados.
    """)
                    
                }
                
                .position(x: 340, y: 599)
            }
        }
    }
}

#Preview {
    AboutPeperomia()
}
