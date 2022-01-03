//
//  QuestionModel.swift
//  KidsApp
//
//  Created by Asma Rasheed on 02/01/2022 .
//

import GameKit


struct QuestionModel {
    
    let questions = [
        Question(interrogative: "4 + 2 =", answers: ["4", "6", "8", "9"], correctAnswerIndex: 1),
        Question(interrogative: "2 + 1 = ", answers: ["3", "5", "6", "8"], correctAnswerIndex: 0),
        Question(interrogative: "7 + 2 =", answers: ["2", "11", "9", "4"], correctAnswerIndex: 2),
        Question(interrogative: "5 + 1 = ", answers: ["5", "9", "6", "8"], correctAnswerIndex: 2),
        Question(interrogative: "6 + 3 = ", answers: ["2", "5", "7", "9"], correctAnswerIndex: 3),
        Question(interrogative: "3 + 2 = ", answers: ["3", "5", "6", "8"], correctAnswerIndex: 1),
        Question(interrogative: "4 + 3 = ", answers: ["7", "4", "6", "2"], correctAnswerIndex: 0),
        Question(interrogative: "0 + 3 = ", answers: ["3", "4", "5", "7"], correctAnswerIndex: 0),
        Question(interrogative: "3 + 4 = ", answers: ["2", "7", "5", "8"], correctAnswerIndex: 1),
        Question(interrogative: "1 + 4 = ", answers: ["3", "6", "9", "5"], correctAnswerIndex: 3)
    ]
    
    var previouslyUsedNumbers: [Int] = []
    
    mutating func getRandomQuestion() -> Question {
        
        if (previouslyUsedNumbers.count == questions.count) {
            previouslyUsedNumbers = []
        }
        var randomNumber = GKRandomSource.sharedRandom().nextInt(upperBound: questions.count)
        
        // Picks a new random number if the previous one has been used
        while (previouslyUsedNumbers.contains(randomNumber)) {
            randomNumber = GKRandomSource.sharedRandom().nextInt(upperBound: questions.count)
        }
        previouslyUsedNumbers.append(randomNumber)
        
        return questions[randomNumber]
    }
}

class Question {
    
    fileprivate let interrogative: String
    fileprivate let answers: [String]
    fileprivate let correctAnswerIndex: Int
    
    init(interrogative: String, answers: [String], correctAnswerIndex: Int) {
        self.interrogative = interrogative
        self.answers = answers
        self.correctAnswerIndex = correctAnswerIndex
    }
    
    func validateAnswer(to givenAnswer: String) -> Bool {
        return (givenAnswer == answers[correctAnswerIndex])
    }
    
    func getInterrogative() -> String {
        return interrogative
    }
    
    func getAnswer() -> String {
        return answers[correctAnswerIndex]
    }
    
    func getChoices() -> [String] {
        return answers
    }
    
    func getAnswerAt(index: Int) -> String {
        return answers[index]
    }
}
