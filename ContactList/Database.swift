
struct Person {
    let name: String
    let surname: String
    let email: String
    let phone: String
    
    var fullName: String {
        "\(name) \(surname)"
    }
}

class DataStore {
    let listOfNames: [String]
    let listOfSurnames: [String]
    let listOfEmails: [String]
    let listOfPhones: [String]
    
    init(listOfNames: [String], listOfSurnames: [String], listOfEmails: [String], listOfPhones: [String]) {
        self.listOfNames = listOfNames
        self.listOfSurnames = listOfSurnames
        self.listOfEmails = listOfEmails
        self.listOfPhones = listOfPhones
}
static func getDataStoreList() -> [DataStore] {
    [
        DataStore(
            listOfNames: ["John", "Sharon", "Aaron", "Steven", "Nicola", "Ted", "Bruce", "Carl", "Allan"],
            listOfSurnames: ["Murphy", "Jankin", "Williams", "Black", "Robertson", "Butler", "Isaacson", "Snith", "Pennyworth"],
            listOfEmails: ["bluefox23@gmail.com",
                            "sunny.day2025@yahoo.com",
                            "techlover2020@outlook.com",
                            "freedom.wave@mail.com",
                            "skyline.admin@gmail.com",
                            "oceanview.office@gmail.com",
                            "project.alpha2024@protonmail.com",
                            "nightowl.dev@hotmail.com",
                            "future.trendz@gmail.com",
                            "urban.sprint@yahoo.com"
                            ],
            listOfPhones: ["213-555-0147",
                            "415-555-0198",
                            "646-555-0132",
                            "310-555-0165",
                            "718-555-0173",
                            "202-555-0124",
                            "303-555-0180",
                            "408-555-0159",
                            "617-555-0190",
                            "917-555-0112"
                            ]
            )
        ]
    }
}


