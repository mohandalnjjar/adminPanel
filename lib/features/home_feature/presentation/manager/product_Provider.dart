import 'package:admin_dash_board/features/home_feature/data/product_model.dart';
import 'package:flutter/material.dart';
import 'package:uuid/uuid.dart';

class ProductProvider with ChangeNotifier {
  final List<ProductModel> _productModelData = [
    ProductModel(
      image:
          'https://img.freepik.com/free-photo/view-3d-car_23-2151005382.jpg?w=1380',
      title: 'new smart car bmw ',
      price: 221,
      id: const Uuid().v4(),
    ),
    ProductModel(
      image:
          'https://img.freepik.com/premium-psd/isolated-realistic-matte-yellow-modern-elegant-super-sport-car-from-left-front-angle-view_16145-33756.jpg?w=1060',
      title: 'I phone 14 pro',
      price: 15,
      id: const Uuid().v4(),
    ),
    ProductModel(
      image:
          'https://img.freepik.com/premium-psd/laptop-psd-mockup-with-gradient-led-light_53876-138283.jpg?w=996',
      title: 'I phone 14 pro',
      price: 155,
      id: const Uuid().v4(),
    ),
    ProductModel(
      image:
          'https://img.freepik.com/free-photo/elegant-smartphone-composition_23-2149437082.jpg?w=1380',
      title: 'I phone 14 pro',
      price: 533,
      id: const Uuid().v4(),
    ),
    ProductModel(
      image:
          'https://img.freepik.com/free-psd/new-smartphone-mockup-floating_252953-7.jpg?t=st=1711803726~exp=1711807326~hmac=2c57af9f0cfb323f151e053015f3a2f922fd89ac8e24971a55a8d85fdb9ccb08&w=1060',
      title: 'I phone 14 pro',
      price: 1550,
      id: const Uuid().v4(),
    ),
    ProductModel(
      image:
          'https://img.freepik.com/free-psd/smartwatch-mock-up-with-grey-watchstrap_1104-110.jpg?w=740',
      title: 'I phone 14 pro',
      price: 215,
      id: const Uuid().v4(),
    ),
  ];

  List<ProductModel> searchQuery(
      {required String searchText, required List<ProductModel> passedList}) {
    List<ProductModel> searchList = passedList
        .where(
          (element) => element.title.contains(
            searchText.toLowerCase(),
          ),
        )
        .toList();
    return searchList;
  }

  List<ProductModel> get getProducts => _productModelData;
}
