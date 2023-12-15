//
//  AboutBabosa.swift
//  ProjetoLittleBotanist
//
//  Created by User on 21/11/23.
//

import SwiftUI

struct AboutBabosa: View {
    
    @State private var showingDiario = false
    @State private var showingLocal = false
    @State private var showingInformacoes = false
    
    var body: some View {
        NavigationView {
            ZStack{
                ImgView("Painel1")
                    .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
                
                VStack (spacing: 19){
                    Text("")
                    HStack (spacing: 10){
                        Text("Babosa")
                            .font(.Cuprum(size: 40))
                            .padding(.trailing, 50)
                            .foregroundColor(Color("Marrom"))
                        Text(".........................")
                            .foregroundColor(Color("Verde Claro"))
                        
                    }
                    
                    HStack (spacing: 35){
                        
                        VStack  {
                            Image("Temp")
                            Text("18-24°C")
                            
                            Image("Water")
                            Text("2-3 dias")
                            
                            Image("Wh")
                            Text("30-60cm")
                            
                            Spacer().frame(height: 49)
                            
                        } .padding(.leading, 50)
                        
                        Spacer().frame(width:32)
                        
                        VStack{
                            Image("BabosaSolo")
                          

                        }
                        
                    }
                    
                    VStack  (spacing: 190){
                        Text("Sobre") .foregroundColor(Color.white)
                            .font(.itim(size: 37))
                            .padding(.horizontal,15)
                            .background(Color("VerdeMedio"))
                            .cornerRadius(10)
                            .padding(.trailing, 240)
                        
                        Spacer().frame(height: 100)
                        
                    }
                    
                }
                
                VStack{
                    Image("Barra")
                        .padding(.trailing, 169)
                    Spacer().frame(height: 629)
                    
                }
                
                VStack(spacing: 420){
                    Text("")
                    VStack{
                        Text("""
                            
                            A babosa (Aloe vera) é uma planta suculenta conhecida por suas propriedades medicinais e de cuidados com a pele.
                            
                             **🌱 1. Vaso:**
                            Escolha um vaso espaçoso com boa drenagem, preferencialmente largo e raso, pois a babosa não requer uma profundidade significativa.
                            
                            **🌱 2. Solo:**
                            Utilize uma mistura específica para cactos e suculentas ou prepare uma mistura com areia, garantindo uma boa drenagem.
                            """)
                        .font(.system(size: 16))
                        .multilineTextAlignment(.leading)
                            .lineLimit(36)
                            .frame(width: 355, height: 310)
                        
                    }
                }
                
                VStack (spacing: 190){
                    Button(action: {self.showingDiario.toggle()}) {
                        Image("Diario")
                            
                    }
                    .offset(x: 150, y: 25)
                    .sheet(isPresented: $showingDiario) {
                       
                        DiarioViewControllerRepresentable(nomePlanta: "Babosa")
                    }
                    Spacer().frame(height: 450)
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
                                    Image("BabosaOrigem")
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
                    InformacoesViewControllerRepresentable(nomePlanta: "Babosa", texxx: """
𝟭. 𝗘𝘀𝗰𝗼𝗹𝗵𝗮 𝗱𝗼 𝗟𝗼𝗰𝗮𝗹:
- Posicione o vaso em um local com luz solar indireta a pleno sol. As babosas prosperam com bastante luz.

𝟮. 𝗣𝗿𝗲𝗽𝗮𝗿𝗼 𝗱𝗼 𝗦𝗼𝗹𝗼:
- Encha o vaso com a mistura de solo, deixando espaço suficiente para a muda.

𝟯. 𝗣𝗹𝗮𝗻𝘁𝗶𝗼 𝗱𝗮𝘀 𝗦𝗲𝗺𝗲𝗻𝘁𝗲𝘀 𝗼𝘂 𝗠𝘂𝗱𝗮𝘀:
- Faça um pequeno buraco no solo e plante a muda de babosa, garantindo que a base da folha esteja nivelada com a superfície do solo.

𝟰. 𝗥𝗲𝗴𝗮 𝗜𝗻𝗶𝗰𝗶𝗮𝗹:
- Regue moderadamente após o plantio para assentar o solo ao redor das raízes.

𝟱. 𝗖𝘂𝗶𝗱𝗮𝗱𝗼 𝗰𝗼𝗺 𝗮 𝗥𝗲𝗴𝗮:
- Regue quando o solo estiver completamente seco. Evite o excesso de água para prevenir o apodrecimento das raízes.

𝟲. 𝗔𝗱𝘂𝗯𝗮𝗿:
- Fertilize a babosa a cada 4-6 semanas durante a estação de crescimento com um adubo equilibrado para suculentas.

𝟳. 𝗣𝗼𝗱𝗮:
- A babosa não requer poda regular. Remova folhas danificadas ou murchas conforme necessário.

𝟴. 𝗖𝗼𝗹𝗵𝗲𝗶𝘁𝗮:
- Você pode colher as folhas da babosa quando necessário para uso externo. Corte as folhas na base com uma faca afiada.

𝟵. 𝗖𝘂𝗶𝗱𝗮𝗱𝗼:
- Monitore a babosa para sinais de pragas, como cochonilhas. Trate infestações com métodos naturais ou produtos específicos para suculentas.

""")
                        
                }
                
                .position(x: 330, y: 450)

                }
            }
        }
    }

struct AboutBabosa_Previews: PreviewProvider {
    static var previews: some View {
        AboutBabosa()
    }
}


