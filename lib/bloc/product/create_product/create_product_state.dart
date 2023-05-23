part of 'create_product_bloc.dart';

@immutable
abstract class CreateProductState {}

class CreateProductInitial extends CreateProductState {}

class CreateProductLoading extends CreateProductState {}

class CreateProductLoaded extends CreateProductState {
  final ProductResponseModel productResponseModel;
  CreateProductLoaded({
    required this.productResponseModel,
  });
}
