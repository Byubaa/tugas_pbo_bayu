import 'nilai.dart';
import 'mahasiswa.dart';

void inputNilai(List<Nilai> daftarNilai) {
  print("---- INPUT NILAI MAHASISWA ----");
  for (var nilai in daftarNilai) {
    print("Mata Kuliah: ${nilai.mataKuliah.nama}, Nilai: ${nilai.nilai}");
  }
  print("----------------\n");
}

double hitungIPK(List<Nilai> daftarNilai) {
  double totalBobot = 0;
  int totalSKS = 0;

  for (var nilai in daftarNilai) {
    totalBobot += nilai.getBobot() * nilai.mataKuliah.sks;
    totalSKS += nilai.mataKuliah.sks;
  }

  return totalSKS > 0 ? totalBobot / totalSKS : 0.0;
}

void cetakTranskrip(Mahasiswa mahasiswa, List<Nilai> daftarNilai) {
  print("--- TRANSKRIP NILAI ---");
  print("Mahasiswa:");
  print("NIM: ${mahasiswa.nim}");
  print("Nama: ${mahasiswa.nama}");
  print("Semester: ${mahasiswa.semester}");
  print("\nDaftar Mata Kuliah dan Nilai:");
  double totalBobot = 0;
  int totalSKS = 0;

  for (var nilai in daftarNilai) {
    double bobot = nilai.getBobot();
    totalBobot += bobot * nilai.mataKuliah.sks;
    totalSKS += nilai.mataKuliah.sks;

    print("- ${nilai.mataKuliah.nama} (${nilai.mataKuliah.sks} SKS): ${nilai.nilai} (Bobot: $bobot)");
  }

  double ipk = totalSKS > 0 ? totalBobot / totalSKS : 0.0;
  print("\nIPK: ${ipk.toStringAsFixed(2)}");
  print("----------------------\n");
}
