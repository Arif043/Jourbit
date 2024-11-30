// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'week_journaling.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

extension GetWeekJournalingCollection on Isar {
  IsarCollection<WeekJournaling> get weekJournalings => this.collection();
}

const WeekJournalingSchema = CollectionSchema(
  name: r'WeekJournaling',
  id: 3817592523957916910,
  properties: {
    r'successes': PropertySchema(
      id: 0,
      name: r'successes',
      type: IsarType.stringList,
    ),
    r'weekCheck': PropertySchema(
      id: 1,
      name: r'weekCheck',
      type: IsarType.byteList,
      enumMap: _WeekJournalingweekCheckEnumValueMap,
    ),
    r'weekOverview': PropertySchema(
      id: 2,
      name: r'weekOverview',
      type: IsarType.stringList,
    ),
    r'weeklyGoals': PropertySchema(
      id: 3,
      name: r'weeklyGoals',
      type: IsarType.stringList,
    )
  },
  estimateSize: _weekJournalingEstimateSize,
  serialize: _weekJournalingSerialize,
  deserialize: _weekJournalingDeserialize,
  deserializeProp: _weekJournalingDeserializeProp,
  idName: r'id',
  indexes: {},
  links: {},
  embeddedSchemas: {},
  getId: _weekJournalingGetId,
  getLinks: _weekJournalingGetLinks,
  attach: _weekJournalingAttach,
  version: '3.1.0+1',
);

int _weekJournalingEstimateSize(
  WeekJournaling object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  {
    final list = object.successes;
    if (list != null) {
      bytesCount += 3 + list.length * 3;
      {
        for (var i = 0; i < list.length; i++) {
          final value = list[i];
          bytesCount += value.length * 3;
        }
      }
    }
  }
  {
    final value = object.weekCheck;
    if (value != null) {
      bytesCount += 3 + value.length;
    }
  }
  {
    final list = object.weekOverview;
    if (list != null) {
      bytesCount += 3 + list.length * 3;
      {
        for (var i = 0; i < list.length; i++) {
          final value = list[i];
          bytesCount += value.length * 3;
        }
      }
    }
  }
  {
    final list = object.weeklyGoals;
    if (list != null) {
      bytesCount += 3 + list.length * 3;
      {
        for (var i = 0; i < list.length; i++) {
          final value = list[i];
          bytesCount += value.length * 3;
        }
      }
    }
  }
  return bytesCount;
}

void _weekJournalingSerialize(
  WeekJournaling object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeStringList(offsets[0], object.successes);
  writer.writeByteList(
      offsets[1], object.weekCheck?.map((e) => e.index).toList());
  writer.writeStringList(offsets[2], object.weekOverview);
  writer.writeStringList(offsets[3], object.weeklyGoals);
}

WeekJournaling _weekJournalingDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = WeekJournaling();
  object.id = id;
  object.successes = reader.readStringList(offsets[0]);
  object.weekCheck = reader
      .readByteList(offsets[1])
      ?.map(
          (e) => _WeekJournalingweekCheckValueEnumMap[e] ?? WeeklyHappiness.one)
      .toList();
  object.weekOverview = reader.readStringList(offsets[2]);
  object.weeklyGoals = reader.readStringList(offsets[3]);
  return object;
}

