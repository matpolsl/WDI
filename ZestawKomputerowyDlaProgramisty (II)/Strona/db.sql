-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: mysql.ct8.pl
-- Czas generowania: 25 Lis 2019, 09:17
-- Wersja serwera: 5.7.26-29-log
-- Wersja PHP: 7.1.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Baza danych: `m1017_gra`
--

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `Zestaw`
--

CREATE TABLE `Zestaw` (
  `ID` int(11) NOT NULL,
  `Architektura` int(1) NOT NULL,
  `Nazwa` varchar(75) COLLATE utf8_polish_ci NOT NULL,
  `Opis` text COLLATE utf8_polish_ci NOT NULL,
  `Photo` text COLLATE utf8_polish_ci NOT NULL,
  `Morele` text COLLATE utf8_polish_ci NOT NULL,
  `Nr` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

--
-- Zrzut danych tabeli `Zestaw`
--

INSERT INTO `Zestaw` (`ID`, `Architektura`, `Nazwa`, `Opis`, `Photo`, `Morele`, `Nr`) VALUES
(1, 1, 'Procesor Intel Core i5-9600KF, 3.7GHz, 9MB, BOX', 'Procesor to jeden z najważniejszych komponentów dobrego zestawu dla programisty. Dobry procesor zapewnia płynną obsługę systemu oraz jest kluczowym elementem do szybkiego testowania programów.\r\nDobierając procesor należy zwrócić uwagę na liczbę rdzeni. Aktualnie 4 rdzenie to minimum.\r\nWażnym parametrem jest też ilość pamięci podręcznej oraz ilość obsługiwanej pamięci RAM wraz z jej typem. Obecnie najlepszym wyborem jest obsługa pamięci DDR4.\r\n', 'https://images.morele.net/full/5955267_0_f.jpg', 'https://www.morele.net/procesor-intel-core-i5-9600kf-3-7ghz-9mb-box-bx80684i59600kf-5955267/', 1),
(2, 2, 'Procesor AMD Ryzen 5 3600, 3.6GHz, 32 MB, BOX', 'Procesor to jeden z najważniejszych komponentów dobrego zestawu dla programisty. Dobry procesor zapewnia płynną obsługę systemu oraz jest kluczowym elementem do szybkiego testowania programów.\r\nDobierając procesor należy zwrócić uwagę na liczbę rdzeni. Aktualnie 4 rdzenie to minimum.\r\nWażnym parametrem jest też ilość pamięci podręcznej oraz ilość obsługiwanej pamięci RAM wraz z jej typem. Obecnie najlepszym wyborem jest obsługa pamięci DDR4.\r\n\r\n', 'https://images.morele.net/full/5938599_0_f.jpg', 'https://www.morele.net/procesor-amd-ryzen-5-3600-3-6ghz-32-mb-box-100-100000031box-5938599/', 1),
(3, 2, 'Karta graficzna MSI Radeon RX 570 ARMOR OC 4GB GDDR5', 'Dobra karta graficzna nie jest potrzebna do programowania. Najważniejsze aby mogła obsługiwać kilka monitorów jednocześnie. Jest to szczególnie ważne dla programisty ponieważ często w pracy używa on jednocześnie przeglądarki, IDE i komunikatora lub poczty jednocześnie.\r\nTaki zestaw komputerowy może być też komputerem domowym służącym do rozrywek. Stąd dobrze by było aby mógł on obsługiwać wymagające graficznie programy bądź gry.', 'https://images.morele.net/full/976962_0_f.jpg', 'https://www.morele.net/karta-graficzna-msi-radeon-rx-570-armor-oc-4gb-gddr5-rx-570-armor-4g-oc-976962/', 3),
(4, 1, 'Karta graficzna Asus GeForce GTX 1050 TI 4GB GDDR5', 'Dobra karta graficzna nie jest potrzebna do programowania. Najważniejsze aby mogła obsługiwać kilka monitorów jednocześnie. Jest to szczególnie ważne dla programisty ponieważ często w pracy używa on jednocześnie przeglądarki, IDE i komunikatora lub poczty jednocześnie.\r\nTaki zestaw komputerowy może być też komputerem domowym służącym do rozrywek. Stąd dobrze by było aby mógł on obsługiwać wymagające graficznie programy bądź gry.', 'https://images.morele.net/full/975431_0_f.jpg', 'https://www.morele.net/karta-graficzna-asus-geforce-gtx-1050-ti-4gb-gddr5-128-bit-dvi-d-hdmi-dp-box-ph-gtx1050ti-4g-975431/', 3),
(5, 2, 'Pamięć Patriot Viper, DDR4, 32 GB,3200MHz, CL16', 'Najważniejszy element zestawu dla programisty. Wiele programów potrzebuje dużo RAM’u do działania. Ponadto nasz własny program zanim go zoptymalizujemy także będzie potrzebował dużej ilości pamięci przy kompilacji i działaniu.\r\nIstnieje tutaj zasada że im więcej tym lepiej. Należy oczywiście zwrócić uwagę czy reszta komponentów obsłuży taką ilość RAMu. Minimalnie zalecane jest 16 GB pamięci RAM.\r\nAle 32 GB też ma swoje zastosowanie.\r\nPamięć DDR4 jest obecnie najlepszym wyborem dla programisty jeżeli posiadamy procesor i płytę główną które obsłużą ten typ pamięci.\r\n', 'https://images.morele.net/full/1610885_3_f.jpg', 'https://www.morele.net/pamiec-patriot-viper-ddr4-32-gb-3200mhz-cl16-pv432g320c6k-1610885/', 4),
(6, 0, 'Dysk SSD Samsung 860 EVO 500GB SATA3', 'Dysk jest bardzo ważnym elementem. Pojemność jest istotna ponieważ rozległe programy mogą zajmować dużo miejsca. Jednak ważniejszą cechą jest ich szybkość odczytu i zapisu.\r\nStąd dyski typu SSD powinny być częściej wybierane niż HDD.\r\nWarto też się zastanowić nad dyskiem SSD w technologi M.2 wykorzystujące interfejs PCIe. Ponieważ taki dysk ma dużo większe osiągi niż standardowy dysk na złączu SATA przez wykorzystanie przepustowości PCIe. Jednak taki dysk potrzebuje odpowiednich złącz na płycie głównej.\r\n', 'https://images.morele.net/full/1773653_0_f.jpg', 'https://www.morele.net/dysk-ssd-samsung-860-evo-500gb-sata3-mz-76e500b-eu-1773653/', 5),
(7, 0, 'Zasilacz SilentiumPC Vero L2 600W', 'Zasilacz dobieramy  wedle potrzeb zestawu komputerowego. Zasilacz musi zapewniać odpowiednie napięcie dla każdego komponentu. Dla naszego zestawu 600W jest wystarczające.\r\nAwaria zasilacza może spowodować szkody na innych częściach zestawu dlatego warto wybierać zasilacze z odpowiednimi certyfikatami.', 'https://images.morele.net/full/977143_13_f.jpg', 'https://www.morele.net/zasilacz-silentiumpc-vero-l2-600w-spc165-977143/', 6),
(8, 0, 'UPS Qoltec Zasilacz awaryjny 600W', 'Opcjonalny element.\r\nW przypadku odcięcia prądu, zasilacz UPS zapewnia awaryjne zasilanie. Dzięki temu programista nie straci ważnych danych gdyż będzie mieć czas aby je zapisać.\r\nZasilacz UPS powinien posiadać minimum 3 złącza: Dla PC, dla monitora, na router.\r\n', 'https://images.morele.net/full/1085673_0_f.jpg', 'https://www.morele.net/ups-qoltec-zasilacz-awaryjny-600w-53903-1085673/', 7),
(9, 0, 'Monitor Samsung LS24E45KBL/EN', 'W pracy programisty często przydaje się więcej niż 1 ekran. Programista może wtedy wyświetlać swój kod na jednym ekranie a na innym przeszukiwać internet lub korzystać z innych programów. Jest to bardzo wygodne dla doświadczonego programisty pomagając mu uporządkować swoją przestrzeń pracy.\r\nIlość monitorów oraz ich przekątna zależy od preferencji programisty.', 'https://images.morele.net/full/1110820_0_f.jpg', 'https://www.morele.net/monitor-samsung-ls24e45kbl-en-1110820/', 7),
(10, 0, 'System operacyjny Microsoft Windows 10 Home PL 64 bit OEM', 'Programista w firmie zazwyczaj nie może sobie wybrać systemu operacyjnego. Co innego jak piszemy w domu na własnym sprzęcie. System powinniśmy dobierać wedle własnych preferencji.W którym nam się wygodniej pracuje. Aczkolwiek dobrze aby programista potrafił posługiwać się także innymi systemami operacyjnymi.\r\n', 'https://images.morele.net/full/761042_1_f.jpeg', 'https://www.morele.net/system-operacyjny-microsoft-windows-10-home-pl-64-bit-oem-kw9-00129-761042/', 8),
(11, 0, 'Klawiatura Microsoft Natural Ergo Keyboard 4000', 'Programista spędza przy klawiaturze znaczącą część swojej pracy. Oznacza to że taka klawiatura powinna być jak najbardziej ergonomiczna. Musi posiadać regulację nachylenia oraz podpórki na nadgarstki. Miękkie klawisze a także nie powinna zbytnio hałasować.\r\nDobra klawiatura powinna też posiadać kilka programowalnych klawiszy i obsługę makr aby jak najbardziej ułatwić i zautomatyzować pracę programisty.\r\nOświetlenie takiej klawiatury też jest ważne aby móc pracować w różnych porach o różnym naświetleniu.', 'https://images.morele.net/full/60142_2_f.jpg', 'https://www.morele.net/klawiatura-microsoft-natural-ergo-keyboard-4000-b2m-00022-60142/', 9),
(12, 0, 'Mysz Logitech M705', 'Całkowicie zbędny element zestawu komputerowego. Korzystają z niego tylko niedoświadczeni programiści. Profesjonaliści mówią że z komputera można korzystać i pisać programy używając tylko i wyłącznie klawiatury.\r\nJeżeli już zajdzie potrzeba zakupu tego beużytecznego przedmiotu należy zadbać aby był on ergonomiczny i posiadał kilka programowalnych klawiszy.\r\n', 'https://images.morele.net/full/321934_8_f.jpg', 'https://www.morele.net/mysz-logitech-m705-910-001949-321934/', 9),
(13, 2, 'Płyta główna ASRock X370 PRO4', 'Płyta Główna pozwala komunikować się wszystkim podzespołom, wchodzącym w skład zestawu komputerowego. Stąd ważne, aby kompatybilna była ona ze wszystkimi elementami oraz posiadała odpowiednie złącza. Dobierając płytę główną, należy wziąć pod uwagę ilość obsługiwanej pamięci RAM, jej typ oraz ilość złącz, gdyż RAM jest najważniejszym elementem zestawu dla programisty.', 'https://images.morele.net/full/1768674_0_f.jpg', 'https://www.morele.net/plyta-glowna-asrock-x370-pro4-1768674/', 2),
(14, 1, 'Płyta główna MSI Z370-A PRO', 'Płyta Główna pozwala komunikować się wszystkim podzespołom, wchodzącym w skład zestawu komputerowego. Stąd ważne, aby kompatybilna była ona ze wszystkimi elementami oraz posiadała odpowiednie złącza. Dobierając płytę główną, należy wziąć pod uwagę ilość obsługiwanej pamięci RAM, jej typ oraz ilość złącz, gdyż RAM jest najważniejszym elementem zestawu dla programisty.', 'https://images.morele.net/full/978515_0_f.jpg', 'https://www.morele.net/plyta-glowna-msi-z370-a-pro-978515/', 2),
(15, 1, 'Pamięć Kingston Predator, DDR4, 32GB,2666MHz, CL13', 'Najważniejszy element zestawu dla programisty. Wiele programów potrzebuje dużo RAM’u do działania. Ponadto nasz własny program zanim go zoptymalizujemy także będzie potrzebował dużej ilości pamięci przy kompilacji i działaniu.\r\nIstnieje tutaj zasada że im więcej tym lepiej. Należy oczywiście zwrócić uwagę czy reszta komponentów obsłuży taką ilość RAMu. Minimalnie zalecane jest 16 GB pamięci RAM.\r\nAle 32 GB też ma swoje zastosowanie.\r\nPamięć DDR4 jest obecnie najlepszym wyborem dla programisty jeżeli posiadamy procesor i płytę główną które obsłużą ten typ pamięci.', 'https://images.morele.net/full/1342955_0_f.jpg', 'https://www.morele.net/pamiec-kingston-predator-ddr4-32-gb-2666mhz-cl13-hx426c13pb3k2-32-1378285/', 4);

--
-- Indeksy dla zrzutów tabel
--

--
-- Indeksy dla tabeli `Zestaw`
--
ALTER TABLE `Zestaw`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT dla tabeli `Zestaw`
--
ALTER TABLE `Zestaw`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
