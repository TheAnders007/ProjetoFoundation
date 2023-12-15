//
//  AboutCebolinha.swift
//  ProjetoLittleBotanist
//
//  Created by User on 31/10/23.
//

import SwiftUI

struct AboutFicus: View {
    
    @State private var showingDiario = false
    @State private var showingLocal = false
    @State private var showingInformacoes = false
    
    var body: some View {
        NavigationView {
            ZStack{
                ImgView("Painel1")
                    .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
                    .position(x: 197, y: 380)
                
                VStack (spacing: 5){
                    Text("")
                    HStack (spacing: 10){
                        Text("Ficus")
                            .font(.Cuprum(size: 40))
                            .padding(.trailing, 50)
                            .offset(y: 35)
                            .foregroundColor(Color("Marrom"))
                        Text(".........................")
                            .foregroundColor(Color("Verde Claro"))
                        
                    }
                    
                    HStack (spacing: 22){
                        
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
                            
                            Spacer().frame(height: 49)
                            
                        } .padding(.bottom, -50)
                        
                        Spacer().frame(width:32)
                        
                        VStack{
                            Image("FicusSombra")
                                .offset(x: -10)
                            Spacer().frame(height: 69)

                        }
                        
                    }
                    
                    VStack  (spacing: 235){
                        Text("Sobre") .foregroundColor(Color.white)
                            .font(.itim(size: 37))
                            .padding(.horizontal,15)
                            .background(Color("VerdeMedio"))
                            .cornerRadius(10)
                            .padding(.trailing, 240)
                        
                        Spacer().frame(height: 120)
                        
                    }
                    
                }
                
                VStack{
                    Image("Barra")
                        .padding(.trailing, 169)
                    Spacer().frame(height: 665)
                    
                }
                
                VStack(spacing: 430){
                    Text("")
                    VStack{
                        Text("""
                             O Ficus é uma árvore ou arbusto popular em ambientes internos, conhecido por suas folhas brilhantes e formato elegante, originário do sudeste asiático.
                             
                             🌱 **1. Vaso:**
                             - Escolha um vaso grande para acomodar o Ficus. Certifique-se de que o vaso tenha boa drenagem para evitar o acúmulo de água.

                             🌱 **2. Solo:**
                             - Use um substrato bem drenado, com mistura de solo para vasos com areia para garantir boa aeração e evitar excesso de umidade.
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
                    .offset(y: -350)
                    .sheet(isPresented: $showingDiario) {
                        
                        DiarioViewControllerRepresentable(nomePlanta: "Ficus")
                    }
                    

                }
                .sheet(isPresented: $showingDiario) {
                    
                    DiarioViewControllerRepresentable(nomePlanta: "Cebolinha")
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
                                Image("FicusOrigem")
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
                    InformacoesViewControllerRepresentable(nomePlanta: "Ficus", texxx: """
    𝟭. 𝗘𝘀𝗰𝗼𝗹𝗵𝗮 𝗱𝗼 𝗟𝗼𝗰𝗮𝗹:
    - Coloque o vaso em um local com luz indireta brilhante. Evite a exposição direta ao sol forte, pois isso pode causar queimaduras nas folhas.
    
    𝟮. 𝗣𝗿𝗲𝗽𝗮𝗿𝗼 𝗱𝗼 𝗦𝗼𝗹𝗼:
    Encha o vaso com a mistura de solo, deixando espaço suficiente para a muda.
    
    𝟯. 𝗣𝗹𝗮𝗻𝘁𝗶𝗼 𝗱𝗮𝘀 𝗠𝘂𝗱𝗮𝘀:
    - Faça um buraco na mistura de solo e plante a muda de ficus, assegurando que ela fique na mesma profundidade que estava no recipiente original.
                                
    𝟰. 𝗥𝗲𝗴𝗮 𝗜𝗻𝗶𝗰𝗶𝗮𝗹:
    - Regue as sementes ou mudas imediatamente após o plantio para ajudar no estabelecimento.

    𝟱. 𝗖𝘂𝗶𝗱𝗮𝗱𝗼 𝗰𝗼𝗺 𝗮 𝗥𝗲𝗴𝗮:
    - Mantenha o solo uniformemente úmido. Evite regar em excesso, pois o ficus é suscetível ao apodrecimento das raízes em solo encharcado.
    
    𝟲. 𝗔𝗱𝘂𝗯𝗮𝗿:
    - Adube o ficus a cada 4-6 semanas durante a estação de crescimento com um fertilizante balanceado, seguindo as instruções do produto.
    
    𝟳. 𝗣𝗼𝗱𝗮:
    - Realize podas regulares para controlar o tamanho e a forma do ficus. Remova ramos mortos ou doentes.

    𝟴. 𝗟𝗶𝗺𝗽𝗲𝘇𝗮:
    - Limpe regularmente as folhas do ficus com um pano úmido para remover poeira e permitir que a planta respire melhor.

    𝟵. 𝗠𝗼𝗻𝗶𝘁𝗼𝗿𝗮𝗺𝗲𝗻𝘁𝗼:
    - Esteja atento a sinais de pragas, como ácaros ou cochonilhas. Trate conforme necessário com métodos adequados.
    """)
                        
                }
                
                .position(x: 340, y: 484)
            }
        }
    }
}


#Preview {
    AboutFicus()
}
