import 'mahasiswa.dart';
import 'matakuliah.dart';

class KRS {
  Mahasiswa mahasiswa;
  List<MataKuliah> daftarMataKuliah;

  KRS(this.mahasiswa, this.daftarMataKuliah);

  void cetakKRS() {
    print("-- KARTU RENCANA STUDI --");
    print("Mahasiswa:");
    print("NIM: ${mahasiswa.nim}");
    print("Nama: ${mahasiswa.nama}");
    print("Semester: ${mahasiswa.semester}");
    print("\nMata Kuliah yang Diambil:");
    for (var mk in daftarMataKuliah) {
      print("- ${mk.nama} (${mk.sks} SKS)");
    }
    print("-------------------\n");
  }
}
