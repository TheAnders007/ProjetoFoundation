//
//  AboutManjericao.swift
//  ProjetoLittleBotanist
//
//  Created by User on 21/11/23.
//

import SwiftUI

struct AboutManjericao: View {
    
    @State private var showingDiario = false
    @State private var showingLocal = false
    @State private var showingInformacoes = false
    
    var body: some View {
        NavigationView {
            ZStack{
                ImgView("Painel1")
                    .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
                
                VStack (spacing: 20){
                    Text("")
                    HStack (spacing: 2){
                        Text("Manjericão")
                            .font(.Cuprum(size: 40))
                            .padding(.trailing, 55)
                            .foregroundColor(Color("Marrom"))
                        Text(".........................")
                            .foregroundColor(Color("Verde Claro"))
                        
                    }
                    
                    HStack (spacing: 24){ //15
                        
                        VStack  {
                            Image("Temp")
                            Text("18-24°C")
                            
                            Image("Water")
                            Text("2-3 dias")
                            
                            Image("Wh")
                            Text("30-60cm")
                            
                            Spacer().frame(height: 49)
                            
                        } .padding(.leading, 50)
                        
                        Spacer().frame(width:40) //32
                        
                        VStack{
                            Image("ManjericaoSolo")
                             //69
                            

                        }
                        
                    }
                    
                    VStack  (spacing: 180){ //180
                        Text("Sobre") .foregroundColor(Color.white)
                            .font(.itim(size: 37))
                            .padding(.horizontal,15)
                            .background(Color("VerdeMedio"))
                            .cornerRadius(10)
                            .padding(.trailing, 240)
                        
                        Spacer().frame(height: 125)
                        
                    }
                    
                }
                
                VStack{
                    Image("Barra")
                        .padding(.trailing, 169)
                    Spacer().frame(height: 630)
                    
                }
                
                VStack(spacing: 439){
                    Text("")
                    VStack{
                        Text("""

O manjericão (Ocimum basilicum) é uma erva aromática amplamente utilizada na culinária e seu aroma possui propriedades medicinais.

**🌱 1. Vaso:**
Escolha um vaso com, pelo menos, 15 cm de diâmetro e que tenha furos para impedir o acúmulo de água.

**🌱 2. Solo:**
Utilize terra para vasos de boa qualidade, misturada com um pouco de adubo orgânico para fornecer nutrientes.

""")
                        .font(.system(size: 16))
                        .multilineTextAlignment(.leading)
                            .lineLimit(36)
                            .frame(width: 355, height: 290)
                        
                    }
                }
                
                VStack (spacing: 150){
                    Button(action: {self.showingDiario.toggle()}) {
                        Image("Diario")
                           
                    }
                    .offset(x: 153, y: 30)
                    .sheet(isPresented: $showingDiario) {
                        // Use a UIViewControllerRepresentable para integrar a DiarioViewController ao SwiftUI
                        DiarioViewControllerRepresentable(nomePlanta: "Manjericão")
                    }
                    Spacer().frame(height: 490)
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
                                    Image("ManjericaoOrigem")
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
                    InformacoesViewControllerRepresentable(nomePlanta: "Manjericão", texxx: """
𝟭. 𝗣𝗹𝗮𝗻𝘁𝗶𝗼 𝗱𝗮𝘀 𝗦𝗲𝗺𝗲𝗻𝘁𝗲𝘀 𝗼𝘂 𝗠𝘂𝗱𝗮𝘀:
- Recomenda-se usar mudas para resultados mais rápidos, mas se preferir começar a partir de sementes, siga as instruções na embalagem.

𝟮. 𝗣𝗹𝗮𝗻𝘁𝗶𝗼:
- Se estiver usando mudas, plante-as no centro do vaso, cobrindo as raízes com terra e pressionando suavemente. Se estiver usando sementes, plante-as conforme as instruções da embalagem.

𝟯. 𝗥𝗲𝗴𝗮 𝗜𝗻𝗶𝗰𝗶𝗮𝗹:
- Regue bem após o plantio para garantir que o solo esteja úmido. Certifique-se de que a água drenou pelos furos de drenagem.

𝟰. 𝗣𝗼𝘀𝗶𝗰𝗶𝗼𝗻𝗮𝗺𝗲𝗻𝘁𝗼:
- Coloque o vaso em um local ensolarado com luz direta pelo menos 6 horas por dia. O manjericão adora sol.

𝟱. 𝗥𝗲𝗴𝗮 𝗥𝗲𝗴𝘂𝗹𝗮𝗿:
- Mantenha o solo uniformemente úmido, regando quando a camada superior do solo começar a secar. Evite encharcar, pois o manjericão prefere solo levemente úmido.

𝟲. 𝗙𝗲𝗿𝘁𝗶𝗹𝗶𝘇𝗮𝗿:
- Fertilize a planta a cada 4-6 semanas com um adubo equilibrado ou específico para ervas, seguindo as instruções do produto.

𝟳. 𝗣𝗼𝗱𝗮:
- Faça podas regulares para incentivar o crescimento compacto e colha as folhas conforme necessário. Pode também as flores para promover o crescimento contínuo das folhas.

𝟴. 𝗣𝗿𝗼𝘁𝗲𝗴𝗲𝗿 𝗰𝗼𝗻𝘁𝗿𝗮 𝗽𝗿𝗮𝗴𝗮𝘀:
- Monitore a planta regularmente em busca de pragas. O manjericão é suscetível a pulgões e moscas brancas. Se necessário, utilize métodos orgânicos de controle de pragas.
""")
                        
                }
                
                .position(x: 330, y: 460)
                }
            }
        }
    }

struct AboutManjericao_Previews: PreviewProvider {
    static var previews: some View {
        AboutManjericao()
    }
}

