import 'dart:io';

import 'package:dio/dio.dart';
import 'package:loja_virtual/models/cepaberto_address.dart';

const token = '0573bd48b48843378eaf2a48d572e41f';

class CepAbertoService {
  Future<CepAbertoAddress> getAddressFromCep(String cep) async {
    final cleanCep = cep.replaceAll('.', 'replace').replaceAll('-', '');
    final endpoint = "https://www.cepaberto.com/api/v3/cep?cep=$cleanCep";

    final Dio dio = Dio();
    dio.options.headers[HttpHeaders.authorizationHeader] = 'Token token=$token';

    try {
      final response = await dio.get<Map<String, dynamic>>(endpoint);

      if(response.data.isEmpty) {
        return Future.error('CEP inválido.');
      }

      final CepAbertoAddress address = CepAbertoAddress.fromMap(response.data);

      return address;
    } on DioError catch(e) {
      return Future.error('Erro ao buscar CEP.');
    }
  }
}