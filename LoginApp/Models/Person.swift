//
//  Person.swift
//  LoginApp
//
//  Created by Yuri Luka on 10/06/2023.
//

import Foundation

struct User {
    let login: String
    let password: String
    let person: Person
    
    static func getPerson() -> User {
        User(
            login: "User",
            password: "Password",
            person: Person(name: "Yuriy",
                           surName: "Luka",
                           biography: "Привет! Мне 26 лет. Я из Сургута - это сибирский нефтяной город, по этому у нас много морозов и нефти. Дважды бросил высшее образование, была своя пекарня и буфеты, занимался трейдингом и инвестированием. Сейчас активно изучаю Swift и хочу стать разработчиком",
                           hobbies: "Люблю хорошу музыку, сноубординг, путишествия.",
                           job: "Сейчас работаю системотехником  в АО Тандер - это сеть магазинов Магнит. Занимаюсь установкой, настройкой и обслуживанием всей торговой техники в Суруте и соседних городах.")
        )
    }
}

struct Person {
    let name: String
    let surName: String
    let biography: String
    let hobbies: String
    let job: String
}
