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
    r'weekNumber': PropertySchema(
      id: 2,
      name: r'weekNumber',
      type: IsarType.long,
    ),
    r'weekOverview': PropertySchema(
      id: 3,
      name: r'weekOverview',
      type: IsarType.stringList,
    ),
    r'weeklyGoals': PropertySchema(
      id: 4,
      name: r'weeklyGoals',
      type: IsarType.stringList,
    ),
    r'year': PropertySchema(
      id: 5,
      name: r'year',
      type: IsarType.long,
    )
  },
  estimateSize: _weekJournalingEstimateSize,
  serialize: _weekJournalingSerialize,
  deserialize: _weekJournalingDeserialize,
  deserializeProp: _weekJournalingDeserializeProp,
  idName: r'id',
  indexes: {
    r'year_weekNumber': IndexSchema(
      id: 6668484752689577355,
      name: r'year_weekNumber',
      unique: false,
      replace: false,
      properties: [
        IndexPropertySchema(
          name: r'year',
          type: IndexType.value,
          caseSensitive: false,
        ),
        IndexPropertySchema(
          name: r'weekNumber',
          type: IndexType.value,
          caseSensitive: false,
        )
      ],
    ),
    r'weekNumber': IndexSchema(
      id: 3113799900175558897,
      name: r'weekNumber',
      unique: false,
      replace: false,
      properties: [
        IndexPropertySchema(
          name: r'weekNumber',
          type: IndexType.value,
          caseSensitive: false,
        )
      ],
    )
  },
  links: {},
  embeddedSchemas: {},
  getId: _weekJournalingGetId,
  getLinks: _weekJournalingGetLinks,
  attach: _weekJournalingAttach,
  version: '3.1.8',
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
  writer.writeLong(offsets[2], object.weekNumber);
  writer.writeStringList(offsets[3], object.weekOverview);
  writer.writeStringList(offsets[4], object.weeklyGoals);
  writer.writeLong(offsets[5], object.year);
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
  object.weekNumber = reader.readLongOrNull(offsets[2]);
  object.weekOverview = reader.readStringList(offsets[3]);
  object.weeklyGoals = reader.readStringList(offsets[4]);
  object.year = reader.readLongOrNull(offsets[5]);
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
      return (reader.readLongOrNull(offset)) as P;
    case 3:
      return (reader.readStringList(offset)) as P;
    case 4:
      return (reader.readStringList(offset)) as P;
    case 5:
      return (reader.readLongOrNull(offset)) as P;
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

  QueryBuilder<WeekJournaling, WeekJournaling, QAfterWhere>
      anyYearWeekNumber() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        const IndexWhereClause.any(indexName: r'year_weekNumber'),
      );
    });
  }

  QueryBuilder<WeekJournaling, WeekJournaling, QAfterWhere> anyWeekNumber() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        const IndexWhereClause.any(indexName: r'weekNumber'),
      );
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

  QueryBuilder<WeekJournaling, WeekJournaling, QAfterWhereClause>
      yearIsNullAnyWeekNumber() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.equalTo(
        indexName: r'year_weekNumber',
        value: [null],
      ));
    });
  }

  QueryBuilder<WeekJournaling, WeekJournaling, QAfterWhereClause>
      yearIsNotNullAnyWeekNumber() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.between(
        indexName: r'year_weekNumber',
        lower: [null],
        includeLower: false,
        upper: [],
      ));
    });
  }

  QueryBuilder<WeekJournaling, WeekJournaling, QAfterWhereClause>
      yearEqualToAnyWeekNumber(int? year) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.equalTo(
        indexName: r'year_weekNumber',
        value: [year],
      ));
    });
  }

  QueryBuilder<WeekJournaling, WeekJournaling, QAfterWhereClause>
      yearNotEqualToAnyWeekNumber(int? year) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(IndexWhereClause.between(
              indexName: r'year_weekNumber',
              lower: [],
              upper: [year],
              includeUpper: false,
            ))
            .addWhereClause(IndexWhereClause.between(
              indexName: r'year_weekNumber',
              lower: [year],
              includeLower: false,
              upper: [],
            ));
      } else {
        return query
            .addWhereClause(IndexWhereClause.between(
              indexName: r'year_weekNumber',
              lower: [year],
              includeLower: false,
              upper: [],
            ))
            .addWhereClause(IndexWhereClause.between(
              indexName: r'year_weekNumber',
              lower: [],
              upper: [year],
              includeUpper: false,
            ));
      }
    });
  }

  QueryBuilder<WeekJournaling, WeekJournaling, QAfterWhereClause>
      yearGreaterThanAnyWeekNumber(
    int? year, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.between(
        indexName: r'year_weekNumber',
        lower: [year],
        includeLower: include,
        upper: [],
      ));
    });
  }

  QueryBuilder<WeekJournaling, WeekJournaling, QAfterWhereClause>
      yearLessThanAnyWeekNumber(
    int? year, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.between(
        indexName: r'year_weekNumber',
        lower: [],
        upper: [year],
        includeUpper: include,
      ));
    });
  }

  QueryBuilder<WeekJournaling, WeekJournaling, QAfterWhereClause>
      yearBetweenAnyWeekNumber(
    int? lowerYear,
    int? upperYear, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.between(
        indexName: r'year_weekNumber',
        lower: [lowerYear],
        includeLower: includeLower,
        upper: [upperYear],
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<WeekJournaling, WeekJournaling, QAfterWhereClause>
      yearEqualToWeekNumberIsNull(int? year) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.equalTo(
        indexName: r'year_weekNumber',
        value: [year, null],
      ));
    });
  }

  QueryBuilder<WeekJournaling, WeekJournaling, QAfterWhereClause>
      yearEqualToWeekNumberIsNotNull(int? year) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.between(
        indexName: r'year_weekNumber',
        lower: [year, null],
        includeLower: false,
        upper: [
          year,
        ],
      ));
    });
  }

  QueryBuilder<WeekJournaling, WeekJournaling, QAfterWhereClause>
      yearWeekNumberEqualTo(int? year, int? weekNumber) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.equalTo(
        indexName: r'year_weekNumber',
        value: [year, weekNumber],
      ));
    });
  }

  QueryBuilder<WeekJournaling, WeekJournaling, QAfterWhereClause>
      yearEqualToWeekNumberNotEqualTo(int? year, int? weekNumber) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(IndexWhereClause.between(
              indexName: r'year_weekNumber',
              lower: [year],
              upper: [year, weekNumber],
              includeUpper: false,
            ))
            .addWhereClause(IndexWhereClause.between(
              indexName: r'year_weekNumber',
              lower: [year, weekNumber],
              includeLower: false,
              upper: [year],
            ));
      } else {
        return query
            .addWhereClause(IndexWhereClause.between(
              indexName: r'year_weekNumber',
              lower: [year, weekNumber],
              includeLower: false,
              upper: [year],
            ))
            .addWhereClause(IndexWhereClause.between(
              indexName: r'year_weekNumber',
              lower: [year],
              upper: [year, weekNumber],
              includeUpper: false,
            ));
      }
    });
  }

  QueryBuilder<WeekJournaling, WeekJournaling, QAfterWhereClause>
      yearEqualToWeekNumberGreaterThan(
    int? year,
    int? weekNumber, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.between(
        indexName: r'year_weekNumber',
        lower: [year, weekNumber],
        includeLower: include,
        upper: [year],
      ));
    });
  }

  QueryBuilder<WeekJournaling, WeekJournaling, QAfterWhereClause>
      yearEqualToWeekNumberLessThan(
    int? year,
    int? weekNumber, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.between(
        indexName: r'year_weekNumber',
        lower: [year],
        upper: [year, weekNumber],
        includeUpper: include,
      ));
    });
  }

  QueryBuilder<WeekJournaling, WeekJournaling, QAfterWhereClause>
      yearEqualToWeekNumberBetween(
    int? year,
    int? lowerWeekNumber,
    int? upperWeekNumber, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.between(
        indexName: r'year_weekNumber',
        lower: [year, lowerWeekNumber],
        includeLower: includeLower,
        upper: [year, upperWeekNumber],
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<WeekJournaling, WeekJournaling, QAfterWhereClause>
      weekNumberIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.equalTo(
        indexName: r'weekNumber',
        value: [null],
      ));
    });
  }

  QueryBuilder<WeekJournaling, WeekJournaling, QAfterWhereClause>
      weekNumberIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.between(
        indexName: r'weekNumber',
        lower: [null],
        includeLower: false,
        upper: [],
      ));
    });
  }

  QueryBuilder<WeekJournaling, WeekJournaling, QAfterWhereClause>
      weekNumberEqualTo(int? weekNumber) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.equalTo(
        indexName: r'weekNumber',
        value: [weekNumber],
      ));
    });
  }

  QueryBuilder<WeekJournaling, WeekJournaling, QAfterWhereClause>
      weekNumberNotEqualTo(int? weekNumber) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(IndexWhereClause.between(
              indexName: r'weekNumber',
              lower: [],
              upper: [weekNumber],
              includeUpper: false,
            ))
            .addWhereClause(IndexWhereClause.between(
              indexName: r'weekNumber',
              lower: [weekNumber],
              includeLower: false,
              upper: [],
            ));
      } else {
        return query
            .addWhereClause(IndexWhereClause.between(
              indexName: r'weekNumber',
              lower: [weekNumber],
              includeLower: false,
              upper: [],
            ))
            .addWhereClause(IndexWhereClause.between(
              indexName: r'weekNumber',
              lower: [],
              upper: [weekNumber],
              includeUpper: false,
            ));
      }
    });
  }

  QueryBuilder<WeekJournaling, WeekJournaling, QAfterWhereClause>
      weekNumberGreaterThan(
    int? weekNumber, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.between(
        indexName: r'weekNumber',
        lower: [weekNumber],
        includeLower: include,
        upper: [],
      ));
    });
  }

  QueryBuilder<WeekJournaling, WeekJournaling, QAfterWhereClause>
      weekNumberLessThan(
    int? weekNumber, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.between(
        indexName: r'weekNumber',
        lower: [],
        upper: [weekNumber],
        includeUpper: include,
      ));
    });
  }

  QueryBuilder<WeekJournaling, WeekJournaling, QAfterWhereClause>
      weekNumberBetween(
    int? lowerWeekNumber,
    int? upperWeekNumber, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.between(
        indexName: r'weekNumber',
        lower: [lowerWeekNumber],
        includeLower: includeLower,
        upper: [upperWeekNumber],
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
      weekNumberIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'weekNumber',
      ));
    });
  }

  QueryBuilder<WeekJournaling, WeekJournaling, QAfterFilterCondition>
      weekNumberIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'weekNumber',
      ));
    });
  }

  QueryBuilder<WeekJournaling, WeekJournaling, QAfterFilterCondition>
      weekNumberEqualTo(int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'weekNumber',
        value: value,
      ));
    });
  }

  QueryBuilder<WeekJournaling, WeekJournaling, QAfterFilterCondition>
      weekNumberGreaterThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'weekNumber',
        value: value,
      ));
    });
  }

  QueryBuilder<WeekJournaling, WeekJournaling, QAfterFilterCondition>
      weekNumberLessThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'weekNumber',
        value: value,
      ));
    });
  }

  QueryBuilder<WeekJournaling, WeekJournaling, QAfterFilterCondition>
      weekNumberBetween(
    int? lower,
    int? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'weekNumber',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
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

  QueryBuilder<WeekJournaling, WeekJournaling, QAfterFilterCondition>
      yearIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'year',
      ));
    });
  }

  QueryBuilder<WeekJournaling, WeekJournaling, QAfterFilterCondition>
      yearIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'year',
      ));
    });
  }

  QueryBuilder<WeekJournaling, WeekJournaling, QAfterFilterCondition>
      yearEqualTo(int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'year',
        value: value,
      ));
    });
  }

  QueryBuilder<WeekJournaling, WeekJournaling, QAfterFilterCondition>
      yearGreaterThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'year',
        value: value,
      ));
    });
  }

  QueryBuilder<WeekJournaling, WeekJournaling, QAfterFilterCondition>
      yearLessThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'year',
        value: value,
      ));
    });
  }

  QueryBuilder<WeekJournaling, WeekJournaling, QAfterFilterCondition>
      yearBetween(
    int? lower,
    int? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'year',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }
}

