// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'month_journaling.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

extension GetMonthJournalingCollection on Isar {
  IsarCollection<MonthJournaling> get monthJournalings => this.collection();
}

const MonthJournalingSchema = CollectionSchema(
  name: r'MonthJournaling',
  id: -315532944852309350,
  properties: {
    r'events': PropertySchema(
      id: 0,
      name: r'events',
      type: IsarType.stringList,
    ),
    r'monthGoals': PropertySchema(
      id: 1,
      name: r'monthGoals',
      type: IsarType.stringList,
    ),
    r'monthOverview': PropertySchema(
      id: 2,
      name: r'monthOverview',
      type: IsarType.stringList,
    )
  },
  estimateSize: _monthJournalingEstimateSize,
  serialize: _monthJournalingSerialize,
  deserialize: _monthJournalingDeserialize,
  deserializeProp: _monthJournalingDeserializeProp,
  idName: r'id',
  indexes: {},
  links: {},
  embeddedSchemas: {},
  getId: _monthJournalingGetId,
  getLinks: _monthJournalingGetLinks,
  attach: _monthJournalingAttach,
  version: '3.1.0+1',
);

int _monthJournalingEstimateSize(
  MonthJournaling object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  {
    final list = object.events;
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
    final list = object.monthGoals;
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
    final list = object.monthOverview;
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

void _monthJournalingSerialize(
  MonthJournaling object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeStringList(offsets[0], object.events);
  writer.writeStringList(offsets[1], object.monthGoals);
  writer.writeStringList(offsets[2], object.monthOverview);
}

MonthJournaling _monthJournalingDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = MonthJournaling();
  object.events = reader.readStringList(offsets[0]);
  object.id = id;
  object.monthGoals = reader.readStringList(offsets[1]);
  object.monthOverview = reader.readStringList(offsets[2]);
  return object;
}

P _monthJournalingDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readStringList(offset)) as P;
    case 1:
      return (reader.readStringList(offset)) as P;
    case 2:
      return (reader.readStringList(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

Id _monthJournalingGetId(MonthJournaling object) {
  return object.id;
}

List<IsarLinkBase<dynamic>> _monthJournalingGetLinks(MonthJournaling object) {
  return [];
}

void _monthJournalingAttach(
    IsarCollection<dynamic> col, Id id, MonthJournaling object) {
  object.id = id;
}

extension MonthJournalingQueryWhereSort
    on QueryBuilder<MonthJournaling, MonthJournaling, QWhere> {
  QueryBuilder<MonthJournaling, MonthJournaling, QAfterWhere> anyId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }
}

extension MonthJournalingQueryWhere
    on QueryBuilder<MonthJournaling, MonthJournaling, QWhereClause> {
  QueryBuilder<MonthJournaling, MonthJournaling, QAfterWhereClause> idEqualTo(
      Id id) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: id,
        upper: id,
      ));
    });
  }

  QueryBuilder<MonthJournaling, MonthJournaling, QAfterWhereClause>
      idNotEqualTo(Id id) {
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

  QueryBuilder<MonthJournaling, MonthJournaling, QAfterWhereClause>
      idGreaterThan(Id id, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: id, includeLower: include),
      );
    });
  }

  QueryBuilder<MonthJournaling, MonthJournaling, QAfterWhereClause> idLessThan(
      Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: id, includeUpper: include),
      );
    });
  }

  QueryBuilder<MonthJournaling, MonthJournaling, QAfterWhereClause> idBetween(
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

extension MonthJournalingQueryFilter
    on QueryBuilder<MonthJournaling, MonthJournaling, QFilterCondition> {
  QueryBuilder<MonthJournaling, MonthJournaling, QAfterFilterCondition>
      eventsIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'events',
      ));
    });
  }

  QueryBuilder<MonthJournaling, MonthJournaling, QAfterFilterCondition>
      eventsIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'events',
      ));
    });
  }

  QueryBuilder<MonthJournaling, MonthJournaling, QAfterFilterCondition>
      eventsElementEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'events',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MonthJournaling, MonthJournaling, QAfterFilterCondition>
      eventsElementGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'events',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MonthJournaling, MonthJournaling, QAfterFilterCondition>
      eventsElementLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'events',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MonthJournaling, MonthJournaling, QAfterFilterCondition>
      eventsElementBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'events',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MonthJournaling, MonthJournaling, QAfterFilterCondition>
      eventsElementStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'events',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MonthJournaling, MonthJournaling, QAfterFilterCondition>
      eventsElementEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'events',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MonthJournaling, MonthJournaling, QAfterFilterCondition>
      eventsElementContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'events',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MonthJournaling, MonthJournaling, QAfterFilterCondition>
      eventsElementMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'events',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MonthJournaling, MonthJournaling, QAfterFilterCondition>
      eventsElementIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'events',
        value: '',
      ));
    });
  }

  QueryBuilder<MonthJournaling, MonthJournaling, QAfterFilterCondition>
      eventsElementIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'events',
        value: '',
      ));
    });
  }

  QueryBuilder<MonthJournaling, MonthJournaling, QAfterFilterCondition>
      eventsLengthEqualTo(int length) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'events',
        length,
        true,
        length,
        true,
      );
    });
  }

  QueryBuilder<MonthJournaling, MonthJournaling, QAfterFilterCondition>
      eventsIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'events',
        0,
        true,
        0,
        true,
      );
    });
  }

  QueryBuilder<MonthJournaling, MonthJournaling, QAfterFilterCondition>
      eventsIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'events',
        0,
        false,
        999999,
        true,
      );
    });
  }

  QueryBuilder<MonthJournaling, MonthJournaling, QAfterFilterCondition>
      eventsLengthLessThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'events',
        0,
        true,
        length,
        include,
      );
    });
  }

  QueryBuilder<MonthJournaling, MonthJournaling, QAfterFilterCondition>
      eventsLengthGreaterThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'events',
        length,
        include,
        999999,
        true,
      );
    });
  }

  QueryBuilder<MonthJournaling, MonthJournaling, QAfterFilterCondition>
      eventsLengthBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'events',
        lower,
        includeLower,
        upper,
        includeUpper,
      );
    });
  }

  QueryBuilder<MonthJournaling, MonthJournaling, QAfterFilterCondition>
      idEqualTo(Id value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<MonthJournaling, MonthJournaling, QAfterFilterCondition>
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

  QueryBuilder<MonthJournaling, MonthJournaling, QAfterFilterCondition>
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

  QueryBuilder<MonthJournaling, MonthJournaling, QAfterFilterCondition>
      idBetween(
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

  QueryBuilder<MonthJournaling, MonthJournaling, QAfterFilterCondition>
      monthGoalsIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'monthGoals',
      ));
    });
  }

  QueryBuilder<MonthJournaling, MonthJournaling, QAfterFilterCondition>
      monthGoalsIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'monthGoals',
      ));
    });
  }

  QueryBuilder<MonthJournaling, MonthJournaling, QAfterFilterCondition>
      monthGoalsElementEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'monthGoals',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MonthJournaling, MonthJournaling, QAfterFilterCondition>
      monthGoalsElementGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'monthGoals',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MonthJournaling, MonthJournaling, QAfterFilterCondition>
      monthGoalsElementLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'monthGoals',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MonthJournaling, MonthJournaling, QAfterFilterCondition>
      monthGoalsElementBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'monthGoals',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MonthJournaling, MonthJournaling, QAfterFilterCondition>
      monthGoalsElementStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'monthGoals',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MonthJournaling, MonthJournaling, QAfterFilterCondition>
      monthGoalsElementEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'monthGoals',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MonthJournaling, MonthJournaling, QAfterFilterCondition>
      monthGoalsElementContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'monthGoals',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MonthJournaling, MonthJournaling, QAfterFilterCondition>
      monthGoalsElementMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'monthGoals',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MonthJournaling, MonthJournaling, QAfterFilterCondition>
      monthGoalsElementIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'monthGoals',
        value: '',
      ));
    });
  }

  QueryBuilder<MonthJournaling, MonthJournaling, QAfterFilterCondition>
      monthGoalsElementIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'monthGoals',
        value: '',
      ));
    });
  }

  QueryBuilder<MonthJournaling, MonthJournaling, QAfterFilterCondition>
      monthGoalsLengthEqualTo(int length) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'monthGoals',
        length,
        true,
        length,
        true,
      );
    });
  }

  QueryBuilder<MonthJournaling, MonthJournaling, QAfterFilterCondition>
      monthGoalsIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'monthGoals',
        0,
        true,
        0,
        true,
      );
    });
  }

  QueryBuilder<MonthJournaling, MonthJournaling, QAfterFilterCondition>
      monthGoalsIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'monthGoals',
        0,
        false,
        999999,
        true,
      );
    });
  }

  QueryBuilder<MonthJournaling, MonthJournaling, QAfterFilterCondition>
      monthGoalsLengthLessThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'monthGoals',
        0,
        true,
        length,
        include,
      );
    });
  }

  QueryBuilder<MonthJournaling, MonthJournaling, QAfterFilterCondition>
      monthGoalsLengthGreaterThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'monthGoals',
        length,
        include,
        999999,
        true,
      );
    });
  }

  QueryBuilder<MonthJournaling, MonthJournaling, QAfterFilterCondition>
      monthGoalsLengthBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'monthGoals',
        lower,
        includeLower,
        upper,
        includeUpper,
      );
    });
  }

  QueryBuilder<MonthJournaling, MonthJournaling, QAfterFilterCondition>
      monthOverviewIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'monthOverview',
      ));
    });
  }

  QueryBuilder<MonthJournaling, MonthJournaling, QAfterFilterCondition>
      monthOverviewIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'monthOverview',
      ));
    });
  }

  QueryBuilder<MonthJournaling, MonthJournaling, QAfterFilterCondition>
      monthOverviewElementEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'monthOverview',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MonthJournaling, MonthJournaling, QAfterFilterCondition>
      monthOverviewElementGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'monthOverview',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MonthJournaling, MonthJournaling, QAfterFilterCondition>
      monthOverviewElementLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'monthOverview',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MonthJournaling, MonthJournaling, QAfterFilterCondition>
      monthOverviewElementBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'monthOverview',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MonthJournaling, MonthJournaling, QAfterFilterCondition>
      monthOverviewElementStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'monthOverview',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MonthJournaling, MonthJournaling, QAfterFilterCondition>
      monthOverviewElementEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'monthOverview',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MonthJournaling, MonthJournaling, QAfterFilterCondition>
      monthOverviewElementContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'monthOverview',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MonthJournaling, MonthJournaling, QAfterFilterCondition>
      monthOverviewElementMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'monthOverview',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MonthJournaling, MonthJournaling, QAfterFilterCondition>
      monthOverviewElementIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'monthOverview',
        value: '',
      ));
    });
  }

  QueryBuilder<MonthJournaling, MonthJournaling, QAfterFilterCondition>
      monthOverviewElementIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'monthOverview',
        value: '',
      ));
    });
  }

  QueryBuilder<MonthJournaling, MonthJournaling, QAfterFilterCondition>
      monthOverviewLengthEqualTo(int length) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'monthOverview',
        length,
        true,
        length,
        true,
      );
    });
  }

  QueryBuilder<MonthJournaling, MonthJournaling, QAfterFilterCondition>
      monthOverviewIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'monthOverview',
        0,
        true,
        0,
        true,
      );
    });
  }

  QueryBuilder<MonthJournaling, MonthJournaling, QAfterFilterCondition>
      monthOverviewIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'monthOverview',
        0,
        false,
        999999,
        true,
      );
    });
  }

  QueryBuilder<MonthJournaling, MonthJournaling, QAfterFilterCondition>
      monthOverviewLengthLessThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'monthOverview',
        0,
        true,
        length,
        include,
      );
    });
  }

  QueryBuilder<MonthJournaling, MonthJournaling, QAfterFilterCondition>
      monthOverviewLengthGreaterThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'monthOverview',
        length,
        include,
        999999,
        true,
      );
    });
  }

  QueryBuilder<MonthJournaling, MonthJournaling, QAfterFilterCondition>
      monthOverviewLengthBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'monthOverview',
        lower,
        includeLower,
        upper,
        includeUpper,
      );
    });
  }
}

