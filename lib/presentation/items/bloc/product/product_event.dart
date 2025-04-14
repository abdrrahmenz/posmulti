part of 'product_bloc.dart';

@freezed
class ProductEvent with _$ProductEvent {
  const factory ProductEvent.started() = _Started;
  const factory ProductEvent.getProducts() = _GetProducts;
  const factory ProductEvent.getProductById(String id) = _GetProductById;
  const factory ProductEvent.addProduct(ProductModel product) = _AddProduct;
  //add product with image
  const factory ProductEvent.addProductWithImage(
      ProductModel product, XFile image) = _AddProductWithImage;
  const factory ProductEvent.editProduct(ProductModel product, int id) =
      _EditProduct;
  //edit product with image
  const factory ProductEvent.editProductWithImage(
      ProductModel product, XFile image, int id) = _EditProductWithImage;

  //search product
  const factory ProductEvent.searchProduct(String query) = _SearchProduct;

  //update stock
  const factory ProductEvent.updateStock(
    int stock,
    String type,
    String note,
    int id,
  ) = _UpdateStock;

  //getProductsByCategory
  const factory ProductEvent.getProductsByCategory(int categoryId) =
      _GetProductsByCategory;

      //getproductbybarcode
  const factory ProductEvent.getProductByBarcode(String barcode) = _GetProductByBarcode;
}
