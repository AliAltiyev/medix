abstract class Mapper<T, V> {
  T toModel(V model);
  V toEntity(T model);
}
