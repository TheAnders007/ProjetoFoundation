//
//  AboutCidreira.swift
//  ProjetoLittleBotanist
//
//  Created by User on 21/11/23.
//
import SwiftUI

struct AboutCidreira: View {
    
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
                        Text("Cidreira")
                            .font(.Cuprum(size: 40))
                            .padding(.trailing, 50)
                            .foregroundColor(Color("Marrom"))
                        Text(".........................")
                            .foregroundColor(Color("Verde Claro"))
                        
                    }
                    
                    HStack (spacing: -3){
                        
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
                            Image("CidreiraSolo")
                                .resizable()
                                .frame(width: 270)
                                .frame(height: 270)
                            Spacer().frame(height: 66)
                            

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
                    Spacer().frame(height: 629)
                    
                }
                
                VStack(spacing: 450){
                    Text("")
                    VStack{
                        Text("""
                             A cidreira é uma erva com um agradável aroma cítrico. Suas folhas são frequentemente usadas para fazer chás e infusões, conhecidos por suas propriedades calmantes.
                             
                                **🌱 1. Vaso:**
                             Escolha um vaso com, pelo menos, 20 cm de profundidade e que tenha furos para favorecer uma boa drenagem.
                             
                                **🌱 2. Solo:**
                             Utilize terra para vasos ou substrato específico para ervas aromáticas.
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
                    .offset(x: 155, y: -116)
                    .sheet(isPresented: $showingDiario) {
                        
                        DiarioViewControllerRepresentable(nomePlanta: "Cidreira")
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
                                    Image("CidreiraOrigem")
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
                    InformacoesViewControllerRepresentable(nomePlanta: "Cidreira", texxx: """
𝟭. 𝗣𝗿𝗲𝗽𝗮𝗿𝗮𝗻𝗱𝗼 𝗼 𝗦𝗼𝗹𝗼:

- Após escolher o solo devido, coloque-o dentro do vaso deixando-o cerca de 2,5 cm abaixo da borda do vaso.

𝟮. 𝗣𝗹𝗮𝗻𝘁𝗶𝗼:

- Se estiver usando sementes, plante-as conforme as instruções na embalagem, cobrindo levemente com terra. Se estiver usando mudas, faça um pequeno buraco no solo, insira a muda e cubra com terra, pressionando suavemente ao redor das raízes.

𝟯. 𝗥𝗲𝗴𝗮 𝗜𝗻𝗶𝗰𝗶𝗮𝗹:

- • Regue abundantemente após o plantio para garantir que o solo fique úmido. Certifique-se de que a água drene pelos furos de drenagem.

𝟰. 𝗣𝗼𝘀𝗶𝗰𝗶𝗼𝗻𝗮𝗺𝗲𝗻𝘁𝗼:

- Coloque o vaso em um local que receba pelo menos 6 horas de luz solar direta por dia. A erva-cidreira também pode crescer bem em luz solar indireta.

𝟱. 𝗥𝗲𝗴𝗮 𝗥𝗲𝗴𝘂𝗹𝗮𝗿:

- Mantenha o solo uniformemente úmido. Regue quando a camada superior do solo estiver seca ao toque. Evite o encharcamento, pois a erva-cidreira prefere solo levemente úmido.

𝟲. 𝗙𝗲𝗿𝘁𝗶𝗹𝗶𝘇𝗮𝗻𝗱𝗼:

- Fertilize a planta a cada 4-6 semanas com um adubo orgânico ou específico para ervas aromáticas, seguindo as instruções do produto.

𝟳. 𝗣𝗼𝗱𝗮:

- • Faça podas regulares para incentivar um crescimento compacto. Além disso, você pode colher as folhas conforme necessário para uso na culinária ou chás.

𝟴. 𝗣𝗿𝗼𝘁𝗲𝗴𝗲𝗿 𝗰𝗼𝗻𝘁𝗿𝗮 𝗽𝗿𝗮𝗴𝗮𝘀:

- Monitore a planta regularmente em busca de pragas. Se necessário, utilize métodos orgânicos de controle ou produtos específicos para plantas comestíveis.

""")
                        
                }
                
                .position(x: 350, y: 460)
            }
        }
    }
}

struct AboutCidreiira_Previews: PreviewProvider {
    static var previews: some View {
        AboutCidreira()
    }
}

