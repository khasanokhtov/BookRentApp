//
//  Home.swift
//  BookRentApp
//
//  Created by Alex Okhtov on 13.06.2023.
//

import SwiftUI

struct Home: View {
    @State var currentBook: Book = sampleBooks.first!
    var body: some View {
        VStack {
            HeaderView()
            
            BookSlider()
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .top)
    }
    
    @ViewBuilder
    func BookSlider()->some View{
        GeometryReader{
            let size = $0.size
            
            TabView(selection: $currentBook){
                ForEach(sampleBooks) { book in
                }
            }
        }
    }
    
    @ViewBuilder
    func BookView()->some View{
        GeometryReader{
            let size = $0.size
            
            ZStack{
                
            }
            .frame(maxWidth: .infinity, maxHeight: .infinity)
        }
    }
    
    @ViewBuilder
    func HeaderView()->some View{
        HStack(spacing: 15 ){
             Text("BookRent")
                .font(.title2)
                .fontWeight(.medium)
                .foregroundColor(.black.opacity(0.7))
                .frame(maxWidth: .infinity, alignment: .leading)
            
            Button {
                
            } label: {
                Image(systemName: "books.vertical")
                    .font(.title3)
                    .foregroundColor(.gray)
            }
            
            Button {
                
            } label: {
                Image(systemName: "book.closed")
                    .font(.title3)
                    .foregroundColor(.gray)
            }
        }
        .padding(15)
    }
}


struct Home_Previews: PreviewProvider {
    static var previews: some View {
        ContentView ()
    }
}