P _weekJournalingDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readStringList(offset)) as P;
    case 1:
      return (reader
          .readByteList(offset)
          ?.map((e) =>
              _WeekJournalingweekCheckValueEnumMap[e] ?? WeeklyHappiness.one)
          .toList()) as P;
    case 2:
      return (reader.readStringList(offset)) as P;
    case 3:
      return (reader.readStringList(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

const _WeekJournalingweekCheckEnumValueMap = {
  'one': 0,
  'two': 1,
  'three': 2,
  'four': 3,
  'five': 4,
  'six': 5,
  'seven': 6,
  'eight': 7,
  'nine': 8,
  'ten': 9,
};
const _WeekJournalingweekCheckValueEnumMap = {
  0: WeeklyHappiness.one,
  1: WeeklyHappiness.two,
  2: WeeklyHappiness.three,
  3: WeeklyHappiness.four,
  4: WeeklyHappiness.five,
  5: WeeklyHappiness.six,
  6: WeeklyHappiness.seven,
  7: WeeklyHappiness.eight,
  8: WeeklyHappiness.nine,
  9: WeeklyHappiness.ten,
};

Id _weekJournalingGetId(WeekJournaling object) {
  return object.id;
}

List<IsarLinkBase<dynamic>> _weekJournalingGetLinks(WeekJournaling object) {
  return [];
}

void _weekJournalingAttach(
    IsarCollection<dynamic> col, Id id, WeekJournaling object) {
  object.id = id;
}

extension WeekJournalingQueryWhereSort
    on QueryBuilder<WeekJournaling, WeekJournaling, QWhere> {
  QueryBuilder<WeekJournaling, WeekJournaling, QAfterWhere> anyId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }
}

extension WeekJournalingQueryWhere
    on QueryBuilder<WeekJournaling, WeekJournaling, QWhereClause> {
  QueryBuilder<WeekJournaling, WeekJournaling, QAfterWhereClause> idEqualTo(
      Id id) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: id,
        upper: id,
      ));
    });
  }

  QueryBuilder<WeekJournaling, WeekJournaling, QAfterWhereClause> idNotEqualTo(
      Id id) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(
              IdWhereClause.lessThan(upper: id, includeUpper: false),
            )
            .addWhereClause(
              IdWhereClause.greaterThan(lower: id, includeLower: false),
            );
      } else {
        return query
            .addWhereClause(
              IdWhereClause.greaterThan(lower: id, includeLower: false),
            )
            .addWhereClause(
              IdWhereClause.lessThan(upper: id, includeUpper: false),
            );
      }
    });
  }

  QueryBuilder<WeekJournaling, WeekJournaling, QAfterWhereClause> idGreaterThan(
      Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: id, includeLower: include),
      );
    });
  }

  QueryBuilder<WeekJournaling, WeekJournaling, QAfterWhereClause> idLessThan(
      Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: id, includeUpper: include),
      );
    });
  }

  QueryBuilder<WeekJournaling, WeekJournaling, QAfterWhereClause> idBetween(
    Id lowerId,
    Id upperId, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: lowerId,
        includeLower: includeLower,
        upper: upperId,
        includeUpper: includeUpper,
      ));
    });
  }
}

