part of 'get_all_product_bloc.dart';

@immutable
abstract class GetAllProductState {}

class GetAllProductInitial extends GetAllProductState {}

class GetAllProductLoading extends GetAllProductState {}

class GetALlProductLoaded extends GetAllProductState {
  final List<ProductResponseModel> listProduct;
  GetALlProductLoaded({
    required this.listProduct,
  });
}
