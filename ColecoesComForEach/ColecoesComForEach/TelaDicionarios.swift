//
//  TelaDicionarios.swift
//  ColecoesComForEach
//
//  Created by User on 19/09/23.
//

import SwiftUI

struct ErroCenário2 {
    let emoji: String
    let ErrorMessage: String
    let id = UUID()
}

struct TelaDicionarios: View {
    
    let CenáriosdeErro: [ErroCenário2] = [
        ErroCenário2(emoji: "🤡", ErrorMessage: "Erro: Variável declarada não foi inicializada. Tente colocar um valor."),
        ErroCenário2(emoji: "😶‍🌫️", ErrorMessage: "Erro: O índice está fora dos índices da matriz."),
        ErroCenário2(emoji: "🤨", ErrorMessage: "Erro: Chaves não correspondentes. Lembre-se: se você abre uma chave é necessário fechá-la."),
        ErroCenário2(emoji: "😒", ErrorMessage: "Erro: Esqueceu de fechar as aspas."),
        ErroCenário2(emoji: "🫠" , ErrorMessage: "Erro: Divisão por zero. O resultado do código fica indeterminado igualmente igual a qualquer número dividido por zero"),
        ErroCenário2(emoji: "🤯", ErrorMessage: "Erro: Loop Infinito. Saia dessa, tudo precisa de um fim.")]
    
    var body: some View {
        ZStack{
            VStack(spacing: 5){
                ForEach(CenáriosdeErro, id: \.id) { ErroCenário in
                    
                    Text(ErroCenário.emoji)
                        .font(.system(size: 30))
                        .foregroundColor(.white)
                        .background(Color.pink)
                        .clipShape(Circle())
                    Text(ErroCenário.ErrorMessage)
                        .font(.headline)
                        .multilineTextAlignment(.center)
                        .padding()
                    
                }
            }
        }
    }
    
    struct TelaDicionarios_Previews: PreviewProvider {
        static var previews: some View {
            TelaDicionarios()
        }
    }
}
