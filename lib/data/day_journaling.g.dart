// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'day_journaling.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

extension GetDayJournalingCollection on Isar {
  IsarCollection<DayJournaling> get dayJournalings => this.collection();
}

const DayJournalingSchema = CollectionSchema(
  name: r'DayJournaling',
  id: -660698754715499621,
  properties: {
    r'date': PropertySchema(
      id: 0,
      name: r'date',
      type: IsarType.dateTime,
    ),
    r'dayCheck': PropertySchema(
      id: 1,
      name: r'dayCheck',
      type: IsarType.byte,
      enumMap: _DayJournalingdayCheckEnumValueMap,
    ),
    r'dayGoals': PropertySchema(
      id: 2,
      name: r'dayGoals',
      type: IsarType.stringList,
    ),
    r'gratitudes': PropertySchema(
      id: 3,
      name: r'gratitudes',
      type: IsarType.stringList,
    ),
    r'ideas': PropertySchema(
      id: 4,
      name: r'ideas',
      type: IsarType.stringList,
    ),
    r'insights': PropertySchema(
      id: 5,
      name: r'insights',
      type: IsarType.stringList,
    ),
    r'optimizations': PropertySchema(
      id: 6,
      name: r'optimizations',
      type: IsarType.stringList,
    ),
    r'successes': PropertySchema(
      id: 7,
      name: r'successes',
      type: IsarType.stringList,
    )
  },
  estimateSize: _dayJournalingEstimateSize,
  serialize: _dayJournalingSerialize,
  deserialize: _dayJournalingDeserialize,
  deserializeProp: _dayJournalingDeserializeProp,
  idName: r'id',
  indexes: {},
  links: {},
  embeddedSchemas: {},
  getId: _dayJournalingGetId,
  getLinks: _dayJournalingGetLinks,
  attach: _dayJournalingAttach,
  version: '3.1.0+1',
);

int _dayJournalingEstimateSize(
  DayJournaling object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  {
    final list = object.dayGoals;
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
    final list = object.gratitudes;
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
    final list = object.ideas;
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
    final list = object.insights;
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
    final list = object.optimizations;
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
  return bytesCount;
}

void _dayJournalingSerialize(
  DayJournaling object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeDateTime(offsets[0], object.date);
  writer.writeByte(offsets[1], object.dayCheck.index);
  writer.writeStringList(offsets[2], object.dayGoals);
  writer.writeStringList(offsets[3], object.gratitudes);
  writer.writeStringList(offsets[4], object.ideas);
  writer.writeStringList(offsets[5], object.insights);
  writer.writeStringList(offsets[6], object.optimizations);
  writer.writeStringList(offsets[7], object.successes);
}

DayJournaling _dayJournalingDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = DayJournaling();
  object.date = reader.readDateTimeOrNull(offsets[0]);
  object.dayCheck =
      _DayJournalingdayCheckValueEnumMap[reader.readByteOrNull(offsets[1])] ??
          DailyHappiness.veryUnhappy;
  object.dayGoals = reader.readStringList(offsets[2]);
  object.gratitudes = reader.readStringList(offsets[3]);
  object.id = id;
  object.ideas = reader.readStringList(offsets[4]);
  object.insights = reader.readStringList(offsets[5]);
  object.optimizations = reader.readStringList(offsets[6]);
  object.successes = reader.readStringList(offsets[7]);
  return object;
}

