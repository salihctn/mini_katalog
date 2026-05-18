import 'product_model.dart';


final List<ProductModel> mockProducts = [
  ProductModel(
    id: "1",
    title: "iPhone 15 Pro",
    description: "Titanyum tasarım, gelişmiş kamera sistemi ve A17 Pro işlemci ile sınırları zorlayın.",
    price: 999.0,
    imageUrl: "https://images.unsplash.com/photo-1695048133142-1a20484d2569?w=500",
  ),
  ProductModel(
    id: "2",
    title: "Macbook Pro 14\"",
    description: "M3 çip ile muazzam güç, uzun pil ömrü ve büyüleyici Liquid Retina XDR ekran.",
    price: 1599.0,
    imageUrl: "https://images.unsplash.com/photo-1517336714731-489689fd1ca8?w=500",
  ),
  ProductModel(
    id: "3",
    title: "iPad Air",
    description: "M2 çipli, taşınabilir ve ince tasarım. Not almak, çizim yapmak ve çalışmak için ideal.",
    price: 599.0,
    imageUrl: "https://images.unsplash.com/photo-1544244015-0df4b3ffc6b0?w=500",
  ),
  ProductModel(
    id: "4",
    title: "HomePod Mini",
    description: "Küçük boyutta şaşırtıcı derecede güçlü ses deneyimi ve akıllı ev asistanı.",
    price: 99.0,
    imageUrl: "https://images.unsplash.com/photo-1655481595737-a79e7592a4a4?q=80&w=500",
  ),
];
List<ProductModel> cartItems = [];