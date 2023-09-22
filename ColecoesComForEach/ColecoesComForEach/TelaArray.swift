//
//  TelaArray.swift
//  ColecoesComForEach
//
//  Created by User on 19/09/23.
//

import SwiftUI

struct ErroCenário {
    let emoji: String
    let ErrorMessage: String
    let id = UUID()
}

struct TelaArray: View {
    
    let CenáriosdeErro: [ErroCenário] = [
        ErroCenário(emoji: "🤡", ErrorMessage: "Erro: Variável declarada não foi inicializada. Tente colocar um valor."),
        ErroCenário(emoji: "😶‍🌫️", ErrorMessage: "Erro: O índice está fora dos índices da matriz."),
        ErroCenário(emoji: "🤨", ErrorMessage: "Erro: Chaves não correspondentes. Lembre-se: se você abre uma chave é necessário fechá-la."),
        ErroCenário(emoji: "😒", ErrorMessage: "Erro: Esqueceu de fechar as aspas."),
        ErroCenário(emoji: "🫠" , ErrorMessage: "Erro: Divisão por zero. O resultado do código fica indeterminado igualmente igual a qualquer número dividido por zero"),
        ErroCenário(emoji: "🤯", ErrorMessage: "Erro: Loop Infinito. Saia dessa, tudo precisa de um fim.")]
    
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
        /*.frame (maxWidth: .infinity, minHeight: 150)
        .background(Color.white)
        .cornerRadius(15)
        shadow(color: Color.gray.opacity(0.6), radius: 5, x:0, y:2)
            .padding(.init(top:5, leading: 16, bottom: 5, trailing: 16))*/
    }
}

struct TelaArray_Previews: PreviewProvider {
    static var previews: some View {
        TelaArray()
    }
}
