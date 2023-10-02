// @generated
// This file was automatically generated and should not be edited.

@_exported import ApolloAPI

extension GraphQLAPI {
  class ExampleQuery: GraphQLQuery {
    static let operationName: String = "ExampleQuery"
    static let operationDocument: ApolloAPI.OperationDocument = .init(
      definition: .init(
        #"query ExampleQuery($id: ID!) { oldLiveStream(id: $id) { __typename id } newLiveStream(id: $id) { __typename id } }"#
      ))

    public var id: ID

    public init(id: ID) {
      self.id = id
    }

    public var __variables: Variables? { ["id": id] }

    struct Data: GraphQLAPI.SelectionSet {
      let __data: DataDict
      init(_dataDict: DataDict) { __data = _dataDict }

      static var __parentType: ApolloAPI.ParentType { GraphQLAPI.Objects.Query }
      static var __selections: [ApolloAPI.Selection] { [
        .field("oldLiveStream", OldLiveStream?.self, arguments: ["id": .variable("id")]),
        .field("newLiveStream", NewLiveStream?.self, arguments: ["id": .variable("id")]),
      ] }

      var oldLiveStream: OldLiveStream? { __data["oldLiveStream"] }
      var newLiveStream: NewLiveStream? { __data["newLiveStream"] }

      /// OldLiveStream
      ///
      /// Parent Type: `Livestream`
      struct OldLiveStream: GraphQLAPI.SelectionSet {
        let __data: DataDict
        init(_dataDict: DataDict) { __data = _dataDict }

        static var __parentType: ApolloAPI.ParentType { GraphQLAPI.Objects.Livestream }
        static var __selections: [ApolloAPI.Selection] { [
          .field("__typename", String.self),
          .field("id", GraphQLAPI.ID.self),
        ] }

        var id: GraphQLAPI.ID { __data["id"] }
      }

      /// NewLiveStream
      ///
      /// Parent Type: `LiveStream`
      struct NewLiveStream: GraphQLAPI.SelectionSet {
        let __data: DataDict
        init(_dataDict: DataDict) { __data = _dataDict }

        static var __parentType: ApolloAPI.ParentType { GraphQLAPI.Objects.LiveStream }
        static var __selections: [ApolloAPI.Selection] { [
          .field("__typename", String.self),
          .field("id", GraphQLAPI.ID.self),
        ] }

        var id: GraphQLAPI.ID { __data["id"] }
      }
    }
  }

}