extension WeekJournalingQueryFilter
    on QueryBuilder<WeekJournaling, WeekJournaling, QFilterCondition> {
  QueryBuilder<WeekJournaling, WeekJournaling, QAfterFilterCondition> idEqualTo(
      Id value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<WeekJournaling, WeekJournaling, QAfterFilterCondition>
      idGreaterThan(
    Id value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<WeekJournaling, WeekJournaling, QAfterFilterCondition>
      idLessThan(
    Id value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<WeekJournaling, WeekJournaling, QAfterFilterCondition> idBetween(
    Id lower,
    Id upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'id',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<WeekJournaling, WeekJournaling, QAfterFilterCondition>
      successesIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'successes',
      ));
    });
  }

  QueryBuilder<WeekJournaling, WeekJournaling, QAfterFilterCondition>
      successesIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'successes',
      ));
    });
  }

  QueryBuilder<WeekJournaling, WeekJournaling, QAfterFilterCondition>
      successesElementEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'successes',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<WeekJournaling, WeekJournaling, QAfterFilterCondition>
      successesElementGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'successes',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<WeekJournaling, WeekJournaling, QAfterFilterCondition>
      successesElementLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'successes',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<WeekJournaling, WeekJournaling, QAfterFilterCondition>
      successesElementBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'successes',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<WeekJournaling, WeekJournaling, QAfterFilterCondition>
      successesElementStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'successes',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<WeekJournaling, WeekJournaling, QAfterFilterCondition>
      successesElementEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'successes',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<WeekJournaling, WeekJournaling, QAfterFilterCondition>
      successesElementContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'successes',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<WeekJournaling, WeekJournaling, QAfterFilterCondition>
      successesElementMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'successes',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<WeekJournaling, WeekJournaling, QAfterFilterCondition>
      successesElementIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'successes',
        value: '',
      ));
    });
  }

  QueryBuilder<WeekJournaling, WeekJournaling, QAfterFilterCondition>
      successesElementIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'successes',
        value: '',
      ));
    });
  }

  QueryBuilder<WeekJournaling, WeekJournaling, QAfterFilterCondition>
      successesLengthEqualTo(int length) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'successes',
        length,
        true,
        length,
        true,
      );
    });
  }

  QueryBuilder<WeekJournaling, WeekJournaling, QAfterFilterCondition>
      successesIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'successes',
        0,
        true,
        0,
        true,
      );
    });
  }

  QueryBuilder<WeekJournaling, WeekJournaling, QAfterFilterCondition>
      successesIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'successes',
        0,
        false,
        999999,
        true,
      );
    });
  }

  QueryBuilder<WeekJournaling, WeekJournaling, QAfterFilterCondition>
      successesLengthLessThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'successes',
        0,
        true,
        length,
        include,
      );
    });
  }

  QueryBuilder<WeekJournaling, WeekJournaling, QAfterFilterCondition>
      successesLengthGreaterThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'successes',
        length,
        include,
        999999,
        true,
      );
    });
  }

  QueryBuilder<WeekJournaling, WeekJournaling, QAfterFilterCondition>
      successesLengthBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'successes',
        lower,
        includeLower,
        upper,
        includeUpper,
      );
    });
  }

  QueryBuilder<WeekJournaling, WeekJournaling, QAfterFilterCondition>
      weekCheckIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'weekCheck',
      ));
    });
  }

  QueryBuilder<WeekJournaling, WeekJournaling, QAfterFilterCondition>
      weekCheckIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'weekCheck',
      ));
    });
  }

  QueryBuilder<WeekJournaling, WeekJournaling, QAfterFilterCondition>
      weekCheckElementEqualTo(WeeklyHappiness value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'weekCheck',
        value: value,
      ));
    });
  }

  QueryBuilder<WeekJournaling, WeekJournaling, QAfterFilterCondition>
      weekCheckElementGreaterThan(
    WeeklyHappiness value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'weekCheck',
        value: value,
      ));
    });
  }

  QueryBuilder<WeekJournaling, WeekJournaling, QAfterFilterCondition>
      weekCheckElementLessThan(
    WeeklyHappiness value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'weekCheck',
        value: value,
      ));
    });
  }

  QueryBuilder<WeekJournaling, WeekJournaling, QAfterFilterCondition>
      weekCheckElementBetween(
    WeeklyHappiness lower,
    WeeklyHappiness upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'weekCheck',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<WeekJournaling, WeekJournaling, QAfterFilterCondition>
      weekCheckLengthEqualTo(int length) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'weekCheck',
        length,
        true,
        length,
        true,
      );
    });
  }

  QueryBuilder<WeekJournaling, WeekJournaling, QAfterFilterCondition>
      weekCheckIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'weekCheck',
        0,
        true,
        0,
        true,
      );
    });
  }

  QueryBuilder<WeekJournaling, WeekJournaling, QAfterFilterCondition>
      weekCheckIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'weekCheck',
        0,
        false,
        999999,
        true,
      );
    });
  }

  QueryBuilder<WeekJournaling, WeekJournaling, QAfterFilterCondition>
      weekCheckLengthLessThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'weekCheck',
        0,
        true,
        length,
        include,
      );
    });
  }

  QueryBuilder<WeekJournaling, WeekJournaling, QAfterFilterCondition>
      weekCheckLengthGreaterThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'weekCheck',
        length,
        include,
        999999,
        true,
      );
    });
  }

  QueryBuilder<WeekJournaling, WeekJournaling, QAfterFilterCondition>
      weekCheckLengthBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'weekCheck',
        lower,
        includeLower,
        upper,
        includeUpper,
      );
    });
  }

  QueryBuilder<WeekJournaling, WeekJournaling, QAfterFilterCondition>
      weekOverviewIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'weekOverview',
      ));
    });
  }

  QueryBuilder<WeekJournaling, WeekJournaling, QAfterFilterCondition>
      weekOverviewIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'weekOverview',
      ));
    });
  }

  QueryBuilder<WeekJournaling, WeekJournaling, QAfterFilterCondition>
      weekOverviewElementEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'weekOverview',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<WeekJournaling, WeekJournaling, QAfterFilterCondition>
      weekOverviewElementGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'weekOverview',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<WeekJournaling, WeekJournaling, QAfterFilterCondition>
      weekOverviewElementLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'weekOverview',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<WeekJournaling, WeekJournaling, QAfterFilterCondition>
      weekOverviewElementBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'weekOverview',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<WeekJournaling, WeekJournaling, QAfterFilterCondition>
      weekOverviewElementStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'weekOverview',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<WeekJournaling, WeekJournaling, QAfterFilterCondition>
      weekOverviewElementEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'weekOverview',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<WeekJournaling, WeekJournaling, QAfterFilterCondition>
      weekOverviewElementContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'weekOverview',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<WeekJournaling, WeekJournaling, QAfterFilterCondition>
      weekOverviewElementMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'weekOverview',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<WeekJournaling, WeekJournaling, QAfterFilterCondition>
      weekOverviewElementIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'weekOverview',
        value: '',
      ));
    });
  }

  QueryBuilder<WeekJournaling, WeekJournaling, QAfterFilterCondition>
      weekOverviewElementIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'weekOverview',
        value: '',
      ));
    });
  }

  QueryBuilder<WeekJournaling, WeekJournaling, QAfterFilterCondition>
      weekOverviewLengthEqualTo(int length) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'weekOverview',
        length,
        true,
        length,
        true,
      );
    });
  }

  QueryBuilder<WeekJournaling, WeekJournaling, QAfterFilterCondition>
      weekOverviewIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'weekOverview',
        0,
        true,
        0,
        true,
      );
    });
  }

  QueryBuilder<WeekJournaling, WeekJournaling, QAfterFilterCondition>
      weekOverviewIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'weekOverview',
        0,
        false,
        999999,
        true,
      );
    });
  }

  QueryBuilder<WeekJournaling, WeekJournaling, QAfterFilterCondition>
      weekOverviewLengthLessThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'weekOverview',
        0,
        true,
        length,
        include,
      );
    });
  }

  QueryBuilder<WeekJournaling, WeekJournaling, QAfterFilterCondition>
      weekOverviewLengthGreaterThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'weekOverview',
        length,
        include,
        999999,
        true,
      );
    });
  }

  QueryBuilder<WeekJournaling, WeekJournaling, QAfterFilterCondition>
      weekOverviewLengthBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'weekOverview',
        lower,
        includeLower,
        upper,
        includeUpper,
      );
    });
  }

  QueryBuilder<WeekJournaling, WeekJournaling, QAfterFilterCondition>
      weeklyGoalsIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'weeklyGoals',
      ));
    });
  }

  QueryBuilder<WeekJournaling, WeekJournaling, QAfterFilterCondition>
      weeklyGoalsIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'weeklyGoals',
      ));
    });
  }

  QueryBuilder<WeekJournaling, WeekJournaling, QAfterFilterCondition>
      weeklyGoalsElementEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'weeklyGoals',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<WeekJournaling, WeekJournaling, QAfterFilterCondition>
      weeklyGoalsElementGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'weeklyGoals',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<WeekJournaling, WeekJournaling, QAfterFilterCondition>
      weeklyGoalsElementLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'weeklyGoals',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<WeekJournaling, WeekJournaling, QAfterFilterCondition>
      weeklyGoalsElementBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'weeklyGoals',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<WeekJournaling, WeekJournaling, QAfterFilterCondition>
      weeklyGoalsElementStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'weeklyGoals',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<WeekJournaling, WeekJournaling, QAfterFilterCondition>
      weeklyGoalsElementEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'weeklyGoals',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<WeekJournaling, WeekJournaling, QAfterFilterCondition>
      weeklyGoalsElementContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'weeklyGoals',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<WeekJournaling, WeekJournaling, QAfterFilterCondition>
      weeklyGoalsElementMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'weeklyGoals',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<WeekJournaling, WeekJournaling, QAfterFilterCondition>
      weeklyGoalsElementIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'weeklyGoals',
        value: '',
      ));
    });
  }

  QueryBuilder<WeekJournaling, WeekJournaling, QAfterFilterCondition>
      weeklyGoalsElementIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'weeklyGoals',
        value: '',
      ));
    });
  }

  QueryBuilder<WeekJournaling, WeekJournaling, QAfterFilterCondition>
      weeklyGoalsLengthEqualTo(int length) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'weeklyGoals',
        length,
        true,
        length,
        true,
      );
    });
  }

  QueryBuilder<WeekJournaling, WeekJournaling, QAfterFilterCondition>
      weeklyGoalsIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'weeklyGoals',
        0,
        true,
        0,
        true,
      );
    });
  }

  QueryBuilder<WeekJournaling, WeekJournaling, QAfterFilterCondition>
      weeklyGoalsIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'weeklyGoals',
        0,
        false,
        999999,
        true,
      );
    });
  }

  QueryBuilder<WeekJournaling, WeekJournaling, QAfterFilterCondition>
      weeklyGoalsLengthLessThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'weeklyGoals',
        0,
        true,
        length,
        include,
      );
    });
  }

  QueryBuilder<WeekJournaling, WeekJournaling, QAfterFilterCondition>
      weeklyGoalsLengthGreaterThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'weeklyGoals',
        length,
        include,
        999999,
        true,
      );
    });
  }

  QueryBuilder<WeekJournaling, WeekJournaling, QAfterFilterCondition>
      weeklyGoalsLengthBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'weeklyGoals',
        lower,
        includeLower,
        upper,
        includeUpper,
      );
    });
  }
}

