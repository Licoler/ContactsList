

import UIKit

class PersonsViewController: UITableViewController {
    
    private var personsList: [Person] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        personsList = generatePersons()
        
    }
    // MARK: - Private Methods
    private func generatePersons() -> [Person] {
        let dataStore = DataStore.getDataStoreList().first!
        
        var names = dataStore.listOfNames.shuffled()
        var surnames = dataStore.listOfSurnames.shuffled()
        var emails = dataStore.listOfEmails.shuffled()
        var phones = dataStore.listOfPhones.shuffled()
        
        var persons: [Person] = []
        
        while !names.isEmpty && !surnames.isEmpty && !emails.isEmpty && !phones.isEmpty {
            let person = Person(
                name: names.removeFirst(),
                surname: surnames.removeFirst(),
                email: emails.removeFirst(),
                phone: phones.removeFirst()
            )
            persons.append(person)
        }
        
        return persons
    }

    // MARK: - Navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let indexPath = tableView.indexPathForSelectedRow else {return}
        let detailsVC = segue.destination as? PersonDetailsViewController
        detailsVC?.person = personsList[indexPath.row]
    }
}
// MARK: - PersonsViewController
extension PersonsViewController {
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
         personsList.count
        
    }
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "personscell", for: indexPath)
        let person = personsList[indexPath.row]
        
        var content = cell.defaultContentConfiguration()
        content.text = person.fullName
        cell.contentConfiguration = content
        return cell
    }
}
