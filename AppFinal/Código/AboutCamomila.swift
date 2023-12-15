//
//  AboutCamomila.swift
//  ProjetoLittleBotanist
//
//  Created by User on 21/11/23.
//

import SwiftUI

struct AboutCamomila: View {
    
    @State private var showingDiario = false
    @State private var showingLocal = false
    @State private var showingInformacoes = false
    
    
    var body: some View {
        NavigationView {
            ZStack{
                ImgView("Painel1")
                    .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
                
                VStack (spacing: -25){
                    Text("")
                    HStack (spacing: 10){
                        Text("Camomila")
                            .font(.Cuprum(size: 40))
                            .padding(.trailing, 50)
                            .foregroundColor(Color("Marrom"))
                        Text(".........................")
                            .foregroundColor(Color("Verde Claro"))
                        
                    }
                    
                    HStack (spacing: -15){
                        
                        VStack  {
                            Image("Temp")
                            Text("18-24°C")
                            
                            Image("Water")
                            Text("2-3 dias")
                            
                            Image("Wh")
                            Text("45cm")
                            
                            Spacer().frame(height: 49)
                            
                        } .padding(.leading, 50)
                        
                        Spacer().frame(width:32)
                        
                        VStack{
                            Image("CamomilaSolo")
                              
                            Spacer().frame(height: 69)
                            

                        }
                        
                    }
                    
                    VStack  (spacing: 190){
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
                    Spacer().frame(height: 690)
                    
                }
                VStack(spacing: 430){
                    Text("")
                    VStack{
                        Text("""
                             A camomila (Matricaria chamomilla) é conhecida por suas propriedades calmantes e relaxantes é usada para fazer chás, oferecendo benefícios como alívio do estresse e promoção do sono.
                             
                             **🌱 1. Vaso:**
                             Escolha um vaso com, pelo menos, 20 cm de profundidade e que tenha furos para favorecer uma boa drenagem.
                             
                               **🌱 2. Solo:**
                             Utilize terra para vasos de boa qualidade e que seja bem drenado, do jeitinho que a camomila gosta.
                             
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
                    .offset(x: 153, y: 25)
                    .sheet(isPresented: $showingDiario) {
                        
                        DiarioViewControllerRepresentable(nomePlanta: "Camomila")
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
                                    Image("CamomilaOrigem")
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
                    InformacoesViewControllerRepresentable(nomePlanta: "Camomila", texxx: """
𝟭. 𝗘𝘀𝗰𝗼𝗹𝗵𝗮 𝗱𝗮 𝗦𝗲𝗺𝗲𝗻𝘁𝗲:
- Escolha sementes de camomila de boa qualidade. Existem diferentes variedades, como alemã (*Matricaria recutita*) e romana (*Chamaemelum nobile*), então selecione a variedade que preferir.

𝟮. 𝗣𝗹𝗮𝗻𝘁𝗶𝗼:
- Plante as sementes na superfície do solo, pressionando-as levemente para aderir à terra. Não cubra as sementes com terra, pois a camomila precisa de luz para germinar.

𝟯. 𝗥𝗲𝗴𝗮 𝗜𝗻𝗶𝗰𝗶𝗮𝗹:
- Regue suavemente após o plantio para umedecer o solo. Evite encharcar.

𝟰. 𝗣𝗼𝘀𝗶𝗰𝗶𝗼𝗻𝗮𝗺𝗲𝗻𝘁𝗼:
- Coloque o vaso em um local ensolarado com luz direta pelo menos por algumas horas por dia. Camomila também pode crescer em luz solar indireta.

𝟱. 𝗥𝗲𝗴𝗮 𝗥𝗲𝗴𝘂𝗹𝗮𝗿:
- Mantenha o solo uniformemente úmido. A camomila não tolera solo seco, então regue sempre que a camada superior do solo começar a secar.

𝟲. 𝗙𝗲𝗿𝘁𝗶𝗹𝗶𝘇𝗮𝗿:
- Fertilize a camomila com um adubo orgânico ou específico para ervas a cada 4-6 semanas durante a estação de crescimento. Siga as instruções do produto.

𝟳. 𝗣𝗼𝗱𝗮:
- Pode a camomila para promover um crescimento mais compacto e estimular a produção de flores. A poda também pode ser feita para colher flores e folhas para uso.

𝟴. 𝗣𝗿𝗼𝘁𝗲𝗴𝗲𝗿 𝗰𝗼𝗻𝘁𝗿𝗮 𝗽𝗿𝗮𝗴𝗮𝘀:
- Monitore a planta para pragas como pulgões e ácaros. Se necessário, utilize métodos orgânicos de controle de pragas.

""")
                        
                }
                
                .position(x: 325, y: 418)
                }
            }
        }
    }

struct AboutCamomila_Previews: PreviewProvider {
    static var previews: some View {
        AboutCamomila()
    }
}
