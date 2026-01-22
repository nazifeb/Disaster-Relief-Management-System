create database AfetYardimSistemi

use AfetYardimSistemi 
go

CREATE TABLE Gonullu (
    GonulluID INT PRIMARY KEY IDENTITY(1,1),
    Ad NVARCHAR(50),
    Soyad NVARCHAR(50),
    Telefon NVARCHAR(20),
    Eposta NVARCHAR(100),
    Il NVARCHAR(50)
);

CREATE TABLE Bagisci (
    BagisciID INT PRIMARY KEY IDENTITY(1,1),
    Ad NVARCHAR(50),
    Soyad NVARCHAR(50),
    Eposta NVARCHAR(100),
    Telefon NVARCHAR(20),
    Il NVARCHAR(50)
);

CREATE TABLE Bagis (
    BagisID INT PRIMARY KEY IDENTITY(1,1),
    BagisciID INT FOREIGN KEY REFERENCES Bagisci(BagisciID),
    BagisTarihi DATE,
    BagisTuru NVARCHAR(50), 
    Miktar NVARCHAR(100) 
);

CREATE TABLE Yardim (
    YardimID INT PRIMARY KEY IDENTITY(1,1),
    GonulluID INT FOREIGN KEY REFERENCES Gonullu(GonulluID),
    YardimTuru NVARCHAR(50),
    Tarih DATE,
    Konum NVARCHAR(100)
);

CREATE TABLE Afetzede (
    AfetzedeID INT PRIMARY KEY IDENTITY(1,1),
    Ad NVARCHAR(50),
    Soyad NVARCHAR(50),
    Il NVARCHAR(50),
    YardimAldimi BIT
);

CREATE TABLE YardimDagitimi (
    DagitimID INT PRIMARY KEY IDENTITY(1,1),
    YardimID INT FOREIGN KEY REFERENCES Yardim(YardimID),
    AfetzedeID INT FOREIGN KEY REFERENCES Afetzede(AfetzedeID),
    Tarih DATE,
    Aciklama NVARCHAR(200)
);

INSERT INTO Gonullu (Ad, Soyad, Telefon, Eposta, Il) VALUES
('Ayþe', 'Demir', '05321234567', 'ayse.demir@example.com', 'Ýzmir'),
('Mehmet', 'Kaya', '05329876543', 'mehmet.kaya@example.com', 'Ankara'),
('Elif', 'Yýlmaz', '05325551234', 'elif.yilmaz@example.com', 'Ýstanbul'),
('Ali', 'Çelik', '05324445566', 'ali.celik@example.com', 'Bursa'),
('Zeynep', 'Öztürk', '05323331122', 'zeynep.ozturk@example.com', 'Antalya'),
('Emre', 'Kurt', '05326667788', 'emre.kurt@example.com', 'Adana'),
('Deniz', 'Aydýn', '05327779900', 'deniz.aydin@example.com', 'Gaziantep'),
('Fatma', 'Koç', '05328881234', 'fatma.koc@example.com', 'Mersin'),
('Cem', 'Demirtaþ', '05329990011', 'cem.demirtas@example.com', 'Kayseri'),
('Serap', 'Yýldýz', '05330001122', 'serap.yildiz@example.com', 'Samsun'),
('Hakan', 'Çetin', '05331112233', 'hakan.cetin@example.com', 'Denizli'),
('Selin', 'Tekin', '05332223344', 'selin.tekin@example.com', 'Eskiþehir'),
('Burak', 'Karaca', '05333334455', 'burak.karaca@example.com', 'Sakarya'),
('Merve', 'Þahin', '05334445566', 'merve.sahin@example.com', 'Manisa'),
('Onur', 'Duman', '05335556677', 'onur.duman@example.com', 'Kocaeli'),
('Gizem', 'Yalçýn', '05336667788', 'gizem.yalcin@example.com', 'Trabzon'),
('Ahmet', 'Polat', '05337778899', 'ahmet.polat@example.com', 'Balýkesir'),
('Derya', 'Kara', '05338889900', 'derya.kara@example.com', 'Malatya'),
('Kerem', 'Aslan', '05339990011', 'kerem.aslan@example.com', 'Erzurum'),
('Nihan', 'Eren', '05330001122', 'nihan.eren@example.com', 'Tekirdað'),
('Deniz', 'Öztürk', '05335556677', 'deniz.ozturk@example.com', 'Ýzmir');

