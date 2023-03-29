//
//  DetailedViewController.swift
//  Navigation
//
//  Created by Николай Гринько on 20.03.2023.
//
import UIKit

final class DetailedViewController: UIViewController {
    
    //MARK: Add scrollView
    private  lazy var scrollView: UIScrollView = {
        let view = UIScrollView()
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()

    //MARK: Add contentView
    private let contentView: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()

    //MARK: Add authorLabel
    lazy var authorLabel: UILabel = {
        let label = UILabel(frame: .zero)
        label.font = UIFont.systemFont(ofSize: 20, weight: .bold)
        label.textColor = UIColor.black
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()

    //MARK: Add myImageView
    lazy var myImageView: UIImageView = {
        let image = UIImageView()
        image.backgroundColor = .white
        image.contentMode = .scaleAspectFill
        image.clipsToBounds = true
        image.translatesAutoresizingMaskIntoConstraints = false
        return image
    }()

    //MARK: Add descriptionLabel
    lazy var descriptionLabel: UILabel = {
        let label = UILabel()
        label.font = .systemFont(ofSize: 14, weight: .regular)
        label.textColor = UIColor.black
        label.textAlignment = .justified
        label.numberOfLines = 0
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()

    //MARK: Add likesLabel
    lazy var likesLabel: UILabel = {
        let label = UILabel()
        label.font = UIFont.systemFont(ofSize: 16, weight: .regular)
        label.textColor = UIColor.systemIndigo
        label.translatesAutoresizingMaskIntoConstraints = false
        label.isUserInteractionEnabled = true
        return label
    }()

    //MARK: Add viewsLabel
    lazy var viewsLabel: UILabel = {
        let label = UILabel()
        label.font = UIFont.systemFont(ofSize: 16, weight: .regular)
        label.textColor = UIColor.systemIndigo
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    //MARK: Add heartImage
    private let heartImage: UIImageView = {
        let heartImage = UIImageView(image: UIImage(systemName: "suit.heart.fill"))
        heartImage.tintColor = .red
        heartImage.contentMode = .scaleAspectFit
        heartImage.translatesAutoresizingMaskIntoConstraints = false
        return heartImage
    }()
    
    //MARK: Add eyeImage
    private let eyeImage: UIImageView = {
        let heartImage = UIImageView(image: UIImage(systemName: "eye.fill"))
        heartImage.tintColor = .black
        heartImage.contentMode = .scaleAspectFit
        heartImage.translatesAutoresizingMaskIntoConstraints = false
        return heartImage
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupLayoutConstraints()
        view.backgroundColor = UIColor.white
        title = "Description"
        navigationController?.setNavigationBarHidden(false, animated: true)
    }

    //MARK: - Setup LayoutConstraints
    private func setupLayoutConstraints() {

         let screenWidth = UIScreen.main.bounds.width
        
        view.addSubview(scrollView)
        scrollView.addSubview(contentView)
        contentView.addSubview(authorLabel)
        scrollView.addSubview(myImageView)
        contentView.addSubview(descriptionLabel)
        contentView.addSubview(likesLabel)
        contentView.addSubview(viewsLabel)
        contentView.addSubview(heartImage)
        contentView.addSubview(eyeImage)
        
        NSLayoutConstraint.activate([

            scrollView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            scrollView.widthAnchor.constraint(equalTo: view.widthAnchor),
            scrollView.topAnchor.constraint(equalTo: view.topAnchor),
            scrollView.bottomAnchor.constraint(equalTo: view.bottomAnchor),

            contentView.centerXAnchor.constraint(equalTo: scrollView.centerXAnchor),
            contentView.widthAnchor.constraint(equalTo: scrollView.widthAnchor),
            contentView.topAnchor.constraint(equalTo: scrollView.topAnchor),
            contentView.bottomAnchor.constraint(equalTo: scrollView.bottomAnchor),

            authorLabel.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 16),
            authorLabel.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -16),
            authorLabel.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 16),
            authorLabel.bottomAnchor.constraint(equalTo: myImageView.topAnchor, constant: -16),

            myImageView.leadingAnchor.constraint(equalTo: contentView.leadingAnchor),
            myImageView.trailingAnchor.constraint(equalTo: contentView.trailingAnchor),
            myImageView.heightAnchor.constraint(equalToConstant: screenWidth),

            descriptionLabel.topAnchor.constraint(equalTo: myImageView.bottomAnchor, constant: 16),
            descriptionLabel.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -16),
            descriptionLabel.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 16),
            descriptionLabel.bottomAnchor.constraint(equalTo: likesLabel.topAnchor, constant: -16),

            likesLabel.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 36),
            likesLabel.bottomAnchor.constraint(equalTo: contentView.bottomAnchor, constant: -16),
            
            heartImage.centerYAnchor.constraint(equalTo: likesLabel.centerYAnchor),
            heartImage.leadingAnchor.constraint(equalTo: likesLabel.leadingAnchor, constant: -22),
            heartImage.widthAnchor.constraint(equalToConstant: 20),
            heartImage.heightAnchor.constraint(equalToConstant: 20),
            
            viewsLabel.topAnchor.constraint(equalTo: descriptionLabel.bottomAnchor, constant: 16),
            viewsLabel.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -16),
            
            eyeImage.centerYAnchor.constraint(equalTo: viewsLabel.centerYAnchor),
            eyeImage.leadingAnchor.constraint(equalTo: viewsLabel.leadingAnchor, constant: -22),
            
            eyeImage.widthAnchor.constraint(equalToConstant: 20),
            eyeImage.heightAnchor.constraint(equalToConstant: 20),
            
        ])
    }
}




