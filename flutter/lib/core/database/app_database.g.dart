// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_database.dart';

// ignore_for_file: type=lint
class $LocalLessonsTable extends LocalLessons
    with TableInfo<$LocalLessonsTable, LocalLesson> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $LocalLessonsTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<String> id = GeneratedColumn<String>(
    'id',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _moduleIdMeta = const VerificationMeta(
    'moduleId',
  );
  @override
  late final GeneratedColumn<String> moduleId = GeneratedColumn<String>(
    'module_id',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _nameMeta = const VerificationMeta('name');
  @override
  late final GeneratedColumn<String> name = GeneratedColumn<String>(
    'name',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _xpRewardMeta = const VerificationMeta(
    'xpReward',
  );
  @override
  late final GeneratedColumn<int> xpReward = GeneratedColumn<int>(
    'xp_reward',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _sortOrderMeta = const VerificationMeta(
    'sortOrder',
  );
  @override
  late final GeneratedColumn<int> sortOrder = GeneratedColumn<int>(
    'sort_order',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: true,
  );
  @override
  List<GeneratedColumn> get $columns => [
    id,
    moduleId,
    name,
    xpReward,
    sortOrder,
  ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'local_lessons';
  @override
  VerificationContext validateIntegrity(
    Insertable<LocalLesson> instance, {
    bool isInserting = false,
  }) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    } else if (isInserting) {
      context.missing(_idMeta);
    }
    if (data.containsKey('module_id')) {
      context.handle(
        _moduleIdMeta,
        moduleId.isAcceptableOrUnknown(data['module_id']!, _moduleIdMeta),
      );
    } else if (isInserting) {
      context.missing(_moduleIdMeta);
    }
    if (data.containsKey('name')) {
      context.handle(
        _nameMeta,
        name.isAcceptableOrUnknown(data['name']!, _nameMeta),
      );
    } else if (isInserting) {
      context.missing(_nameMeta);
    }
    if (data.containsKey('xp_reward')) {
      context.handle(
        _xpRewardMeta,
        xpReward.isAcceptableOrUnknown(data['xp_reward']!, _xpRewardMeta),
      );
    } else if (isInserting) {
      context.missing(_xpRewardMeta);
    }
    if (data.containsKey('sort_order')) {
      context.handle(
        _sortOrderMeta,
        sortOrder.isAcceptableOrUnknown(data['sort_order']!, _sortOrderMeta),
      );
    } else if (isInserting) {
      context.missing(_sortOrderMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  LocalLesson map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return LocalLesson(
      id: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}id'],
      )!,
      moduleId: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}module_id'],
      )!,
      name: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}name'],
      )!,
      xpReward: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}xp_reward'],
      )!,
      sortOrder: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}sort_order'],
      )!,
    );
  }

  @override
  $LocalLessonsTable createAlias(String alias) {
    return $LocalLessonsTable(attachedDatabase, alias);
  }
}

class LocalLesson extends DataClass implements Insertable<LocalLesson> {
  final String id;
  final String moduleId;
  final String name;
  final int xpReward;
  final int sortOrder;
  const LocalLesson({
    required this.id,
    required this.moduleId,
    required this.name,
    required this.xpReward,
    required this.sortOrder,
  });
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<String>(id);
    map['module_id'] = Variable<String>(moduleId);
    map['name'] = Variable<String>(name);
    map['xp_reward'] = Variable<int>(xpReward);
    map['sort_order'] = Variable<int>(sortOrder);
    return map;
  }

  LocalLessonsCompanion toCompanion(bool nullToAbsent) {
    return LocalLessonsCompanion(
      id: Value(id),
      moduleId: Value(moduleId),
      name: Value(name),
      xpReward: Value(xpReward),
      sortOrder: Value(sortOrder),
    );
  }

  factory LocalLesson.fromJson(
    Map<String, dynamic> json, {
    ValueSerializer? serializer,
  }) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return LocalLesson(
      id: serializer.fromJson<String>(json['id']),
      moduleId: serializer.fromJson<String>(json['moduleId']),
      name: serializer.fromJson<String>(json['name']),
      xpReward: serializer.fromJson<int>(json['xpReward']),
      sortOrder: serializer.fromJson<int>(json['sortOrder']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<String>(id),
      'moduleId': serializer.toJson<String>(moduleId),
      'name': serializer.toJson<String>(name),
      'xpReward': serializer.toJson<int>(xpReward),
      'sortOrder': serializer.toJson<int>(sortOrder),
    };
  }

  LocalLesson copyWith({
    String? id,
    String? moduleId,
    String? name,
    int? xpReward,
    int? sortOrder,
  }) => LocalLesson(
    id: id ?? this.id,
    moduleId: moduleId ?? this.moduleId,
    name: name ?? this.name,
    xpReward: xpReward ?? this.xpReward,
    sortOrder: sortOrder ?? this.sortOrder,
  );
  LocalLesson copyWithCompanion(LocalLessonsCompanion data) {
    return LocalLesson(
      id: data.id.present ? data.id.value : this.id,
      moduleId: data.moduleId.present ? data.moduleId.value : this.moduleId,
      name: data.name.present ? data.name.value : this.name,
      xpReward: data.xpReward.present ? data.xpReward.value : this.xpReward,
      sortOrder: data.sortOrder.present ? data.sortOrder.value : this.sortOrder,
    );
  }

  @override
  String toString() {
    return (StringBuffer('LocalLesson(')
          ..write('id: $id, ')
          ..write('moduleId: $moduleId, ')
          ..write('name: $name, ')
          ..write('xpReward: $xpReward, ')
          ..write('sortOrder: $sortOrder')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(id, moduleId, name, xpReward, sortOrder);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is LocalLesson &&
          other.id == this.id &&
          other.moduleId == this.moduleId &&
          other.name == this.name &&
          other.xpReward == this.xpReward &&
          other.sortOrder == this.sortOrder);
}

class LocalLessonsCompanion extends UpdateCompanion<LocalLesson> {
  final Value<String> id;
  final Value<String> moduleId;
  final Value<String> name;
  final Value<int> xpReward;
  final Value<int> sortOrder;
  final Value<int> rowid;
  const LocalLessonsCompanion({
    this.id = const Value.absent(),
    this.moduleId = const Value.absent(),
    this.name = const Value.absent(),
    this.xpReward = const Value.absent(),
    this.sortOrder = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  LocalLessonsCompanion.insert({
    required String id,
    required String moduleId,
    required String name,
    required int xpReward,
    required int sortOrder,
    this.rowid = const Value.absent(),
  }) : id = Value(id),
       moduleId = Value(moduleId),
       name = Value(name),
       xpReward = Value(xpReward),
       sortOrder = Value(sortOrder);
  static Insertable<LocalLesson> custom({
    Expression<String>? id,
    Expression<String>? moduleId,
    Expression<String>? name,
    Expression<int>? xpReward,
    Expression<int>? sortOrder,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (moduleId != null) 'module_id': moduleId,
      if (name != null) 'name': name,
      if (xpReward != null) 'xp_reward': xpReward,
      if (sortOrder != null) 'sort_order': sortOrder,
      if (rowid != null) 'rowid': rowid,
    });
  }

  LocalLessonsCompanion copyWith({
    Value<String>? id,
    Value<String>? moduleId,
    Value<String>? name,
    Value<int>? xpReward,
    Value<int>? sortOrder,
    Value<int>? rowid,
  }) {
    return LocalLessonsCompanion(
      id: id ?? this.id,
      moduleId: moduleId ?? this.moduleId,
      name: name ?? this.name,
      xpReward: xpReward ?? this.xpReward,
      sortOrder: sortOrder ?? this.sortOrder,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<String>(id.value);
    }
    if (moduleId.present) {
      map['module_id'] = Variable<String>(moduleId.value);
    }
    if (name.present) {
      map['name'] = Variable<String>(name.value);
    }
    if (xpReward.present) {
      map['xp_reward'] = Variable<int>(xpReward.value);
    }
    if (sortOrder.present) {
      map['sort_order'] = Variable<int>(sortOrder.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('LocalLessonsCompanion(')
          ..write('id: $id, ')
          ..write('moduleId: $moduleId, ')
          ..write('name: $name, ')
          ..write('xpReward: $xpReward, ')
          ..write('sortOrder: $sortOrder, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

class $LocalVocabulariesTable extends LocalVocabularies
    with TableInfo<$LocalVocabulariesTable, LocalVocabulary> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $LocalVocabulariesTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<String> id = GeneratedColumn<String>(
    'id',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _lessonIdMeta = const VerificationMeta(
    'lessonId',
  );
  @override
  late final GeneratedColumn<String> lessonId = GeneratedColumn<String>(
    'lesson_id',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'REFERENCES local_lessons (id)',
    ),
  );
  static const VerificationMeta _wordMeta = const VerificationMeta('word');
  @override
  late final GeneratedColumn<String> word = GeneratedColumn<String>(
    'word',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _meaningMeta = const VerificationMeta(
    'meaning',
  );
  @override
  late final GeneratedColumn<String> meaning = GeneratedColumn<String>(
    'meaning',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _readingMeta = const VerificationMeta(
    'reading',
  );
  @override
  late final GeneratedColumn<String> reading = GeneratedColumn<String>(
    'reading',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  @override
  List<GeneratedColumn> get $columns => [id, lessonId, word, meaning, reading];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'local_vocabularies';
  @override
  VerificationContext validateIntegrity(
    Insertable<LocalVocabulary> instance, {
    bool isInserting = false,
  }) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    } else if (isInserting) {
      context.missing(_idMeta);
    }
    if (data.containsKey('lesson_id')) {
      context.handle(
        _lessonIdMeta,
        lessonId.isAcceptableOrUnknown(data['lesson_id']!, _lessonIdMeta),
      );
    } else if (isInserting) {
      context.missing(_lessonIdMeta);
    }
    if (data.containsKey('word')) {
      context.handle(
        _wordMeta,
        word.isAcceptableOrUnknown(data['word']!, _wordMeta),
      );
    } else if (isInserting) {
      context.missing(_wordMeta);
    }
    if (data.containsKey('meaning')) {
      context.handle(
        _meaningMeta,
        meaning.isAcceptableOrUnknown(data['meaning']!, _meaningMeta),
      );
    } else if (isInserting) {
      context.missing(_meaningMeta);
    }
    if (data.containsKey('reading')) {
      context.handle(
        _readingMeta,
        reading.isAcceptableOrUnknown(data['reading']!, _readingMeta),
      );
    } else if (isInserting) {
      context.missing(_readingMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  LocalVocabulary map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return LocalVocabulary(
      id: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}id'],
      )!,
      lessonId: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}lesson_id'],
      )!,
      word: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}word'],
      )!,
      meaning: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}meaning'],
      )!,
      reading: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}reading'],
      )!,
    );
  }

  @override
  $LocalVocabulariesTable createAlias(String alias) {
    return $LocalVocabulariesTable(attachedDatabase, alias);
  }
}

