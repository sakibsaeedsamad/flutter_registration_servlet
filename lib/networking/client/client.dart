import 'dart:io';
import 'package:retrofit/retrofit.dart';
import 'package:dio/dio.dart';
import 'package:retrofit/http.dart' as http;

part 'client.g.dart';

const key =
    'Basic XtNYpaTinqHyeJ9bXsQmCutBNUrS6P7NmX+cuPTgUuy8cNKnG0UcmSuhuIfkYHWI2lA3qcGgQGxQlS2ZHW0MEVDa40k3nM7DSbW9C0GD1vNNoMK1yCoebP7DozwGsPloCHU4q28yeTJdp+pQCNFb9KO68ofIoGxiRhFUrJ6IbqhgMcyFkD5vPIV/fhayxSC+ITOEkrjhSlxGyuADKGzccIQ9lNSp07VMf0TodHoJq1IhnPGdEuyywN2Gt9fgCqke/IMKloVgzSFGe7eg7pvA+KNpH+o/BeI5qGBenBcJtipm1pUXtHyf3NXOD2H3UiUe6LJUrEKGiOQBtAUphQ+NrkBSecp1HH8lNuwVdf4UpZoMyDWbbSwzkCZPNjhuOnpfkcxfRCv/VCFQLPH6NNEvipXn25muszD3cWjJK15oGUgoGP0vR6gjnKlz52vHje+2QIz/sM2/jHa5emnITjvupZj6Tl82YuwmklNlpG0Q0DIx/x5+5p/ttBjb/i3HOcZ8UXjijSdPzmVvUIWcixQ1uPQekzTUd1pImJgKsnzYJaUaBFDTRfbIWKx5fJYSg0St+Ktm+IK2FI6oRNrM6iKV3Roa1xxo1qjCoa+X9PivA200ZS2z7VMPGVYuPlMToGvPvBNrVeKJ4Y7tpOmF7NpF2gOy6ioUeYmL6LvEbQr/WyM=';



// *** CLIENT *** //

@RestApi(baseUrl: "http://10.11.201.61:8084/RegistrationServeletApi/")
abstract class APIClient {
  factory APIClient(Dio dio, {String baseUrl}) = _APIClient;

  // User Inser

  @POST('UserApi')
  @http.Headers(<String, dynamic>{
    HttpHeaders.authorizationHeader: key,
  })
  Future<GetUserResponse> doUserInsert(
      @Field("requestCode") String requestCode,
      @Field("name") String name,
      @Field("mobile") String mobile,
      @Field("email") String email,
      @Field("dob") String dob,
      @Field("gender") String gender,
      @Field("address") String address,
      @Field("role") String role);

  // ===== Get User List===== //
  @POST('UserApi')
  @http.Headers(<String, dynamic>{
    HttpHeaders.authorizationHeader: key,
  })
  Future<GetUsersResponse> getUsers(
    @Field("requestCode") String requestCode,
  );

// ===== Get Gender List===== //
  @POST('UserApi')
  @http.Headers(<String, dynamic>{
    HttpHeaders.authorizationHeader: key,
  })
  Future<GetGenderResponse> getGenders(
    @Field("requestCode") String requestCode,
  );

  // ===== Get Role List===== //
  @POST('UserApi')
  @http.Headers(<String, dynamic>{
    HttpHeaders.authorizationHeader: key,
  })
  Future<GetRoleResponse> getRoles(
    @Field("requestCode") String requestCode,
  );
}
