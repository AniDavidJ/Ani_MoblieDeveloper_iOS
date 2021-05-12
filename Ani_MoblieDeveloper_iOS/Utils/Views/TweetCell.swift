//
//  TweetCell.swift
//  Ani_MoblieDeveloper_iOS
//
//  Created by ani david on 11/05/21.
//

import SwiftUI

struct TweetCell: View {
    var body: some View {
        VStack{
            HStack(alignment: .top){
                ZStack{
                    VerticalLine()
                        .stroke(Color.gray, lineWidth: 2)
                       .frame(width: 20, height: 90)
                Image("Avatar")
                    .resizable()
                    .scaledToFill()
                    .clipped()
                    .frame(width: 50, height: 50)
                    .cornerRadius(50/2)
 
                }
                VStack(alignment: .leading,spacing:7){
                    HStack {
                        Text("Jackson")
                            .font(.system(size: 16,weight : .semibold))
                          
                        Text("@amumathew")
                            .foregroundColor(.gray)
                            .font(.system(size: 14,weight : .regular))
                        Text("2d")
                            .foregroundColor(.gray)
                            .font(.system(size: 14,weight : .regular))
                        
                    }
                    
                    Text("Prototype and test end-to-end with the Local Emulator Suite, now with Firebase Authentication")
                        .font(.system(size: 14,weight : .regular))
                        
                }
                
             }
           .padding(.trailing)
   
        }
    }
}
struct VerticalLine: Shape {
    func path(in rect: CGRect) -> Path {
        var path = Path()
        path.move(to: CGPoint(x: rect.midX, y: rect.minY))
        path.addLine(to: CGPoint(x: rect.midX, y: rect.maxY))
        return path
    }
}
struct TweetCell_Previews: PreviewProvider {
    static var previews: some View {
        TweetCell()
    }
}
