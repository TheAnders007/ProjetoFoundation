//
//  fonte.swift
//  ProjetoLittleBotanist
//
//  Created by User on 27/10/23.
//

import Foundation

struct ImgView: View {
    
    let imgdefine: String
    
    init(_ imgdefine: String) {
        self.imgdefine = imgdefine
    }
    
    var body: some View {
        
        ZStack{
            Image(imgdefine)
                .resizable()
             
        }
        
    }
}


extension Font {
    static func itim(size: CGFloat) -> Font {
        return .custom("Itim-Regular", size: size)
    }
}
