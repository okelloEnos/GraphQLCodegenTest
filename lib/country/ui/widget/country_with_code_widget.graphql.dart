import 'package:gql/ast.dart';

class Variables$Query$fetchCountryWithCode {
  factory Variables$Query$fetchCountryWithCode({required String code}) =>
      Variables$Query$fetchCountryWithCode._({
        r'code': code,
      });

  Variables$Query$fetchCountryWithCode._(this._$data);

  factory Variables$Query$fetchCountryWithCode.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$code = data['code'];
    result$data['code'] = (l$code as String);
    return Variables$Query$fetchCountryWithCode._(result$data);
  }

  Map<String, dynamic> _$data;

  String get code => (_$data['code'] as String);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$code = code;
    result$data['code'] = l$code;
    return result$data;
  }

  CopyWith$Variables$Query$fetchCountryWithCode<
          Variables$Query$fetchCountryWithCode>
      get copyWith => CopyWith$Variables$Query$fetchCountryWithCode(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Query$fetchCountryWithCode) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$code = code;
    final lOther$code = other.code;
    if (l$code != lOther$code) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$code = code;
    return Object.hashAll([l$code]);
  }
}

abstract class CopyWith$Variables$Query$fetchCountryWithCode<TRes> {
  factory CopyWith$Variables$Query$fetchCountryWithCode(
    Variables$Query$fetchCountryWithCode instance,
    TRes Function(Variables$Query$fetchCountryWithCode) then,
  ) = _CopyWithImpl$Variables$Query$fetchCountryWithCode;

  factory CopyWith$Variables$Query$fetchCountryWithCode.stub(TRes res) =
      _CopyWithStubImpl$Variables$Query$fetchCountryWithCode;

  TRes call({String? code});
}

class _CopyWithImpl$Variables$Query$fetchCountryWithCode<TRes>
    implements CopyWith$Variables$Query$fetchCountryWithCode<TRes> {
  _CopyWithImpl$Variables$Query$fetchCountryWithCode(
    this._instance,
    this._then,
  );

  final Variables$Query$fetchCountryWithCode _instance;

  final TRes Function(Variables$Query$fetchCountryWithCode) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? code = _undefined}) =>
      _then(Variables$Query$fetchCountryWithCode._({
        ..._instance._$data,
        if (code != _undefined && code != null) 'code': (code as String),
      }));
}

class _CopyWithStubImpl$Variables$Query$fetchCountryWithCode<TRes>
    implements CopyWith$Variables$Query$fetchCountryWithCode<TRes> {
  _CopyWithStubImpl$Variables$Query$fetchCountryWithCode(this._res);

  TRes _res;

  call({String? code}) => _res;
}

class Query$fetchCountryWithCode {
  Query$fetchCountryWithCode({
    this.country,
    this.$__typename = 'Query',
  });

