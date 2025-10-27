// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'interview_quiz_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$interviewQuizHash() => r'0177f87a4d396466d434ba1b479f8cda9ee56b1f';

/// Copied from Dart SDK
class _SystemHash {
  _SystemHash._();

  static int combine(int hash, int value) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + value);
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x0007ffff & hash) << 10));
    return hash ^ (hash >> 6);
  }

  static int finish(int hash) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x03ffffff & hash) << 3));
    // ignore: parameter_assignments
    hash = hash ^ (hash >> 11);
    return 0x1fffffff & (hash + ((0x00003fff & hash) << 15));
  }
}

abstract class _$InterviewQuiz
    extends BuildlessAutoDisposeAsyncNotifier<List<InterviewQuestion>> {
  late final String categoryId;
  late final int size;

  FutureOr<List<InterviewQuestion>> build(
    String categoryId,
    int size,
  );
}

/// See also [InterviewQuiz].
@ProviderFor(InterviewQuiz)
const interviewQuizProvider = InterviewQuizFamily();

/// See also [InterviewQuiz].
class InterviewQuizFamily extends Family<AsyncValue<List<InterviewQuestion>>> {
  /// See also [InterviewQuiz].
  const InterviewQuizFamily();

  /// See also [InterviewQuiz].
  InterviewQuizProvider call(
    String categoryId,
    int size,
  ) {
    return InterviewQuizProvider(
      categoryId,
      size,
    );
  }

  @override
  InterviewQuizProvider getProviderOverride(
    covariant InterviewQuizProvider provider,
  ) {
    return call(
      provider.categoryId,
      provider.size,
    );
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'interviewQuizProvider';
}

/// See also [InterviewQuiz].
class InterviewQuizProvider extends AutoDisposeAsyncNotifierProviderImpl<
    InterviewQuiz, List<InterviewQuestion>> {
  /// See also [InterviewQuiz].
  InterviewQuizProvider(
    String categoryId,
    int size,
  ) : this._internal(
          () => InterviewQuiz()
            ..categoryId = categoryId
            ..size = size,
          from: interviewQuizProvider,
          name: r'interviewQuizProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$interviewQuizHash,
          dependencies: InterviewQuizFamily._dependencies,
          allTransitiveDependencies:
              InterviewQuizFamily._allTransitiveDependencies,
          categoryId: categoryId,
          size: size,
        );

  InterviewQuizProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.categoryId,
    required this.size,
  }) : super.internal();

  final String categoryId;
  final int size;

  @override
  FutureOr<List<InterviewQuestion>> runNotifierBuild(
    covariant InterviewQuiz notifier,
  ) {
    return notifier.build(
      categoryId,
      size,
    );
  }

  @override
  Override overrideWith(InterviewQuiz Function() create) {
    return ProviderOverride(
      origin: this,
      override: InterviewQuizProvider._internal(
        () => create()
          ..categoryId = categoryId
          ..size = size,
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        categoryId: categoryId,
        size: size,
      ),
    );
  }

  @override
  AutoDisposeAsyncNotifierProviderElement<InterviewQuiz,
      List<InterviewQuestion>> createElement() {
    return _InterviewQuizProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is InterviewQuizProvider &&
        other.categoryId == categoryId &&
        other.size == size;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, categoryId.hashCode);
    hash = _SystemHash.combine(hash, size.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin InterviewQuizRef
    on AutoDisposeAsyncNotifierProviderRef<List<InterviewQuestion>> {
  /// The parameter `categoryId` of this provider.
  String get categoryId;

  /// The parameter `size` of this provider.
  int get size;
}

class _InterviewQuizProviderElement
    extends AutoDisposeAsyncNotifierProviderElement<InterviewQuiz,
        List<InterviewQuestion>> with InterviewQuizRef {
  _InterviewQuizProviderElement(super.provider);

  @override
  String get categoryId => (origin as InterviewQuizProvider).categoryId;
  @override
  int get size => (origin as InterviewQuizProvider).size;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
