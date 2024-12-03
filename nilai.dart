import 'matakuliah.dart';

class Nilai {
  MataKuliah mataKuliah;
  double nilai;

  Nilai(this.mataKuliah, this.nilai);

  double getBobot() {
    if (nilai >= 85) return 4.0;
    if (nilai >= 70) return 3.0;
    if (nilai >= 55) return 2.0;
    if (nilai >= 40) return 1.0;
    return 0.0;
  }
}
