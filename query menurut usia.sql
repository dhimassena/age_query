SELECT unit, 
		SUM(CASE WHEN YEAR(CURDATE())-YEAR(pgw.tanggal_lahir) <= 25 THEN 1 ELSE 0 END) jml_25,
        SUM(CASE WHEN YEAR(CURDATE())-YEAR(pgw.tanggal_lahir) >= 26 AND YEAR(CURDATE())-YEAR(tanggal_lahir) <= 30 THEN 1 ELSE 0 END) jml_26_30,
        SUM(CASE WHEN YEAR(CURDATE())-YEAR(pgw.tanggal_lahir) >= 31 AND YEAR(CURDATE())-YEAR(tanggal_lahir) <= 35 THEN 1 ELSE 0 END) jml_31_35,
        SUM(CASE WHEN YEAR(CURDATE())-YEAR(pgw.tanggal_lahir) >= 36 AND YEAR(CURDATE())-YEAR(tanggal_lahir) <= 40 THEN 1 ELSE 0 END) jml_36_40,
        SUM(CASE WHEN YEAR(CURDATE())-YEAR(pgw.tanggal_lahir) >= 41 AND YEAR(CURDATE())-YEAR(tanggal_lahir) <= 45 THEN 1 ELSE 0 END) jml_41_45,
        SUM(CASE WHEN YEAR(CURDATE())-YEAR(pgw.tanggal_lahir) >= 46 AND YEAR(CURDATE())-YEAR(tanggal_lahir) <= 50 THEN 1 ELSE 0 END) jml_46_50,
        SUM(CASE WHEN YEAR(CURDATE())-YEAR(pgw.tanggal_lahir) >= 51 AND YEAR(CURDATE())-YEAR(tanggal_lahir) <= 55 THEN 1 ELSE 0 END) jml_51_55,
        SUM(CASE WHEN YEAR(CURDATE())-YEAR(pgw.tanggal_lahir) > 55 THEN 1 ELSE 0 END) jml_55
		FROM tbl_pegawai pgw
		LEFT JOIN tbl_struktur_jabatan stjbt ON pgw.id_struktur_jabatan = stjbt.id_struktur_jabatan
		LEFT JOIN tbl_struktur_organisasi storg ON stjbt.id_struktur_organisasi = storg.id_struktur_organisasi 
		LEFT JOIN tbl_sub_unit subunit ON storg.id_sub_unit = subunit.id_sub_unit
		LEFT JOIN tbl_unit unit ON subunit.id_unit = unit.id_unit 
		WHERE pgw.id_kedudukan_pegawai NOT IN (9,10,11)
		GROUP BY unit
        ORDER BY unit

SELECT  COUNT(YEAR(CURDATE())-YEAR(pgw.tanggal_lahir)) usia
		FROM tbl_pegawai pgw
		LEFT JOIN tbl_struktur_jabatan stjbt ON pgw.id_struktur_jabatan = stjbt.id_struktur_jabatan
		LEFT JOIN tbl_struktur_organisasi storg ON stjbt.id_struktur_organisasi = storg.id_struktur_organisasi 
		LEFT JOIN tbl_sub_unit subunit ON storg.id_sub_unit = subunit.id_sub_unit
		LEFT JOIN tbl_unit unit ON subunit.id_unit = unit.id_unit 
		WHERE pgw.id_kedudukan_pegawai NOT IN (9,10,11)
		AND (YEAR(CURDATE())-YEAR(pgw.tanggal_lahir) <= 25)
		ORDER BY unit

SELECT  COUNT(YEAR(CURDATE())-YEAR(pgw.tanggal_lahir)) usia
		FROM tbl_pegawai pgw
		LEFT JOIN tbl_struktur_jabatan stjbt ON pgw.id_struktur_jabatan = stjbt.id_struktur_jabatan
		LEFT JOIN tbl_struktur_organisasi storg ON stjbt.id_struktur_organisasi = storg.id_struktur_organisasi 
		LEFT JOIN tbl_sub_unit subunit ON storg.id_sub_unit = subunit.id_sub_unit
		LEFT JOIN tbl_unit unit ON subunit.id_unit = unit.id_unit 
		WHERE pgw.id_kedudukan_pegawai NOT IN (9,10,11)
		AND (YEAR(CURDATE())-YEAR(pgw.tanggal_lahir) >= 26 AND YEAR(CURDATE())-YEAR(tanggal_lahir) <= 30)
		ORDER BY unit

SELECT  COUNT(YEAR(CURDATE())-YEAR(pgw.tanggal_lahir)) usia
		FROM tbl_pegawai pgw
		LEFT JOIN tbl_struktur_jabatan stjbt ON pgw.id_struktur_jabatan = stjbt.id_struktur_jabatan
		LEFT JOIN tbl_struktur_organisasi storg ON stjbt.id_struktur_organisasi = storg.id_struktur_organisasi 
		LEFT JOIN tbl_sub_unit subunit ON storg.id_sub_unit = subunit.id_sub_unit
		LEFT JOIN tbl_unit unit ON subunit.id_unit = unit.id_unit 
		WHERE pgw.id_kedudukan_pegawai NOT IN (9,10,11)
		AND (YEAR(CURDATE())-YEAR(pgw.tanggal_lahir) >= 31 AND YEAR(CURDATE())-YEAR(tanggal_lahir) <= 35)
		ORDER BY unit

