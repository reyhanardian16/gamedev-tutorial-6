## Implementasi

**1. Tombol pada scene Game Over untuk kembali ke menu**
- Menambahkan LinkButton didalam VBox scene
- Memasang script untuk change scene dan mengembalikan nyawa seperti semula
- Menambahkan signal _on_pressed() pada script

**2. Fitur Select Stage pada menu**
- Membuat scene select_stage
- Menambahkan LinkButton pada container untuk level 1, level 2, dan kembali ke menu
- Memasang script dan signal untuk tiap LinkButton yang mengarah ke scene masing-masing

**3. Modifikasi GUI dengan mengganti indikator nyawa dari Label menjadi gambar serta menambahkan tombol menu**
- Menambahkan HBox pada MarginContainer
- Mengganti Label dengan tiga TextureRect
- Memasang script untuk menampilkan jumlah nyawa yang tersisa pada _ready()
- Menambah LinkButton ke HBox untuk tombol kembali ke menu