P _dayJournalingDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readDateTimeOrNull(offset)) as P;
    case 1:
      return (_DayJournalingdayCheckValueEnumMap[
              reader.readByteOrNull(offset)] ??
          DailyHappiness.veryUnhappy) as P;
    case 2:
      return (reader.readStringList(offset)) as P;
    case 3:
      return (reader.readStringList(offset)) as P;
    case 4:
      return (reader.readStringList(offset)) as P;
    case 5:
      return (reader.readStringList(offset)) as P;
    case 6:
      return (reader.readStringList(offset)) as P;
    case 7:
      return (reader.readStringList(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

const _DayJournalingdayCheckEnumValueMap = {
  'veryUnhappy': 0,
  'unhappy': 1,
  'somewhatDissatisfied': 2,
  'neutral': 3,
  'somewhatSatisfied': 4,
  'happy': 5,
  'veryHappy': 6,
};
const _DayJournalingdayCheckValueEnumMap = {
  0: DailyHappiness.veryUnhappy,
  1: DailyHappiness.unhappy,
  2: DailyHappiness.somewhatDissatisfied,
  3: DailyHappiness.neutral,
  4: DailyHappiness.somewhatSatisfied,
  5: DailyHappiness.happy,
  6: DailyHappiness.veryHappy,
};

Id _dayJournalingGetId(DayJournaling object) {
  return object.id;
}

List<IsarLinkBase<dynamic>> _dayJournalingGetLinks(DayJournaling object) {
  return [];
}

void _dayJournalingAttach(
    IsarCollection<dynamic> col, Id id, DayJournaling object) {
  object.id = id;
}

extension DayJournalingQueryWhereSort
    on QueryBuilder<DayJournaling, DayJournaling, QWhere> {
  QueryBuilder<DayJournaling, DayJournaling, QAfterWhere> anyId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }
}

extension DayJournalingQueryWhere
    on QueryBuilder<DayJournaling, DayJournaling, QWhereClause> {
  QueryBuilder<DayJournaling, DayJournaling, QAfterWhereClause> idEqualTo(
      Id id) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: id,
        upper: id,
      ));
    });
  }

  QueryBuilder<DayJournaling, DayJournaling, QAfterWhereClause> idNotEqualTo(
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

  QueryBuilder<DayJournaling, DayJournaling, QAfterWhereClause> idGreaterThan(
      Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: id, includeLower: include),
      );
    });
  }

  QueryBuilder<DayJournaling, DayJournaling, QAfterWhereClause> idLessThan(
      Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: id, includeUpper: include),
      );
    });
  }

  QueryBuilder<DayJournaling, DayJournaling, QAfterWhereClause> idBetween(
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

extension DayJournalingQueryFilter
    on QueryBuilder<DayJournaling, DayJournaling, QFilterCondition> {
  QueryBuilder<DayJournaling, DayJournaling, QAfterFilterCondition>
      dateIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'date',
      ));
    });
  }

  QueryBuilder<DayJournaling, DayJournaling, QAfterFilterCondition>
      dateIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'date',
      ));
    });
  }

  QueryBuilder<DayJournaling, DayJournaling, QAfterFilterCondition> dateEqualTo(
      DateTime? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'date',
        value: value,
      ));
    });
  }

  QueryBuilder<DayJournaling, DayJournaling, QAfterFilterCondition>
      dateGreaterThan(
    DateTime? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'date',
        value: value,
      ));
    });
  }

  QueryBuilder<DayJournaling, DayJournaling, QAfterFilterCondition>
      dateLessThan(
    DateTime? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'date',
        value: value,
      ));
    });
  }

  QueryBuilder<DayJournaling, DayJournaling, QAfterFilterCondition> dateBetween(
    DateTime? lower,
    DateTime? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'date',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<DayJournaling, DayJournaling, QAfterFilterCondition>
      dayCheckEqualTo(DailyHappiness value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'dayCheck',
        value: value,
      ));
    });
  }

  QueryBuilder<DayJournaling, DayJournaling, QAfterFilterCondition>
      dayCheckGreaterThan(
    DailyHappiness value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'dayCheck',
        value: value,
      ));
    });
  }

  QueryBuilder<DayJournaling, DayJournaling, QAfterFilterCondition>
      dayCheckLessThan(
    DailyHappiness value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'dayCheck',
        value: value,
      ));
    });
  }

  QueryBuilder<DayJournaling, DayJournaling, QAfterFilterCondition>
      dayCheckBetween(
    DailyHappiness lower,
    DailyHappiness upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'dayCheck',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<DayJournaling, DayJournaling, QAfterFilterCondition>
      dayGoalsIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'dayGoals',
      ));
    });
  }

  QueryBuilder<DayJournaling, DayJournaling, QAfterFilterCondition>
      dayGoalsIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'dayGoals',
      ));
    });
  }

  QueryBuilder<DayJournaling, DayJournaling, QAfterFilterCondition>
      dayGoalsElementEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'dayGoals',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DayJournaling, DayJournaling, QAfterFilterCondition>
      dayGoalsElementGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'dayGoals',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DayJournaling, DayJournaling, QAfterFilterCondition>
      dayGoalsElementLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'dayGoals',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DayJournaling, DayJournaling, QAfterFilterCondition>
      dayGoalsElementBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'dayGoals',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DayJournaling, DayJournaling, QAfterFilterCondition>
      dayGoalsElementStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'dayGoals',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DayJournaling, DayJournaling, QAfterFilterCondition>
      dayGoalsElementEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'dayGoals',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DayJournaling, DayJournaling, QAfterFilterCondition>
      dayGoalsElementContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'dayGoals',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DayJournaling, DayJournaling, QAfterFilterCondition>
      dayGoalsElementMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'dayGoals',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DayJournaling, DayJournaling, QAfterFilterCondition>
      dayGoalsElementIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'dayGoals',
        value: '',
      ));
    });
  }

  QueryBuilder<DayJournaling, DayJournaling, QAfterFilterCondition>
      dayGoalsElementIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'dayGoals',
        value: '',
      ));
    });
  }

  QueryBuilder<DayJournaling, DayJournaling, QAfterFilterCondition>
      dayGoalsLengthEqualTo(int length) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'dayGoals',
        length,
        true,
        length,
        true,
      );
    });
  }

  QueryBuilder<DayJournaling, DayJournaling, QAfterFilterCondition>
      dayGoalsIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'dayGoals',
        0,
        true,
        0,
        true,
      );
    });
  }

  QueryBuilder<DayJournaling, DayJournaling, QAfterFilterCondition>
      dayGoalsIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'dayGoals',
        0,
        false,
        999999,
        true,
      );
    });
  }

  QueryBuilder<DayJournaling, DayJournaling, QAfterFilterCondition>
      dayGoalsLengthLessThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'dayGoals',
        0,
        true,
        length,
        include,
      );
    });
  }

  QueryBuilder<DayJournaling, DayJournaling, QAfterFilterCondition>
      dayGoalsLengthGreaterThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'dayGoals',
        length,
        include,
        999999,
        true,
      );
    });
  }

  QueryBuilder<DayJournaling, DayJournaling, QAfterFilterCondition>
      dayGoalsLengthBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'dayGoals',
        lower,
        includeLower,
        upper,
        includeUpper,
      );
    });
  }

  QueryBuilder<DayJournaling, DayJournaling, QAfterFilterCondition>
      gratitudesIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'gratitudes',
      ));
    });
  }

  QueryBuilder<DayJournaling, DayJournaling, QAfterFilterCondition>
      gratitudesIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'gratitudes',
      ));
    });
  }

  QueryBuilder<DayJournaling, DayJournaling, QAfterFilterCondition>
      gratitudesElementEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'gratitudes',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DayJournaling, DayJournaling, QAfterFilterCondition>
      gratitudesElementGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'gratitudes',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DayJournaling, DayJournaling, QAfterFilterCondition>
      gratitudesElementLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'gratitudes',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DayJournaling, DayJournaling, QAfterFilterCondition>
      gratitudesElementBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'gratitudes',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DayJournaling, DayJournaling, QAfterFilterCondition>
      gratitudesElementStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'gratitudes',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DayJournaling, DayJournaling, QAfterFilterCondition>
      gratitudesElementEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'gratitudes',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DayJournaling, DayJournaling, QAfterFilterCondition>
      gratitudesElementContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'gratitudes',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DayJournaling, DayJournaling, QAfterFilterCondition>
      gratitudesElementMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'gratitudes',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DayJournaling, DayJournaling, QAfterFilterCondition>
      gratitudesElementIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'gratitudes',
        value: '',
      ));
    });
  }

  QueryBuilder<DayJournaling, DayJournaling, QAfterFilterCondition>
      gratitudesElementIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'gratitudes',
        value: '',
      ));
    });
  }

  QueryBuilder<DayJournaling, DayJournaling, QAfterFilterCondition>
      gratitudesLengthEqualTo(int length) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'gratitudes',
        length,
        true,
        length,
        true,
      );
    });
  }

  QueryBuilder<DayJournaling, DayJournaling, QAfterFilterCondition>
      gratitudesIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'gratitudes',
        0,
        true,
        0,
        true,
      );
    });
  }

  QueryBuilder<DayJournaling, DayJournaling, QAfterFilterCondition>
      gratitudesIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'gratitudes',
        0,
        false,
        999999,
        true,
      );
    });
  }

  QueryBuilder<DayJournaling, DayJournaling, QAfterFilterCondition>
      gratitudesLengthLessThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'gratitudes',
        0,
        true,
        length,
        include,
      );
    });
  }

  QueryBuilder<DayJournaling, DayJournaling, QAfterFilterCondition>
      gratitudesLengthGreaterThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'gratitudes',
        length,
        include,
        999999,
        true,
      );
    });
  }

  QueryBuilder<DayJournaling, DayJournaling, QAfterFilterCondition>
      gratitudesLengthBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'gratitudes',
        lower,
        includeLower,
        upper,
        includeUpper,
      );
    });
  }

  QueryBuilder<DayJournaling, DayJournaling, QAfterFilterCondition> idEqualTo(
      Id value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<DayJournaling, DayJournaling, QAfterFilterCondition>
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

  QueryBuilder<DayJournaling, DayJournaling, QAfterFilterCondition> idLessThan(
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

  QueryBuilder<DayJournaling, DayJournaling, QAfterFilterCondition> idBetween(
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

  QueryBuilder<DayJournaling, DayJournaling, QAfterFilterCondition>
      ideasIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'ideas',
      ));
    });
  }

  QueryBuilder<DayJournaling, DayJournaling, QAfterFilterCondition>
      ideasIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'ideas',
      ));
    });
  }

  QueryBuilder<DayJournaling, DayJournaling, QAfterFilterCondition>
      ideasElementEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'ideas',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DayJournaling, DayJournaling, QAfterFilterCondition>
      ideasElementGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'ideas',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DayJournaling, DayJournaling, QAfterFilterCondition>
      ideasElementLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'ideas',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DayJournaling, DayJournaling, QAfterFilterCondition>
      ideasElementBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'ideas',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DayJournaling, DayJournaling, QAfterFilterCondition>
      ideasElementStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'ideas',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DayJournaling, DayJournaling, QAfterFilterCondition>
      ideasElementEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'ideas',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DayJournaling, DayJournaling, QAfterFilterCondition>
      ideasElementContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'ideas',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DayJournaling, DayJournaling, QAfterFilterCondition>
      ideasElementMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'ideas',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DayJournaling, DayJournaling, QAfterFilterCondition>
      ideasElementIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'ideas',
        value: '',
      ));
    });
  }

  QueryBuilder<DayJournaling, DayJournaling, QAfterFilterCondition>
      ideasElementIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'ideas',
        value: '',
      ));
    });
  }

  QueryBuilder<DayJournaling, DayJournaling, QAfterFilterCondition>
      ideasLengthEqualTo(int length) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'ideas',
        length,
        true,
        length,
        true,
      );
    });
  }

  QueryBuilder<DayJournaling, DayJournaling, QAfterFilterCondition>
      ideasIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'ideas',
        0,
        true,
        0,
        true,
      );
    });
  }

  QueryBuilder<DayJournaling, DayJournaling, QAfterFilterCondition>
      ideasIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'ideas',
        0,
        false,
        999999,
        true,
      );
    });
  }

  QueryBuilder<DayJournaling, DayJournaling, QAfterFilterCondition>
      ideasLengthLessThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'ideas',
        0,
        true,
        length,
        include,
      );
    });
  }

  QueryBuilder<DayJournaling, DayJournaling, QAfterFilterCondition>
      ideasLengthGreaterThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'ideas',
        length,
        include,
        999999,
        true,
      );
    });
  }

  QueryBuilder<DayJournaling, DayJournaling, QAfterFilterCondition>
      ideasLengthBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'ideas',
        lower,
        includeLower,
        upper,
        includeUpper,
      );
    });
  }

  QueryBuilder<DayJournaling, DayJournaling, QAfterFilterCondition>
      insightsIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'insights',
      ));
    });
  }

  QueryBuilder<DayJournaling, DayJournaling, QAfterFilterCondition>
      insightsIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'insights',
      ));
    });
  }

  QueryBuilder<DayJournaling, DayJournaling, QAfterFilterCondition>
      insightsElementEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'insights',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DayJournaling, DayJournaling, QAfterFilterCondition>
      insightsElementGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'insights',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DayJournaling, DayJournaling, QAfterFilterCondition>
      insightsElementLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'insights',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DayJournaling, DayJournaling, QAfterFilterCondition>
      insightsElementBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'insights',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DayJournaling, DayJournaling, QAfterFilterCondition>
      insightsElementStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'insights',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DayJournaling, DayJournaling, QAfterFilterCondition>
      insightsElementEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'insights',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DayJournaling, DayJournaling, QAfterFilterCondition>
      insightsElementContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'insights',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DayJournaling, DayJournaling, QAfterFilterCondition>
      insightsElementMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'insights',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DayJournaling, DayJournaling, QAfterFilterCondition>
      insightsElementIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'insights',
        value: '',
      ));
    });
  }

  QueryBuilder<DayJournaling, DayJournaling, QAfterFilterCondition>
      insightsElementIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'insights',
        value: '',
      ));
    });
  }

  QueryBuilder<DayJournaling, DayJournaling, QAfterFilterCondition>
      insightsLengthEqualTo(int length) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'insights',
        length,
        true,
        length,
        true,
      );
    });
  }

  QueryBuilder<DayJournaling, DayJournaling, QAfterFilterCondition>
      insightsIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'insights',
        0,
        true,
        0,
        true,
      );
    });
  }

  QueryBuilder<DayJournaling, DayJournaling, QAfterFilterCondition>
      insightsIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'insights',
        0,
        false,
        999999,
        true,
      );
    });
  }

  QueryBuilder<DayJournaling, DayJournaling, QAfterFilterCondition>
      insightsLengthLessThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'insights',
        0,
        true,
        length,
        include,
      );
    });
  }

  QueryBuilder<DayJournaling, DayJournaling, QAfterFilterCondition>
      insightsLengthGreaterThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'insights',
        length,
        include,
        999999,
        true,
      );
    });
  }

  QueryBuilder<DayJournaling, DayJournaling, QAfterFilterCondition>
      insightsLengthBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'insights',
        lower,
        includeLower,
        upper,
        includeUpper,
      );
    });
  }

  QueryBuilder<DayJournaling, DayJournaling, QAfterFilterCondition>
      optimizationsIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'optimizations',
      ));
    });
  }

  QueryBuilder<DayJournaling, DayJournaling, QAfterFilterCondition>
      optimizationsIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'optimizations',
      ));
    });
  }

  QueryBuilder<DayJournaling, DayJournaling, QAfterFilterCondition>
      optimizationsElementEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'optimizations',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DayJournaling, DayJournaling, QAfterFilterCondition>
      optimizationsElementGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'optimizations',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DayJournaling, DayJournaling, QAfterFilterCondition>
      optimizationsElementLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'optimizations',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DayJournaling, DayJournaling, QAfterFilterCondition>
      optimizationsElementBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'optimizations',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DayJournaling, DayJournaling, QAfterFilterCondition>
      optimizationsElementStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'optimizations',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DayJournaling, DayJournaling, QAfterFilterCondition>
      optimizationsElementEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'optimizations',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DayJournaling, DayJournaling, QAfterFilterCondition>
      optimizationsElementContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'optimizations',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DayJournaling, DayJournaling, QAfterFilterCondition>
      optimizationsElementMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'optimizations',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DayJournaling, DayJournaling, QAfterFilterCondition>
      optimizationsElementIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'optimizations',
        value: '',
      ));
    });
  }

  QueryBuilder<DayJournaling, DayJournaling, QAfterFilterCondition>
      optimizationsElementIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'optimizations',
        value: '',
      ));
    });
  }

  QueryBuilder<DayJournaling, DayJournaling, QAfterFilterCondition>
      optimizationsLengthEqualTo(int length) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'optimizations',
        length,
        true,
        length,
        true,
      );
    });
  }

  QueryBuilder<DayJournaling, DayJournaling, QAfterFilterCondition>
      optimizationsIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'optimizations',
        0,
        true,
        0,
        true,
      );
    });
  }

  QueryBuilder<DayJournaling, DayJournaling, QAfterFilterCondition>
      optimizationsIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'optimizations',
        0,
        false,
        999999,
        true,
      );
    });
  }

  QueryBuilder<DayJournaling, DayJournaling, QAfterFilterCondition>
      optimizationsLengthLessThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'optimizations',
        0,
        true,
        length,
        include,
      );
    });
  }

  QueryBuilder<DayJournaling, DayJournaling, QAfterFilterCondition>
      optimizationsLengthGreaterThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'optimizations',
        length,
        include,
        999999,
        true,
      );
    });
  }

  QueryBuilder<DayJournaling, DayJournaling, QAfterFilterCondition>
      optimizationsLengthBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'optimizations',
        lower,
        includeLower,
        upper,
        includeUpper,
      );
    });
  }

  QueryBuilder<DayJournaling, DayJournaling, QAfterFilterCondition>
      successesIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'successes',
      ));
    });
  }

  QueryBuilder<DayJournaling, DayJournaling, QAfterFilterCondition>
      successesIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'successes',
      ));
    });
  }

  QueryBuilder<DayJournaling, DayJournaling, QAfterFilterCondition>
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

  QueryBuilder<DayJournaling, DayJournaling, QAfterFilterCondition>
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

  QueryBuilder<DayJournaling, DayJournaling, QAfterFilterCondition>
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

  QueryBuilder<DayJournaling, DayJournaling, QAfterFilterCondition>
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

  QueryBuilder<DayJournaling, DayJournaling, QAfterFilterCondition>
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

  QueryBuilder<DayJournaling, DayJournaling, QAfterFilterCondition>
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

  QueryBuilder<DayJournaling, DayJournaling, QAfterFilterCondition>
      successesElementContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'successes',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DayJournaling, DayJournaling, QAfterFilterCondition>
      successesElementMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'successes',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DayJournaling, DayJournaling, QAfterFilterCondition>
      successesElementIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'successes',
        value: '',
      ));
    });
  }

  QueryBuilder<DayJournaling, DayJournaling, QAfterFilterCondition>
      successesElementIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'successes',
        value: '',
      ));
    });
  }

  QueryBuilder<DayJournaling, DayJournaling, QAfterFilterCondition>
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

  QueryBuilder<DayJournaling, DayJournaling, QAfterFilterCondition>
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

  QueryBuilder<DayJournaling, DayJournaling, QAfterFilterCondition>
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

  QueryBuilder<DayJournaling, DayJournaling, QAfterFilterCondition>
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

  QueryBuilder<DayJournaling, DayJournaling, QAfterFilterCondition>
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

  QueryBuilder<DayJournaling, DayJournaling, QAfterFilterCondition>
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
}

