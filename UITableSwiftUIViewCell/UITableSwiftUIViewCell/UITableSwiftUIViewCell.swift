//
//  UITableSwiftUIViewCell.swift
//  UITableSwiftUIViewCell
//
//  Created by insub on 2023/05/17.
//

import SwiftUI

class UITableSwiftUIViewCell<Content: View>: UITableViewCell {
    
    private let hController = UIHostingController<Content?>(rootView: nil)

    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        hController.view.backgroundColor = .clear
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }

    override func layoutSubviews() {
        super.layoutSubviews()
        hController.view.frame = contentView.frame
    }

    func set(rootView: Content) {
        hController.rootView = rootView
        hController.view.invalidateIntrinsicContentSize()

        contentView.addSubview(hController.view)
        hController.view.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            hController.view.topAnchor.constraint(equalTo: contentView.topAnchor),
            hController.view.bottomAnchor.constraint(equalTo: contentView.bottomAnchor),
            hController.view.leftAnchor.constraint(equalTo: contentView.leftAnchor),
            hController.view.rightAnchor.constraint(equalTo: contentView.rightAnchor)
        ])
    }
}
