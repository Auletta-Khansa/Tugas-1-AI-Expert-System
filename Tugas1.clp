; Nama : Auletta Khansa P
; NIM : 20/456359/TK/50489

; TUGAS 1 AI (Diagnosis Penyakit Anak)

(defrule Intro
    =>
    (printout t crlf "Apakah kamu ingin melakukan diagnosis penyakit? (Ya/Tidak)" crlf)
    (bind ?answer (read))
        (if (eq ?answer Ya)
            then (printout t crlf "Tulislah gejala apa saja yang dialami
            1. Demam tinggi
            2. Pilek batuk
            3. Nyeri badan
            4. Mata merah
            5. Sakit kepala
            6. Tubuh menggigil
            7. Nafsu makan berkurang
            8. Muncul tonjolan merah
            9. Mual
            10. Bising usus
            11. Muntah
            12. BAB intensif
            13. Tenggorokan merah
            14. Air liur berlebih" crlf) 
        )
        (if (eq ?answer Tidak)
            then (printout t crlf "Terima kasih" crlf)
        )
)

; Jenis Penyakit Anak
(defrule campak
    (demam tinggi)
    (pilek batuk)
    (mata merah)
    (nyeri badan)
    =>
    (assert (penyakit_campak))
    (printout t crlf "Anda terkena penyakit campak" crlf)
)

(defrule pegobatan_campak
    (penyakit_campak)
    =>
    (printout t crlf "Apakah anda ingin mengetahui saran pengobatan? (Ya/Tidak)" crlf)
    (bind ?answer (read))
        (if (eq ?answer Ya)
            then (printout t crlf "Saran pengobatan : 
            - Mengonsumsi air putih yang banyak
            - Istirahat yang cukup
            - Hindari sinar matahari
            - Minum obat penurun demam dan pereda nyeri" crlf)
        )
        (if (eq ?answer Tidak)
            then (printout t crlf "Terima kasih" crlf)
        )
)

(defrule DBD
    (demam tinggi)
    (sakit kepala)
    (nyeri badan)
    (tubuh menggigil)
    (nafsu makan_berkurang)
    =>
    (assert (penyakit_DBD))
    (printout t crlf "Anda terkena penyakit demam berdarah" crlf)
)

(defrule pegobatan_DBD
    (penyakit_DBD)
    =>
    (printout t crlf "Apakah anda ingin mengetahui saran pengobatan? (Ya/Tidak)" crlf)
    (bind ?answer (read))
        (if (eq ?answer Ya)
            then (printout t crlf "Saran pengobatan : 
            - Mengonsumsi air putih yang banyak
            - Istirahat yang cukup
            - Minum obat penurun panas
            - Menghindari konsumsi obat pereda nyeri" crlf)
        )
        (if (eq ?answer Tidak)
            then (printout t crlf "Terima kasih" crlf)
        )
)

(defrule cacar_air
    (demam tinggi)
    (sakit kepala)
    (muncul tonjolan_merah)
    (mual)
    =>
    (assert (penyakit_cacar_air))
    (printout t crlf "Anda terkena penyakit cacar air" crlf)
)

(defrule pengobatan_cacar_air
    (penyakit_cacar_air)
    =>
    (printout t crlf "Apakah anda ingin mengetahui saran pengobatan? (Ya/Tidak)" crlf)
    (bind ?answer (read))
        (if (eq ?answer Ya)
            then (printout t crlf "Saran pengobatan : 
            - Menggunakan krim/salep pendingin
            - Mandi dengan air dingin untuk meredakan gatal
            - Mengonsumsi banyak cairan (air putih, jus, dll)
            - Menggunakan pakaian panjang longgar berbahan lembut" crlf)
        )
        (if (eq ?answer Tidak)
            then (printout t crlf "Terima Kasih" crlf)
        )
)

(defrule diare
    (bising usus)
    (BAB intensif)
    (muntah)
    (mual)
    =>
    (assert (penyakit_diare))
    (printout t crlf "Anda terkena penyakit diare" crlf)
)

(defrule pengobatan_diare
    (penyakit_diare)
    =>
    (printout t crlf "Apakah anda ingin mengetahui saran pengobatan? (Ya/Tidak)" crlf)
    (bind ?answer (read))
        (if (eq ?answer Ya)
            then (printout t crlf "Saran pengobatan : 
            - Meningkatkan konsumsi cairan
            - Mengonsumsi makanan yang mengandung banyak air
            - Minum obat infeksi bateri diare" crlf)
        )
        (if (eq ?answer Tidak)
            then (printout t crlf "Terima Kasih" crlf)
        )
)

(defrule polio
    (demam tinggi)
    (tenggorokan merah)
    (sakit kepala)
    (nyeri badan)
    (muntah)
    (air liur berlebih)
    =>
    (assert (penyakit_polio))
    (printout t crlf "Anda terkena penyakit polio" crlf)
)

(defrule pengobatan_polio
    (penyakit_polio)
    =>
    (printout t crlf "Apakah anda ingin mengetahui saran pengobatan? (Ya/Tidak)" crlf)
    (bind ?answer (read))
        (if (eq ?answer Ya)
            then (printout t crlf "Saran pengobatan : 
            - Bedrest / tirah baring
            - Minum obat pereda nyeri
            - Minum obat antipasmodic (pelemas otot)
            - Minum antibiotik" crlf)
        )
        (if (eq ?answer Tidak)
            then (printout t crlf "Terima Kasih" crlf)
        )
)