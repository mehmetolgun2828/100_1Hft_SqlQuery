
--bu biryorum satırıdır.

-- bu da bir yorum.

--  microsoft sql server management studio 2018 
--- visual studio2022 (mor bir papyon simgesi var )


/*

VERİ TİPLERİ

1-) METİNSEL VERİ TİPLERİ 

NOT => UNICODE =UNIVERSAL CODE 

ASCII kod sistemi (american standart code for information) sadece latin alfabesine hizmet eden her bir harf yada karkterin eşsiz bir sayı ile gösterildiği bi metin standartıydı. Daha sonra Konsorsiyum tarafından sadece latin değil dünyadaki tüm alfabelere hizmet eden bir standart getirildi(UNICODE) ve dünyada kabul gördü, evrensel bir standat oluşmuş oldu. Unıcode evrensel kabul edilmekte ve konsorsiyum tarafıdan geliştirmeleri halrn devam etmektedir. ASCII ni ise desteği kesilmiştir.

* Char(n) => Unicode desteklemez.Char(n) şekilnde kullanılır.8000 karaktere kadar destek sağlar.Belirtilenden (n) karakterden az karakter kullanılsada n kadar yer kaplar.

* NChar(n) => Unicode destekler.nchar(n) şeklinde kullanlır. 4000 karaktere kadar destek sağlar. Veri girişi kadar yer kaplar.

* Varchar(n) =>  Unicode desteklemez.varchar(n) şeklinde kullanılır. 8000 karaktere  kadar destek sağlar. Belirtilenden (n) karakterden az kullanılsada n kadar yer kaplar.

*NVarchar(n) => Unicode destekler. nvarchar(n) şekilnde kullanılır.4000 karaktere kadar destek sağlar. Veri boyutu kadar yer kaplar.

* Text => Unicode desteklemez. 8000 karakterden fazlasına ihtiyaç duyulduğunda kullanılır. 2GB kadar veri depolayabilir.

* NText => Unicode destekler.8000 karakterden fazla için kullanılır. Veri boyutu kadar yer kaplar.


2 -) SAYISAL VERİ TİPLERİ

*Tam Sayı Veri Tipleri
*Ondalıklı Sayı Veri Tipleri


*Tam Sayı Veri Tipleri => Sağladıkları sayı aralıklarına göre degerlendirilir.

* tinyint => 0-256  aralığındaki tam sayılar için kullanılır. 1 byte büyüklüğüne sahip.

* smallint => -32.768 ve +32.768 aralığındaki sayılar için kullanılır. 2 byte büyüklük.

* int => -2 milyar ve + 2milyar aralığına sahip. 4 byte büyüklük.

* bigint => -2üssü63 ve +2üssü63 aralığına sahip. 8 byte büyüklüğüne sahip.


*Ondalıklı Sayı Veri Tipleri => Virgüldn sonra gelen karakter sayısı hassasiyeti arttıkça kapladığı alan artar.

* Decimal => 38 basamağa kadar destek olur. 

* Float => float(n) şekilnde kullanılır. n virgülden sonraki karakter sayısıdır.

** Bit => Boolean degerler için yani cevabı sadece dogru(true)/ yanlış(false) olan degerler için veriTabanı tarafında 0/1 olarak deger tutan veri tipidir. (bugün okul tatilMi, hava yağışlı mı yada bu kullanıcı aktif mi gibi net eet hayır diyebileceğimiz sorularda kullanılabilir.)

 3- PARASAL VERİ TİPLERİ

 * smallmoney => -214.000 ve +214.000 aralığındaki parasal degerleri tutubilir. Vrsayılan olarak virgülden sonra 4 karaktere kadar küsürat tutabilir. Küsürat yazılmadığı takdirde bu degerler 0000 olarak gelir. 4 byte kadar yer kaplar.

 * money => -2üssü64 ve +2üssü64 aralığıdaki degerleri tutar. Küsürat tutabilir ve olmaduğunda 0000 sayılarını virgülden sonraya ekler. 8 byte kadar yer kaplar.


 4- TARİHSEL VERİ TİPLERİ 

 * Date => Traihleri YYYY-AA-GG (yıl - ay -gün) şekilden tutar. 3 byte kadar yer kaplar.

 * Datetime => Tarihleri YYYY-AA-GG ve saat- dakika - saniye - salise şekilnde tutar.
 1 Ocak 1753 ve 31 Aralık 9999 arasındaki tarihleri tutabilir.

 * Datetime2 => Datetime den tek farkı aralık olarak 1 Ocak 0001 - 31 Aralık 9999 tutmasıdır. 

 * Time => Sadece saat-dakika-saniye-salise olarak zaman tutar. 



 --------------------------------------------------

  DATA DEFİNİTİON LANGUAGE - DDL komutları - VERİ TANIMLAMA DİLİ
  
  *database nesnelerini ilgilendiren komutlardır.

  CREATE => objeleri yaratmak istediğimizde kullanırız. (database,table,fonksiyon vb..)

  create table/database/function  isim

  ALTER => mevcuttaki database nesnelerini güncellemek için kullanırız.

  DROP => mevcuttaki bir nesneyi silmek için kullanılır. 

  drop database/table/function isim

  TRUNCATE => mevcut tablodaki verilerin hepsini silmek için kullanılır.

 Truncate table tabloAdı
 


    DATA MANUPULATION LANGUAGE - DML komutları -  VERİ İŞLEME DİLİ

	* DML koutları veri ölçeğinde çalışır.Veri ekleme/güncelleme/silme için

	INSERT => mevcuttaki tabloya yeni bir veri (satır) eklemek için kullanılır.

	insert into tabloAdı (kolon1,kolon2,...)  values (deger1,deger2,...)

	UPDATE => mevcuttaki veriyi güncellemek için kullanılr. Koşul belirtilmelidir aksi takdirde tüm tabloda aynı işlemi gerçekleştirir.

	Update tabloAdı set kolon1=deger3,kolon2=deger4,..  where (koşul !)

	DELETE => mevcuttaki veriyi siler ve muhakkak koşul yazlmalıdır yoksa tüm  veriyi siler.

	NOT !! => koşulsuz delete komutu vermekle truncate komutunu vermek aynı şey değildir. İkiside tablodaki tüm verileri siliyormuş gibi gözükebilie ama TRUNCATE Primaey key de sıfırlar yani ID yine baştan başlar fakat DElete komutunda ID kolonu kaldığı yerden başlar.


*/
create database Sirket

