//
//  TweetCell.swift
//  Ani_MoblieDeveloper_iOS
//
//  Created by ani david on 11/05/21.
//

import SwiftUI

struct TweetCell: View {
    let tweet : Tweet
    var body: some View {
        VStack(alignment :.leading){
            HStack(alignment: .top,spacing :12){
                ZStack(){
                    VerticalLine()
                        .stroke(Color.gray, lineWidth: 2)
                       .frame(width: 20, height: 100)
                Image("Avatar")
                    .resizable()
                    .scaledToFill()
                    .clipped()
                    .frame(width: 50, height: 50)
                    .cornerRadius(50/2)
                }
                VStack(alignment: .leading,spacing:0){
                    HStack {
                        Text(tweet.username)
                            .font(.system(size: 16,weight : .semibold))
                          
                        Text("@\(tweet.username)")
                            .foregroundColor(.gray)
                            .font(.system(size: 14,weight : .regular))
                        Text("2d")
                            .foregroundColor(.gray)
                            .font(.system(size: 14,weight : .regular))
                    }.padding()
                    Text(tweet.caption)
                        .font(.system(size: 15,weight : .regular))
                }
             }
         // .background(Color(.init(white: 0.5, alpha: 0.5)))
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
//struct TweetCell_Previews: PreviewProvider {
//    static var previews: some View {
//        TweetCell()
//    }
//}
