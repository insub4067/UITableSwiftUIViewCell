//
//  TableCellView.swift
//  UITableSwiftUIViewCell
//
//  Created by insub on 2023/05/17.
//

import SwiftUI

struct TableCellView: View {
    
    let person: DataSource.Person
    
    var body: some View {
        HStack(alignment: .bottom, spacing: 12) {
            Text(person.emoji + " " + person.name)
                .font(.title3)
            Text("\(person.age)")
                .font(.caption)
            Spacer()
        }
        .padding(.horizontal)
        .frame(maxWidth: .infinity)
        .frame(height: 60)
        .overlay(alignment: .bottom) {
            Rectangle()
                .frame(maxWidth: .infinity)
                .frame(height: 1)
                .foregroundColor(.gray.opacity(0.3))
        }
    }
}

struct TableCellView_Previews: PreviewProvider {
    static var previews: some View {
        TableCellView(person: DataSource.Person(emoji: "😄", name: "Woody", age: 12))
    }
}
 
