abstract class Apiconsumer {
  Future<dynamic> get(
    String path, {
    Object? data,
    Map<String, dynamic>? queryparameters,
    bool isFormData = false,
  });
  Future<dynamic> post(
    String path, {
    Object? data,
    Map<String, dynamic>? queryparameters,
    bool isFormData = false,
  });
  Future<dynamic> delete(
    String path, {
    Object? data,
    Map<String, dynamic>? queryparameters,
    bool isFormData = false,
  });
  Future<dynamic> put(
    String path, {
    Object? data,
    Map<String, dynamic>? queryparameters,
    bool isFormData = false,
  });
}
