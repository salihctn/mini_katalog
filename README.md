# E-Commerce Mini Katalog Uygulaması (Flutter)

Bu proje, Flutter platformu kullanılarak geliştirilmiş, minimalist tasarıma sahip bir dönemsel mobil/web katalog ve alışveriş uygulamasıdır. Proje, harici hiçbir üçüncü parti paket (Provider, Bloc, Riverpod vb.) kullanılmadan, tamamen Flutter'ın yerleşik mimarisi ve saf durum yönetimi (`StatefulWidget` & `setState`) teknikleriyle geliştirilmiştir.

## 📊 Flutter Sürüm Bilgisi
Hocanın incelemesi ve projenin değerlemesi için yerel geliştirme ortamına ait orijinal SDK versiyon bilgileri aşağıda sunulmuştur:
* **Framework Version:** Flutter 3.41.9
* **Channel:** stable
* **Dart Version:** Dart 3.11.5
* **DevTools Version:** DevTools 2.54.2
* **Platform:** Multi-platform (Chrome Web, Android, iOS)

## 🚀 Özellikler

Uygulama, proje kılavuzunda belirtilen günlük hedeflere ve arayüz isterlerine birebir sadık kalınarak 3 ana ekrandan oluşturulmuştur:

1. **Keşfet Ekranı (Discover Screen):**
   * Dinamik ürün arama çubuğu simülasyonu.
   * Kampanya/Reklam banner alanı (`NetworkImage`).
   * `GridView.builder` kullanılarak yan yana ikili yapıda dikey listelenen ürün kartları.
   * Sağ üst köşede sepet durumunu canlı takip eden kırmızı renkli bildirim baloncuğu (Cart Badge).

2. **Ürün Detay Ekranı (Product Detail Screen):**
   * Ana sayfadan seçilen ürüne ait verilerin güvenli bir şekilde taşınması ve büyük görselle listelenmesi.
   * iOS standartlarında pürüzsüz geri dönüş sağlayan `< Back` (`Navigator.pop`) mekanizması.
   * Ürün açıklamaları (Description) ve teknik özellikler (Specifications) tabloları.
   * Global sepet havuzuna veri yazan "Add to Cart" butonu ve kullanıcı bildirim sistemi (`SnackBar`).

3. **Sepet Ekranı (Cart Screen):**
   * **Koşullu Durum Kontrolü:** Eğer sepet boşsa kullanıcıyı karşılayan "Your cart is empty" arayüzü.
   * `ListView.builder` ile dikey hizada alt alta sıralanan sepet elemanları.
   * Sepetten dinamik ürün çıkartmayı sağlayan ve ekranı anında güncelleyen çöp kutusu (`setState`) fonksiyonu.
   * Satın alma simülasyonunu tamamlayan dinamik "Checkout" butonu.

## 🛠️ Teknik Altyapı ve Durum Yönetimi (State Management)

* **Dil / Framework:** Dart & Flutter Cross-Platform
* **Veri Yönetimi:** Ortak erişim mimarisi sağlamak amacıyla küresel kapsamda (Global Scope) tanımlanmış dinamik `cartItems` havuzu oluşturulmuştur.
* **Durum Yönetimi:** Harici kütüphane bağımlılıklarından kaçınılarak, sayfalar arası asenkron veri dönüşleri (`await Navigator.push`) takip edilmiş ve ana ekranların pürüzsüz tetiklenmesi için yerleşik `setState` metodu tercih edilmiştir.

## 💻 Projeyi Çalıştırma Adımları

Projeyi yerel ortamınızda sorunsuz bir şekilde ayağa kaldırmak, bağımlılıkları yüklemek ve test etmek için aşağıdaki adımları sırasıyla uygulayınız:

1. **Projeyi Bilgisayarınıza Klonlayın:**
Terminali açın ve GitHub üzerindeki kaynak kodları yerel dizine indirin:
`git clone https://github.com/salihctn/mini_katalog.git`

2. **Proje Klasörünün İçine Geçiş Yapın:**
`cd mini_katalog`

3. **Flutter Bağımlılıklarını Temizleyin ve Yeniden Çekin:**
Projenin paket kilitlerini açmak, önbelleği temizlemek ve gerekli tüm paketleri sıfırdan yüklemek için şu komutları çalıştırın:
`flutter clean`
`flutter pub get`

4. **Projeyi Google Chrome Üzerinde Çalıştırın:**
Hocanın kılavuzda belirttiği yerel web CORS hatalarını engellemek ve HTML işleyici motoruyla en stabil çıktıyı almak için uygulamayı şu parametrelerle başlatın:
`flutter run -d chrome --web-renderer html`

5. **Alternatif Olarak Mobil Cihazda/Simülatörde Çalıştırma (Opsiyonel):**
Bağlı bir Android/iOS cihazınız veya aktif bir emülatörünüz varsa şu komutla doğrudan mobil ortamda test edebilirsiniz:
`flutter run`