//
//  PhotoGallery.swift
//  Navigation
//
//  Created by Николай Гринько on 28.02.2023.
//

import UIKit

struct ImageGallery {
    var image: String
    
    static func setupGallery() -> [ImageGallery] {
        var image = [ImageGallery]()
        
        image.append(ImageGallery(image: "1"))
        image.append(ImageGallery(image: "2"))
        image.append(ImageGallery(image: "3"))
        image.append(ImageGallery(image: "4"))
        image.append(ImageGallery(image: "5"))
        image.append(ImageGallery(image: "6"))
        image.append(ImageGallery(image: "7"))
        image.append(ImageGallery(image: "8"))
        image.append(ImageGallery(image: "9"))
        image.append(ImageGallery(image: "10"))
        image.append(ImageGallery(image: "11"))
        image.append(ImageGallery(image: "12"))
        image.append(ImageGallery(image: "13"))
        image.append(ImageGallery(image: "14"))
        image.append(ImageGallery(image: "15"))
        image.append(ImageGallery(image: "16"))
        image.append(ImageGallery(image: "17"))
        image.append(ImageGallery(image: "18"))
        image.append(ImageGallery(image: "19"))
        image.append(ImageGallery(image: "20"))
        image.append(ImageGallery(image: "21"))
        image.append(ImageGallery(image: "22"))
        image.append(ImageGallery(image: "23"))
        image.append(ImageGallery(image: "24"))
        image.append(ImageGallery(image: "25"))
        image.append(ImageGallery(image: "26"))
        image.append(ImageGallery(image: "27"))
        image.append(ImageGallery(image: "28"))
        image.append(ImageGallery(image: "29"))
        image.append(ImageGallery(image: "30"))
        
        
        //            .init(id: 1, imageName: "1"),
        //            .init(id: 2, imageName: "2"),
        //            .init(id: 3, imageName: "3"),
        //            .init(id: 4, imageName: "4"),
        //            .init(id: 5, imageName: "5"),
        //            .init(id: 6, imageName: "6"),
        //            .init(id: 7, imageName: "7"),
        //            .init(id: 8, imageName: "8"),
        //            .init(id: 9, imageName: "9"),
        //            .init(id: 10, imageName: "10"),
        //            .init(id: 11, imageName: "11"),
        //            .init(id: 12, imageName: "12"),
        //            .init(id: 13, imageName: "13"),
        //            .init(id: 14, imageName: "14"),
        //            .init(id: 15, imageName: "15"),
        //            .init(id: 16, imageName: "16"),
        //            .init(id: 17, imageName: "17"),
        //            .init(id: 18, imageName: "18"),
        //            .init(id: 19, imageName: "19"),
        //            .init(id: 20, imageName: "20"),
        //            .init(id: 21, imageName: "21"),
        //            .init(id: 22, imageName: "22"),
        //            .init(id: 23, imageName: "23"),
        //            .init(id: 24, imageName: "24"),
        //            .init(id: 25, imageName: "25"),
        //            .init(id: 26, imageName: "26"),
        //            .init(id: 27, imageName: "O27"),
        //            .init(id: 28, imageName: "28"),
        //            .init(id: 29, imageName: "29"),
        //            .init(id: 30, imageName: "30"),
        //
        //  ]
        return image
    }
}
//    static func randomPhotos(with count: Int) -> [ImageGallery] {
//        return (0..<count).map { _ in setupGallery().randomElement()! }
//    }
//}
//
//struct ImageGallery {
//    let id: Int
//    let imageName: String
//}
//
//struct SectionPhoto {
//    let sectionName: String
//    var photos: [ImageGallery]
//}
