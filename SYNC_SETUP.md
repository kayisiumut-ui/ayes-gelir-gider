# AYES Gelir Gider Pro — Senkronizasyon hazırlığı

Android ve PC arasında güvenli senkronizasyon için Supabase Auth + Postgres kullanılacaktır.

## Kurulum
1. Kendi Supabase projenizi oluşturun.
2. SQL Editor'da `supabase/schema.sql` dosyasını çalıştırın.
3. Email ile giriş yöntemini etkinleştirin.
4. Proje URL'si ve **publishable** anahtarı uygulama yapılandırmasına eklenmelidir. **Secret/service_role anahtarını hiçbir zaman uygulamaya veya GitHub deposuna koymayın.**
5. Android ve PC'de aynı kullanıcı hesabıyla oturum açın.

## Durum
Veritabanı şeması hazırdır. Henüz canlı Supabase projesi bağlanmadığı için otomatik senkronizasyon **çalışmıyor**. Mevcut çevrimdışı kayıtların buluta güvenli aktarımı, çatışma çözümü, silme eşitlemesi, bağlantı kesintisi kuyruğu ve testler tamamlanmadan canlı kullanım önerilmez.

Not: GitHub deposu herkese açıksa finansal kayıt, şifre veya özel anahtar yüklemeyin.
