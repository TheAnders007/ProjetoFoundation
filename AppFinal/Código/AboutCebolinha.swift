//
//  AboutCebolinha.swift
//  ProjetoLittleBotanist
//
//  Created by User on 31/10/23.
//



import SwiftUI



struct AboutCebolinha: View {
    
    @State private var showingDiario = false
    @State private var showingLocal = false
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
                        Text("Cebolinha")
                            .font(.Cuprum(size: 40))
                            .padding(.trailing, 50)
                            .offset(y: 10)
                            .foregroundColor(Color("Marrom"))
                        Text(".........................")
                            .foregroundColor(Color("Verde Claro"))
                           
                        
                    }
                    
                    HStack (spacing: 5){
                        
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
                            
                        } .padding(.leading, 50)
                        
                        Spacer().frame(width:32)
                        
                        VStack{
                            Image("Planta1")
                            Spacer().frame(height: 69)

                        }
                        
                    }
                    
                    VStack  (spacing: 240){
                        
                            Text("Sobre") .foregroundColor(Color.white)
                                .font(.itim(size: 37))
                            
                                .padding(.horizontal,15)
                                .background(Color("VerdeMedio"))
                                .cornerRadius(10)
                                .padding(.trailing, 240)
                            
                            Spacer().frame(height: 105)
                        
                    }
                    
                }
                
                VStack{
                    Image("Barra")
                        .padding(.trailing, 169)
                    Spacer().frame(height: 679)
                    
                }
                
                VStack(spacing: 430){
                    Text("")
                    VStack{
                        Text("""
                             A cebolinha é um tempero popular no Brasil, que pode ser cultivado em vasos e não requer muito espaço
                             
                             🌱 **1. Vaso:**
                              Escolha um vaso com pelo menos 20 cm de profundidade para permitir o crescimento adequado das raízes.

                             🌱 **2. Sementes ou Mudas:**
                               **Opção 1:** Selecione sementes e plante-as diretamente no vaso.
                               **Opção 2:** Escolha mudas e transplante-as para o vaso.
                             
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
                        
                        DiarioViewControllerRepresentable(nomePlanta: "Cebolinha")
                    }
                    .padding(.leading, 305)
                    .offset(x: 0, y: 85)
                    
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
                                    Image("CebolinhaOrigem")
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
                        
                        InformacoesViewControllerRepresentable(nomePlanta: "Cebolinha", texxx: """
                            𝟭. 𝗘𝘀𝗰𝗼𝗹𝗵𝗮 𝗱𝗼 𝗟𝗼𝗰𝗮𝗹:
                            - Posicione o vaso em um local com 4 a 6 horas de luz solar direta por dia.

                            𝟮. 𝗣𝗿𝗲𝗽𝗮𝗿𝗼 𝗱𝗼 𝗦𝗼𝗹𝗼:
                            - Preencha o vaso com a mistura de solo para vasos, deixando cerca de 2,5 cm abaixo da borda.

                            𝟯. 𝗣𝗹𝗮𝗻𝘁𝗶𝗼 𝗱𝗮𝘀 𝗦𝗲𝗺𝗲𝗻𝘁𝗲𝘀 𝗼𝘂 𝗠𝘂𝗱𝗮𝘀:
                            - Opção 1: Plante as sementes superficialmente, pressionando-as no solo.
                            - Opção 2: Faça um buraco e transplante as mudas, mantendo a mesma profundidade do recipiente original.

                            𝟰. 𝗥𝗲𝗴𝗮 𝗜𝗻𝗶𝗰𝗶𝗮𝗹:
                            - Regue após o plantio para garantir contato adequado entre sementes/mudas e solo.

                            𝟱. 𝗖𝘂𝗶𝗱𝗮𝗱𝗼 𝗰𝗼𝗺 𝗮 𝗥𝗲𝗴𝗮:
                            - Mantenha o solo uniformemente úmido, evitando o encharcamento.

                            𝟲. 𝗔𝗱𝘂𝗯𝗮𝗿:
                            - Aplique adubo equilibrado a cada 4-6 semanas, conforme as instruções.

                            𝟳. 𝗣𝗼𝗱𝗮:
                            - Realize podas regulares para estimular o crescimento; colha folhas externas quando atingir cerca de 15 cm.

                            𝟴. 𝗖𝗼𝗹𝗵𝗲𝗶𝘁𝗮:
                            - Colha a cebolinha quando atingir 15-20 cm, cortando as folhas externas com uma tesoura afiada.

                            𝟵. 𝗖𝘂𝗶𝗱𝗮𝗱𝗼:
                            - Remova folhas amareladas ou danificadas para manter a saúde da planta.
                            """)

                    }
                    
                    .position(x: 330, y: -305)
                   
                }

            }
        }
    }
}




extension Font {
    static func Cuprum(size: CGFloat) -> Font {
        return .custom("CuprumRoman-Bold", size: size)
    }
}

struct DiarioViewControllerRepresentable: UIViewControllerRepresentable {
    var nomePlanta: String
    
    func makeUIViewController(context: Context) -> UIViewController {
        let diarioVC = DiarioViewController()
        diarioVC.nomePlanta = nomePlanta
        diarioVC.carregarDadosSalvos()
        return diarioVC
    }
    
    func updateUIViewController(_ uiViewController: UIViewController, context: Context) {
        
    }
}

struct InformacoesViewControllerRepresentable: UIViewControllerRepresentable {
    var nomePlanta: String
    var texxx: String
    
    func makeUIViewController(context: Context) -> UIViewController {
        let informacoesVC = InformacoesViewController()
        informacoesVC.nomePlanta = nomePlanta
        informacoesVC.texxx = texxx
        return informacoesVC
    }
    
    
    
    
    func updateUIViewController(_ uiViewController: UIViewController, context: Context) {
        // Atualizações opcionais, se necessário
    }
}

#Preview {
    AboutCebolinha()
}




/*
import SwiftUI

struct AboutCebolinha: View {
    @State private var showingDiario = false
    
    @State private var showingInformacoes = false
    
    var body: some View {
        NavigationView {
            ZStack{
                ImgView("Painel1")
                    .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
                
                VStack (spacing: 10){
                    Text("")
                    HStack (spacing: 10){
                        Text("Cebolinha")
                            .font(.Cuprum(size: 40))
                            .padding(.trailing, 50)
                            .foregroundColor(Color("Marrom"))
                        Text(".........................")
                            .foregroundColor(Color("Verde Claro"))
                        
                    }
                    
                    HStack (spacing: 5){
                        
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
                            
                        } .padding(.leading, 50)
                        
                        Spacer().frame(width:32)
                        
                        VStack{
                            Image("Planta1")
                            Spacer().frame(height: 69)
                            
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
                    Spacer().frame(height: 622)
                    
                }
                
                VStack(spacing: 440){
                    Text("")
                    VStack{
                        Text("""
                             A cebolinha é um tempero popular no Brasil, que pode ser cultivado em vasos e não requer muito espaço. Para cuidar dela os seguintes passos devem ser seguidos:
                             
                             🌱 Escolher o plantio por meio de sementes ou mudas
                             
                             🌱 Mantenha o solo fértil por meio da adubação
                             
                             🌱 Verifique se o solo está úmido.
                             
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
                            .padding(.leading, 299)
                    }
                    .sheet(isPresented: $showingDiario) {
                        
                        DiarioViewControllerRepresentable(nomePlanta: "Cebolinha")
                    }
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
                                    Image("CebolinhaOrigem")
                                        .resizable()
                                        .frame(width: 395, height: 440)
                                        .offset(x: 0, y: 15)
                                        .presentationDetents([.medium])
                                    
                                }
                            }
                            
                            Button(action: {
                                self.showingInformacoes.toggle()
                            }) {
                                Image("plantar")
                                    .padding(.leading, 299)
                                    .offset(x: -10, y: -40)
                            }
                            .sheet(isPresented: $showingInformacoes) {
                                InformacoesViewControllerRepresentable(nomePlanta: "Cebolinha", texxx: "Olá!")
                            }
                            
                            
                        }
                    
                }
            }
        }
    }
    
    extension Font {
        static func Cuprum(size: CGFloat) -> Font {
            return .custom("CuprumRoman-Bold", size: size)
        }
    }
    
    struct DiarioViewControllerRepresentable: UIViewControllerRepresentable {
        var nomePlanta: String
        
        func makeUIViewController(context: Context) -> UIViewController {
            let diarioVC = DiarioViewController()
            diarioVC.nomePlanta = nomePlanta
            diarioVC.carregarDadosSalvos()
            return diarioVC
        }
        
        func updateUIViewController(_ uiViewController: UIViewController, context: Context) {
            
        }
    }
    
    struct InformacoesViewControllerRepresentable: UIViewControllerRepresentable {
        var nomePlanta: String
        var texxx: String
        
        func makeUIViewController(context: Context) -> UIViewController {
            let informacoesVC = InformacoesViewController()
            informacoesVC.nomePlanta = nomePlanta
            informacoesVC.texxx = texxx
            return informacoesVC
        }
        
        
        
        
        func updateUIViewController(_ uiViewController: UIViewController, context: Context) {
            // Atualizações opcionais, se necessário
        }
    }
    
    
#Preview {
    AboutCebolinha()
}
    
*/