class LocalVocabulary extends DataClass implements Insertable<LocalVocabulary> {
  final String id;
  final String lessonId;
  final String word;
  final String meaning;
  final String reading;
  const LocalVocabulary({
    required this.id,
    required this.lessonId,
    required this.word,
    required this.meaning,
    required this.reading,
  });
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<String>(id);
    map['lesson_id'] = Variable<String>(lessonId);
    map['word'] = Variable<String>(word);
    map['meaning'] = Variable<String>(meaning);
    map['reading'] = Variable<String>(reading);
    return map;
  }

  LocalVocabulariesCompanion toCompanion(bool nullToAbsent) {
    return LocalVocabulariesCompanion(
      id: Value(id),
      lessonId: Value(lessonId),
      word: Value(word),
      meaning: Value(meaning),
      reading: Value(reading),
    );
  }

  factory LocalVocabulary.fromJson(
    Map<String, dynamic> json, {
    ValueSerializer? serializer,
  }) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return LocalVocabulary(
      id: serializer.fromJson<String>(json['id']),
      lessonId: serializer.fromJson<String>(json['lessonId']),
      word: serializer.fromJson<String>(json['word']),
      meaning: serializer.fromJson<String>(json['meaning']),
      reading: serializer.fromJson<String>(json['reading']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<String>(id),
      'lessonId': serializer.toJson<String>(lessonId),
      'word': serializer.toJson<String>(word),
      'meaning': serializer.toJson<String>(meaning),
      'reading': serializer.toJson<String>(reading),
    };
  }

  LocalVocabulary copyWith({
    String? id,
    String? lessonId,
    String? word,
    String? meaning,
    String? reading,
  }) => LocalVocabulary(
    id: id ?? this.id,
    lessonId: lessonId ?? this.lessonId,
    word: word ?? this.word,
    meaning: meaning ?? this.meaning,
    reading: reading ?? this.reading,
  );
  LocalVocabulary copyWithCompanion(LocalVocabulariesCompanion data) {
    return LocalVocabulary(
      id: data.id.present ? data.id.value : this.id,
      lessonId: data.lessonId.present ? data.lessonId.value : this.lessonId,
      word: data.word.present ? data.word.value : this.word,
      meaning: data.meaning.present ? data.meaning.value : this.meaning,
      reading: data.reading.present ? data.reading.value : this.reading,
    );
  }

  @override
  String toString() {
    return (StringBuffer('LocalVocabulary(')
          ..write('id: $id, ')
          ..write('lessonId: $lessonId, ')
          ..write('word: $word, ')
          ..write('meaning: $meaning, ')
          ..write('reading: $reading')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(id, lessonId, word, meaning, reading);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is LocalVocabulary &&
          other.id == this.id &&
          other.lessonId == this.lessonId &&
          other.word == this.word &&
          other.meaning == this.meaning &&
          other.reading == this.reading);
}

class LocalVocabulariesCompanion extends UpdateCompanion<LocalVocabulary> {
  final Value<String> id;
  final Value<String> lessonId;
  final Value<String> word;
  final Value<String> meaning;
  final Value<String> reading;
  final Value<int> rowid;
  const LocalVocabulariesCompanion({
    this.id = const Value.absent(),
    this.lessonId = const Value.absent(),
    this.word = const Value.absent(),
    this.meaning = const Value.absent(),
    this.reading = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  LocalVocabulariesCompanion.insert({
    required String id,
    required String lessonId,
    required String word,
    required String meaning,
    required String reading,
    this.rowid = const Value.absent(),
  }) : id = Value(id),
       lessonId = Value(lessonId),
       word = Value(word),
       meaning = Value(meaning),
       reading = Value(reading);
  static Insertable<LocalVocabulary> custom({
    Expression<String>? id,
    Expression<String>? lessonId,
    Expression<String>? word,
    Expression<String>? meaning,
    Expression<String>? reading,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (lessonId != null) 'lesson_id': lessonId,
      if (word != null) 'word': word,
      if (meaning != null) 'meaning': meaning,
      if (reading != null) 'reading': reading,
      if (rowid != null) 'rowid': rowid,
    });
  }

  LocalVocabulariesCompanion copyWith({
    Value<String>? id,
    Value<String>? lessonId,
    Value<String>? word,
    Value<String>? meaning,
    Value<String>? reading,
    Value<int>? rowid,
  }) {
    return LocalVocabulariesCompanion(
      id: id ?? this.id,
      lessonId: lessonId ?? this.lessonId,
      word: word ?? this.word,
      meaning: meaning ?? this.meaning,
      reading: reading ?? this.reading,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<String>(id.value);
    }
    if (lessonId.present) {
      map['lesson_id'] = Variable<String>(lessonId.value);
    }
    if (word.present) {
      map['word'] = Variable<String>(word.value);
    }
    if (meaning.present) {
      map['meaning'] = Variable<String>(meaning.value);
    }
    if (reading.present) {
      map['reading'] = Variable<String>(reading.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('LocalVocabulariesCompanion(')
          ..write('id: $id, ')
          ..write('lessonId: $lessonId, ')
          ..write('word: $word, ')
          ..write('meaning: $meaning, ')
          ..write('reading: $reading, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

class $LocalKanjisTable extends LocalKanjis
    with TableInfo<$LocalKanjisTable, LocalKanji> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $LocalKanjisTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<String> id = GeneratedColumn<String>(
    'id',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _lessonIdMeta = const VerificationMeta(
    'lessonId',
  );
  @override
  late final GeneratedColumn<String> lessonId = GeneratedColumn<String>(
    'lesson_id',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'REFERENCES local_lessons (id)',
    ),
  );
  static const VerificationMeta _characterMeta = const VerificationMeta(
    'character',
  );
  @override
  late final GeneratedColumn<String> character = GeneratedColumn<String>(
    'character',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _meaningMeta = const VerificationMeta(
    'meaning',
  );
  @override
  late final GeneratedColumn<String> meaning = GeneratedColumn<String>(
    'meaning',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _onyomiMeta = const VerificationMeta('onyomi');
  @override
  late final GeneratedColumn<String> onyomi = GeneratedColumn<String>(
    'onyomi',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _kunyomiMeta = const VerificationMeta(
    'kunyomi',
  );
  @override
  late final GeneratedColumn<String> kunyomi = GeneratedColumn<String>(
    'kunyomi',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
  );
  @override
  List<GeneratedColumn> get $columns => [
    id,
    lessonId,
    character,
    meaning,
    onyomi,
    kunyomi,
  ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'local_kanjis';
  @override
  VerificationContext validateIntegrity(
    Insertable<LocalKanji> instance, {
    bool isInserting = false,
  }) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    } else if (isInserting) {
      context.missing(_idMeta);
    }
    if (data.containsKey('lesson_id')) {
      context.handle(
        _lessonIdMeta,
        lessonId.isAcceptableOrUnknown(data['lesson_id']!, _lessonIdMeta),
      );
    } else if (isInserting) {
      context.missing(_lessonIdMeta);
    }
    if (data.containsKey('character')) {
      context.handle(
        _characterMeta,
        character.isAcceptableOrUnknown(data['character']!, _characterMeta),
      );
    } else if (isInserting) {
      context.missing(_characterMeta);
    }
    if (data.containsKey('meaning')) {
      context.handle(
        _meaningMeta,
        meaning.isAcceptableOrUnknown(data['meaning']!, _meaningMeta),
      );
    } else if (isInserting) {
      context.missing(_meaningMeta);
    }
    if (data.containsKey('onyomi')) {
      context.handle(
        _onyomiMeta,
        onyomi.isAcceptableOrUnknown(data['onyomi']!, _onyomiMeta),
      );
    }
    if (data.containsKey('kunyomi')) {
      context.handle(
        _kunyomiMeta,
        kunyomi.isAcceptableOrUnknown(data['kunyomi']!, _kunyomiMeta),
      );
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  LocalKanji map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return LocalKanji(
      id: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}id'],
      )!,
      lessonId: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}lesson_id'],
      )!,
      character: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}character'],
      )!,
      meaning: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}meaning'],
      )!,
      onyomi: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}onyomi'],
      ),
      kunyomi: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}kunyomi'],
      ),
    );
  }

  @override
  $LocalKanjisTable createAlias(String alias) {
    return $LocalKanjisTable(attachedDatabase, alias);
  }
}

