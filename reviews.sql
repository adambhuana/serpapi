-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 12, 2024 at 08:48 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `google_reviews`
--

-- --------------------------------------------------------

--
-- Table structure for table `reviews`
--

CREATE TABLE `reviews` (
  `id` int(11) NOT NULL,
  `userku` text DEFAULT NULL,
  `review_text` text DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `reviews`
--

INSERT INTO `reviews` (`id`, `userku`, `review_text`, `created_at`) VALUES
(3657, 'Cholilah Shafaat', 'Green Academy provides IT, Design, and Korean Training. I have been studying Korean with Korean Trainer here. It\'s so much fun but the lesson material is a little bit challenging. Next, I think I\'m gonna join Vide Editing Class ^^', '2024-07-12 06:45:48'),
(3658, 'Verhan Fernando', 'Very fun.', '2024-07-12 06:45:48'),
(3659, 'Novia Lingga', 'Good Teacher, Good class', '2024-07-12 06:45:48'),
(3660, 'Muna Lolita Silalahi', 'Cool and awesome', '2024-07-12 06:45:48'),
(3661, 'ナビァTJAHJONO', 'Recommed course', '2024-07-12 06:45:48'),
(3662, 'Puja Asmika', 'Pembelajaran sesuai dengan iklannya, malah kita bisa request materi tambahan.\nPembelajaran materi mudah di pahami dan selalu update,\nWaktu pembelajaran juga sangat flexible,\nPengajar sangat profesional dan sangat interaktif sehingga saya yg mulai dari 0 tentang IT, tidak begitu susah untuk mengikuti pembelajaran,\nMendapat fasilitas lengkap, kita tinggal bawa diri aj, komputer disediakan,\nTerus mendapatkan kesempatan untuk magang/internship dari perusahaan, sehingga mendapatkan study case yang nyata.\nTerima kasih Green academy.', '2024-07-12 06:45:48'),
(3663, 'Rachel Daniella', 'Saya puas dengan course data science di Green Academy. Materi yang diajarkan sangat relevan dengan kebutuhan industri saat ini. Para pengajar juga sangat berpengetahuan dan berpengalaman di bidangnya, kompeten dalam menjawab pertanyaan student jika ada materi yang kurang dipahami. Fasilitas yang disediakan juga sangat memadai seperti komputer, papan tulis, dan ruang kelas yang nyaman.', '2024-07-12 06:45:48'),
(3664, 'Ilyas', 'Biaya belajar bahasa korea berapa disini? Apa ada yg khusus untuk kelas eps topik? Terima kasih tolong infonya', '2024-07-12 06:45:48'),
(3665, 'Hamzah Doang', 'Banyak ilmu yang didapat kan di green academy, banyak juga masukan saat belajar di green academy', '2024-07-12 06:45:48'),
(3666, 'shelli destiani', 'Pengalaman belajar disini sih biasa aja. Kurang profesional. Dan jaminan di salurkan kerja 100% hoaks.', '2024-07-12 06:45:48'),
(3667, 'Laila Dzuhria', 'Baru 3 jam ikut kelas free trial di green academi, udh kgs dapat banyak ilmunya mulai belajar SRO, jd tahu tools2nya, dan belajar basic capcut jd tau ada transisis menggunakan green screen. Sangat bermanfaat. Apalagi kalau sampai bisa ikutan kelasnya makin byk manfaat dan bisa direkomendasikan ke perusahaan klien2nya lho. Cara mengajarnya juga enak mudah dipahami, kelasnya juga nggak tegang banget, friendly para pengajar, petugas, dan teman2 di green academy.', '2024-07-12 06:45:48'),
(3668, 'Demina Kurnia', 'Tempat nya nyaman dan seru bgt gurunya. Bisa mengerti, bisaa offline dan online juga. Ada kursus it korea, programmer', '2024-07-12 06:45:48'),
(3669, 'Linda SA', 'Green academy merupakan tempat yang tepat untuk belajar Data Science. Materi yang terstruktur, padat dan jelas menciptakan efektivitas dan efisiensi dalam pembelajaran.\n\nSelain itu, instruktur dan mentor yang berpengalaman mempercepat pemahaman dalam menyerap materi yang disampaikan terutama bagi pemula di bidang Data Science. Worth to try👍', '2024-07-12 06:45:48'),
(3670, 'Aulia Nurul Izati', 'Sebagai Calon Mahasiswa yang ingin kuliah di Korea, penting banget dong untuk belajar bahasa korea, Untungnya di Jakarta ada pelatihan Bahasa Korea Yaitu Green Academy, dimana para pengajarnya sangat handal yang membuat saya mudah untuk belajar bahasa Korea, Thank You Green Academy.', '2024-07-12 06:45:48'),
(3671, 'Nurul Hidayati', 'green academy tempat kursus yg baguss! disini menyediakan banyak kursus salah satunya yaituu ui/ux design. Dengan belajar ui/ux design di green academy, saya jadi paham bagaimana membuat ui/ux yg menarik dan juga user friendly.', '2024-07-12 06:45:48'),
(3672, 'arum puspitasari', 'Luar biasa sekali les bahasa korea di green academy, ssaem yang luar biasa keren dan sabar menyampaikan setiap materi memastikan semua paham. Sukses selalu green academy🤲🙏🏻🙌✨', '2024-07-12 06:45:48'),
(3673, 'Garin Herdiawan', 'Di era sekarang penting banget untuk belajar IT, Untungnya ada Green Academy jadinya saya mempunyai bekal dalam Interview pekerjaan di bidang programmer. Alhamdulillahnya saya keterima di pekerjaan tersebut, Terima Kasih Green academy', '2024-07-12 06:45:48'),
(3674, 'Nadia Chairunisa Rachma', 'Yap, Data Science!! Ini lagi hype banget sih untuk kita generasi muda yang tertarik dengan pekerjaan di bidang teknologi. Untuk asah kemampuan kita, coba deh ikut kelas yang disediain Green Academy, suasananya asik, menyenangkan dan materi-materinya up to date loh', '2024-07-12 06:45:48'),
(3675, 'Hanin Dita', 'Untuk kalian yang ingin jadi programmer, Green Academy recommended banget untuk belajar pemrograman. Kenapa? Karena pengajar disini kompeten dan baik-baik banget!!', '2024-07-12 06:45:48'),
(3676, 'Feby Ridian Survany', 'Dengan hobi menggambarku, aku bisa nih lebih percaya diri lagi untuk menjadi desain grafis berkat Green Academy. Disini kita bisa belajar dengan asik loh, dan juga kita dibimbing dengan pengajar yang sangat kompeten👍🏻', '2024-07-12 06:45:48'),
(3677, 'Beck Ganteng', 'Cobain deh bahasa korea di green academy, pengajarnya sangat asik dan menyenangkan loh. Serunya lagi kita bisa bertemu dengan orang koreanya langsung. Yuk buruan ikut daftar!', '2024-07-12 06:45:48'),
(3678, 'Fera Oktariyanti', 'Serunya bisa belajar bahasa korea di green academy udah gt kita bisa bertemu dengan orang koreanya langsung. Yuk buruan ikut daftar!', '2024-07-12 06:45:48'),
(3679, 'Aulnuza', 'Tempatnya nyaman,bersih dan dingin semakin semangatt deh belajarnya di Training Centernya Green academy, Recommend banget jadi salah satu tempat pembelajaran yang ada di Jakarta', '2024-07-12 06:45:48'),
(3680, 'Sri Andriani', 'Wohoo terima kasih banyak buat Green Academy karena udah ngasih kelas belajar animation dan kursus desain grafis, saya sekarang makin siap jadi content creator hehe 👍🏻', '2024-07-12 06:45:48'),
(3681, 'Jessica V', 'belakangan ini lagi tertarik sama ui ux design, untungnya ada Green Academy buat kursus desain grafis dan lain-lain, lumayaan buat persiapan meniti karirrrr. Thanks!', '2024-07-12 06:45:48'),
(3682, 'Elsy Elvianty', 'nyaman banget tempat dan suasananya, gurunya juga asik2, pelajarannya mudah dipahami jadi waktu belajar gak terasa lama dan membosankan😆', '2024-07-12 06:45:48'),
(3683, 'Rio Tantowi', 'Awalnya saya kira belajar bahasa korea ribet, sama tutor Green Academy dibuat jadi mudah banget dipahamin. Green Academy kerenn', '2024-07-12 06:45:48'),
(3684, 'felia putri dewinta', 'ketemu Green Academy waktu nyari training center buat belajar bahasa korea, sekarang seneng dan puas bgt karena udah makin ngerti berkat materi dari sini', '2024-07-12 06:45:48'),
(3685, 'Danang Wahyu Nugroho', 'Senang sekali bisa belajar bahasa korea di Green Academy, sekarang setiap ngedrakor jadi sedikit paham sama percakapannya', '2024-07-12 06:45:48'),
(3686, 'muhamad ifti', 'bagus sekali untuk memperlajari ilmu baru', '2024-07-12 06:45:48'),
(3687, 'Bae우리', 'Disini buat kalian yang mau memperdalam bahasa korea kalian di bidang bisnis, coba daftar di sini. Katanya nanti kalau udh selesai les bisa ikut penyaluran kerja. Ayo coba daftar', '2024-07-12 06:45:48'),
(3688, 'afifah Jannah', 'Belakangan pengen banget belajar design grafis, sebagai pemula materi green academy mudah bgt dipahami dan update bgt sama trend saat ini!', '2024-07-12 06:45:48'),
(3689, 'ABDUL GHONI', 'Tempat belajar coding untuk kaum muda yang menyenangkan. Metode belajarnya langsung praktik. Instrukturnya seru, telaten dan memberikan kesempatan  untuk berkreasi.', '2024-07-12 06:45:48'),
(3690, 'Andromeda Arfandi', 'Setelah belajar coding di sini, lebih ngerti coding sekarang, sampe lancar interview juga sama calon perusahaan. thank you Green Academy', '2024-07-12 06:45:48'),
(3691, 'Afifah Fais', 'huhu kelas bahasa korea nya sangat membantu sekali! nonton drakor jadi bisa lebih ngerti tanpa subtitleeeee!', '2024-07-12 06:45:48'),
(3692, 'Fadil Lahyusuf', 'Tempat mencari ilmu yang bagus niih buat kaum milenial sekarang untuk belajar desain grafis, coding dan lain lain, recommended banget siih', '2024-07-12 06:45:48'),
(3693, 'Hermawan Syaiful Bachri', 'Belajar UI/UX di Green Academy sangat membantu saya mendevelop skill saya untuk impact di perusahaan saya bekerja, Terima Kasih Green Academy', '2024-07-12 06:45:48'),
(3694, 'Dev PLN Icon Plus', 'Tenaga pengajar Green Academy baik, bagus untuk mengasah profesional skill atau switch career di bidang coding, desain grafis', '2024-07-12 06:45:48'),
(3695, '12201200 RISDIANI', 'reccomended untuk belajar UI/UX Design bagi pemula, start your develop your skills here with Green Academy!', '2024-07-12 06:45:49'),
(3696, 'Shella Anggar Dwi Lestari', 'Materi desain grafisnya sangat mudah dipahami, proses pembelajarannya pun menyenangkan. Good job Green Academy', '2024-07-12 06:45:49'),
(3697, 'for bangtan', 'Belajar bahasa korea dari 0, materi mudah dipahami, cocok bagi yang ingin mengambil tes topik 1', '2024-07-12 06:45:49'),
(3698, 'Risdiani Dini', '아녕하새요! Belajar bahasa korea dengan materi yang mudah dipahami bagi pemula, thank you', '2024-07-12 06:45:49'),
(3699, 'Circle Photowork', 'thank you Green Academy, belajar coding disini sangat membantu aku yang ingin switch career ke website development', '2024-07-12 06:45:49'),
(3700, 'Dyna Sa', 'Terima Kasih Green Academy berkat pelatihan coding disini saya di terima di salah perusahaan besar di Indonesia', '2024-07-12 06:45:49'),
(3701, 'Nia Wahyuningsih', 'recommended banget buat kamu milenial yang mau belajar design grafis dan coding👍🏻', '2024-07-12 06:45:49'),
(3702, 'Tiara Salsabila', 'Terima kasih green academy! Makin paham nih buat jadi content creator handal!', '2024-07-12 06:45:49'),
(3703, 'Sandra Elsa Junia', 'pembelajarannya seru dan gurunya juga interaktif. thank you Green Academy.', '2024-07-12 06:45:49'),
(3704, 'Priscilla Keka', 'fasilitasnya lengkap, tempatnya nyaman dan ber ac, ada cctv juga. staffnya ramahhh.', '2024-07-12 06:45:49'),
(3705, 'Anista Dewi', 'Kelasnya seru banget!!! Ms. Cila atau cilla ssaem juga asikk hihi', '2024-07-12 06:45:49'),
(3706, 'Madamex', 'Tenaga pengajarnya baik, ramah, dan asik', '2024-07-12 06:45:49'),
(3707, 'Indah Fitria', 'Tempatnya nyaman dan lecturenya seruuuu', '2024-07-12 06:45:49'),
(3708, 'Nurul Fadil', 'Mantulll', '2024-07-12 06:45:49'),
(3709, 'tulus iklas', 'Sangat baguss dan keren', '2024-07-12 06:45:49'),
(3710, 'Herlambang Novianto', 'Tidak ada Review', '2024-07-12 06:45:49'),
(3711, 'Wiliam Liu', 'Tidak ada Review', '2024-07-12 06:45:49'),
(3712, 'siti auliawati adawiyah', 'Tidak ada Review', '2024-07-12 06:45:49'),
(3713, 'tasya', 'Tidak ada Review', '2024-07-12 06:45:49'),
(3714, 'Cynthia Amanda', 'Tidak ada Review', '2024-07-12 06:45:49');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `reviews`
--
ALTER TABLE `reviews`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `reviews`
--
ALTER TABLE `reviews`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3715;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