INSERT INTO Bagisci (Ad, Soyad, Eposta, Telefon, Il) VALUES
('Fatma', 'Yýlmaz', 'fatma.yilmaz@example.com', '05331112233', 'Ýstanbul'),
('Ali', 'Çelik', 'ali.celik@example.com', '05334445566', 'Bursa'),
('Ahmet', 'Kaya', 'ahmet.kaya@example.com', '05335556677', 'Ankara'),
('Ayþe', 'Demir', 'ayse.demir@example.com', '05336667788', 'Ýzmir'),
('Mehmet', 'Þahin', 'mehmet.sahin@example.com', '05337778899', 'Adana'),
('Elif', 'Tekin', 'elif.tekin@example.com', '05338889900', 'Gaziantep'),
('Deniz', 'Yalçýn', 'deniz.yalcin@example.com', '05339990011', 'Mersin'),
('Serkan', 'Polat', 'serkan.polat@example.com', '05330001122', 'Kayseri'),
('Merve', 'Kara', 'merve.kara@example.com', '05331112233', 'Samsun'),
('Cem', 'Aslan', 'cem.aslan@example.com', '05332223344', 'Denizli'),
('Hakan', 'Eren', 'hakan.eren@example.com', '05333334455', 'Eskiþehir'),
('Selin', 'Öztürk', 'selin.ozturk@example.com', '05334445566', 'Sakarya'),
('Burak', 'Aydýn', 'burak.aydin@example.com', '05335556677', 'Manisa'),
('Gizem', 'Duman', 'gizem.duman@example.com', '05336667788', 'Kocaeli'),
('Onur', 'Kurt', 'onur.kurt@example.com', '05337778899', 'Trabzon'),
('Derya', 'Demirtaþ', 'derya.demirtas@example.com', '05338889900', 'Balýkesir'),
('Kerem', 'Yýldýz', 'kerem.yildiz@example.com', '05339990011', 'Malatya'),
('Nihan', 'Þen', 'nihan.sen@example.com', '05330001122', 'Erzurum'),
('Hüseyin', 'Kara', 'huseyin.kara@example.com', '05331112233', 'Tekirdað'),
('Elif', 'Karaca', 'elif.karaca@example.com', '05332223344', 'Samsun'),
('Selin', 'Demir', 'selin.demir@example.com', '05336667788', 'Ankara');

INSERT INTO Bagis (BagisciID, BagisTarihi, BagisTuru, Miktar) VALUES
(1, '2025-05-01', 'Nakdi', '5000 TL'),
(2, '2025-05-02', 'Gýda', '10 koli erzak'),
(3, '2025-05-03', 'Giysi', '20 koli giysi'),
(4, '2025-05-04', 'Nakdi', '3000 TL'),
(5, '2025-05-05', 'Gýda', '5 koli erzak'),
(6, '2025-05-06', 'Giysi', '15 koli giysi'),
(7, '2025-05-07', 'Nakdi', '7000 TL'),
(8, '2025-05-08', 'Gýda', '8 koli erzak'),
(9, '2025-05-09', 'Giysi', '25 koli giysi'),
(10, '2025-05-10', 'Nakdi', '4000 TL'),
(11, '2025-05-11', 'Gýda', '12 koli erzak'),
(12, '2025-05-12', 'Giysi', '18 koli giysi'),
(13, '2025-05-13', 'Nakdi', '6000 TL'),
(14, '2025-05-14', 'Gýda', '7 koli erzak'),
(15, '2025-05-15', 'Giysi', '30 koli giysi'),
(16, '2025-05-16', 'Nakdi', '3500 TL'),
(17, '2025-05-17', 'Gýda', '9 koli erzak'),
(18, '2025-05-18', 'Giysi', '22 koli giysi'),
(19, '2025-05-19', 'Nakdi', '4500 TL'),
(20, '2025-05-20', 'Gýda', '11 koli erzak'),
(21, '2025-05-10', 'Giysi', '5 çuval giysi');