SELECT  COUNT(YEAR(CURDATE())-YEAR(pgw.tanggal_lahir)) usia
		FROM tbl_pegawai pgw
		LEFT JOIN tbl_struktur_jabatan stjbt ON pgw.id_struktur_jabatan = stjbt.id_struktur_jabatan
		LEFT JOIN tbl_struktur_organisasi storg ON stjbt.id_struktur_organisasi = storg.id_struktur_organisasi 
		LEFT JOIN tbl_sub_unit subunit ON storg.id_sub_unit = subunit.id_sub_unit
		LEFT JOIN tbl_unit unit ON subunit.id_unit = unit.id_unit 
		WHERE pgw.id_kedudukan_pegawai NOT IN (9,10,11)
		AND (YEAR(CURDATE())-YEAR(pgw.tanggal_lahir) >= 36 AND YEAR(CURDATE())-YEAR(tanggal_lahir) <= 40)
		ORDER BY unit

SELECT  COUNT(YEAR(CURDATE())-YEAR(pgw.tanggal_lahir)) usia
		FROM tbl_pegawai pgw
		LEFT JOIN tbl_struktur_jabatan stjbt ON pgw.id_struktur_jabatan = stjbt.id_struktur_jabatan
		LEFT JOIN tbl_struktur_organisasi storg ON stjbt.id_struktur_organisasi = storg.id_struktur_organisasi 
		LEFT JOIN tbl_sub_unit subunit ON storg.id_sub_unit = subunit.id_sub_unit
		LEFT JOIN tbl_unit unit ON subunit.id_unit = unit.id_unit 
		WHERE pgw.id_kedudukan_pegawai NOT IN (9,10,11)
		AND (YEAR(CURDATE())-YEAR(pgw.tanggal_lahir) >= 41 AND YEAR(CURDATE())-YEAR(tanggal_lahir) <= 45)
		ORDER BY unit

SELECT  COUNT(YEAR(CURDATE())-YEAR(pgw.tanggal_lahir)) usia
		FROM tbl_pegawai pgw
		LEFT JOIN tbl_struktur_jabatan stjbt ON pgw.id_struktur_jabatan = stjbt.id_struktur_jabatan
		LEFT JOIN tbl_struktur_organisasi storg ON stjbt.id_struktur_organisasi = storg.id_struktur_organisasi 
		LEFT JOIN tbl_sub_unit subunit ON storg.id_sub_unit = subunit.id_sub_unit
		LEFT JOIN tbl_unit unit ON subunit.id_unit = unit.id_unit 
		WHERE pgw.id_kedudukan_pegawai NOT IN (9,10,11)
		AND (YEAR(CURDATE())-YEAR(pgw.tanggal_lahir) >= 46 AND YEAR(CURDATE())-YEAR(tanggal_lahir) <= 50)
		ORDER BY unit

SELECT  COUNT(YEAR(CURDATE())-YEAR(pgw.tanggal_lahir)) usia
		FROM tbl_pegawai pgw
		LEFT JOIN tbl_struktur_jabatan stjbt ON pgw.id_struktur_jabatan = stjbt.id_struktur_jabatan
		LEFT JOIN tbl_struktur_organisasi storg ON stjbt.id_struktur_organisasi = storg.id_struktur_organisasi 
		LEFT JOIN tbl_sub_unit subunit ON storg.id_sub_unit = subunit.id_sub_unit
		LEFT JOIN tbl_unit unit ON subunit.id_unit = unit.id_unit 
		WHERE pgw.id_kedudukan_pegawai NOT IN (9,10,11)
		AND (YEAR(CURDATE())-YEAR(pgw.tanggal_lahir) >= 51 AND YEAR(CURDATE())-YEAR(tanggal_lahir) <= 55)
		ORDER BY unit

SELECT  COUNT(YEAR(CURDATE())-YEAR(pgw.tanggal_lahir)) usia
		FROM tbl_pegawai pgw
		LEFT JOIN tbl_struktur_jabatan stjbt ON pgw.id_struktur_jabatan = stjbt.id_struktur_jabatan
		LEFT JOIN tbl_struktur_organisasi storg ON stjbt.id_struktur_organisasi = storg.id_struktur_organisasi 
		LEFT JOIN tbl_sub_unit subunit ON storg.id_sub_unit = subunit.id_sub_unit
		LEFT JOIN tbl_unit unit ON subunit.id_unit = unit.id_unit 
		WHERE pgw.id_kedudukan_pegawai NOT IN (9,10,11)
		AND (YEAR(CURDATE())-YEAR(pgw.tanggal_lahir) > 55)
		ORDER BY unit