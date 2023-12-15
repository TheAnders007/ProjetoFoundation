//
//  AboutCebolinha.swift
//  ProjetoLittleBotanist
//
//  Created by User on 31/10/23.
//

import SwiftUI

struct AboutRafia: View {
    
    @State private var showingDiario = false
    @State private var showingLocal = false
    @State private var showingInformacoes = false
    
    var body: some View {
        NavigationView {
            ZStack{
                ImgView("Painel1")
                    .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
                    .offset(y: -57)
                VStack (spacing: -4){
                    Text("")
                    HStack (spacing: 10){
                        Text("Rafia")
                            .font(.Cuprum(size: 40))
                            .padding(.trailing, 50)
                            .offset(y: 55)
                            .foregroundColor(Color("Marrom"))
                        Text(".........................")
                            .foregroundColor(Color("Verde Claro"))
                        
                    }
                    
                    HStack (spacing: -5){
                        
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
                            
                            Spacer().frame(height: -409)
                            
                        } .padding(.leading, 50)
                        
                        Spacer().frame(width:32)
                        
                        VStack{
                            Image("RafiaSombra")
                            Spacer().frame(height: 19)

                        }
                        
                    }
                    
                    VStack  (spacing: 210){
                        Text("Sobre") .foregroundColor(Color.white)
                            .font(.itim(size: 37))
                            .padding(.horizontal,15)
                            .background(Color("VerdeMedio"))
                            .cornerRadius(10)
                            .padding(.trailing, 240)
                        
                        Spacer().frame(height: 140)
                        
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
                             A Ráfia é uma planta ornamental conhecida por suas longas folhas verdes e aspecto elegante, originária da África. Ela é apreciada por sua resistência e facilidade de cuidado.
                             
                             🌱 **1. Vaso:**
                             - Opte por um vaso grande para a planta se desenvolver, com bom sistema de drenagem para evitar o acúmulo excessivo de água.
                             
                             🌱 **2. Solo:**.
                             - Use um substrato bem aerado e levemente ácido. Misture terra para vasos com perlita e casca de coco para boa drenagem e aeração.
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
                        
                        DiarioViewControllerRepresentable(nomePlanta: "Rafia")
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
                                    Image("RafiaOrigem")
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
                    InformacoesViewControllerRepresentable(nomePlanta: "Rafia", texxx: """
    𝟭. 𝗣𝗿𝗲𝗽𝗮𝗿𝗼 𝗱𝗼 𝗦𝗼𝗹𝗼:
    - Encha o vaso com a mistura de solo, deixando espaço suficiente para a muda.
    
    𝟮. 𝗣𝗹𝗮𝗻𝘁𝗶𝗼 𝗱𝗮 𝗠𝘂𝗱𝗮:
    - Faça um buraco no solo e plante a muda do coqueiro anão Rafia, assegurando que ela fique na mesma profundidade que estava no recipiente original.
                                
    𝟯. 𝗥𝗲𝗴𝗮 𝗜𝗻𝗶𝗰𝗶𝗮𝗹:
    - Regue a muda imediatamente após o plantio para auxiliar no estabelecimento.

    𝟰. 𝗖𝘂𝗶𝗱𝗮𝗱𝗼 𝗰𝗼𝗺 𝗮 𝗥𝗲𝗴𝗮:
    - Mantenha o solo levemente úmido, regando regularmente.
    
    𝟱. 𝗙𝗲𝗿𝘁𝗶𝗹𝗶𝘇𝗮𝗿
    - Fertilize a cada 2-3 meses com um fertilizante equilibrado, especialmente durante a estação de crescimento.
    
    𝟲. 𝗣𝗿𝗼𝘁𝗲𝗴𝗲𝗿 𝗰𝗼𝗻𝘁𝗿𝗮 𝘃𝗲𝗻𝘁𝗼:
    - Se possível, posicione o vaso em um local protegido do vento, pois o coqueiro anão Rafia pode ser sensível a ventos fortes.

    𝟳. 𝗠𝗼𝗻𝗶𝘁𝗼𝗿𝗮𝗺𝗲𝗻𝘁𝗼:
    - Esteja atento a sinais de pragas ou doenças. Trate conforme necessário.

    """)
                        
                }
                
                .position(x: 350, y: 480)
            }
        }
    }
}


#Preview {
    AboutRafia()
}