  factory Query$fetchCountryWithCode.fromJson(Map<String, dynamic> json) {
    final l$country = json['country'];
    final l$$__typename = json['__typename'];
    return Query$fetchCountryWithCode(
      country: l$country == null
          ? null
          : Query$fetchCountryWithCode$country.fromJson(
              (l$country as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$fetchCountryWithCode$country? country;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$country = country;
    _resultData['country'] = l$country?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$country = country;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$country,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$fetchCountryWithCode) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$country = country;
    final lOther$country = other.country;
    if (l$country != lOther$country) {
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

extension UtilityExtension$Query$fetchCountryWithCode
    on Query$fetchCountryWithCode {
  CopyWith$Query$fetchCountryWithCode<Query$fetchCountryWithCode>
      get copyWith => CopyWith$Query$fetchCountryWithCode(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$fetchCountryWithCode<TRes> {
  factory CopyWith$Query$fetchCountryWithCode(
    Query$fetchCountryWithCode instance,
    TRes Function(Query$fetchCountryWithCode) then,
  ) = _CopyWithImpl$Query$fetchCountryWithCode;

  factory CopyWith$Query$fetchCountryWithCode.stub(TRes res) =
      _CopyWithStubImpl$Query$fetchCountryWithCode;

  TRes call({
    Query$fetchCountryWithCode$country? country,
    String? $__typename,
  });
  CopyWith$Query$fetchCountryWithCode$country<TRes> get country;
}

class _CopyWithImpl$Query$fetchCountryWithCode<TRes>
    implements CopyWith$Query$fetchCountryWithCode<TRes> {
  _CopyWithImpl$Query$fetchCountryWithCode(
    this._instance,
    this._then,
  );

  final Query$fetchCountryWithCode _instance;

  final TRes Function(Query$fetchCountryWithCode) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? country = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$fetchCountryWithCode(
        country: country == _undefined
            ? _instance.country
            : (country as Query$fetchCountryWithCode$country?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Query$fetchCountryWithCode$country<TRes> get country {
    final local$country = _instance.country;
    return local$country == null
        ? CopyWith$Query$fetchCountryWithCode$country.stub(_then(_instance))
        : CopyWith$Query$fetchCountryWithCode$country(
            local$country, (e) => call(country: e));
  }
}

class _CopyWithStubImpl$Query$fetchCountryWithCode<TRes>
    implements CopyWith$Query$fetchCountryWithCode<TRes> {
  _CopyWithStubImpl$Query$fetchCountryWithCode(this._res);

  TRes _res;

  call({
    Query$fetchCountryWithCode$country? country,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Query$fetchCountryWithCode$country<TRes> get country =>
      CopyWith$Query$fetchCountryWithCode$country.stub(_res);
}

const documentNodeQueryfetchCountryWithCode = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'fetchCountryWithCode'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'code')),
        type: NamedTypeNode(
          name: NameNode(value: 'ID'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      )
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'country'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'code'),
            value: VariableNode(name: NameNode(value: 'code')),
          )
        ],
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

class Query$fetchCountryWithCode$country {
  Query$fetchCountryWithCode$country({
    this.name,
    this.$__typename = 'Country',
  });

  factory Query$fetchCountryWithCode$country.fromJson(
      Map<String, dynamic> json) {
    final l$name = json['name'];
    final l$$__typename = json['__typename'];
    return Query$fetchCountryWithCode$country(
      name: (l$name as String?),
      $__typename: (l$$__typename as String),
    );
  }

  final String? name;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$name = name;
    _resultData['name'] = l$name;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$name = name;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$name,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$fetchCountryWithCode$country) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) {
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

extension UtilityExtension$Query$fetchCountryWithCode$country
    on Query$fetchCountryWithCode$country {
  CopyWith$Query$fetchCountryWithCode$country<
          Query$fetchCountryWithCode$country>
      get copyWith => CopyWith$Query$fetchCountryWithCode$country(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$fetchCountryWithCode$country<TRes> {
  factory CopyWith$Query$fetchCountryWithCode$country(
    Query$fetchCountryWithCode$country instance,
    TRes Function(Query$fetchCountryWithCode$country) then,
  ) = _CopyWithImpl$Query$fetchCountryWithCode$country;

  factory CopyWith$Query$fetchCountryWithCode$country.stub(TRes res) =
      _CopyWithStubImpl$Query$fetchCountryWithCode$country;

  TRes call({
    String? name,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$fetchCountryWithCode$country<TRes>
    implements CopyWith$Query$fetchCountryWithCode$country<TRes> {
  _CopyWithImpl$Query$fetchCountryWithCode$country(
    this._instance,
    this._then,
  );

  final Query$fetchCountryWithCode$country _instance;

  final TRes Function(Query$fetchCountryWithCode$country) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? name = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$fetchCountryWithCode$country(
        name: name == _undefined ? _instance.name : (name as String?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$fetchCountryWithCode$country<TRes>
    implements CopyWith$Query$fetchCountryWithCode$country<TRes> {
  _CopyWithStubImpl$Query$fetchCountryWithCode$country(this._res);

  TRes _res;

  call({
    String? name,
    String? $__typename,
  }) =>
      _res;
}
