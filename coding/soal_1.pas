program Harga_Barang;

uses crt;

var
    namaAnggota, hari, jawaban, produk1, produk2, produk3: string;
    harga1, harga2, harga3, total, diskon, totalAkhir: real;
    jumlah1, jumlah2, jumlah3: integer;
     Member: boolean;

begin
    clrscr;

    writeln('===== Program Kasir Supermarket =====');
    writeln('Masukkan Nama Anggota: ');
    readln(namaAnggota);
    
    writeln('Masukkan Hari: ');
    readln(hari);

    writeln('Masukkan Nama Produk ke-1: ');
    readln(produk1);
    writeln('Masukkan Harga Produk ke-1: ');
    readln(harga1);
    writeln('Masukkan Jumlah Produk ke-1: ');
    readln(jumlah1);

    writeln('Masukkan Nama Produk ke-2: ');
    readln(produk2);
    writeln('Masukkan Harga Produk ke-2: ');
    readln(harga2);
    writeln('Masukkan Jumlah Produk ke-2: ');
    readln(jumlah2);

    writeln('Masukkan Nama Produk ke-3: ');
    readln(produk3);
    writeln('Masukkan Harga Produk ke-3: ');
    readln(harga3);
    writeln('Masukkan Jumlah Produk ke-3: ');
    readln(jumlah3);

    total := (harga1 * jumlah1) + (harga2 * jumlah2) + (harga3 * jumlah3);

    diskon := 0;
    if (produk1 = 'Pasta gigi') or (produk1 = 'Sabun') then
        diskon := diskon + (harga1 * jumlah1 * 0.1); 
    if produk1 = 'Es krim' then
        diskon := diskon + (harga1 * jumlah1 * 0.05); 

    if (produk2 = 'Pasta gigi') or (produk2 = 'Sabun') then
        diskon := diskon + (harga2 * jumlah2 * 0.1); 
    if produk2 = 'Es krim' then
        diskon := diskon + (harga2 * jumlah2 * 0.05); 

    if (produk3 = 'Pasta gigi') or (produk3 = 'Sabun') then
        diskon := diskon + (harga3 * jumlah3 * 0.1); 
    if produk3 = 'Es krim' then
        diskon := diskon + (harga3 * jumlah3 * 0.05); 

    total := total - diskon;

    writeln('Apakah Anda Member? (ya/tidak): ');
    readln(jawaban);
    Member := (jawaban = 'ya');

    if Member then
        total := total * 0.9; 

    totalAkhir := total;

  
    writeln('Total Sebelum Diskon: Rp', ((harga1 * jumlah1) + (harga2 * jumlah2) + (harga3 * jumlah3)):0:2);
    writeln('Diskon: Rp', diskon:0:2);
    writeln('Pembayaran: Rp', totalAkhir:0:2);

    readln; 
end.