INSERT INTO Yardim (GonulluID, YardimTuru, Tarih, Konum) VALUES
(1, 'Gýda Daðýtýmý', '2025-05-05', 'Hatay - Antakya'),
(2, 'Giysi Daðýtýmý', '2025-05-06', 'Adýyaman - Merkez'),
(3, 'Nakdi Yardým', '2025-05-07', 'Ýzmir - Konak'),
(4, 'Gýda Daðýtýmý', '2025-05-08', 'Ankara - Çankaya'),
(5, 'Giysi Daðýtýmý', '2025-05-09', 'Ýstanbul - Kadýköy'),
(6, 'Nakdi Yardým', '2025-05-10', 'Bursa - Osmangazi'),
(7, 'Gýda Daðýtýmý', '2025-05-11', 'Antalya - Muratpaþa'),
(8, 'Giysi Daðýtýmý', '2025-05-12', 'Adana - Seyhan'),
(9, 'Nakdi Yardým', '2025-05-13', 'Gaziantep - Þahinbey'),
(10, 'Gýda Daðýtýmý', '2025-05-14', 'Mersin - Yeniþehir'),
(11, 'Giysi Daðýtýmý', '2025-05-15', 'Kayseri - Melikgazi'),
(12, 'Nakdi Yardým', '2025-05-16', 'Samsun - Ýlkadým'),
(13, 'Gýda Daðýtýmý', '2025-05-17', 'Denizli - Merkez'),
(14, 'Giysi Daðýtýmý', '2025-05-18', 'Eskiþehir - Tepebaþý'),
(15, 'Nakdi Yardým', '2025-05-19', 'Sakarya - Serdivan'),
(16, 'Gýda Daðýtýmý', '2025-05-20', 'Manisa - Yunusemre'),
(17, 'Giysi Daðýtýmý', '2025-05-21', 'Kocaeli - Ýzmit'),
(18, 'Nakdi Yardým', '2025-05-22', 'Trabzon - Ortahisar'),
(19, 'Gýda Daðýtýmý', '2025-05-23', 'Balýkesir - Karesi'),
(20, 'Giysi Daðýtýmý', '2025-05-24', 'Malatya - Battalgazi'),
(21, 'Gýda Daðýtýmý', '2025-05-12', 'Malatya - Battalgazi');

INSERT INTO Afetzede (Ad, Soyad, Il, YardimAldimi) VALUES
('Zeynep', 'Koç', 'Hatay', 1),
('Ahmet', 'Arslan', 'Adýyaman', 0),
('Fatma', 'Yýlmaz', 'Ýzmir', 1),
('Mehmet', 'Kaya', 'Ankara', 0),
('Elif', 'Öztürk', 'Ýstanbul', 1),
('Ali', 'Çelik', 'Bursa', 0),
('Deniz', 'Aydýn', 'Antalya', 1),
('Cem', 'Demirtaþ', 'Adana', 0),
('Serap', 'Yýldýz', 'Gaziantep', 1),
('Hakan', 'Çetin', 'Mersin', 0),
('Selin', 'Tekin', 'Kayseri', 1),
('Burak', 'Karaca', 'Samsun', 0),
('Merve', 'Þahin', 'Denizli', 1),
('Onur', 'Duman', 'Eskiþehir', 0),
('Gizem', 'Yalçýn', 'Sakarya', 1),
('Ahmet', 'Polat', 'Manisa', 0),
('Derya', 'Kara', 'Kocaeli', 1),
('Kerem', 'Aslan', 'Trabzon', 0),
('Nihan', 'Eren', 'Balýkesir', 1),
('Hüseyin', 'Kara', 'Malatya', 0),
('Murat', 'Yýlmaz', 'Malatya', 0);

INSERT INTO YardimDagitimi (YardimID, AfetzedeID, Tarih, Aciklama) VALUES
(1, 1, '2025-05-05', 'Gýda yardýmý ulaþtýrýldý'),
(2, 2, '2025-05-06', 'Giysi yardýmý yapýldý'),
(3, 3, '2025-05-07', 'Nakdi yardým verildi'),
(4, 4, '2025-05-08', 'Gýda yardýmý daðýtýldý'),
(5, 5, '2025-05-09', 'Giysi yardýmý saðlandý'),
(6, 6, '2025-05-10', 'Nakdi yardým yapýldý'),
(7, 7, '2025-05-11', 'Gýda yardýmý verildi'),
(8, 8, '2025-05-12', 'Giysi yardýmý yapýldý'),
(9, 9, '2025-05-13', 'Nakdi yardým ulaþtýrýldý'),
(10, 10, '2025-05-14', 'Gýda yardýmý daðýtýldý'),
(11, 11, '2025-05-15', 'Giysi yardýmý saðlandý'),
(12, 12, '2025-05-16', 'Nakdi yardým yapýldý'),
(13, 13, '2025-05-17', 'Gýda yardýmý verildi'),
(14, 14, '2025-05-18', 'Giysi yardýmý saðlandý'),
(15, 15, '2025-05-19', 'Nakdi yardým verildi'),
(16, 16, '2025-05-20', 'Gýda yardýmý ulaþtýrýldý'),
(17, 17, '2025-05-21', 'Giysi yardýmý yapýldý'),
(18, 18, '2025-05-22', 'Nakdi yardým verildi'),
(19, 19, '2025-05-23', 'Gýda yardýmý saðlandý'),
(20, 20, '2025-05-24', 'Giysi yardýmý yapýldý'),
(21, 21, '2025-05-13', 'Giysi yardýmý yapýldý');

UPDATE Gonullu
SET Telefon = '05330001234'
WHERE GonulluID = 1;

