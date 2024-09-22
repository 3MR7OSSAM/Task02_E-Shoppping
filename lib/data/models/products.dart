class Product {
  final String id;
  final String name;
  final String imageUrl;
  final String category;
  final String store;
  final double price;

  Product({
    required this.id,
    required this.name,
    required this.imageUrl,
    required this.price,
    required this.category,
    required this.store,
  });
}
List<Product> products = [
  Product(
    id: "1",
    name: "Apple iPhone 13",
    imageUrl: "https://www.apple.com/newsroom/images/product/iphone/standard/Apple_iphone13_hero_09142021_inline.jpg.large.jpg",
    price: 799.00,
    category: "Electronics",
    store: "Apple Store",
  ),
  Product(
    id: "2",
    name: "Samsung Galaxy S21",
    imageUrl: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS9-_ZRzraRbvnsudDDH6jNI9QP1Nn48MMiEw&s",
    price: 699.99,
    category: "Electronics",
    store: "Samsung Store",
  ),
  Product(
    id: "3",
    name: "Sony WH-1000XM4 Headphones",
    imageUrl: "https://store.sony.co.nz/dw/image/v2/ABBC_PRD/on/demandware.static/-/Sites-sony-master-catalog/default/dw72e2d384/images/WH1000XM4S/WH1000XM4S.png",
    price: 348.00,
    category: "Electronics",
    store: "Sony Store",
  ),
  Product(
    id: "4",
    name: "Nike Air Max 270",
    imageUrl: "https://static.nike.com/a/images/c_limit,w_592,f_auto/t_product_v1/49a5d093-a467-443b-8b78-d754afc1898f/NIKE+AIR+MAX+270+%28GS%29.png",
    price: 150.00,
    category: "Fashion",
    store: "Nike Store",
  ),
  Product(
    id: "5",
    name: "Adidas Ultraboost 21",
    imageUrl: "https://www.runningxpert.com/media/catalog/product/cache/ed1b3c59211d8cf1c9523654e2efd698/a/d/adidas-ultra-boost_4_.jpg",
    price: 180.00,
    category: "Fashion",
    store: "Adidas Store",
  ),
  Product(
    id: "6",
    name: "Dell XPS 13 Laptop",
    imageUrl: "https://m.media-amazon.com/images/I/61uCHVcsAvL._AC_SL1105_.jpg",
    price: 999.99,
    category: "Electronics",
    store: "Dell Store",
  ),
  Product(
    id: "7",
    name: "Apple MacBook Air M1",
    imageUrl: "https://btech.com/media/catalog/product/h/c/hc9hgmr_1.jpeg?width=800&store=en&image-type=image",
    price: 999.00,
    category: "Electronics",
    store: "Apple Store",
  ),
  Product(
    id: "8",
    name: "Sony PlayStation 5",
    imageUrl: "https://2b.com.eg/media/catalog/product/cache/661473ab953cdcdf4c3b607144109b90/g/m/gm511-min_1.jpg",
    price: 499.99,
    category: "Electronics",
    store: "Sony Store",
  ),
  Product(
    id: "9",
    name: "Xbox Series X",
    imageUrl: "https://i5.walmartimages.com/seo/Microsoft-Xbox-Series-X-1TB-SSD-Gaming-Console_7731b7a3-2b2c-4cdd-b79a-56958896fc7c.7579fef99ebf8da06c02e6a2ecb62f4f.jpeg",
    price: 499.00,
    category: "Electronics",
    store: "Microsoft Store",
  ),
  Product(
    id: "10",
    name: "Canon EOS R5 Camera",
    imageUrl: "https://assets.videomaker.com/2020/09/Canon-EOS-R5-primary.jpg",
    price: 3899.00,
    category: "Electronics",
    store: "Canon Store",
  ),
  Product(
    id: "11",
    name: "Bose QuietComfort 35 II",
    imageUrl: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR8ghP7ofw9tqE8WUhK6bx2Dt-zFilaJfgezA&s",
    price: 299.00,
    category: "Electronics",
    store: "Bose Store",
  ),
  Product(
    id: "12",
    name: "Google Pixel 6",
    imageUrl: "https://m.media-amazon.com/images/I/71SGl7xwR-L._AC_SL1500_.jpg",
    price: 599.00,
    category: "Electronics",
    store: "Google Store",
  ),
  Product(
    id: "13",
    name: "LG OLED TV 55",
    imageUrl: "https://www.lg.com/content/dam/channel/wcms/eg_en/images/tvs/oled55cs3va_afu_efeg_eg_en_c/gallery/oled55cs3va-E-DZ1.jpg",
    price: 1299.00,
    category: "Electronics",
    store: "LG Store",
  ),
  Product(
    id: "14",
    name: "Fitbit Charge 5",
    imageUrl: "https://umbrella-egypt.com/storage/app/public/product/2024-08-01-66ab67292b071.png",
    price: 179.95,
    category: "Sports",
    store: "Fitbit Store",
  ),
  Product(
    id: "15",
    name: "GoPro HERO10 Black",
    imageUrl: "https://m.media-amazon.com/images/I/51mcDVUBaxL._AC_SL1200_.jpg",
    price: 399.99,
    category: "Electronics",
    store: "GoPro Store",
  ),
];
