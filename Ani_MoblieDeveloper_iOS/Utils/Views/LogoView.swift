//
//  LogoView.swift
//  Ani_MoblieDeveloper_iOS
//
//  Created by ani david on 10/05/21.
//

import SwiftUI

struct LogoView: View {
    var body: some View {
        ZStack{
            
            Image("Vector-2")
                .resizable()
                .scaledToFill()
                .frame(width: 13.02, height: 12.1)
                .padding(.top,47.0)
                .padding(.bottom,74)
                .padding(.trailing,111.0)
            Image("Vector")
                .resizable()
                .scaledToFill()
                .frame(width: 13.02, height: 11.78)
                .padding(.top,66.0)
                .padding(.bottom,65.0)
                .padding(.trailing,139.0)
            Image("Vector-3")
                .resizable()
                .scaledToFill()
                .frame(width: 21.02, height: 14.78)
                .padding(.top,73.0)
                .padding(.bottom,75)
                .padding(.trailing,119.0)
            Image("Vector-1")
                .resizable()
                .scaledToFill()
                .frame(width: 14.09, height: 14.78)
                .padding(.top,51.0)
                .padding(.bottom,75)
                .padding(.trailing,132.0)
            Image("T_teamio")
                .resizable()
                .scaledToFill()
                .frame(width: 13.04, height: 10)
                .padding(.top,65)
                .padding(.bottom,75)
                .padding(.trailing,74.0)
            Image("e_teamio")
                .resizable()
                .scaledToFill()
                .frame(width: 18.7, height: 15.0)
                .padding(.top,68.0)
                .padding(.bottom,75)
                .padding(.trailing,39.0)
            Image("a_teamio")
                .resizable()
                .scaledToFill()
                .frame(width: 18.0, height: 15.0)
                .padding(.top,68.0)
                .padding(.bottom,75)
                .padding(.trailing,0.0)
            Image("m_teamio")
                .resizable()
                .scaledToFill()
                .frame(width: 22.0, height: 16.0)
                .padding(.top,68.0)
                .padding(.bottom,75.0)
                .padding(.leading, 46.0)
            Image("i_teamio")
                .resizable()
                .scaledToFill()
                .frame(width: 6.0, height: 9.0)
                .padding(.top,62.0)
                .padding(.bottom,75.0)
                .padding(.leading, 79.0)
            Image("O_teamio")
                .resizable()
                .scaledToFill()
                .frame(width: 18.0, height: 15.0)
                .padding(.top,69.0)
                .padding(.bottom,75.0)
                .padding(.leading, 105.0)
            
        }
    }
}

struct LogoView_Previews: PreviewProvider {
    static var previews: some View {
        LogoView()
    }
}
