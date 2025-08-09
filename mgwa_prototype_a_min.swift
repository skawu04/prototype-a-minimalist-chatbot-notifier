import Foundation

class MGWAMinimalistChatbotNotifier {
    var name: String
    var messages: [String] = []

    init(name: String) {
        self.name = name
    }

    func receiveMessage(_ message: String) {
        messages.append(message)
        notifyUser()
    }

    func notifyUser() {
        print("\(name) has \(messages.count) new message(s)!")
    }
}

let notifier = MGWAMinimalistChatbotNotifier(name: "Alice")

notifier.receiveMessage("Hello, how are you?")
notifier.receiveMessage("I'm good, thanks!")
notifier.receiveMessage("What's up?")

// Output:
// Alice has 1 new message(s)!
// Alice has 2 new message(s)!
// Alice has 3 new message(s)!