class LocalKanji extends DataClass implements Insertable<LocalKanji> {
  final String id;
  final String lessonId;
  final String character;
  final String meaning;
  final String? onyomi;
  final String? kunyomi;
  const LocalKanji({
    required this.id,
    required this.lessonId,
    required this.character,
    required this.meaning,
    this.onyomi,
    this.kunyomi,
  });
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<String>(id);
    map['lesson_id'] = Variable<String>(lessonId);
    map['character'] = Variable<String>(character);
    map['meaning'] = Variable<String>(meaning);
    if (!nullToAbsent || onyomi != null) {
      map['onyomi'] = Variable<String>(onyomi);
    }
    if (!nullToAbsent || kunyomi != null) {
      map['kunyomi'] = Variable<String>(kunyomi);
    }
    return map;
  }

  LocalKanjisCompanion toCompanion(bool nullToAbsent) {
    return LocalKanjisCompanion(
      id: Value(id),
      lessonId: Value(lessonId),
      character: Value(character),
      meaning: Value(meaning),
      onyomi: onyomi == null && nullToAbsent
          ? const Value.absent()
          : Value(onyomi),
      kunyomi: kunyomi == null && nullToAbsent
          ? const Value.absent()
          : Value(kunyomi),
    );
  }

  factory LocalKanji.fromJson(
    Map<String, dynamic> json, {
    ValueSerializer? serializer,
  }) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return LocalKanji(
      id: serializer.fromJson<String>(json['id']),
      lessonId: serializer.fromJson<String>(json['lessonId']),
      character: serializer.fromJson<String>(json['character']),
      meaning: serializer.fromJson<String>(json['meaning']),
      onyomi: serializer.fromJson<String?>(json['onyomi']),
      kunyomi: serializer.fromJson<String?>(json['kunyomi']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<String>(id),
      'lessonId': serializer.toJson<String>(lessonId),
      'character': serializer.toJson<String>(character),
      'meaning': serializer.toJson<String>(meaning),
      'onyomi': serializer.toJson<String?>(onyomi),
      'kunyomi': serializer.toJson<String?>(kunyomi),
    };
  }

  LocalKanji copyWith({
    String? id,
    String? lessonId,
    String? character,
    String? meaning,
    Value<String?> onyomi = const Value.absent(),
    Value<String?> kunyomi = const Value.absent(),
  }) => LocalKanji(
    id: id ?? this.id,
    lessonId: lessonId ?? this.lessonId,
    character: character ?? this.character,
    meaning: meaning ?? this.meaning,
    onyomi: onyomi.present ? onyomi.value : this.onyomi,
    kunyomi: kunyomi.present ? kunyomi.value : this.kunyomi,
  );
  LocalKanji copyWithCompanion(LocalKanjisCompanion data) {
    return LocalKanji(
      id: data.id.present ? data.id.value : this.id,
      lessonId: data.lessonId.present ? data.lessonId.value : this.lessonId,
      character: data.character.present ? data.character.value : this.character,
      meaning: data.meaning.present ? data.meaning.value : this.meaning,
      onyomi: data.onyomi.present ? data.onyomi.value : this.onyomi,
      kunyomi: data.kunyomi.present ? data.kunyomi.value : this.kunyomi,
    );
  }

  @override
  String toString() {
    return (StringBuffer('LocalKanji(')
          ..write('id: $id, ')
          ..write('lessonId: $lessonId, ')
          ..write('character: $character, ')
          ..write('meaning: $meaning, ')
          ..write('onyomi: $onyomi, ')
          ..write('kunyomi: $kunyomi')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode =>
      Object.hash(id, lessonId, character, meaning, onyomi, kunyomi);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is LocalKanji &&
          other.id == this.id &&
          other.lessonId == this.lessonId &&
          other.character == this.character &&
          other.meaning == this.meaning &&
          other.onyomi == this.onyomi &&
          other.kunyomi == this.kunyomi);
}

class LocalKanjisCompanion extends UpdateCompanion<LocalKanji> {
  final Value<String> id;
  final Value<String> lessonId;
  final Value<String> character;
  final Value<String> meaning;
  final Value<String?> onyomi;
  final Value<String?> kunyomi;
  final Value<int> rowid;
  const LocalKanjisCompanion({
    this.id = const Value.absent(),
    this.lessonId = const Value.absent(),
    this.character = const Value.absent(),
    this.meaning = const Value.absent(),
    this.onyomi = const Value.absent(),
    this.kunyomi = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  LocalKanjisCompanion.insert({
    required String id,
    required String lessonId,
    required String character,
    required String meaning,
    this.onyomi = const Value.absent(),
    this.kunyomi = const Value.absent(),
    this.rowid = const Value.absent(),
  }) : id = Value(id),
       lessonId = Value(lessonId),
       character = Value(character),
       meaning = Value(meaning);
  static Insertable<LocalKanji> custom({
    Expression<String>? id,
    Expression<String>? lessonId,
    Expression<String>? character,
    Expression<String>? meaning,
    Expression<String>? onyomi,
    Expression<String>? kunyomi,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (lessonId != null) 'lesson_id': lessonId,
      if (character != null) 'character': character,
      if (meaning != null) 'meaning': meaning,
      if (onyomi != null) 'onyomi': onyomi,
      if (kunyomi != null) 'kunyomi': kunyomi,
      if (rowid != null) 'rowid': rowid,
    });
  }

  LocalKanjisCompanion copyWith({
    Value<String>? id,
    Value<String>? lessonId,
    Value<String>? character,
    Value<String>? meaning,
    Value<String?>? onyomi,
    Value<String?>? kunyomi,
    Value<int>? rowid,
  }) {
    return LocalKanjisCompanion(
      id: id ?? this.id,
      lessonId: lessonId ?? this.lessonId,
      character: character ?? this.character,
      meaning: meaning ?? this.meaning,
      onyomi: onyomi ?? this.onyomi,
      kunyomi: kunyomi ?? this.kunyomi,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<String>(id.value);
    }
    if (lessonId.present) {
      map['lesson_id'] = Variable<String>(lessonId.value);
    }
    if (character.present) {
      map['character'] = Variable<String>(character.value);
    }
    if (meaning.present) {
      map['meaning'] = Variable<String>(meaning.value);
    }
    if (onyomi.present) {
      map['onyomi'] = Variable<String>(onyomi.value);
    }
    if (kunyomi.present) {
      map['kunyomi'] = Variable<String>(kunyomi.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('LocalKanjisCompanion(')
          ..write('id: $id, ')
          ..write('lessonId: $lessonId, ')
          ..write('character: $character, ')
          ..write('meaning: $meaning, ')
          ..write('onyomi: $onyomi, ')
          ..write('kunyomi: $kunyomi, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

class $LocalGrammarsTable extends LocalGrammars
    with TableInfo<$LocalGrammarsTable, LocalGrammar> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $LocalGrammarsTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<String> id = GeneratedColumn<String>(
    'id',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _lessonIdMeta = const VerificationMeta(
    'lessonId',
  );
  @override
  late final GeneratedColumn<String> lessonId = GeneratedColumn<String>(
    'lesson_id',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'REFERENCES local_lessons (id)',
    ),
  );
  static const VerificationMeta _patternMeta = const VerificationMeta(
    'pattern',
  );
  @override
  late final GeneratedColumn<String> pattern = GeneratedColumn<String>(
    'pattern',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _meaningMeta = const VerificationMeta(
    'meaning',
  );
  @override
  late final GeneratedColumn<String> meaning = GeneratedColumn<String>(
    'meaning',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _usageMeta = const VerificationMeta('usage');
  @override
  late final GeneratedColumn<String> usage = GeneratedColumn<String>(
    'usage',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
  );
  @override
  List<GeneratedColumn> get $columns => [id, lessonId, pattern, meaning, usage];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'local_grammars';
  @override
  VerificationContext validateIntegrity(
    Insertable<LocalGrammar> instance, {
    bool isInserting = false,
  }) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    } else if (isInserting) {
      context.missing(_idMeta);
    }
    if (data.containsKey('lesson_id')) {
      context.handle(
        _lessonIdMeta,
        lessonId.isAcceptableOrUnknown(data['lesson_id']!, _lessonIdMeta),
      );
    } else if (isInserting) {
      context.missing(_lessonIdMeta);
    }
    if (data.containsKey('pattern')) {
      context.handle(
        _patternMeta,
        pattern.isAcceptableOrUnknown(data['pattern']!, _patternMeta),
      );
    } else if (isInserting) {
      context.missing(_patternMeta);
    }
    if (data.containsKey('meaning')) {
      context.handle(
        _meaningMeta,
        meaning.isAcceptableOrUnknown(data['meaning']!, _meaningMeta),
      );
    } else if (isInserting) {
      context.missing(_meaningMeta);
    }
    if (data.containsKey('usage')) {
      context.handle(
        _usageMeta,
        usage.isAcceptableOrUnknown(data['usage']!, _usageMeta),
      );
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  LocalGrammar map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return LocalGrammar(
      id: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}id'],
      )!,
      lessonId: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}lesson_id'],
      )!,
      pattern: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}pattern'],
      )!,
      meaning: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}meaning'],
      )!,
      usage: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}usage'],
      ),
    );
  }

  @override
  $LocalGrammarsTable createAlias(String alias) {
    return $LocalGrammarsTable(attachedDatabase, alias);
  }
}

