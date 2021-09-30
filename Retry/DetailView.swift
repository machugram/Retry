//
//  DetailView.swift
//  Retry
//
//  Created by Rexford Machu on 9/30/21.
//

import SwiftUI

struct DetailView: View {
    var id : String = ""
    @State private var detail : TestDetailsQuery.Data.Test?
    var body: some View {
        VStack{
            Text(detail?._id ?? detail.debugDescription)
            Text(detail?.__typename ?? detail.debugDescription)
            Text(detail?.files?[0] ?? detail.debugDescription)

        }
        .onAppear{
            Network.shared.apollo.fetch(query: TestDetailsQuery(id: id)) { result in
                switch result {
                case .success(let graphQLResult):
                    self.detail = (graphQLResult.data?.test)
                    print("Success! Result: \(graphQLResult)")
                case .failure(let error):
                    print("Failure! Error: \(error)")
                }
            }
        }
    }
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        DetailView(id: "603e65299acbb2000453596f")
    }
}