--personelbilgileri
--PersonelBilgileri => pascal case
--personelBilgileriTablosu=> camel case

create table [Personel Bilgileri]
(
Ad nvarchar(50) not null,
Soyad nvarchar(60) not null,
[Dogum Tarihi] date null,
Cinsiyet char(1) not null,
Departman nvarchar(60) not null,
Biyografi nvarchar(200)
)

insert into [Personel Bilgileri] (Ad,Soyad,[Dogum Tarihi],Cinsiyet,Departman) values ('Erva','Turan','1990-09-09','K','İnsan Kaynakları')
insert into [Personel Bilgileri] (Ad,Soyad,[Dogum Tarihi],Cinsiyet,Departman) values ('Erdi','Turan','1990-09-09','E','İnsan Kaynakları')
insert into [Personel Bilgileri] (Soyad,[Dogum Tarihi],Cinsiyet,Departman) values ('Yıldız','1990-09-09','E','Muhasebe')

select * from [Personel Bilgileri]

select Ad,Soyad from [Personel Bilgileri]


update [Personel Bilgileri] set Ad='Erva Ayse',[Dogum Tarihi]='1800-07-07' where Ad='Erva'


update [Personel Bilgileri] 
set Ad='Erva Ayse',[Dogum Tarihi]='1800-07-07'

delete from [Personel Bilgileri] where Soyad='Turan'



