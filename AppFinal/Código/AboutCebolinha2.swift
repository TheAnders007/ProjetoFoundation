//
//  AboutCebolinha.swift
//  ProjetoLittleBotanist
//
//  Created by User on 31/10/23.
//

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
                        // Use a UIViewControllerRepresentable para integrar a DiarioViewController ao SwiftUI
                        DiarioViewControllerRepresentable(nomePlanta: "Cebolinha")
                    }
                    
                    Button(action: {
                        self.showingInformacoes.toggle()
                    }) {
                        Image("plantar")
                            .padding(.leading, 299)
                    }
                    .sheet(isPresented: $showingInformacoes) {
                        InformacoesViewControllerRepresentable(nomePlanta: "Cebolinha", texxx: "Menina")
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