extension DayJournalingQueryObject
    on QueryBuilder<DayJournaling, DayJournaling, QFilterCondition> {}

extension DayJournalingQueryLinks
    on QueryBuilder<DayJournaling, DayJournaling, QFilterCondition> {}

extension DayJournalingQuerySortBy
    on QueryBuilder<DayJournaling, DayJournaling, QSortBy> {
  QueryBuilder<DayJournaling, DayJournaling, QAfterSortBy> sortByDate() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'date', Sort.asc);
    });
  }

  QueryBuilder<DayJournaling, DayJournaling, QAfterSortBy> sortByDateDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'date', Sort.desc);
    });
  }

  QueryBuilder<DayJournaling, DayJournaling, QAfterSortBy> sortByDayCheck() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'dayCheck', Sort.asc);
    });
  }

  QueryBuilder<DayJournaling, DayJournaling, QAfterSortBy>
      sortByDayCheckDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'dayCheck', Sort.desc);
    });
  }
}

extension DayJournalingQuerySortThenBy
    on QueryBuilder<DayJournaling, DayJournaling, QSortThenBy> {
  QueryBuilder<DayJournaling, DayJournaling, QAfterSortBy> thenByDate() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'date', Sort.asc);
    });
  }

  QueryBuilder<DayJournaling, DayJournaling, QAfterSortBy> thenByDateDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'date', Sort.desc);
    });
  }

  QueryBuilder<DayJournaling, DayJournaling, QAfterSortBy> thenByDayCheck() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'dayCheck', Sort.asc);
    });
  }

  QueryBuilder<DayJournaling, DayJournaling, QAfterSortBy>
      thenByDayCheckDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'dayCheck', Sort.desc);
    });
  }

  QueryBuilder<DayJournaling, DayJournaling, QAfterSortBy> thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<DayJournaling, DayJournaling, QAfterSortBy> thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }
}

