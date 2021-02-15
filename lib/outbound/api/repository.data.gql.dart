// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:gitgo/third_party/github_graphql_schema/schema.docs.schema.gql.dart'
    as _i1;

class $Repositories {
  const $Repositories(this.data);

  final Map<String, dynamic> data;

  $Repositories$viewer get viewer => data['viewer'] == null
      ? null
      : $Repositories$viewer((data['viewer'] as Map<String, dynamic>));
}

class $Repositories$viewer {
  const $Repositories$viewer(this.data);

  final Map<String, dynamic> data;

  $Repositories$viewer$repositories get repositories => data['repositories'] ==
          null
      ? null
      : $Repositories$viewer$repositories(
          (data['repositories'] as Map<String, dynamic>));
}

class $Repositories$viewer$repositories {
  const $Repositories$viewer$repositories(this.data);

  final Map<String, dynamic> data;

  List<$Repositories$viewer$repositories$nodes> get nodes =>
      data['nodes'] == null
          ? null
          : (data['nodes'] as List)
              .map((dynamic e) => $Repositories$viewer$repositories$nodes(
                  (e as Map<String, dynamic>)))
              .toList();
}

class $Repositories$viewer$repositories$nodes {
  const $Repositories$viewer$repositories$nodes(this.data);

  final Map<String, dynamic> data;

  String get name => (data['name'] as String);
  String get description => (data['description'] as String);
  bool get isFork => (data['isFork'] as bool);
  bool get isPrivate => (data['isPrivate'] as bool);
  $Repositories$viewer$repositories$nodes$stargazers get stargazers =>
      data['stargazers'] == null
          ? null
          : $Repositories$viewer$repositories$nodes$stargazers(
              (data['stargazers'] as Map<String, dynamic>));
  _i1.URI get url => _i1.URI((data['url'] as String));
  $Repositories$viewer$repositories$nodes$issues get issues =>
      data['issues'] == null
          ? null
          : $Repositories$viewer$repositories$nodes$issues(
              (data['issues'] as Map<String, dynamic>));
  $Repositories$viewer$repositories$nodes$owner get owner =>
      data['owner'] == null
          ? null
          : $Repositories$viewer$repositories$nodes$owner(
              (data['owner'] as Map<String, dynamic>));
}

class $Repositories$viewer$repositories$nodes$stargazers {
  const $Repositories$viewer$repositories$nodes$stargazers(this.data);

  final Map<String, dynamic> data;

  int get totalCount => (data['totalCount'] as int);
}

class $Repositories$viewer$repositories$nodes$issues {
  const $Repositories$viewer$repositories$nodes$issues(this.data);

  final Map<String, dynamic> data;

  int get totalCount => (data['totalCount'] as int);
}

class $Repositories$viewer$repositories$nodes$owner {
  const $Repositories$viewer$repositories$nodes$owner(this.data);

  final Map<String, dynamic> data;

  String get login => (data['login'] as String);
  _i1.URI get avatarUrl => _i1.URI((data['avatarUrl'] as String));
}
