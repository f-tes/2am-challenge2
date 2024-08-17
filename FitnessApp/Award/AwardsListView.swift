import SwiftUI

struct AwardsListView: View {
    var awards: [Award]

    var body: some View {
        NavigationView {
            List(awards) { award in
                AwardView(award: award)
            }
            .navigationBarTitle("Awards")
        }
    }
}
