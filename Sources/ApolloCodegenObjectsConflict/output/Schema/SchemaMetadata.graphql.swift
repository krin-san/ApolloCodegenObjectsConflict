// @generated
// This file was automatically generated and should not be edited.

import ApolloAPI

protocol GraphQLAPI_SelectionSet: ApolloAPI.SelectionSet & ApolloAPI.RootSelectionSet
where Schema == GraphQLAPI.SchemaMetadata {}

protocol GraphQLAPI_InlineFragment: ApolloAPI.SelectionSet & ApolloAPI.InlineFragment
where Schema == GraphQLAPI.SchemaMetadata {}

protocol GraphQLAPI_MutableSelectionSet: ApolloAPI.MutableRootSelectionSet
where Schema == GraphQLAPI.SchemaMetadata {}

protocol GraphQLAPI_MutableInlineFragment: ApolloAPI.MutableSelectionSet & ApolloAPI.InlineFragment
where Schema == GraphQLAPI.SchemaMetadata {}

extension GraphQLAPI {
  typealias ID = String

  typealias SelectionSet = GraphQLAPI_SelectionSet

  typealias InlineFragment = GraphQLAPI_InlineFragment

  typealias MutableSelectionSet = GraphQLAPI_MutableSelectionSet

  typealias MutableInlineFragment = GraphQLAPI_MutableInlineFragment

  enum SchemaMetadata: ApolloAPI.SchemaMetadata {
    static let configuration: ApolloAPI.SchemaConfiguration.Type = SchemaConfiguration.self

    static func objectType(forTypename typename: String) -> Object? {
      switch typename {
      case "Query": return GraphQLAPI.Objects.Query
      case "Livestream": return GraphQLAPI.Objects.Livestream
      case "LiveStream": return GraphQLAPI.Objects.LiveStream
      default: return nil
      }
    }
  }

  enum Objects {}
  enum Interfaces {}
  enum Unions {}

}
