//
//	ContentView.swift
//  SwiftUIToggleSample
//
//  Created by Juan Mueller on 12/23/22.
//  For more, visit www.ajourneyforwisdom.com
//

import SwiftUI

struct ContentView: View {
    @State var lists = [
        UserList(id: "Pewdipie", isFollowing: false),
        UserList(id: "Markiplier", isFollowing: false),
        UserList(id: "AJourneyForWisdom", isFollowing: false),
        UserList(id: "GameTheory", isFollowing: false),
        UserList(id: "QueenQuirks", isFollowing: false)]

    var body: some View {
        Form {
            Section {
                Text("Settings")
            }
            Section("Follow your favorite creators") {
                ForEach($lists) { $list in
                    Toggle(list.id, isOn: $list.isFollowing)
                        .foregroundColor(.red)
                        .toggleStyle(SwitchToggleStyle(tint: .blue))
                        .onChange(of: list.isFollowing) { state in
                            print("toggled to \(state)")
                        }
                        .accessibilityIdentifier(list.id)
                }
            }
            Section("Options") {
                Toggle("Follow all", sources: $lists, isOn: \.isFollowing)
                    .foregroundColor(.red)
                    .toggleStyle(SwitchToggleStyle(tint: .blue))
                    .accessibilityIdentifier("FollowAll")
            }
        }.padding()
    }
}

struct UserList: Identifiable {
    var id: String
    var isFollowing = false
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
