//
//  ContentView.swift
//  GitHub-GraphQL-API-Example-iOS
//
//  Created by Rexford Machu on 9/29/21.
//  Copyright © 2021 shingt. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    @State private var testList : [GetTestListQuery.Data.TestList] = []
    var body: some View {
        NavigationView{
            VStack{
                List(testList, id: \._id){member in
                    NavigationLink(destination: DetailView(id: member._id!), label: {
                        VStack{
                            Text(member._id!)
                            Text(member.__typename)
                            Text(member.timeStamp!)

                        }

                    })
                }
                .listStyle(PlainListStyle())
            }
        }
        .onAppear{
            Network.shared.apollo.fetch(query: GetTestListQuery()) { result in
                switch result {
                case .success(let graphQLResult):
                    self.testList = graphQLResult.data?.testList! as! [GetTestListQuery.Data.TestList]
                    
                    print("Success! Result: \(graphQLResult)")
                case .failure(let error):
                    print("Failure! Error: \(error)")
                }
            }
        }
    }
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}




import Apollo
class Network {
    static let shared = Network()
    
    private(set) lazy var apollo = ApolloClient(url: URL(string: "https://sharkybackend.herokuapp.com/graphql")!)
}


