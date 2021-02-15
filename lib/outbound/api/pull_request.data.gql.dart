// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:gitgo/third_party/github_graphql_schema/schema.docs.schema.gql.dart'
    as _i1;

class $PullRequests {
  const $PullRequests(this.data);

  final Map<String, dynamic> data;

  $PullRequests$viewer get viewer => data['viewer'] == null
      ? null
      : $PullRequests$viewer((data['viewer'] as Map<String, dynamic>));
}

class $PullRequests$viewer {
  const $PullRequests$viewer(this.data);

  final Map<String, dynamic> data;

  $PullRequests$viewer$pullRequests get pullRequests => data['pullRequests'] ==
          null
      ? null
      : $PullRequests$viewer$pullRequests(
          (data['pullRequests'] as Map<String, dynamic>));
}

class $PullRequests$viewer$pullRequests {
  const $PullRequests$viewer$pullRequests(this.data);

  final Map<String, dynamic> data;

  List<$PullRequests$viewer$pullRequests$edges> get edges =>
      data['edges'] == null
          ? null
          : (data['edges'] as List)
              .map((dynamic e) => $PullRequests$viewer$pullRequests$edges(
                  (e as Map<String, dynamic>)))
              .toList();
}

class $PullRequests$viewer$pullRequests$edges {
  const $PullRequests$viewer$pullRequests$edges(this.data);

  final Map<String, dynamic> data;

  $PullRequests$viewer$pullRequests$edges$node get node => data['node'] == null
      ? null
      : $PullRequests$viewer$pullRequests$edges$node(
          (data['node'] as Map<String, dynamic>));
}

class $PullRequests$viewer$pullRequests$edges$node {
  const $PullRequests$viewer$pullRequests$edges$node(this.data);

  final Map<String, dynamic> data;

  $PullRequests$viewer$pullRequests$edges$node$repository get repository =>
      data['repository'] == null
          ? null
          : $PullRequests$viewer$pullRequests$edges$node$repository(
              (data['repository'] as Map<String, dynamic>));
  $PullRequests$viewer$pullRequests$edges$node$author get author =>
      data['author'] == null
          ? null
          : $PullRequests$viewer$pullRequests$edges$node$author(
              (data['author'] as Map<String, dynamic>));
  int get number => (data['number'] as int);
  _i1.URI get url => _i1.URI((data['url'] as String));
  String get title => (data['title'] as String);
  _i1.DateTime get updatedAt => _i1.DateTime((data['updatedAt'] as String));
  _i1.PullRequestState get state =>
      _i1.PullRequestState((data['state'] as String));
  bool get isDraft => (data['isDraft'] as bool);
  $PullRequests$viewer$pullRequests$edges$node$comments get comments =>
      data['comments'] == null
          ? null
          : $PullRequests$viewer$pullRequests$edges$node$comments(
              (data['comments'] as Map<String, dynamic>));
  $PullRequests$viewer$pullRequests$edges$node$files get files =>
      data['files'] == null
          ? null
          : $PullRequests$viewer$pullRequests$edges$node$files(
              (data['files'] as Map<String, dynamic>));
}

class $PullRequests$viewer$pullRequests$edges$node$repository {
  const $PullRequests$viewer$pullRequests$edges$node$repository(this.data);

  final Map<String, dynamic> data;

  String get nameWithOwner => (data['nameWithOwner'] as String);
  _i1.URI get url => _i1.URI((data['url'] as String));
}

class $PullRequests$viewer$pullRequests$edges$node$author {
  const $PullRequests$viewer$pullRequests$edges$node$author(this.data);

  final Map<String, dynamic> data;

  String get login => (data['login'] as String);
  _i1.URI get url => _i1.URI((data['url'] as String));
}

class $PullRequests$viewer$pullRequests$edges$node$comments {
  const $PullRequests$viewer$pullRequests$edges$node$comments(this.data);

  final Map<String, dynamic> data;

  int get totalCount => (data['totalCount'] as int);
}

class $PullRequests$viewer$pullRequests$edges$node$files {
  const $PullRequests$viewer$pullRequests$edges$node$files(this.data);

  final Map<String, dynamic> data;

  int get totalCount => (data['totalCount'] as int);
}
