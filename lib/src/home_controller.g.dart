// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_controller.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$greetingControllerHash() =>
    r'f34c16a330565d586265a9634e76b6b1cf33cac4';

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

abstract class _$GreetingController
    extends BuildlessAutoDisposeAsyncNotifier<String> {
  late final String namex;

  FutureOr<String> build({
    required String namex,
  });
}

/// See also [GreetingController].
@ProviderFor(GreetingController)
const greetingControllerProvider = GreetingControllerFamily();

/// See also [GreetingController].
class GreetingControllerFamily extends Family<AsyncValue<String>> {
  /// See also [GreetingController].
  const GreetingControllerFamily();

  /// See also [GreetingController].
  GreetingControllerProvider call({
    required String namex,
  }) {
    return GreetingControllerProvider(
      namex: namex,
    );
  }

  @override
  GreetingControllerProvider getProviderOverride(
    covariant GreetingControllerProvider provider,
  ) {
    return call(
      namex: provider.namex,
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
  String? get name => r'greetingControllerProvider';
}

/// See also [GreetingController].
class GreetingControllerProvider
    extends AutoDisposeAsyncNotifierProviderImpl<GreetingController, String> {
  /// See also [GreetingController].
  GreetingControllerProvider({
    required String namex,
  }) : this._internal(
          () => GreetingController()..namex = namex,
          from: greetingControllerProvider,
          name: r'greetingControllerProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$greetingControllerHash,
          dependencies: GreetingControllerFamily._dependencies,
          allTransitiveDependencies:
              GreetingControllerFamily._allTransitiveDependencies,
          namex: namex,
        );

  GreetingControllerProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.namex,
  }) : super.internal();

  final String namex;

  @override
  FutureOr<String> runNotifierBuild(
    covariant GreetingController notifier,
  ) {
    return notifier.build(
      namex: namex,
    );
  }

  @override
  Override overrideWith(GreetingController Function() create) {
    return ProviderOverride(
      origin: this,
      override: GreetingControllerProvider._internal(
        () => create()..namex = namex,
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        namex: namex,
      ),
    );
  }

  @override
  AutoDisposeAsyncNotifierProviderElement<GreetingController, String>
      createElement() {
    return _GreetingControllerProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is GreetingControllerProvider && other.namex == namex;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, namex.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin GreetingControllerRef on AutoDisposeAsyncNotifierProviderRef<String> {
  /// The parameter `namex` of this provider.
  String get namex;
}

class _GreetingControllerProviderElement
    extends AutoDisposeAsyncNotifierProviderElement<GreetingController, String>
    with GreetingControllerRef {
  _GreetingControllerProviderElement(super.provider);

  @override
  String get namex => (origin as GreetingControllerProvider).namex;
}

String _$getArticlesControllerHash() =>
    r'29d32fd5e9ab58137ef58e7c16e3b04c259e674f';

/// See also [GetArticlesController].
@ProviderFor(GetArticlesController)
final getArticlesControllerProvider =
    AsyncNotifierProvider<GetArticlesController, List?>.internal(
  GetArticlesController.new,
  name: r'getArticlesControllerProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$getArticlesControllerHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$GetArticlesController = AsyncNotifier<List?>;
String _$favouriteControllerHash() =>
    r'cc6d32684e110b2ac6dbe267119639d10bfed840';

/// See also [FavouriteController].
@ProviderFor(FavouriteController)
final favouriteControllerProvider =
    NotifierProvider<FavouriteController, List>.internal(
  FavouriteController.new,
  name: r'favouriteControllerProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$favouriteControllerHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$FavouriteController = Notifier<List>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