class LocalGrammar extends DataClass implements Insertable<LocalGrammar> {
  final String id;
  final String lessonId;
  final String pattern;
  final String meaning;
  final String? usage;
  const LocalGrammar({
    required this.id,
    required this.lessonId,
    required this.pattern,
    required this.meaning,
    this.usage,
  });
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<String>(id);
    map['lesson_id'] = Variable<String>(lessonId);
    map['pattern'] = Variable<String>(pattern);
    map['meaning'] = Variable<String>(meaning);
    if (!nullToAbsent || usage != null) {
      map['usage'] = Variable<String>(usage);
    }
    return map;
  }

  LocalGrammarsCompanion toCompanion(bool nullToAbsent) {
    return LocalGrammarsCompanion(
      id: Value(id),
      lessonId: Value(lessonId),
      pattern: Value(pattern),
      meaning: Value(meaning),
      usage: usage == null && nullToAbsent
          ? const Value.absent()
          : Value(usage),
    );
  }

  factory LocalGrammar.fromJson(
    Map<String, dynamic> json, {
    ValueSerializer? serializer,
  }) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return LocalGrammar(
      id: serializer.fromJson<String>(json['id']),
      lessonId: serializer.fromJson<String>(json['lessonId']),
      pattern: serializer.fromJson<String>(json['pattern']),
      meaning: serializer.fromJson<String>(json['meaning']),
      usage: serializer.fromJson<String?>(json['usage']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<String>(id),
      'lessonId': serializer.toJson<String>(lessonId),
      'pattern': serializer.toJson<String>(pattern),
      'meaning': serializer.toJson<String>(meaning),
      'usage': serializer.toJson<String?>(usage),
    };
  }

  LocalGrammar copyWith({
    String? id,
    String? lessonId,
    String? pattern,
    String? meaning,
    Value<String?> usage = const Value.absent(),
  }) => LocalGrammar(
    id: id ?? this.id,
    lessonId: lessonId ?? this.lessonId,
    pattern: pattern ?? this.pattern,
    meaning: meaning ?? this.meaning,
    usage: usage.present ? usage.value : this.usage,
  );
  LocalGrammar copyWithCompanion(LocalGrammarsCompanion data) {
    return LocalGrammar(
      id: data.id.present ? data.id.value : this.id,
      lessonId: data.lessonId.present ? data.lessonId.value : this.lessonId,
      pattern: data.pattern.present ? data.pattern.value : this.pattern,
      meaning: data.meaning.present ? data.meaning.value : this.meaning,
      usage: data.usage.present ? data.usage.value : this.usage,
    );
  }

  @override
  String toString() {
    return (StringBuffer('LocalGrammar(')
          ..write('id: $id, ')
          ..write('lessonId: $lessonId, ')
          ..write('pattern: $pattern, ')
          ..write('meaning: $meaning, ')
          ..write('usage: $usage')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(id, lessonId, pattern, meaning, usage);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is LocalGrammar &&
          other.id == this.id &&
          other.lessonId == this.lessonId &&
          other.pattern == this.pattern &&
          other.meaning == this.meaning &&
          other.usage == this.usage);
}