extension WeekJournalingQueryObject
    on QueryBuilder<WeekJournaling, WeekJournaling, QFilterCondition> {}

extension WeekJournalingQueryLinks
    on QueryBuilder<WeekJournaling, WeekJournaling, QFilterCondition> {}

extension WeekJournalingQuerySortBy
    on QueryBuilder<WeekJournaling, WeekJournaling, QSortBy> {}

extension WeekJournalingQuerySortThenBy
    on QueryBuilder<WeekJournaling, WeekJournaling, QSortThenBy> {
  QueryBuilder<WeekJournaling, WeekJournaling, QAfterSortBy> thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<WeekJournaling, WeekJournaling, QAfterSortBy> thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }
}

extension WeekJournalingQueryWhereDistinct
    on QueryBuilder<WeekJournaling, WeekJournaling, QDistinct> {
  QueryBuilder<WeekJournaling, WeekJournaling, QDistinct>
      distinctBySuccesses() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'successes');
    });
  }

  QueryBuilder<WeekJournaling, WeekJournaling, QDistinct>
      distinctByWeekCheck() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'weekCheck');
    });
  }

  QueryBuilder<WeekJournaling, WeekJournaling, QDistinct>
      distinctByWeekOverview() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'weekOverview');
    });
  }

  QueryBuilder<WeekJournaling, WeekJournaling, QDistinct>
      distinctByWeeklyGoals() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'weeklyGoals');
    });
  }
}

extension WeekJournalingQueryProperty
    on QueryBuilder<WeekJournaling, WeekJournaling, QQueryProperty> {
  QueryBuilder<WeekJournaling, int, QQueryOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }

  QueryBuilder<WeekJournaling, List<String>?, QQueryOperations>
      successesProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'successes');
    });
  }

  QueryBuilder<WeekJournaling, List<WeeklyHappiness>?, QQueryOperations>
      weekCheckProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'weekCheck');
    });
  }

  QueryBuilder<WeekJournaling, List<String>?, QQueryOperations>
      weekOverviewProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'weekOverview');
    });
  }

  QueryBuilder<WeekJournaling, List<String>?, QQueryOperations>
      weeklyGoalsProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'weeklyGoals');
    });
  }
}
