import 'package:gql/ast.dart';

class Query$fetchAllCountries {
  Query$fetchAllCountries({
    this.countries,
    this.$__typename = 'Query',
  });

  factory Query$fetchAllCountries.fromJson(Map<String, dynamic> json) {
    final l$countries = json['countries'];
    final l$$__typename = json['__typename'];
    return Query$fetchAllCountries(
      countries: (l$countries as List<dynamic>?)
          ?.map((e) => e == null
              ? null
              : Query$fetchAllCountries$countries.fromJson(
                  (e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<Query$fetchAllCountries$countries?>? countries;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$countries = countries;
    _resultData['countries'] = l$countries?.map((e) => e?.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$countries = countries;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$countries == null ? null : Object.hashAll(l$countries.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$fetchAllCountries) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$countries = countries;
    final lOther$countries = other.countries;
    if (l$countries != null && lOther$countries != null) {
      if (l$countries.length != lOther$countries.length) {
        return false;
      }
      for (int i = 0; i < l$countries.length; i++) {
        final l$countries$entry = l$countries[i];
        final lOther$countries$entry = lOther$countries[i];
        if (l$countries$entry != lOther$countries$entry) {
          return false;
        }
      }
    } else if (l$countries != lOther$countries) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$fetchAllCountries on Query$fetchAllCountries {
  CopyWith$Query$fetchAllCountries<Query$fetchAllCountries> get copyWith =>
      CopyWith$Query$fetchAllCountries(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$fetchAllCountries<TRes> {
  factory CopyWith$Query$fetchAllCountries(
    Query$fetchAllCountries instance,
    TRes Function(Query$fetchAllCountries) then,
  ) = _CopyWithImpl$Query$fetchAllCountries;

  factory CopyWith$Query$fetchAllCountries.stub(TRes res) =
      _CopyWithStubImpl$Query$fetchAllCountries;

  TRes call({
    List<Query$fetchAllCountries$countries?>? countries,
    String? $__typename,
  });
  TRes countries(
      Iterable<Query$fetchAllCountries$countries?>? Function(
              Iterable<
                  CopyWith$Query$fetchAllCountries$countries<
                      Query$fetchAllCountries$countries>?>?)
          _fn);
}

class _CopyWithImpl$Query$fetchAllCountries<TRes>
    implements CopyWith$Query$fetchAllCountries<TRes> {
  _CopyWithImpl$Query$fetchAllCountries(
    this._instance,
    this._then,
  );

  final Query$fetchAllCountries _instance;

  final TRes Function(Query$fetchAllCountries) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? countries = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$fetchAllCountries(
        countries: countries == _undefined
            ? _instance.countries
            : (countries as List<Query$fetchAllCountries$countries?>?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  TRes countries(
          Iterable<Query$fetchAllCountries$countries?>? Function(
                  Iterable<
                      CopyWith$Query$fetchAllCountries$countries<
                          Query$fetchAllCountries$countries>?>?)
              _fn) =>
      call(
          countries: _fn(_instance.countries?.map((e) => e == null
              ? null
              : CopyWith$Query$fetchAllCountries$countries(
                  e,
                  (i) => i,
                )))?.toList());
}

class _CopyWithStubImpl$Query$fetchAllCountries<TRes>
    implements CopyWith$Query$fetchAllCountries<TRes> {
  _CopyWithStubImpl$Query$fetchAllCountries(this._res);

  TRes _res;

  call({
    List<Query$fetchAllCountries$countries?>? countries,
    String? $__typename,
  }) =>
      _res;

  countries(_fn) => _res;
}

const documentNodeQueryfetchAllCountries = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'fetchAllCountries'),
    variableDefinitions: [],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'countries'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FieldNode(
            name: NameNode(value: 'name'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'capital'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: '__typename'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
        ]),
      ),
      FieldNode(
        name: NameNode(value: '__typename'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
    ]),
  ),
]);

class Query$fetchAllCountries$countries {
  Query$fetchAllCountries$countries({
    this.name,
    this.capital,
    this.$__typename = 'Country',
  });

  factory Query$fetchAllCountries$countries.fromJson(
      Map<String, dynamic> json) {
    final l$name = json['name'];
    final l$capital = json['capital'];
    final l$$__typename = json['__typename'];
    return Query$fetchAllCountries$countries(
      name: (l$name as String?),
      capital: (l$capital as String?),
      $__typename: (l$$__typename as String),
    );
  }

  final String? name;

  final String? capital;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$name = name;
    _resultData['name'] = l$name;
    final l$capital = capital;
    _resultData['capital'] = l$capital;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$name = name;
    final l$capital = capital;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$name,
      l$capital,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$fetchAllCountries$countries) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) {
      return false;
    }
    final l$capital = capital;
    final lOther$capital = other.capital;
    if (l$capital != lOther$capital) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$fetchAllCountries$countries
    on Query$fetchAllCountries$countries {
  CopyWith$Query$fetchAllCountries$countries<Query$fetchAllCountries$countries>
      get copyWith => CopyWith$Query$fetchAllCountries$countries(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$fetchAllCountries$countries<TRes> {
  factory CopyWith$Query$fetchAllCountries$countries(
    Query$fetchAllCountries$countries instance,
    TRes Function(Query$fetchAllCountries$countries) then,
  ) = _CopyWithImpl$Query$fetchAllCountries$countries;

  factory CopyWith$Query$fetchAllCountries$countries.stub(TRes res) =
      _CopyWithStubImpl$Query$fetchAllCountries$countries;

  TRes call({
    String? name,
    String? capital,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$fetchAllCountries$countries<TRes>
    implements CopyWith$Query$fetchAllCountries$countries<TRes> {
  _CopyWithImpl$Query$fetchAllCountries$countries(
    this._instance,
    this._then,
  );

  final Query$fetchAllCountries$countries _instance;

  final TRes Function(Query$fetchAllCountries$countries) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? name = _undefined,
    Object? capital = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$fetchAllCountries$countries(
        name: name == _undefined ? _instance.name : (name as String?),
        capital:
            capital == _undefined ? _instance.capital : (capital as String?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$fetchAllCountries$countries<TRes>
    implements CopyWith$Query$fetchAllCountries$countries<TRes> {
  _CopyWithStubImpl$Query$fetchAllCountries$countries(this._res);

  TRes _res;

  call({
    String? name,
    String? capital,
    String? $__typename,
  }) =>
      _res;
}
