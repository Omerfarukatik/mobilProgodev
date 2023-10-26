//ömerfarukatik.
import 'dart:io';

void main() {
  while (true) {
    String secim;
    do {
      print("1. Toplama\n2. Çıkarma\n3. Çarpma\n4. Bölme\nq. Çıkış\n");
      print("Lütfen yapmak istediğiniz işlemi seçiniz:");
      secim = stdin.readLineSync()!;
      if (secim != '1' &&
          secim != '2' &&
          secim != '3' &&
          secim != '4' &&
          secim != 'q') {
        print(
            "Hatalı seçim! Lütfen yukarıda belirtilen sayılardan birini girin.");
      }
    } while (secim != '1' &&
        secim != '2' &&
        secim != '3' &&
        secim != '4' &&
        secim != 'q');

    if (secim == 'q') {
      print("Programdan çıkılıyor...");
      break; // Döngüden çıkılıyor
    }

    double sayi1, sayi2;
    try {
      print("İlk sayıyı girin: ");
      sayi1 = double.parse(stdin.readLineSync()!);

      print("İkinci sayıyı girin: ");
      sayi2 = double.parse(stdin.readLineSync()!);
    } catch (e) {
      print("Hata: Geçersiz sayı girişi! Lütfen sayıları tekrar girin.");
      continue;
    }

    switch (secim) {
      case '1':
        topla(a: sayi1, b: sayi2);
        break;
      case '2':
        cikarma(ilkSayi: sayi1, ikinciSayi: sayi2);
        break;
      case '3':
        carpma(sayi1: sayi1, sayi2: sayi2);
        break;
      case '4':
        try {
          if (sayi2 == 0) {
            throw "tanımsız";
          }
          bolme(sayi1, sayi2);
        } catch (e) {
          print("Hata: ${e}");
        }
        break;
      default:
        print("Hatalı seçim! Lütfen tekrar deneyin.");
        break;
    }
    print("--------------------->");
  }
}

void topla({required double a, double? b}) {
  double sonuc = a + (b ?? 0);
  print("$a + ${b ?? 0} = ${sonuc}");
}

void cikarma({required double ikinciSayi, required double ilkSayi}) {
  double sonuc = ilkSayi - ikinciSayi;
  print("$ilkSayi - $ikinciSayi = ${sonuc}");
}

void carpma({required double sayi1, double sayi2 = 1}) {
  double sonuc = sayi1 * sayi2;
  print("$sayi1 * $sayi2 = ${sonuc}");
}

void bolme(double bolunen, double bolum) {
  double sonuc = bolunen / bolum;
  print("$bolunen / $bolum = ${sonuc}");
}
