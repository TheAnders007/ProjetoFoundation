//
//  AboutCebolinha.swift
//  ProjetoLittleBotanist
//
//  Created by User on 31/10/23.
//

import SwiftUI

struct AboutLiriodaPaz: View {
    
    @State private var showingDiario = false
    @State private var showingLocal = false
    @State private var showingInformacoes = false
    
    var body: some View {
        NavigationView {
            ZStack{
                ImgView("Painel1")
                    .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
                
                VStack (spacing: 2){
                    Text("")
                    HStack (spacing: 10){
                        Text("Lirio-Da-Paz")
                            .font(.Cuprum(size: 40))
                            .padding(.trailing, 50)
                            .offset(y: 17)
                            .foregroundColor(Color("Marrom"))
                        Text(".........................")
                            .foregroundColor(Color("Verde Claro"))
                        
                    }
                    
                    HStack (spacing: -10){
                        
                        VStack  {
                            Image("Temp")
                            Text("13-24ºC")
                                .font(.system(size: 15))
                            
                            Image("Water")
                            Text("4-7 dias")
                                .font(.system(size: 15))
                            
                            Image("Wh")
                            Text("30-50cm")
                                .font(.system(size: 15))
                            
                            Spacer().frame(height: 9)
                            
                        } .padding(.leading, 50)
                        
                        Spacer().frame(width:32)
                        
                        VStack{
                            Image("LirioSombra")
                            Spacer().frame(height: 69)

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
                    Spacer().frame(height: 622)
                    
                }
                
                VStack(spacing: 440){
                    Text("")
                    VStack{
                        Text("""
                             O Lírio-da-Paz, ou Spathiphyllum, é uma planta de interior conhecida por suas elegantes flores brancas e purificação do ar, originária das florestas tropicais da América Central e do Sul.
                             
                             🌱 **1.Vaso:**
                             - Escolha um vaso com boa drenagem, mais largo do que profundo. O solo deve ser mantido úmido, mas evite o encharcamento.

                             🌱 **2. Solo:**
                             - Use substrato rico em matéria orgânica e uma mistura de solo com turfa e perlita para boa retenção de umidade e aeração adequada.
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
                    .offset(x: 155, y: -120)
                    .sheet(isPresented: $showingDiario) {
                       
                        DiarioViewControllerRepresentable(nomePlanta: "Lirio-Da-Paz")
                    }
                    
                    
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
                                    Image("LiriodaPazOrigem")
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
                .offset(y: -10)
               
                .sheet(isPresented: $showingInformacoes) {
                    InformacoesViewControllerRepresentable(nomePlanta: "Lírio da Paz", texxx: """
    𝟭. 𝗘𝘀𝗰𝗼𝗹𝗵𝗮 𝗱𝗼 𝗟𝗼𝗰𝗮𝗹:
    - Coloque o vaso em um local com luz indireta brilhante. O lírio-da-paz tolera ambientes com sombra, mas prefere uma boa luminosidade.
    
    𝟮. 𝗣𝗿𝗲𝗽𝗮𝗿𝗼 𝗱𝗼 𝗦𝗼𝗹𝗼:
    Encha o vaso com a mistura de solo, deixando espaço suficiente para a muda.
    
    𝟯. 𝗣𝗹𝗮𝗻𝘁𝗶𝗼 𝗱𝗮 𝗠𝘂𝗱𝗮:
    - Faça um buraco na mistura de solo e plante a muda de lírio-da-paz, assegurando que ela fique na mesma profundidade que estava no recipiente original.
                                
    𝟰. 𝗥𝗲𝗴𝗮 𝗜𝗻𝗶𝗰𝗶𝗮𝗹:
    - Regue a muda imediatamente após o plantio para ajudar no estabelecimento.

    𝟱. 𝗖𝘂𝗶𝗱𝗮𝗱𝗼 𝗰𝗼𝗺 𝗮 𝗥𝗲𝗴𝗮:
    - Mantenha o solo levemente úmido. Regue quando a camada superior do solo começar a secar, mas evite encharcar.
    
    𝟲. 𝗔𝗱𝘂𝗯𝗮𝗿:
    - Fertilize mensalmente na primavera e no verão com um fertilizante equilibrado, diluído à metade da concentração recomendada.
    
    𝟳. 𝗣𝗼𝗱𝗮:
    - Remova folhas antigas e amareladas conforme necessário. Corte as flores murchas para incentivar novas florações.

    𝟴. 𝗟𝗶𝗺𝗽𝗲𝘇𝗮:
    - Limpe regularmente as folhas com um pano úmido para remover poeira e manter a planta saudável.

    𝟵. 𝗠𝗼𝗻𝗶𝘁𝗼𝗿𝗮𝗺𝗲𝗻𝘁𝗼:
    - Esteja atento a pragas, como pulgões ou cochonilhas. Trate conforme necessário usando métodos adequados.
    """)
                        
                }
                
                .position(x: 340, y: 475)
            }
        }
    }
}


#Preview {
    AboutLiriodaPaz()
}
