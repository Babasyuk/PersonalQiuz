//
//  Quastion.swift
//  PersonalQiuz
//
//  Created by Артём on 22.11.2022.
//

struct Question {
    let title: String
    let responseType: ResponseType
    let answers: [Answer]
}


enum ResponseType {
    case single
    case multiple
    case range
}

struct Answer {
    let title: String
    let type: AnimalType
}

enum AnimalType: Character {
    case dog = "🐶"
    case cat = "🐱"
    case rabbit = "🐰"
    case turtle = "🐢"
    
    var definition: String {
        switch self {
        case .dog:
            return "Вам нравится быть с людьми. Вы окружаете себя людьми, которые вам нравятся и всегда готовы помочь."
        case .cat:
            return "Вы себе на уме. Любите гулятьсами по себе. Вы цение одиночество."
        case .rabbit:
            return "Вам нравится все мягкое. Вы здоровы и полны энергии"
        case .turtle:
            return "Ваша сила в мудрости. Медленный и вдумчивый выигрывает на больших дистанциях"
        }
    }
}

extension Question {
    static func getQuestions() -> [Question] {
        [
        Question(
            title: "Какую пищу предпочитаете?",
            responseType: .single,
            answers: [
                Answer(title: "Стейк", type: .dog),
                Answer(title: "Рыба", type: .cat),
                Answer(title: "Морковь", type: .rabbit),
                Answer(title: "Кукуруза", type: .turtle)
            ]
        ),
        Question(
            title: "Что вам нравиться больше?",
            responseType: .multiple,
            answers: [
                Answer(title: "Плавать", type: .dog),
                Answer(title: "Спать", type: .cat),
                Answer(title: "Обниматься", type: .rabbit),
                Answer(title: "Есть", type: .turtle)
            ]
        ),
        Question(
            title: "Любите ли вы поездки на машине?",
            responseType: .range,
            answers: [
                Answer(title: "Ненавижу", type: .dog),
                Answer(title: "Нервничаю", type: .cat),
                Answer(title: "Не замечаю", type: .rabbit),
                Answer(title: "Обожаю", type: .turtle)
            ]
        )
        ]
    }
}
