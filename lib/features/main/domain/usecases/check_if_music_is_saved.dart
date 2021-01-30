import 'package:earcrasher/core/error/failures.dart';
import 'package:dartz/dartz.dart';
import 'package:earcrasher/core/usecases/usecases.dart';
import 'package:earcrasher/core/utils/params.dart';
import 'package:earcrasher/features/main/domain/repositories/main_repository.dart';

class CheckIfMusicIsSaved implements UseCase<bool, MusicParams> {
  final MainRepository repository; // Instance of repository

  CheckIfMusicIsSaved(this.repository);

  @override
  Future<bool> callNoChoice(MusicParams params) async {
    return await repository.checkIfMusicIsSaved(params.path);
  }

  // No need to be implemented as a single type value of true/false is expected
  @override
  Future<Either<Failure, bool>> call(MusicParams params) {
    return null;
  }
}
