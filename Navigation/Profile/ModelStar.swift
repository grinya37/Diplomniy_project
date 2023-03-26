//
//  Model.swift
//  Navigation
//
//  Created by Николай Гринько on 26.02.2023.
//

import Foundation
import UIKit

struct ModelStarList: IProfileSectionModel {
    var list: [Modelstar]
}

struct Modelstar {
    
    let author: String
    let image: String
    var likes: Int
    var views: Int
    let description: String
    var isLiked: Bool
    var photos: [String] = []
    
    static func starArray() -> [Modelstar] {
        
        var model = [Modelstar]()
        
        model.append(Modelstar(author: "https://ru.wikipedia.org/1", image: "Острые козырьки", likes: 1209, views: 2346, description: "Oстрые козырьки» (англ. Peaky Blinders) — британский криминальный драматический сериал, созданный Стивеном Найтом в 2013 году для телеканала BBC Two и повествующий о деятельности преступного клана Шелби в Бирмингеме в 1920-е годы.", isLiked: false))
        
        model.append(Modelstar(author: "https://ru.wikipedia.org/2", image: "Томас шелби", likes: 3459, views: 2379, description: "Томас шелби (англ. Cillian Murphy, род. 25 мая 1976) — ирландский актёр театра, кино и телевидения, музыкант. Часто отмечается критиками за «хамелеонские» роли, выразительные голубые глаза и скулы.", isLiked: false))
        
        model.append(Modelstar(author: "https://ru.wikipedia.org/3", image: "Том Харди", likes: 2389, views: 9831, description: "Э́двард То́мас «Том» Ха́рди (англ. Edward Thomas Hardy; род. 15 сентября 1977, Хаммерсмит, Лондон, Великобритания) — английский актёр, продюсер и сценарист. Обладатель премии BAFTA и номинант на премию «Оскар». Прославился благодаря фильму «Стюарт: Прошлая жизнь», где он сыграл роль наркомана и бездомного Стюарта Шортера, принёсшую ему номинацию на премию BAFTA. Также известен по своим главным и второстепенным ролям в фильмах, таких как «Бронсон», «Рок-н-рольщик», «Начало», «Воин», «Легенда», «Общак», «Самый пьяный округ в мире», «Тёмный рыцарь: Возрождение легенды», «Лок», «Безумный Макс: Дорога ярости», «Выживший», «Дюнкерк» и «Веном». Командор ордена Британской империи (CBE, 2018).", isLiked: false))
        
        model.append(Modelstar(author: "https://ru.wikipedia.org/4", image: "Артур Шелби", likes: 2349, views: 9803, description: "Артур Шелби (англ. Paul Anderson; род. 12 февраля 1978, Лондон) — английский актёр. Наиболее известен по ролям в фильмах «Выживший», «Легенда», «Шерлок Холмс: Игра теней» и сериалу «Острые козырьки».", isLiked: false))
        
        model.append(Modelstar(author: "https://ru.wikipedia.org/5", image: "Аберама Голд", likes: 3461, views: 7892, description: "Аберама Голд (англ. Aidan Gillen, при рождении Эйдан Мёрфи, англ. Aidan Murphy, род. 24 апреля 1968, Дублин) — ирландский актёр телевидения, театра и кино. Наиболее известен ролью Петира Бейлиша в сериале «Игра Престолов».", isLiked: false))
        
        model.append(Modelstar(author: "https://ru.wikipedia.org/6", image: "Полли Грей", likes: 2341, views: 4590, description: "Полли Грей (англ. Helen Elizabeth McCrory, в замужестве Льюис, англ. Lewis; 17 августа 1968, Лондон, Великобритания — 16 апреля 2021, там же) — британская актриса театра и кино, известная прежде всего благодаря ведущим ролям в телевизионных фильмах и постановках английских театров. Лауреат премии BAFTA Cymru (1997), дважды номинант на Премию Лоренса Оливье. Маккрори снискала популярность как актриса классических постановок, в особенности Чехова и Шекспира.", isLiked: false))
        
        return model
    }
}
