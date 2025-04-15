//
//  ContentView.swift
//  foreach
//
//  Created by Osman Baş on 15.03.2025.
//

import SwiftUI

struct InstagramPost: View {
    var body: some View {
        VStack(alignment: .leading) {
            HStack{
                ZStack {
                    // Instagram Profil Fotoğrafı Gradient Çerçevesi
                    Circle()
                        .stroke(
                            LinearGradient(
                                colors: [Color.purple, Color.pink, Color.orange],
                                startPoint: .topLeading,
                                endPoint: .bottomTrailing
                            ),
                            lineWidth: 3 // Çerçeve kalınlığı
                        )
                        .frame(width: 48, height: 48) // Çerçeve boyutu

                    // Profil Resmi
                    Image(systemName: "person.crop.circle.fill")
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(width: 40, height: 40)
                        .clipShape(Circle())
                }

                VStack(alignment: .leading){
                    Text("Kullanıcı Adı")
                        .font(.headline)
                    Text("Konum")
                        .font(.subheadline)
                        .foregroundColor(.gray)
                }
                Spacer()
                Image(systemName: "ellipsis")
            }
            .padding(.horizontal)
            
            AsyncImage(url: URL(string: "https://placehold.co/300x300"))
                .aspectRatio(contentMode: .fill)
                .frame(maxHeight:300)
                .padding(.vertical, 50)

            HStack{
                Image(systemName: "heart")
                Image(systemName: "message")
                Image(systemName: "paperplane")
                Spacer()
                Image(systemName: "bookmark")
            }
            .padding(.horizontal)
            .padding(.bottom, 5)

            HStack{
                Text("Kullanıcı Adı")
                    .font(.subheadline)
                    .bold()
                Text("Burası Kullanıcının Açıklaması")
                    .font(.subheadline)
            }
            .padding(.horizontal)

            Text("Tüm Yorumları Gör")
                .font(.subheadline)
                .foregroundColor(.gray)
                .padding(.horizontal)

            Text("Örnek Yorum")
                .font(.subheadline)
                .padding(.horizontal)
            
            Text("10 Dakika Önce")
                .font(.caption)
                .foregroundColor(.gray)
                .padding(.horizontal)
                .padding(.vertical, 8)
        }
    }
}

struct ContentView: View {
    var body: some View {
        ScrollView {
            InstagramPost()
            InstagramPost()
            InstagramPost()
        }
    }
}

#Preview {
    ContentView()
}

