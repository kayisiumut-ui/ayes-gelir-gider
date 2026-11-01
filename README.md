# AYES Gelir Gider Pro — Offline

AYES Güvenlik Sistemleri (iş yeri) ve Umut Kayısı (ev) için ayrı gelir/gider hesapları.

## Çalışma şekli
- Android uygulaması yerel HTML/JavaScript ile internetsiz çalışır.
- PC sürümü `web/index.html` dosyasını tarayıcıda açarak kullanılır.
- Veriler her cihazda ayrı saklanır; otomatik senkronizasyon yoktur.
- JSON yedekleme/geri yükleme ile cihazlar arasında manuel aktarım yapılabilir. Android WebView'de dosya indirme/seçme işlemleri ayrıca geliştirilmelidir.
- Supabase gerekli değildir; `supabase/` klasörü yalnızca kullanılmayan önceki taslaktır.

## APK
GitHub Actions > Build Android APK üzerinden derleme sonucunu kontrol edin. APK'nın başarıyla oluşturulması ve cihazda test edilmesi henüz doğrulanmamıştır.

## Yol haritası
Cari hesap, taksit, kategoriler, kasa/banka, raporlar ve gelişmiş yedekleme ileriki sürümlerde geliştirilecektir.