extension WeekJournalingQueryObject
    on QueryBuilder<WeekJournaling, WeekJournaling, QFilterCondition> {}

extension WeekJournalingQueryLinks
    on QueryBuilder<WeekJournaling, WeekJournaling, QFilterCondition> {}

extension WeekJournalingQuerySortBy
    on QueryBuilder<WeekJournaling, WeekJournaling, QSortBy> {
  QueryBuilder<WeekJournaling, WeekJournaling, QAfterSortBy>
      sortByWeekNumber() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'weekNumber', Sort.asc);
    });
  }

  QueryBuilder<WeekJournaling, WeekJournaling, QAfterSortBy>
      sortByWeekNumberDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'weekNumber', Sort.desc);
    });
  }

  QueryBuilder<WeekJournaling, WeekJournaling, QAfterSortBy> sortByYear() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'year', Sort.asc);
    });
  }

  QueryBuilder<WeekJournaling, WeekJournaling, QAfterSortBy> sortByYearDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'year', Sort.desc);
    });
  }
}

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

  QueryBuilder<WeekJournaling, WeekJournaling, QAfterSortBy>
      thenByWeekNumber() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'weekNumber', Sort.asc);
    });
  }

  QueryBuilder<WeekJournaling, WeekJournaling, QAfterSortBy>
      thenByWeekNumberDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'weekNumber', Sort.desc);
    });
  }

  QueryBuilder<WeekJournaling, WeekJournaling, QAfterSortBy> thenByYear() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'year', Sort.asc);
    });
  }

  QueryBuilder<WeekJournaling, WeekJournaling, QAfterSortBy> thenByYearDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'year', Sort.desc);
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
      distinctByWeekNumber() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'weekNumber');
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

  QueryBuilder<WeekJournaling, WeekJournaling, QDistinct> distinctByYear() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'year');
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

  QueryBuilder<WeekJournaling, int?, QQueryOperations> weekNumberProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'weekNumber');
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

  QueryBuilder<WeekJournaling, int?, QQueryOperations> yearProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'year');
    });
  }
}