class LocalGrammarsCompanion extends UpdateCompanion<LocalGrammar> {
  final Value<String> id;
  final Value<String> lessonId;
  final Value<String> pattern;
  final Value<String> meaning;
  final Value<String?> usage;
  final Value<int> rowid;
  const LocalGrammarsCompanion({
    this.id = const Value.absent(),
    this.lessonId = const Value.absent(),
    this.pattern = const Value.absent(),
    this.meaning = const Value.absent(),
    this.usage = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  LocalGrammarsCompanion.insert({
    required String id,
    required String lessonId,
    required String pattern,
    required String meaning,
    this.usage = const Value.absent(),
    this.rowid = const Value.absent(),
  }) : id = Value(id),
       lessonId = Value(lessonId),
       pattern = Value(pattern),
       meaning = Value(meaning);
  static Insertable<LocalGrammar> custom({
    Expression<String>? id,
    Expression<String>? lessonId,
    Expression<String>? pattern,
    Expression<String>? meaning,
    Expression<String>? usage,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (lessonId != null) 'lesson_id': lessonId,
      if (pattern != null) 'pattern': pattern,
      if (meaning != null) 'meaning': meaning,
      if (usage != null) 'usage': usage,
      if (rowid != null) 'rowid': rowid,
    });
  }

  LocalGrammarsCompanion copyWith({
    Value<String>? id,
    Value<String>? lessonId,
    Value<String>? pattern,
    Value<String>? meaning,
    Value<String?>? usage,
    Value<int>? rowid,
  }) {
    return LocalGrammarsCompanion(
      id: id ?? this.id,
      lessonId: lessonId ?? this.lessonId,
      pattern: pattern ?? this.pattern,
      meaning: meaning ?? this.meaning,
      usage: usage ?? this.usage,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<String>(id.value);
    }
    if (lessonId.present) {
      map['lesson_id'] = Variable<String>(lessonId.value);
    }
    if (pattern.present) {
      map['pattern'] = Variable<String>(pattern.value);
    }
    if (meaning.present) {
      map['meaning'] = Variable<String>(meaning.value);
    }
    if (usage.present) {
      map['usage'] = Variable<String>(usage.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('LocalGrammarsCompanion(')
          ..write('id: $id, ')
          ..write('lessonId: $lessonId, ')
          ..write('pattern: $pattern, ')
          ..write('meaning: $meaning, ')
          ..write('usage: $usage, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

abstract class _$AppDatabase extends GeneratedDatabase {
  _$AppDatabase(QueryExecutor e) : super(e);
  $AppDatabaseManager get managers => $AppDatabaseManager(this);
  late final $LocalLessonsTable localLessons = $LocalLessonsTable(this);
  late final $LocalVocabulariesTable localVocabularies =
      $LocalVocabulariesTable(this);
  late final $LocalKanjisTable localKanjis = $LocalKanjisTable(this);
  late final $LocalGrammarsTable localGrammars = $LocalGrammarsTable(this);
  @override
  Iterable<TableInfo<Table, Object?>> get allTables =>
      allSchemaEntities.whereType<TableInfo<Table, Object?>>();
  @override
  List<DatabaseSchemaEntity> get allSchemaEntities => [
    localLessons,
    localVocabularies,
    localKanjis,
    localGrammars,
  ];
}

typedef $$LocalLessonsTableCreateCompanionBuilder =
    LocalLessonsCompanion Function({
      required String id,
      required String moduleId,
      required String name,
      required int xpReward,
      required int sortOrder,
      Value<int> rowid,
    });
typedef $$LocalLessonsTableUpdateCompanionBuilder =
    LocalLessonsCompanion Function({
      Value<String> id,
      Value<String> moduleId,
      Value<String> name,
      Value<int> xpReward,
      Value<int> sortOrder,
      Value<int> rowid,
    });

final class $$LocalLessonsTableReferences
    extends BaseReferences<_$AppDatabase, $LocalLessonsTable, LocalLesson> {
  $$LocalLessonsTableReferences(super.$_db, super.$_table, super.$_typedResult);

  static MultiTypedResultKey<$LocalVocabulariesTable, List<LocalVocabulary>>
  _localVocabulariesRefsTable(_$AppDatabase db) =>
      MultiTypedResultKey.fromTable(
        db.localVocabularies,
        aliasName: 'local_lessons__id__local_vocabularies__lesson_id',
      );

  $$LocalVocabulariesTableProcessedTableManager get localVocabulariesRefs {
    final manager = $$LocalVocabulariesTableTableManager(
      $_db,
      $_db.localVocabularies,
    ).filter((f) => f.lessonId.id.sqlEquals($_itemColumn<String>('id')!));

    final cache = $_typedResult.readTableOrNull(
      _localVocabulariesRefsTable($_db),
    );
    return ProcessedTableManager(
      manager.$state.copyWith(prefetchedData: cache),
    );
  }

  static MultiTypedResultKey<$LocalKanjisTable, List<LocalKanji>>
  _localKanjisRefsTable(_$AppDatabase db) => MultiTypedResultKey.fromTable(
    db.localKanjis,
    aliasName: 'local_lessons__id__local_kanjis__lesson_id',
  );

  $$LocalKanjisTableProcessedTableManager get localKanjisRefs {
    final manager = $$LocalKanjisTableTableManager(
      $_db,
      $_db.localKanjis,
    ).filter((f) => f.lessonId.id.sqlEquals($_itemColumn<String>('id')!));

    final cache = $_typedResult.readTableOrNull(_localKanjisRefsTable($_db));
    return ProcessedTableManager(
      manager.$state.copyWith(prefetchedData: cache),
    );
  }

  static MultiTypedResultKey<$LocalGrammarsTable, List<LocalGrammar>>
  _localGrammarsRefsTable(_$AppDatabase db) => MultiTypedResultKey.fromTable(
    db.localGrammars,
    aliasName: 'local_lessons__id__local_grammars__lesson_id',
  );

  $$LocalGrammarsTableProcessedTableManager get localGrammarsRefs {
    final manager = $$LocalGrammarsTableTableManager(
      $_db,
      $_db.localGrammars,
    ).filter((f) => f.lessonId.id.sqlEquals($_itemColumn<String>('id')!));

    final cache = $_typedResult.readTableOrNull(_localGrammarsRefsTable($_db));
    return ProcessedTableManager(
      manager.$state.copyWith(prefetchedData: cache),
    );
  }
}

class $$LocalLessonsTableFilterComposer
    extends Composer<_$AppDatabase, $LocalLessonsTable> {
  $$LocalLessonsTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<String> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get moduleId => $composableBuilder(
    column: $table.moduleId,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get name => $composableBuilder(
    column: $table.name,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get xpReward => $composableBuilder(
    column: $table.xpReward,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get sortOrder => $composableBuilder(
    column: $table.sortOrder,
    builder: (column) => ColumnFilters(column),
  );

  Expression<bool> localVocabulariesRefs(
    Expression<bool> Function($$LocalVocabulariesTableFilterComposer f) f,
  ) {
    final $$LocalVocabulariesTableFilterComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.id,
      referencedTable: $db.localVocabularies,
      getReferencedColumn: (t) => t.lessonId,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$LocalVocabulariesTableFilterComposer(
            $db: $db,
            $table: $db.localVocabularies,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return f(composer);
  }

  Expression<bool> localKanjisRefs(
    Expression<bool> Function($$LocalKanjisTableFilterComposer f) f,
  ) {
    final $$LocalKanjisTableFilterComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.id,
      referencedTable: $db.localKanjis,
      getReferencedColumn: (t) => t.lessonId,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$LocalKanjisTableFilterComposer(
            $db: $db,
            $table: $db.localKanjis,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return f(composer);
  }

  Expression<bool> localGrammarsRefs(
    Expression<bool> Function($$LocalGrammarsTableFilterComposer f) f,
  ) {
    final $$LocalGrammarsTableFilterComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.id,
      referencedTable: $db.localGrammars,
      getReferencedColumn: (t) => t.lessonId,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$LocalGrammarsTableFilterComposer(
            $db: $db,
            $table: $db.localGrammars,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return f(composer);
  }
}

class $$LocalLessonsTableOrderingComposer
    extends Composer<_$AppDatabase, $LocalLessonsTable> {
  $$LocalLessonsTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<String> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get moduleId => $composableBuilder(
    column: $table.moduleId,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get name => $composableBuilder(
    column: $table.name,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get xpReward => $composableBuilder(
    column: $table.xpReward,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get sortOrder => $composableBuilder(
    column: $table.sortOrder,
    builder: (column) => ColumnOrderings(column),
  );
}

class $$LocalLessonsTableAnnotationComposer
    extends Composer<_$AppDatabase, $LocalLessonsTable> {
  $$LocalLessonsTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<String> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<String> get moduleId =>
      $composableBuilder(column: $table.moduleId, builder: (column) => column);

  GeneratedColumn<String> get name =>
      $composableBuilder(column: $table.name, builder: (column) => column);

  GeneratedColumn<int> get xpReward =>
      $composableBuilder(column: $table.xpReward, builder: (column) => column);

  GeneratedColumn<int> get sortOrder =>
      $composableBuilder(column: $table.sortOrder, builder: (column) => column);

  Expression<T> localVocabulariesRefs<T extends Object>(
    Expression<T> Function($$LocalVocabulariesTableAnnotationComposer a) f,
  ) {
    final $$LocalVocabulariesTableAnnotationComposer composer =
        $composerBuilder(
          composer: this,
          getCurrentColumn: (t) => t.id,
          referencedTable: $db.localVocabularies,
          getReferencedColumn: (t) => t.lessonId,
          builder:
              (
                joinBuilder, {
                $addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer,
              }) => $$LocalVocabulariesTableAnnotationComposer(
                $db: $db,
                $table: $db.localVocabularies,
                $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
                joinBuilder: joinBuilder,
                $removeJoinBuilderFromRootComposer:
                    $removeJoinBuilderFromRootComposer,
              ),
        );
    return f(composer);
  }

  Expression<T> localKanjisRefs<T extends Object>(
    Expression<T> Function($$LocalKanjisTableAnnotationComposer a) f,
  ) {
    final $$LocalKanjisTableAnnotationComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.id,
      referencedTable: $db.localKanjis,
      getReferencedColumn: (t) => t.lessonId,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$LocalKanjisTableAnnotationComposer(
            $db: $db,
            $table: $db.localKanjis,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return f(composer);
  }

  Expression<T> localGrammarsRefs<T extends Object>(
    Expression<T> Function($$LocalGrammarsTableAnnotationComposer a) f,
  ) {
    final $$LocalGrammarsTableAnnotationComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.id,
      referencedTable: $db.localGrammars,
      getReferencedColumn: (t) => t.lessonId,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$LocalGrammarsTableAnnotationComposer(
            $db: $db,
            $table: $db.localGrammars,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return f(composer);
  }
}

class $$LocalLessonsTableTableManager
    extends
        RootTableManager<
          _$AppDatabase,
          $LocalLessonsTable,
          LocalLesson,
          $$LocalLessonsTableFilterComposer,
          $$LocalLessonsTableOrderingComposer,
          $$LocalLessonsTableAnnotationComposer,
          $$LocalLessonsTableCreateCompanionBuilder,
          $$LocalLessonsTableUpdateCompanionBuilder,
          (LocalLesson, $$LocalLessonsTableReferences),
          LocalLesson,
          PrefetchHooks Function({
            bool localVocabulariesRefs,
            bool localKanjisRefs,
            bool localGrammarsRefs,
          })
        > {
  $$LocalLessonsTableTableManager(_$AppDatabase db, $LocalLessonsTable table)
    : super(
        TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$LocalLessonsTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$LocalLessonsTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$LocalLessonsTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback:
              ({
                Value<String> id = const Value.absent(),
                Value<String> moduleId = const Value.absent(),
                Value<String> name = const Value.absent(),
                Value<int> xpReward = const Value.absent(),
                Value<int> sortOrder = const Value.absent(),
                Value<int> rowid = const Value.absent(),
              }) => LocalLessonsCompanion(
                id: id,
                moduleId: moduleId,
                name: name,
                xpReward: xpReward,
                sortOrder: sortOrder,
                rowid: rowid,
              ),
          createCompanionCallback:
              ({
                required String id,
                required String moduleId,
                required String name,
                required int xpReward,
                required int sortOrder,
                Value<int> rowid = const Value.absent(),
              }) => LocalLessonsCompanion.insert(
                id: id,
                moduleId: moduleId,
                name: name,
                xpReward: xpReward,
                sortOrder: sortOrder,
                rowid: rowid,
              ),
          withReferenceMapper: (p0) => p0
              .map(
                (e) => (
                  e.readTable(table),
                  $$LocalLessonsTableReferences(db, table, e),
                ),
              )
              .toList(),
          prefetchHooksCallback:
              ({
                localVocabulariesRefs = false,
                localKanjisRefs = false,
                localGrammarsRefs = false,
              }) {
                return PrefetchHooks(
                  db: db,
                  explicitlyWatchedTables: [
                    if (localVocabulariesRefs) db.localVocabularies,
                    if (localKanjisRefs) db.localKanjis,
                    if (localGrammarsRefs) db.localGrammars,
                  ],
                  addJoins: null,
                  getPrefetchedDataCallback: (items) async {
                    return [
                      if (localVocabulariesRefs)
                        await $_getPrefetchedData<
                          LocalLesson,
                          $LocalLessonsTable,
                          LocalVocabulary
                        >(
                          currentTable: table,
                          referencedTable: $$LocalLessonsTableReferences
                              ._localVocabulariesRefsTable(db),
                          managerFromTypedResult: (p0) =>
                              $$LocalLessonsTableReferences(
                                db,
                                table,
                                p0,
                              ).localVocabulariesRefs,
                          referencedItemsForCurrentItem:
                              (item, referencedItems) => referencedItems.where(
                                (e) => e.lessonId == item.id,
                              ),
                          typedResults: items,
                        ),
                      if (localKanjisRefs)
                        await $_getPrefetchedData<
                          LocalLesson,
                          $LocalLessonsTable,
                          LocalKanji
                        >(
                          currentTable: table,
                          referencedTable: $$LocalLessonsTableReferences
                              ._localKanjisRefsTable(db),
                          managerFromTypedResult: (p0) =>
                              $$LocalLessonsTableReferences(
                                db,
                                table,
                                p0,
                              ).localKanjisRefs,
                          referencedItemsForCurrentItem:
                              (item, referencedItems) => referencedItems.where(
                                (e) => e.lessonId == item.id,
                              ),
                          typedResults: items,
                        ),
                      if (localGrammarsRefs)
                        await $_getPrefetchedData<
                          LocalLesson,
                          $LocalLessonsTable,
                          LocalGrammar
                        >(
                          currentTable: table,
                          referencedTable: $$LocalLessonsTableReferences
                              ._localGrammarsRefsTable(db),
                          managerFromTypedResult: (p0) =>
                              $$LocalLessonsTableReferences(
                                db,
                                table,
                                p0,
                              ).localGrammarsRefs,
                          referencedItemsForCurrentItem:
                              (item, referencedItems) => referencedItems.where(
                                (e) => e.lessonId == item.id,
                              ),
                          typedResults: items,
                        ),
                    ];
                  },
                );
              },
        ),
      );
}

typedef $$LocalLessonsTableProcessedTableManager =
    ProcessedTableManager<
      _$AppDatabase,
      $LocalLessonsTable,
      LocalLesson,
      $$LocalLessonsTableFilterComposer,
      $$LocalLessonsTableOrderingComposer,
      $$LocalLessonsTableAnnotationComposer,
      $$LocalLessonsTableCreateCompanionBuilder,
      $$LocalLessonsTableUpdateCompanionBuilder,
      (LocalLesson, $$LocalLessonsTableReferences),
      LocalLesson,
      PrefetchHooks Function({
        bool localVocabulariesRefs,
        bool localKanjisRefs,
        bool localGrammarsRefs,
      })
    >;
typedef $$LocalVocabulariesTableCreateCompanionBuilder =
    LocalVocabulariesCompanion Function({
      required String id,
      required String lessonId,
      required String word,
      required String meaning,
      required String reading,
      Value<int> rowid,
    });
typedef $$LocalVocabulariesTableUpdateCompanionBuilder =
    LocalVocabulariesCompanion Function({
      Value<String> id,
      Value<String> lessonId,
      Value<String> word,
      Value<String> meaning,
      Value<String> reading,
      Value<int> rowid,
    });

final class $$LocalVocabulariesTableReferences
    extends
        BaseReferences<
          _$AppDatabase,
          $LocalVocabulariesTable,
          LocalVocabulary
        > {
  $$LocalVocabulariesTableReferences(
    super.$_db,
    super.$_table,
    super.$_typedResult,
  );

  static $LocalLessonsTable _lessonIdTable(_$AppDatabase db) => db.localLessons
      .createAlias('local_vocabularies__lesson_id__local_lessons__id');

  $$LocalLessonsTableProcessedTableManager get lessonId {
    final $_column = $_itemColumn<String>('lesson_id')!;

    final manager = $$LocalLessonsTableTableManager(
      $_db,
      $_db.localLessons,
    ).filter((f) => f.id.sqlEquals($_column));
    final item = $_typedResult.readTableOrNull(_lessonIdTable($_db));
    if (item == null) return manager;
    return ProcessedTableManager(
      manager.$state.copyWith(prefetchedData: [item]),
    );
  }
}

class $$LocalVocabulariesTableFilterComposer
    extends Composer<_$AppDatabase, $LocalVocabulariesTable> {
  $$LocalVocabulariesTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<String> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get word => $composableBuilder(
    column: $table.word,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get meaning => $composableBuilder(
    column: $table.meaning,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get reading => $composableBuilder(
    column: $table.reading,
    builder: (column) => ColumnFilters(column),
  );

  $$LocalLessonsTableFilterComposer get lessonId {
    final $$LocalLessonsTableFilterComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.lessonId,
      referencedTable: $db.localLessons,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$LocalLessonsTableFilterComposer(
            $db: $db,
            $table: $db.localLessons,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }
}

class $$LocalVocabulariesTableOrderingComposer
    extends Composer<_$AppDatabase, $LocalVocabulariesTable> {
  $$LocalVocabulariesTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<String> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get word => $composableBuilder(
    column: $table.word,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get meaning => $composableBuilder(
    column: $table.meaning,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get reading => $composableBuilder(
    column: $table.reading,
    builder: (column) => ColumnOrderings(column),
  );

  $$LocalLessonsTableOrderingComposer get lessonId {
    final $$LocalLessonsTableOrderingComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.lessonId,
      referencedTable: $db.localLessons,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$LocalLessonsTableOrderingComposer(
            $db: $db,
            $table: $db.localLessons,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }
}

class $$LocalVocabulariesTableAnnotationComposer
    extends Composer<_$AppDatabase, $LocalVocabulariesTable> {
  $$LocalVocabulariesTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<String> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<String> get word =>
      $composableBuilder(column: $table.word, builder: (column) => column);

  GeneratedColumn<String> get meaning =>
      $composableBuilder(column: $table.meaning, builder: (column) => column);

  GeneratedColumn<String> get reading =>
      $composableBuilder(column: $table.reading, builder: (column) => column);

  $$LocalLessonsTableAnnotationComposer get lessonId {
    final $$LocalLessonsTableAnnotationComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.lessonId,
      referencedTable: $db.localLessons,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$LocalLessonsTableAnnotationComposer(
            $db: $db,
            $table: $db.localLessons,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }
}

class $$LocalVocabulariesTableTableManager
    extends
        RootTableManager<
          _$AppDatabase,
          $LocalVocabulariesTable,
          LocalVocabulary,
          $$LocalVocabulariesTableFilterComposer,
          $$LocalVocabulariesTableOrderingComposer,
          $$LocalVocabulariesTableAnnotationComposer,
          $$LocalVocabulariesTableCreateCompanionBuilder,
          $$LocalVocabulariesTableUpdateCompanionBuilder,
          (LocalVocabulary, $$LocalVocabulariesTableReferences),
          LocalVocabulary,
          PrefetchHooks Function({bool lessonId})
        > {
  $$LocalVocabulariesTableTableManager(
    _$AppDatabase db,
    $LocalVocabulariesTable table,
  ) : super(
        TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$LocalVocabulariesTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$LocalVocabulariesTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$LocalVocabulariesTableAnnotationComposer(
                $db: db,
                $table: table,
              ),
          updateCompanionCallback:
              ({
                Value<String> id = const Value.absent(),
                Value<String> lessonId = const Value.absent(),
                Value<String> word = const Value.absent(),
                Value<String> meaning = const Value.absent(),
                Value<String> reading = const Value.absent(),
                Value<int> rowid = const Value.absent(),
              }) => LocalVocabulariesCompanion(
                id: id,
                lessonId: lessonId,
                word: word,
                meaning: meaning,
                reading: reading,
                rowid: rowid,
              ),
          createCompanionCallback:
              ({
                required String id,
                required String lessonId,
                required String word,
                required String meaning,
                required String reading,
                Value<int> rowid = const Value.absent(),
              }) => LocalVocabulariesCompanion.insert(
                id: id,
                lessonId: lessonId,
                word: word,
                meaning: meaning,
                reading: reading,
                rowid: rowid,
              ),
          withReferenceMapper: (p0) => p0
              .map(
                (e) => (
                  e.readTable(table),
                  $$LocalVocabulariesTableReferences(db, table, e),
                ),
              )
              .toList(),
          prefetchHooksCallback: ({lessonId = false}) {
            return PrefetchHooks(
              db: db,
              explicitlyWatchedTables: [],
              addJoins:
                  <
                    T extends TableManagerState<
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic
                    >
                  >(state) {
                    if (lessonId) {
                      state = state.withJoin(
                        currentTable: table,
                        currentColumn: table.lessonId,
                        referencedTable: $$LocalVocabulariesTableReferences
                            ._lessonIdTable(db),
                        referencedColumn: $$LocalVocabulariesTableReferences
                            ._lessonIdTable(db)
                            .id,
                      ) as T;
                    }

                    return state;
                  },
              getPrefetchedDataCallback: (items) async {
                return [];
              },
            );
          },
        ),
      );
}

typedef $$LocalVocabulariesTableProcessedTableManager =
    ProcessedTableManager<
      _$AppDatabase,
      $LocalVocabulariesTable,
      LocalVocabulary,
      $$LocalVocabulariesTableFilterComposer,
      $$LocalVocabulariesTableOrderingComposer,
      $$LocalVocabulariesTableAnnotationComposer,
      $$LocalVocabulariesTableCreateCompanionBuilder,
      $$LocalVocabulariesTableUpdateCompanionBuilder,
      (LocalVocabulary, $$LocalVocabulariesTableReferences),
      LocalVocabulary,
      PrefetchHooks Function({bool lessonId})
    >;
typedef $$LocalKanjisTableCreateCompanionBuilder =
    LocalKanjisCompanion Function({
      required String id,
      required String lessonId,
      required String character,
      required String meaning,
      Value<String?> onyomi,
      Value<String?> kunyomi,
      Value<int> rowid,
    });
typedef $$LocalKanjisTableUpdateCompanionBuilder =
    LocalKanjisCompanion Function({
      Value<String> id,
      Value<String> lessonId,
      Value<String> character,
      Value<String> meaning,
      Value<String?> onyomi,
      Value<String?> kunyomi,
      Value<int> rowid,
    });

final class $$LocalKanjisTableReferences
    extends BaseReferences<_$AppDatabase, $LocalKanjisTable, LocalKanji> {
  $$LocalKanjisTableReferences(super.$_db, super.$_table, super.$_typedResult);

  static $LocalLessonsTable _lessonIdTable(_$AppDatabase db) =>
      db.localLessons.createAlias('local_kanjis__lesson_id__local_lessons__id');

  $$LocalLessonsTableProcessedTableManager get lessonId {
    final $_column = $_itemColumn<String>('lesson_id')!;

    final manager = $$LocalLessonsTableTableManager(
      $_db,
      $_db.localLessons,
    ).filter((f) => f.id.sqlEquals($_column));
    final item = $_typedResult.readTableOrNull(_lessonIdTable($_db));
    if (item == null) return manager;
    return ProcessedTableManager(
      manager.$state.copyWith(prefetchedData: [item]),
    );
  }
}

class $$LocalKanjisTableFilterComposer
    extends Composer<_$AppDatabase, $LocalKanjisTable> {
  $$LocalKanjisTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<String> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get character => $composableBuilder(
    column: $table.character,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get meaning => $composableBuilder(
    column: $table.meaning,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get onyomi => $composableBuilder(
    column: $table.onyomi,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get kunyomi => $composableBuilder(
    column: $table.kunyomi,
    builder: (column) => ColumnFilters(column),
  );

  $$LocalLessonsTableFilterComposer get lessonId {
    final $$LocalLessonsTableFilterComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.lessonId,
      referencedTable: $db.localLessons,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$LocalLessonsTableFilterComposer(
            $db: $db,
            $table: $db.localLessons,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }
}

class $$LocalKanjisTableOrderingComposer
    extends Composer<_$AppDatabase, $LocalKanjisTable> {
  $$LocalKanjisTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<String> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get character => $composableBuilder(
    column: $table.character,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get meaning => $composableBuilder(
    column: $table.meaning,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get onyomi => $composableBuilder(
    column: $table.onyomi,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get kunyomi => $composableBuilder(
    column: $table.kunyomi,
    builder: (column) => ColumnOrderings(column),
  );

  $$LocalLessonsTableOrderingComposer get lessonId {
    final $$LocalLessonsTableOrderingComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.lessonId,
      referencedTable: $db.localLessons,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$LocalLessonsTableOrderingComposer(
            $db: $db,
            $table: $db.localLessons,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }
}

class $$LocalKanjisTableAnnotationComposer
    extends Composer<_$AppDatabase, $LocalKanjisTable> {
  $$LocalKanjisTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<String> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<String> get character =>
      $composableBuilder(column: $table.character, builder: (column) => column);

  GeneratedColumn<String> get meaning =>
      $composableBuilder(column: $table.meaning, builder: (column) => column);

  GeneratedColumn<String> get onyomi =>
      $composableBuilder(column: $table.onyomi, builder: (column) => column);

  GeneratedColumn<String> get kunyomi =>
      $composableBuilder(column: $table.kunyomi, builder: (column) => column);

  $$LocalLessonsTableAnnotationComposer get lessonId {
    final $$LocalLessonsTableAnnotationComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.lessonId,
      referencedTable: $db.localLessons,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$LocalLessonsTableAnnotationComposer(
            $db: $db,
            $table: $db.localLessons,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }
}

class $$LocalKanjisTableTableManager
    extends
        RootTableManager<
          _$AppDatabase,
          $LocalKanjisTable,
          LocalKanji,
          $$LocalKanjisTableFilterComposer,
          $$LocalKanjisTableOrderingComposer,
          $$LocalKanjisTableAnnotationComposer,
          $$LocalKanjisTableCreateCompanionBuilder,
          $$LocalKanjisTableUpdateCompanionBuilder,
          (LocalKanji, $$LocalKanjisTableReferences),
          LocalKanji,
          PrefetchHooks Function({bool lessonId})
        > {
  $$LocalKanjisTableTableManager(_$AppDatabase db, $LocalKanjisTable table)
    : super(
        TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$LocalKanjisTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$LocalKanjisTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$LocalKanjisTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback:
              ({
                Value<String> id = const Value.absent(),
                Value<String> lessonId = const Value.absent(),
                Value<String> character = const Value.absent(),
                Value<String> meaning = const Value.absent(),
                Value<String?> onyomi = const Value.absent(),
                Value<String?> kunyomi = const Value.absent(),
                Value<int> rowid = const Value.absent(),
              }) => LocalKanjisCompanion(
                id: id,
                lessonId: lessonId,
                character: character,
                meaning: meaning,
                onyomi: onyomi,
                kunyomi: kunyomi,
                rowid: rowid,
              ),
          createCompanionCallback:
              ({
                required String id,
                required String lessonId,
                required String character,
                required String meaning,
                Value<String?> onyomi = const Value.absent(),
                Value<String?> kunyomi = const Value.absent(),
                Value<int> rowid = const Value.absent(),
              }) => LocalKanjisCompanion.insert(
                id: id,
                lessonId: lessonId,
                character: character,
                meaning: meaning,
                onyomi: onyomi,
                kunyomi: kunyomi,
                rowid: rowid,
              ),
          withReferenceMapper: (p0) => p0
              .map(
                (e) => (
                  e.readTable(table),
                  $$LocalKanjisTableReferences(db, table, e),
                ),
              )
              .toList(),
          prefetchHooksCallback: ({lessonId = false}) {
            return PrefetchHooks(
              db: db,
              explicitlyWatchedTables: [],
              addJoins:
                  <
                    T extends TableManagerState<
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic
                    >
                  >(state) {
                    if (lessonId) {
                      state = state.withJoin(
                        currentTable: table,
                        currentColumn: table.lessonId,
                        referencedTable: $$LocalKanjisTableReferences
                            ._lessonIdTable(db),
                        referencedColumn: $$LocalKanjisTableReferences
                            ._lessonIdTable(db)
                            .id,
                      ) as T;
                    }

                    return state;
                  },
              getPrefetchedDataCallback: (items) async {
                return [];
              },
            );
          },
        ),
      );
}

typedef $$LocalKanjisTableProcessedTableManager =
    ProcessedTableManager<
      _$AppDatabase,
      $LocalKanjisTable,
      LocalKanji,
      $$LocalKanjisTableFilterComposer,
      $$LocalKanjisTableOrderingComposer,
      $$LocalKanjisTableAnnotationComposer,
      $$LocalKanjisTableCreateCompanionBuilder,
      $$LocalKanjisTableUpdateCompanionBuilder,
      (LocalKanji, $$LocalKanjisTableReferences),
      LocalKanji,
      PrefetchHooks Function({bool lessonId})
    >;
typedef $$LocalGrammarsTableCreateCompanionBuilder =
    LocalGrammarsCompanion Function({
      required String id,
      required String lessonId,
      required String pattern,
      required String meaning,
      Value<String?> usage,
      Value<int> rowid,
    });
typedef $$LocalGrammarsTableUpdateCompanionBuilder =
    LocalGrammarsCompanion Function({
      Value<String> id,
      Value<String> lessonId,
      Value<String> pattern,
      Value<String> meaning,
      Value<String?> usage,
      Value<int> rowid,
    });

final class $$LocalGrammarsTableReferences
    extends BaseReferences<_$AppDatabase, $LocalGrammarsTable, LocalGrammar> {
  $$LocalGrammarsTableReferences(
    super.$_db,
    super.$_table,
    super.$_typedResult,
  );

  static $LocalLessonsTable _lessonIdTable(_$AppDatabase db) => db.localLessons
      .createAlias('local_grammars__lesson_id__local_lessons__id');

  $$LocalLessonsTableProcessedTableManager get lessonId {
    final $_column = $_itemColumn<String>('lesson_id')!;

    final manager = $$LocalLessonsTableTableManager(
      $_db,
      $_db.localLessons,
    ).filter((f) => f.id.sqlEquals($_column));
    final item = $_typedResult.readTableOrNull(_lessonIdTable($_db));
    if (item == null) return manager;
    return ProcessedTableManager(
      manager.$state.copyWith(prefetchedData: [item]),
    );
  }
}

class $$LocalGrammarsTableFilterComposer
    extends Composer<_$AppDatabase, $LocalGrammarsTable> {
  $$LocalGrammarsTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<String> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get pattern => $composableBuilder(
    column: $table.pattern,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get meaning => $composableBuilder(
    column: $table.meaning,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get usage => $composableBuilder(
    column: $table.usage,
    builder: (column) => ColumnFilters(column),
  );

  $$LocalLessonsTableFilterComposer get lessonId {
    final $$LocalLessonsTableFilterComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.lessonId,
      referencedTable: $db.localLessons,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$LocalLessonsTableFilterComposer(
            $db: $db,
            $table: $db.localLessons,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }
}

class $$LocalGrammarsTableOrderingComposer
    extends Composer<_$AppDatabase, $LocalGrammarsTable> {
  $$LocalGrammarsTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<String> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get pattern => $composableBuilder(
    column: $table.pattern,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get meaning => $composableBuilder(
    column: $table.meaning,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get usage => $composableBuilder(
    column: $table.usage,
    builder: (column) => ColumnOrderings(column),
  );

  $$LocalLessonsTableOrderingComposer get lessonId {
    final $$LocalLessonsTableOrderingComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.lessonId,
      referencedTable: $db.localLessons,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$LocalLessonsTableOrderingComposer(
            $db: $db,
            $table: $db.localLessons,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }
}

class $$LocalGrammarsTableAnnotationComposer
    extends Composer<_$AppDatabase, $LocalGrammarsTable> {
  $$LocalGrammarsTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<String> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<String> get pattern =>
      $composableBuilder(column: $table.pattern, builder: (column) => column);

  GeneratedColumn<String> get meaning =>
      $composableBuilder(column: $table.meaning, builder: (column) => column);

  GeneratedColumn<String> get usage =>
      $composableBuilder(column: $table.usage, builder: (column) => column);

  $$LocalLessonsTableAnnotationComposer get lessonId {
    final $$LocalLessonsTableAnnotationComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.lessonId,
      referencedTable: $db.localLessons,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$LocalLessonsTableAnnotationComposer(
            $db: $db,
            $table: $db.localLessons,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }
}

class $$LocalGrammarsTableTableManager
    extends
        RootTableManager<
          _$AppDatabase,
          $LocalGrammarsTable,
          LocalGrammar,
          $$LocalGrammarsTableFilterComposer,
          $$LocalGrammarsTableOrderingComposer,
          $$LocalGrammarsTableAnnotationComposer,
          $$LocalGrammarsTableCreateCompanionBuilder,
          $$LocalGrammarsTableUpdateCompanionBuilder,
          (LocalGrammar, $$LocalGrammarsTableReferences),
          LocalGrammar,
          PrefetchHooks Function({bool lessonId})
        > {
  $$LocalGrammarsTableTableManager(_$AppDatabase db, $LocalGrammarsTable table)
    : super(
        TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$LocalGrammarsTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$LocalGrammarsTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$LocalGrammarsTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback:
              ({
                Value<String> id = const Value.absent(),
                Value<String> lessonId = const Value.absent(),
                Value<String> pattern = const Value.absent(),
                Value<String> meaning = const Value.absent(),
                Value<String?> usage = const Value.absent(),
                Value<int> rowid = const Value.absent(),
              }) => LocalGrammarsCompanion(
                id: id,
                lessonId: lessonId,
                pattern: pattern,
                meaning: meaning,
                usage: usage,
                rowid: rowid,
              ),
          createCompanionCallback:
              ({
                required String id,
                required String lessonId,
                required String pattern,
                required String meaning,
                Value<String?> usage = const Value.absent(),
                Value<int> rowid = const Value.absent(),
              }) => LocalGrammarsCompanion.insert(
                id: id,
                lessonId: lessonId,
                pattern: pattern,
                meaning: meaning,
                usage: usage,
                rowid: rowid,
              ),
          withReferenceMapper: (p0) => p0
              .map(
                (e) => (
                  e.readTable(table),
                  $$LocalGrammarsTableReferences(db, table, e),
                ),
              )
              .toList(),
          prefetchHooksCallback: ({lessonId = false}) {
            return PrefetchHooks(
              db: db,
              explicitlyWatchedTables: [],
              addJoins:
                  <
                    T extends TableManagerState<
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic
                    >
                  >(state) {
                    if (lessonId) {
                      state = state.withJoin(
                        currentTable: table,
                        currentColumn: table.lessonId,
                        referencedTable: $$LocalGrammarsTableReferences
                            ._lessonIdTable(db),
                        referencedColumn: $$LocalGrammarsTableReferences
                            ._lessonIdTable(db)
                            .id,
                      ) as T;
                    }

                    return state;
                  },
              getPrefetchedDataCallback: (items) async {
                return [];
              },
            );
          },
        ),
      );
}

typedef $$LocalGrammarsTableProcessedTableManager =
    ProcessedTableManager<
      _$AppDatabase,
      $LocalGrammarsTable,
      LocalGrammar,
      $$LocalGrammarsTableFilterComposer,
      $$LocalGrammarsTableOrderingComposer,
      $$LocalGrammarsTableAnnotationComposer,
      $$LocalGrammarsTableCreateCompanionBuilder,
      $$LocalGrammarsTableUpdateCompanionBuilder,
      (LocalGrammar, $$LocalGrammarsTableReferences),
      LocalGrammar,
      PrefetchHooks Function({bool lessonId})
    >;

class $AppDatabaseManager {
  final _$AppDatabase _db;
  $AppDatabaseManager(this._db);
  $$LocalLessonsTableTableManager get localLessons =>
      $$LocalLessonsTableTableManager(_db, _db.localLessons);
  $$LocalVocabulariesTableTableManager get localVocabularies =>
      $$LocalVocabulariesTableTableManager(_db, _db.localVocabularies);
  $$LocalKanjisTableTableManager get localKanjis =>
      $$LocalKanjisTableTableManager(_db, _db.localKanjis);
  $$LocalGrammarsTableTableManager get localGrammars =>
      $$LocalGrammarsTableTableManager(_db, _db.localGrammars);
}

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(appDatabase)
final appDatabaseProvider = AppDatabaseProvider._();

final class AppDatabaseProvider
    extends $FunctionalProvider<AppDatabase, AppDatabase, AppDatabase>
    with $Provider<AppDatabase> {
  AppDatabaseProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'appDatabaseProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$appDatabaseHash();

  @$internal
  @override
  $ProviderElement<AppDatabase> $createElement($ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  AppDatabase create(Ref ref) {
    return appDatabase(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(AppDatabase value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<AppDatabase>(value),
    );
  }
}

String _$appDatabaseHash() => r'4db1c5efe1a73afafa926c6e91d12e49a68b1abc';