extension DayJournalingQueryWhereDistinct
    on QueryBuilder<DayJournaling, DayJournaling, QDistinct> {
  QueryBuilder<DayJournaling, DayJournaling, QDistinct> distinctByDate() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'date');
    });
  }

  QueryBuilder<DayJournaling, DayJournaling, QDistinct> distinctByDayCheck() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'dayCheck');
    });
  }

  QueryBuilder<DayJournaling, DayJournaling, QDistinct> distinctByDayGoals() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'dayGoals');
    });
  }

  QueryBuilder<DayJournaling, DayJournaling, QDistinct> distinctByGratitudes() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'gratitudes');
    });
  }

  QueryBuilder<DayJournaling, DayJournaling, QDistinct> distinctByIdeas() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'ideas');
    });
  }

  QueryBuilder<DayJournaling, DayJournaling, QDistinct> distinctByInsights() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'insights');
    });
  }

  QueryBuilder<DayJournaling, DayJournaling, QDistinct>
      distinctByOptimizations() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'optimizations');
    });
  }

  QueryBuilder<DayJournaling, DayJournaling, QDistinct> distinctBySuccesses() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'successes');
    });
  }
}

extension DayJournalingQueryProperty
    on QueryBuilder<DayJournaling, DayJournaling, QQueryProperty> {
  QueryBuilder<DayJournaling, int, QQueryOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }

  QueryBuilder<DayJournaling, DateTime?, QQueryOperations> dateProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'date');
    });
  }

  QueryBuilder<DayJournaling, DailyHappiness, QQueryOperations>
      dayCheckProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'dayCheck');
    });
  }

  QueryBuilder<DayJournaling, List<String>?, QQueryOperations>
      dayGoalsProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'dayGoals');
    });
  }

  QueryBuilder<DayJournaling, List<String>?, QQueryOperations>
      gratitudesProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'gratitudes');
    });
  }

  QueryBuilder<DayJournaling, List<String>?, QQueryOperations> ideasProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'ideas');
    });
  }

  QueryBuilder<DayJournaling, List<String>?, QQueryOperations>
      insightsProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'insights');
    });
  }

  QueryBuilder<DayJournaling, List<String>?, QQueryOperations>
      optimizationsProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'optimizations');
    });
  }

  QueryBuilder<DayJournaling, List<String>?, QQueryOperations>
      successesProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'successes');
    });
  }
}