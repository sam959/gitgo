// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:gitgo/third_party/github_graphql_schema/schema.docs.schema.gql.dart'
    as _i1;

class $AssignedIssues {
  const $AssignedIssues(this.data);

  final Map<String, dynamic> data;

  $AssignedIssues$search get search => data['search'] == null
      ? null
      : $AssignedIssues$search((data['search'] as Map<String, dynamic>));
}

class $AssignedIssues$search {
  const $AssignedIssues$search(this.data);

  final Map<String, dynamic> data;

  List<$AssignedIssues$search$edges> get edges => data['edges'] == null
      ? null
      : (data['edges'] as List)
          .map((dynamic e) =>
              $AssignedIssues$search$edges((e as Map<String, dynamic>)))
          .toList();
}

class $AssignedIssues$search$edges {
  const $AssignedIssues$search$edges(this.data);

  final Map<String, dynamic> data;

  $AssignedIssues$search$edges$node get node => data['node'] == null
      ? null
      : $AssignedIssues$search$edges$node(
          (data['node'] as Map<String, dynamic>));
}

class $AssignedIssues$search$edges$node {
  const $AssignedIssues$search$edges$node.fromData(this.data);

  factory $AssignedIssues$search$edges$node(data) {
    switch (data['__typename']) {
      case "Issue":
        return $AssignedIssues$search$edges$node$asIssue(data);
      default:
        return $AssignedIssues$search$edges$node.fromData(data);
    }
  }

  final Map<String, dynamic> data;
}

class $AssignedIssues$search$edges$node$asIssue
    implements $AssignedIssues$search$edges$node {
  const $AssignedIssues$search$edges$node$asIssue(this.data);

  final Map<String, dynamic> data;

  String get typeName => (data['__typename'] as String);
  $AssignedIssues$search$edges$node$asIssue$repository get repository =>
      data['repository'] == null
          ? null
          : $AssignedIssues$search$edges$node$asIssue$repository(
              (data['repository'] as Map<String, dynamic>));
  int get number => (data['number'] as int);
  _i1.URI get url => _i1.URI((data['url'] as String));
  String get title => (data['title'] as String);
  $AssignedIssues$search$edges$node$asIssue$author get author =>
      data['author'] == null
          ? null
          : $AssignedIssues$search$edges$node$asIssue$author(
              (data['author'] as Map<String, dynamic>));
  $AssignedIssues$search$edges$node$asIssue$labels get labels =>
      data['labels'] == null
          ? null
          : $AssignedIssues$search$edges$node$asIssue$labels(
              (data['labels'] as Map<String, dynamic>));
  $AssignedIssues$search$edges$node$asIssue$comments get comments =>
      data['comments'] == null
          ? null
          : $AssignedIssues$search$edges$node$asIssue$comments(
              (data['comments'] as Map<String, dynamic>));
}

class $AssignedIssues$search$edges$node$asIssue$repository {
  const $AssignedIssues$search$edges$node$asIssue$repository(this.data);

  final Map<String, dynamic> data;

  String get nameWithOwner => (data['nameWithOwner'] as String);
  _i1.URI get url => _i1.URI((data['url'] as String));
}

class $AssignedIssues$search$edges$node$asIssue$author {
  const $AssignedIssues$search$edges$node$asIssue$author(this.data);

  final Map<String, dynamic> data;

  String get login => (data['login'] as String);
  _i1.URI get url => _i1.URI((data['url'] as String));
}

class $AssignedIssues$search$edges$node$asIssue$labels {
  const $AssignedIssues$search$edges$node$asIssue$labels(this.data);

  final Map<String, dynamic> data;

  List<$AssignedIssues$search$edges$node$asIssue$labels$nodes> get nodes =>
      data['nodes'] == null
          ? null
          : (data['nodes'] as List)
              .map((dynamic e) =>
                  $AssignedIssues$search$edges$node$asIssue$labels$nodes(
                      (e as Map<String, dynamic>)))
              .toList();
}

class $AssignedIssues$search$edges$node$asIssue$labels$nodes {
  const $AssignedIssues$search$edges$node$asIssue$labels$nodes(this.data);

  final Map<String, dynamic> data;

  String get name => (data['name'] as String);
  String get color => (data['color'] as String);
}

class $AssignedIssues$search$edges$node$asIssue$comments {
  const $AssignedIssues$search$edges$node$asIssue$comments(this.data);

  final Map<String, dynamic> data;

  int get totalCount => (data['totalCount'] as int);
}
