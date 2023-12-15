//
//  ImgView.swift
//  ProjetoLittleBotanist
//
//  Created by User on 20/10/23.
//

import Foundation
import SwiftUI

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
