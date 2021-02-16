// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:gql/ast.dart' as _i1;

const Repositories = _i1.OperationDefinitionNode(
    type: _i1.OperationType.query,
    name: _i1.NameNode(value: 'Repositories'),
    variableDefinitions: [
      _i1.VariableDefinitionNode(
          variable: _i1.VariableNode(name: _i1.NameNode(value: 'count')),
          type: _i1.NamedTypeNode(
              name: _i1.NameNode(value: 'Int'), isNonNull: true),
          defaultValue: _i1.DefaultValueNode(value: null),
          directives: [])
    ],
    directives: [],
    selectionSet: _i1.SelectionSetNode(selections: [
      _i1.FieldNode(
          name: _i1.NameNode(value: 'viewer'),
          alias: null,
          arguments: [],
          directives: [],
          selectionSet: _i1.SelectionSetNode(selections: [
            _i1.FieldNode(
                name: _i1.NameNode(value: 'repositories'),
                alias: null,
                arguments: [
                  _i1.ArgumentNode(
                      name: _i1.NameNode(value: 'first'),
                      value:
                          _i1.VariableNode(name: _i1.NameNode(value: 'count'))),
                  _i1.ArgumentNode(
                      name: _i1.NameNode(value: 'orderBy'),
                      value: _i1.ObjectValueNode(fields: [
                        _i1.ObjectFieldNode(
                            name: _i1.NameNode(value: 'field'),
                            value: _i1.EnumValueNode(
                                name: _i1.NameNode(value: 'UPDATED_AT'))),
                        _i1.ObjectFieldNode(
                            name: _i1.NameNode(value: 'direction'),
                            value: _i1.EnumValueNode(
                                name: _i1.NameNode(value: 'DESC')))
                      ]))
                ],
                directives: [],
                selectionSet: _i1.SelectionSetNode(selections: [
                  _i1.FieldNode(
                      name: _i1.NameNode(value: 'nodes'),
                      alias: null,
                      arguments: [],
                      directives: [],
                      selectionSet: _i1.SelectionSetNode(selections: [
                        _i1.FieldNode(
                            name: _i1.NameNode(value: 'name'),
                            alias: null,
                            arguments: [],
                            directives: [],
                            selectionSet: null),
                        _i1.FieldNode(
                            name: _i1.NameNode(value: 'description'),
                            alias: null,
                            arguments: [],
                            directives: [],
                            selectionSet: null),
                        _i1.FieldNode(
                            name: _i1.NameNode(value: 'isFork'),
                            alias: null,
                            arguments: [],
                            directives: [],
                            selectionSet: null),
                        _i1.FieldNode(
                            name: _i1.NameNode(value: 'isPrivate'),
                            alias: null,
                            arguments: [],
                            directives: [],
                            selectionSet: null),
                        _i1.FieldNode(
                            name: _i1.NameNode(value: 'stargazers'),
                            alias: null,
                            arguments: [],
                            directives: [],
                            selectionSet: _i1.SelectionSetNode(selections: [
                              _i1.FieldNode(
                                  name: _i1.NameNode(value: 'totalCount'),
                                  alias: null,
                                  arguments: [],
                                  directives: [],
                                  selectionSet: null)
                            ])),
                        _i1.FieldNode(
                            name: _i1.NameNode(value: 'url'),
                            alias: null,
                            arguments: [],
                            directives: [],
                            selectionSet: null),
                        _i1.FieldNode(
                            name: _i1.NameNode(value: 'issues'),
                            alias: null,
                            arguments: [],
                            directives: [],
                            selectionSet: _i1.SelectionSetNode(selections: [
                              _i1.FieldNode(
                                  name: _i1.NameNode(value: 'totalCount'),
                                  alias: null,
                                  arguments: [],
                                  directives: [],
                                  selectionSet: null)
                            ])),
                        _i1.FieldNode(
                            name: _i1.NameNode(value: 'owner'),
                            alias: null,
                            arguments: [],
                            directives: [],
                            selectionSet: _i1.SelectionSetNode(selections: [
                              _i1.FieldNode(
                                  name: _i1.NameNode(value: 'login'),
                                  alias: null,
                                  arguments: [],
                                  directives: [],
                                  selectionSet: null),
                              _i1.FieldNode(
                                  name: _i1.NameNode(value: 'avatarUrl'),
                                  alias: null,
                                  arguments: [],
                                  directives: [],
                                  selectionSet: null)
                            ]))
                      ]))
                ]))
          ]))
    ]));
const document = _i1.DocumentNode(definitions: [Repositories]);