extension MonthJournalingQueryObject
    on QueryBuilder<MonthJournaling, MonthJournaling, QFilterCondition> {}

extension MonthJournalingQueryLinks
    on QueryBuilder<MonthJournaling, MonthJournaling, QFilterCondition> {}

extension MonthJournalingQuerySortBy
    on QueryBuilder<MonthJournaling, MonthJournaling, QSortBy> {}

extension MonthJournalingQuerySortThenBy
    on QueryBuilder<MonthJournaling, MonthJournaling, QSortThenBy> {
  QueryBuilder<MonthJournaling, MonthJournaling, QAfterSortBy> thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<MonthJournaling, MonthJournaling, QAfterSortBy> thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }
}

extension MonthJournalingQueryWhereDistinct
    on QueryBuilder<MonthJournaling, MonthJournaling, QDistinct> {
  QueryBuilder<MonthJournaling, MonthJournaling, QDistinct> distinctByEvents() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'events');
    });
  }

  QueryBuilder<MonthJournaling, MonthJournaling, QDistinct>
      distinctByMonthGoals() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'monthGoals');
    });
  }

  QueryBuilder<MonthJournaling, MonthJournaling, QDistinct>
      distinctByMonthOverview() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'monthOverview');
    });
  }
}

extension MonthJournalingQueryProperty
    on QueryBuilder<MonthJournaling, MonthJournaling, QQueryProperty> {
  QueryBuilder<MonthJournaling, int, QQueryOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }

  QueryBuilder<MonthJournaling, List<String>?, QQueryOperations>
      eventsProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'events');
    });
  }

  QueryBuilder<MonthJournaling, List<String>?, QQueryOperations>
      monthGoalsProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'monthGoals');
    });
  }

  QueryBuilder<MonthJournaling, List<String>?, QQueryOperations>
      monthOverviewProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'monthOverview');
    });
  }
}
