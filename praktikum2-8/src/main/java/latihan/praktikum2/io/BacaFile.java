package latihan.praktikum2.io;

import java.io.*;
import java.sql.*;

public class BacaFile {
	public static void main(String[] x) throws Exception {
		Database db = new Database();
		Connection conn = db.getConnection();
		
		String sql = "insert into karyawan (nip,nama,alamat,umur) values (?,?,?,?)";
		PreparedStatement ps = conn.prepareStatement(sql);
		
		// 1. Buat variable bertipe FileReader
		String namafile = "src/main/resources/karyawan.csv";
		FileReader fr = new FileReader(namafile);
		
		// 2. Bungkus dalam BufferedReader
		//    supaya ada method readLine
		BufferedReader reader = new BufferedReader(fr);
		
		// 3. Looping, baca data, dan tampilkan
		String data = reader.readLine(); // header, ignore
		data = reader.readLine();
		while(data != null) {
			System.out.println("\n============================");
			String[] mahasiswa = data.split(",");
			System.out.println("NIP : " +mahasiswa[0]);
			System.out.println("Nama : " +mahasiswa[1]);
			System.out.println("Alamat : "+mahasiswa[2]);
			System.out.println("Umur : " +mahasiswa[4]);
			System.out.println("============================");
			data = reader.readLine();
			
			ps.setString(1,mahasiswa[0]);
			ps.setString(2,mahasiswa[1]);
			ps.setString(3,mahasiswa[2]);
			ps.setString(4,mahasiswa[3]);
			ps.executeUpdate();
		}
		
		// 4. Tutup file
		reader.close();
		conn.close();
	}
}