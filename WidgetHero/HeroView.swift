//
//  HeroView.swift
//  WidgetHero
//
//  Created by Atil Samancioglu on 10.08.2020.
//

import SwiftUI

struct HeroView: View {
    
    let hero : Superhero
    var body: some View {
        
        HStack {
            CircularImageView(image: Image(hero.image)).frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, height: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, alignment: .center).padding()
            
            Spacer()
         
            VStack{
                Text(hero.name)
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .foregroundColor(.purple)
                
                Text(hero.realName).fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)

            }.padding()
            Spacer()
        }.frame(width: UIScreen.main.bounds.width, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
            
    }
}

struct HeroView_Previews: PreviewProvider {
    static var previews: some View {
        HeroView(hero: batman)
    }
}