UPDATE Bagisci
SET Il = 'Ýstanbul'
WHERE BagisciID = 1;

UPDATE Bagis
SET Miktar = '7500 TL'
WHERE BagisID = 1;

UPDATE Yardim
SET Konum = 'Ýzmir - Bornova'
WHERE YardimID = 1;

UPDATE Afetzede
SET YardimAldimi = 1
WHERE AfetzedeID = 2;

UPDATE YardimDagitimi
SET Aciklama = 'Gýda yardýmý baþarýyla ulaþtýrýldý'
WHERE DagitimID = 1;

DELETE FROM YardimDagitimi
WHERE DagitimID = 21;

DELETE FROM Bagis
WHERE BagisID = 21;

DELETE FROM Yardim
WHERE YardimID = 21;

DELETE FROM Gonullu
WHERE GonulluID = 21;

DELETE FROM Bagisci
WHERE BagisciID = 21;

DELETE FROM Afetzede
WHERE AfetzedeID = 21;

SELECT * FROM Gonullu;

SELECT * FROM Bagisci WHERE Il = 'Ýstanbul';

SELECT B.Ad, B.Soyad FROM Bagisci B
JOIN Bagis BG ON B.BagisciID = BG.BagisciID
WHERE BG.BagisTuru = 'Nakdi';

SELECT A.Ad, A.Soyad, Y.YardimTuru FROM Afetzede A
JOIN YardimDagitimi YD ON A.AfetzedeID = YD.AfetzedeID
JOIN Yardim Y ON YD.YardimID = Y.YardimID;

SELECT * FROM Bagis WHERE BagisTuru = 'Gýda';

SELECT TOP 1 * FROM Yardim ORDER BY Tarih DESC;

SELECT * FROM Afetzede WHERE YardimAldimi = 0;

SELECT * FROM Yardim WHERE Tarih = '2025-05-05';

SELECT * FROM Yardim WHERE GonulluID = 1;

SELECT G.Ad, G.Soyad, Y.YardimTuru FROM Gonullu G
JOIN Yardim Y ON G.GonulluID = Y.GonulluID;

SELECT Aciklama FROM YardimDagitimi;

SELECT Konum, COUNT(*) AS YardimSayisi FROM Yardim
GROUP BY Konum;

SELECT BagisTuru, COUNT(*) AS Toplam FROM Bagis
GROUP BY BagisTuru;

SELECT B.Ad, B.Soyad, BG.BagisTuru, BG.Miktar FROM Bagisci B
JOIN Bagis BG ON B.BagisciID = BG.BagisciID;

SELECT Y.YardimTuru, COUNT(*) AS DagitimSayisi FROM Yardim Y
JOIN YardimDagitimi YD ON Y.YardimID = YD.YardimID
GROUP BY Y.YardimTuru;

SELECT G.Ad, G.Soyad 
FROM Gonullu G
JOIN Yardim Y ON G.GonulluID = Y.GonulluID
GROUP BY G.Ad, G.Soyad;

SELECT DISTINCT G.Ad, G.Soyad FROM Gonullu G
JOIN Yardim Y ON G.GonulluID = Y.GonulluID;

SELECT * FROM Bagis WHERE Miktar LIKE '%TL%';

SELECT G.Ad AS GonulluAd, A.Ad AS AfetzedeAd FROM Yardim Y
JOIN Gonullu G ON Y.GonulluID = G.GonulluID
JOIN YardimDagitimi YD ON Y.YardimID = YD.YardimID
JOIN Afetzede A ON YD.AfetzedeID = A.AfetzedeID;

SELECT * FROM Yardim ORDER BY Tarih;

SELECT TOP 1 YardimTuru, COUNT(*) AS Sayisi FROM Yardim
GROUP BY YardimTuru
ORDER BY Sayisi DESC;

SELECT Ad, Soyad FROM Bagisci
WHERE BagisciID = (
    SELECT TOP 1 BagisciID FROM Bagis
    GROUP BY BagisciID
    ORDER BY COUNT(*) DESC
);

SELECT BagisTuru, Miktar FROM Bagis
WHERE BagisID = (
    SELECT MAX(BagisID) FROM Bagis
);

SELECT * FROM Yardim
WHERE GonulluID IN (
    SELECT GonulluID FROM Gonullu WHERE Il = 'Ýzmir'
);

SELECT A.Ad, A.Soyad, YD.Tarih, YD.Aciklama FROM Afetzede A
LEFT JOIN YardimDagitimi YD ON A.AfetzedeID = YD.AfetzedeID;

SELECT TOP 1
    Konum AS Il,
    COUNT(*) AS YardimSayisi
FROM
    Yardim
GROUP BY
    Konum
ORDER BY
    YardimSayisi ASC;


