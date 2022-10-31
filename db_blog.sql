-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 31, 2022 at 01:32 PM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 8.0.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_blog`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_category`
--

CREATE TABLE `tbl_category` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_category`
--

INSERT INTO `tbl_category` (`id`, `name`) VALUES
(1, 'Novel'),
(2, 'Comic'),
(3, 'Funny'),
(4, 'Poem'),
(7, 'Writer'),
(8, 'Islamic');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_contact`
--

CREATE TABLE `tbl_contact` (
  `id` int(11) NOT NULL,
  `firstname` varchar(250) NOT NULL,
  `lastname` varchar(250) NOT NULL,
  `email` varchar(250) NOT NULL,
  `body` text NOT NULL,
  `status` int(11) NOT NULL,
  `date` date NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_contact`
--

INSERT INTO `tbl_contact` (`id`, `firstname`, `lastname`, `email`, `body`, `status`, `date`) VALUES
(1, 'MST', 'MONIRA AKTER', 'monira@gmail.com', 'It\'s very helpfull website.', 0, '2022-10-18');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_footer`
--

CREATE TABLE `tbl_footer` (
  `id` int(11) NOT NULL,
  `note` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_footer`
--

INSERT INTO `tbl_footer` (`id`, `note`) VALUES
(1, 'Book publication media');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_page`
--

CREATE TABLE `tbl_page` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `body` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_page`
--

INSERT INTO `tbl_page` (`id`, `name`, `body`) VALUES
(1, 'About Us', '<p><strong>Admin</strong>&nbsp; MD MONIRUZZAMAN</p> <p>&nbsp;</p> <p><strong>Authors</strong>&nbsp; MD. Abdul Karim</p> <p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;MD. Pavel Miah</p> <p>&nbsp;</p> <p><strong>Editors</strong>&nbsp; MD Mukhles</p> <p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; Abdullah Al Joy</p>'),
(2, 'Privacy Policy', '<p dir=\"ltr\">A user of bookpubish.com can delete their account and delivery data whenever they wish. To do so they need to contact us by sending an email to us at: admin@book.com or they can directly call us on this number: 16297. On their behalf, we will remove their data. We will aim to complete their deletion request urgently. This data cannot be recovered by any users or employees after this point. Data that has been deleted or otherwise destroyed can not be recovered at any time. Data may still remain in the system backup files, which will be deleted periodically &ldquo;Book Publication Media&rdquo;.</p><p dir=\"ltr\">&nbsp;</p>\n<p dir=\"ltr\">Tech Daily takes your privacy very seriously. We do everything we can to convey the information on our Platform with the greatest possible accuracy. This Privacy Policy Statement explains the types of personal data we collect from and about you and how we use, disclose and protect that data as well as your ability to control certain uses of it.</p>\n<p dir=\"ltr\">&nbsp;</p>\n<p dir=\"ltr\"><span>The collection, use and disclosure of personal data collected through the Platform is safeguarded by technological and organisational security measures with the objective to protect the personal data against loss, misuse and unauthorised access, alteration, disclosure or destruction. These measures are continually improved in line with technological developments.</span></p>'),
(3, 'Terms Of Use', '<p>These Terms of Use (\"<strong><em>Terms</em></strong>\") Welcome to book.com. Rokomari.com provides website features and other products and services to you when you visit or shop at rokomari.com. By using Rokomari Services, you agree to these conditions. Please read them carefully. By subscribing to or using any of our services you agree that you have read, understood and are bound by the Terms, regardless of how you subscribe to or use the services. In these Terms, references to \"you\", \"User\" shall mean the user end, \"Service Providers\" mean independent third party service providers, and \"we\", \"us\" and \"our\" shall mean Onnorokom Web Services Limited, its franchisor, affiliates and partners.</p>');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_post`
--

CREATE TABLE `tbl_post` (
  `id` int(11) NOT NULL,
  `cat` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `body` text NOT NULL,
  `image` varchar(255) NOT NULL,
  `author` varchar(255) NOT NULL,
  `tags` varchar(255) NOT NULL,
  `date` date NOT NULL DEFAULT current_timestamp(),
  `userid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_post`
--

INSERT INTO `tbl_post` (`id`, `cat`, `title`, `body`, `image`, `author`, `tags`, `date`, `userid`) VALUES
(1, 7, 'New book of Humayon', '<p>With the publishing of his first book, \"Nondito Noroke\" in 1972, Humayun Ahmed came into the limelight as a promising young writer. He proved later on that he was not there to be lost among others. His next book, \"Shonkhonil Karagar\", was another huge success with the readers. Most of his earlier books were family/social drama. But he proved his talent later on by writing more than a handful of science fictions and horrors/super natural books as well. He even created a few characters that are known to almost everybody, such as \"Himu\" (who always wears a yellow punjabi and no sandals) and Misir Ali (the extremely logical person, there\'s nothing in his world that cannot be explained scientifically). Humayun Ahmed had his directorial debut on TV with the series Eishob Dinratri (1985). A very touchy and complicated family drama. That was just the beginning, he went on to make a whole bunch of TV series, some of which are still popular with people. His movies are one of the very few that takes middle class people to the theaters now a days. Among the obscene and violent movies that are mostly catered towards the lower working class, movies like Aguner Poroshmoni (1994) and Dui Duari (2001) were like a touch of fresh air. - IMDb Mini Biography By: Annexoid</p>', 'upload/d4956cde46.jpg', 'Monir', 'Bangla Book', '2022-10-17', 1),
(2, 7, 'About Kazi Namzrul Islam', '<p>Kazi Nazrul Islam (24 May 1899&ndash;29 August 1976) was a Bengali poet, musician and revolutionary. His nickname was \"Rebel Poet\". He was the first to make poems talking about intense spiritual rebellion against fascism and oppression. Nazrul is the national poet of Bangladesh.[1] He is commemorated in India.Kazi Nazrul Islam (24 May 1899&ndash;29 August 1976) was a Bengali poet, musician and revolutionary. His nickname was \"Rebel Poet\". He was the first to make poems talking about intense spiritual rebellion against fascism and oppression. Nazrul is the national poet of Bangladesh.[1] He is commemorated in India.Kazi Nazrul Islam (24 May 1899&ndash;29 August 1976) was a Bengali poet, musician and revolutionary. His nickname was \"Rebel Poet\". He was the first to make poems talking about intense spiritual rebellion against fascism and oppression. Nazrul is the national poet of Bangladesh.[1] He is commemorated in India.</p>', 'upload/2e00cdb1e4.jpg', 'Monir', 'Bangla Book', '2022-10-17', 1),
(3, 7, 'Jasim Uddin', '<p>Jasimuddin (1903-1976) poet and litterateur, was born on 1 January 1903 in his maternal uncle&rsquo;s home at Tambulkhana in Faridpur. His father Ansaruddin Mollah was a teacher at school. Jasimuddin studied for some time at Faridpur Welfare School. He then went to Faridpur Zila School, wherefrom he matriculated in 1921. He completed IA from Rajendra College in 1924, and BA and MA in Bangla from the University of Calcutta in 1929 and 1931 respectively. From 1931 to 1937, Jasimuddin worked as ramtanu lahiri assistant research fellow under dinesh chandra sen, collecting folk literature. In 1938 he joined the university of dhaka as a lecturer. He left the university in 1944 to join the Department of Information and Broadcasting. He continued working in Broadcasting, first under the Bengal government and then under the East Pakistan Government, until his retirement as Deputy Director in 1962. Jasimuddin&rsquo;s talent as a poet developed early. As a college student, he wrote the poem &lsquo;Kabar&rsquo; (Grave). The poem, a dramatic monologue of an old man talking to his grandson in front of his wife&rsquo;s grave, was included in school textbooks while Jasimuddin was still a student at university. Jasimuddin&rsquo;s first book of verse, Rakhali (Shepherd), was published in 1927. His other books are naksi kanthar math (1929), Sojan Badiyar Ghat (1933), Rabgila Nayer Majhi (1935), Matir Kanna (1951), Suchayani (1961), Padma Nadir Deshe (1969), Bhayabaha Sei Dingulite (1962), Padmapar (1950), Beder Meye (1951), Pallibadhu (1956), Gramer Maya (1959), Thakur Badir Abinay (1961), Germanir Shahare Bandare (1975), Smaraner Sarani Bahi (1978), Bangalir Hasir Galpa, Dalim Kumar etc. He also wrote a novel, Boba Kahini (1964). He edited two books on folk music: Jarigan (1968) and Murshida Gan (1977). Naksi Kanthar Math and Bangalir Hasir Galpa have been translated into English as The Field of the Embroidered Quilt and Folk Tales of East Pakistan respectively.</p>', 'upload/dcc2320653.jpg', 'Monir', 'Bangla Book', '2022-10-17', 1),
(4, 7, 'New book of Humayon', '<p>With the publishing of his first book, \"Nondito Noroke\" in 1972, Humayun Ahmed came into the limelight as a promising young writer. He proved later on that he was not there to be lost among others. His next book, \"Shonkhonil Karagar\", was another huge success with the readers. Most of his earlier books were family/social drama. But he proved his talent later on by writing more than a handful of science fictions and horrors/super natural books as well. He even created a few characters that are known to almost everybody, such as \"Himu\" (who always wears a yellow punjabi and no sandals) and Misir Ali (the extremely logical person, there\'s nothing in his world that cannot be explained scientifically). Humayun Ahmed had his directorial debut on TV with the series Eishob Dinratri (1985). A very touchy and complicated family drama. That was just the beginning, he went on to make a whole bunch of TV series, some of which are still popular with people. His movies are one of the very few that takes middle class people to the theaters now a days. Among the obscene and violent movies that are mostly catered towards the lower working class, movies like Aguner Poroshmoni (1994) and Dui Duari (2001) were like a touch of fresh air. - IMDb Mini Biography By: Annexoid</p>\r\n<p>Jasimuddin.jpg</p>', 'upload/8a1729692a.jpg', 'Monir', 'Bangla Book', '2022-10-17', 1),
(5, 7, 'Rabindranath Tagore', '                            <p>Rabindranath Tagore, Bengali Rabīndranāth Ṭhākur, (born May 7, 1861, Calcutta [now Kolkata], India—died August 7, 1941, Calcutta), Bengali poet, short-story writer, song composer, playwright, essayist, and painter who introduced new prose and verse forms and the use of colloquial language into Bengali literature, thereby freeing it from traditional models based on classical Sanskrit. He was highly influential in introducing Indian culture to the West and vice versa, and he is generally regarded as the outstanding creative artist of early 20th-century rse forms and the use of colloquial language into Bengali literature, thereby freeing it from traditional models based on classical Sanskrit. He was highly influential in introducing Indian culture to the West and vice versa, and he is generally regarded as the outstanding creative artist of early 20th-centurse forms and the use of colloquial language into Bengali literature, thereby freeing it from traditional models based on classical Sanskrit. He was highly influential in introducing Indian culture to the West and vice versa, and he is generally regarded as the outstanding creative artist of early 20th-centu India. In 1913 he became the first non-European to receive the Nobel Prize for Literature.</p>                            ', 'upload/3a3b8ba093.jpg', 'Nayeem', 'Bangla Book', '2022-10-17', 1),
(7, 7, 'Ahsan Habib', '<p>Ahsan Habib (2 January 1917 &ndash; 10 July 1985) was a Bangladeshi poet and literary figure in Bengali culture.[1] He was born in the village of Shankarpasha, in Pirojpur. Before the India-Pakistan partition, he worked on several literary magazines: Takbir, Bulbul (1937&ndash;38) and The Saogat (1939-43) and he was a staff artiste at the Kolkata Centre of All India Radio. After partition he came to Dhaka and worked on Daily Azad, Monthly Mohammadi, Daily Krishak, Daily Ittehad, Weekly Prabaha, etc.[2]Ahsan Habib (2 January 1917 &ndash; 10 July 1985) was a Bangladeshi poet and literary figure in Bengali culture.[1] He was born in the village of Shankarpasha, in Pirojpur. Before the India-Pakistan partition, he worked on several literary magazines: Takbir, Bulbul (1937&ndash;38) and The Saogat (1939-43) and he was a staff artiste at the Kolkata Centre of All India Radio. After partition he came to Dhaka and worked on Daily Azad, Monthly Mohammadi, Daily Krishak, Daily Ittehad, Weekly Prabaha, etc.[2]Ahsan Habib (2 January 1917 &ndash; 10 July 1985) was a Bangladeshi poet and literary figure in Bengali culture.[1] He was born in the village of Shankarpasha, in Pirojpur. Before the India-Pakistan partition, he worked on several literary magazines: Takbir, Bulbul (1937&ndash;38) and The Saogat (1939-43) and he was a staff artiste at the Kolkata Centre of All India Radio. After partition he came to Dhaka and worked on Daily Azad, Monthly Mohammadi, Daily Krishak, Daily Ittehad, Weekly Prabaha, etc.[2]</p>', 'upload/2afeee91ba.jpg', 'Shohel', 'Bangla Book', '2022-10-17', 1),
(9, 1, 'ব্যোমকেশ সমগ্র', '<p>শরদিন্দু অমনিবাস (প্রথম-দ্বাদশ খণ্ড) গ্রন্থে সঙ্কলিত শরদিন্দু বন্দ্যোপাধ্যায়ের যাবতীয় রচনা বিষয় অনুসারে এক একটি খণ্ডে বিন্যস্ত করার নব পরিকল্পনা অনুযায়ী লেখকের সমুদয় গোয়েন্দা কাহিনী একত্রে ব্যোমকেশ সমগ্র নামে প্রকাশ করা হল। শরদিন্দু অমনিবাস-এর প্রথম, দ্বিতীয় ও দ্বাদশ খণ্ডে বিধৃত ব্যোমকেশ সংক্রান্ত অন্যান্য রচনাগুলিও যেমন, সুকুমার সেনের \'ব্যোমকেশ উপন্যাস\', প্রতুলচন্দ্র গুপ্তের \'ব্যোমকেশ, সত্যবতী, সত্যবতীর গাড়ি\' ও \'ব্যোমকেশ ও সত্যবতীর প্রস্থান\' এবং পার্থ চট্টোপাধ্যায়ের \'ব্যোমকেশের সঙ্গে সাক্ষাৎকার\' এই গ্রন্থে (শেষোক্ত দুটি দ্বিতীয় সংস্করণে) যুক্ত করা হয়েছে। শরদিন্দু বন্দ্যোপাধ্যায় ব্যোমকেশ চরিত্রটি নিয়ে ৩৩টি কাহিনী রচনা করেছেন। এর মাঝে ১টি অসম্পূর্ণ। এই কাহিনীগুলি হলঃ সত্যান্বেষী, পথের কাঁটা, সীমান্ত-হীরা,মাকড়সার রস, অর্থমনর্থম্&zwnj;, চোরাবালি, অগ্নিবাণ, উপসংহার, রক্তমুখী নীলা, ব্যোমকেশ ও বরদা, চিত্রচোর, দুর্গরহস্য, চিড়িয়াখানা, আদিম রিপু, বহ্নি-পতঙ্গ, রক্তের দাগ, মণিমন্ডন, অমৃতের মৃত্যু, শৈলরহস্য, অচিন পাখি, কহেন কবি কালিদাস, অদৃশ্য ত্রিকোণ, খুঁজি খুঁজি নারি, অদ্বিতীয়, মগ্নমৈনাক, দুষ্টচক্র, হেঁয়ালির ছন্দ, রুম নম্বর দুই, ছলনার ছন্দ, শজারুর কাঁটা, বেণীসংহার, লোহার বিস্কুট, বিশুপাল বধ (অসমাপ্ত) ।</p>', 'upload/fe594e50bd.jpg', 'Monir', 'Novel', '2022-10-17', 1),
(12, 1, 'ফেলুদা সমগ্র ১', '<p>* ফেলুদা\'র গোয়েন্দাগিরি * বাদশাহী আংটি * কৈলাস চৌধুরীর পাথর * শেয়াল-দেবতা রহস্য * গ্যাংটকে গন্ডগোল * সোনার কেল্লা * বাক্স রহস্য * সমাদ্দারের চাবি * কৈলাসে কেলেঙ্কারি * রয়েল বেঙ্গল রহস্য * জয় বাবা ফেলুনাথ * ঘুরঘুটিয়ার ঘটনা * বোম্বাইয়ের বোম্বেটে * গোঁসাইপুর সরগরম * গোরস্থানে সাবধান * ছিন্নমস্তার অভিশাপ * ফেলুদা\'র গোয়েন্দাগিরি * বাদশাহী আংটি * কৈলাস চৌধুরীর পাথর * শেয়াল-দেবতা রহস্য * গ্যাংটকে গন্ডগোল * সোনার কেল্লা * বাক্স রহস্য * সমাদ্দারের চাবি * কৈলাসে কেলেঙ্কারি * রয়েল বেঙ্গল রহস্য * জয় বাবা ফেলুনাথ * ঘুরঘুটিয়ার ঘটনা * বোম্বাইয়ের বোম্বেটে * গোঁসাইপুর সরগরম * গোরস্থানে সাবধান * ছিন্নমস্তার অভিশাপ * ফেলুদা\'র গোয়েন্দাগিরি * বাদশাহী আংটি * কৈলাস চৌধুরীর পাথর * শেয়াল-দেবতা রহস্য * গ্যাংটকে গন্ডগোল * সোনার কেল্লা * বাক্স রহস্য * সমাদ্দারের চাবি * কৈলাসে কেলেঙ্কারি * রয়েল বেঙ্গল রহস্য * জয় বাবা ফেলুনাথ * ঘুরঘুটিয়ার ঘটনা * বোম্বাইয়ের বোম্বেটে * গোঁসাইপুর সরগরম * গোরস্থানে সাবধান * ছিন্নমস্তার অভিশাপ * ফেলুদা\'র গোয়েন্দাগিরি * বাদশাহী আংটি * কৈলাস চৌধুরীর পাথর * শেয়াল-দেবতা রহস্য * গ্যাংটকে গন্ডগোল * সোনার কেল্লা * বাক্স রহস্য * সমাদ্দারের চাবি * কৈলাসে কেলেঙ্কারি * রয়েল বেঙ্গল রহস্য * জয় বাবা ফেলুনাথ * ঘুরঘুটিয়ার ঘটনা * বোম্বাইয়ের বোম্বেটে * গোঁসাইপুর সরগরম * গোরস্থানে সাবধান * ছিন্নমস্তার অভিশাপ * ফেলুদা\'র গোয়েন্দাগিরি * বাদশাহী আংটি * কৈলাস চৌধুরীর পাথর * শেয়াল-দেবতা রহস্য * গ্যাংটকে গন্ডগোল * সোনার কেল্লা * বাক্স রহস্য * সমাদ্দারের চাবি * কৈলাসে কেলেঙ্কারি * রয়েল বেঙ্গল রহস্য * জয় বাবা ফেলুনাথ * ঘুরঘুটিয়ার ঘটনা * বোম্বাইয়ের বোম্বেটে * গোঁসাইপুর সরগরম * গোরস্থানে সাবধান * ছিন্নমস্তার অভিশাপ * ফেলুদা\'র গোয়েন্দাগিরি * বাদশাহী আংটি * কৈলাস চৌধুরীর পাথর * শেয়াল-দেবতা রহস্য * গ্যাংটকে গন্ডগোল * সোনার কেল্লা * বাক্স রহস্য * সমাদ্দারের চাবি * কৈলাসে কেলেঙ্কারি * রয়েল বেঙ্গল রহস্য * জয় বাবা ফেলুনাথ * ঘুরঘুটিয়ার ঘটনা * বোম্বাইয়ের বোম্বেটে * গোঁসাইপুর সরগরম * গোরস্থানে সাবধান * ছিন্নমস্তার অভিশাপ* ফেলুদা\'র গোয়েন্দাগিরি * বাদশাহী আংটি * কৈলাস চৌধুরীর পাথর * শেয়াল-দেবতা রহস্য * গ্যাংটকে গন্ডগোল * সোনার কেল্লা * বাক্স রহস্য * সমাদ্দারের চাবি * কৈলাসে কেলেঙ্কারি * রয়েল বেঙ্গল রহস্য * জয় বাবা ফেলুনাথ * ঘুরঘুটিয়ার ঘটনা * বোম্বাইয়ের বোম্বেটে * গোঁসাইপুর সরগরম * গোরস্থানে সাবধান * ছিন্নমস্তার অভিশাপ</p>', 'upload/a2a0adce0b.jpg', 'Monir', 'Novel', '2022-10-17', 1),
(13, 2, 'ইব্রাহীম ৬:লড়াই', '<p>বাবা-মার সহায়তায় ইব্রাহীম অবশেষে তার শক্তি নিয়ন্ত্রণ করতে শিখেছে। কিন্তু এখন তাকে প্রথমবারের মত লড়তে হবে অতিমানবীয় শক্তির অধিকারী জঙ্গি গারদানের সাথে। দুই অতিমানবের লড়াইয়ে কে বিজয়ী হবে? জানতে হলে পড়ুন ইব্রাহীম ৬-লড়াইবাবা-মার সহায়তায় ইব্রাহীম অবশেষে তার শক্তি নিয়ন্ত্রণ করতে শিখেছে। কিন্তু এখন তাকে প্রথমবারের মত লড়তে হবে অতিমানবীয় শক্তির অধিকারী জঙ্গি গারদানের সাথে। দুই অতিমানবের লড়াইয়ে কে বিজয়ী হবে? জানতে হলে পড়ুন ইব্রাহীম ৬-লড়াইবাবা-মার সহায়তায় ইব্রাহীম অবশেষে তার শক্তি নিয়ন্ত্রণ করতে শিখেছে। কিন্তু এখন তাকে প্রথমবারের মত লড়তে হবে অতিমানবীয় শক্তির অধিকারী জঙ্গি গারদানের সাথে। দুই অতিমানবের লড়াইয়ে কে বিজয়ী হবে? জানতে হলে পড়ুন ইব্রাহীম ৬-লড়াইবাবা-মার সহায়তায় ইব্রাহীম অবশেষে তার শক্তি নিয়ন্ত্রণ করতে শিখেছে। কিন্তু এখন তাকে প্রথমবারের মত লড়তে হবে অতিমানবীয় শক্তির অধিকারী জঙ্গি গারদানের সাথে। দুই অতিমানবের লড়াইয়ে কে বিজয়ী হবে? জানতে হলে পড়ুন ইব্রাহীম ৬-লড়াই</p>', 'upload/435f070d7f.jpg', 'Monir', 'Comic', '2022-10-17', 1),
(15, 2, 'মফিজ উদ্দিন ৩', '<p>সমান্তরাল এক জগতের অদ্ভূত এক গল্পকথা, নাকি বাস্তব? ব্রিটিশ রাজের কিছু কর্মচারীদ্র গোপন খনিতে কাজ ক্রে চলেছে ভূমিপুত্রের দল। খুঁড়তে খুঁড়তে অন্ধকার, তা পেরিয়ে নিষিদ্ধ এক কুঠুরির দেয়ালে যেই পড়োলো গাঁইতির কোপ। ঘুড়ে দাঁড়ালো হাজার বছরের বন্দী শ্বাপদ। অলৌকিক আর লৌকিক মিলিয়ে একাকার এই গল্পে ফাহিম আনজুম বলে চলেছেন এক অদ্ভূত বদ্ধ-ভীতির শ্বাস্রূদ্ধকর গাথা। চলে আসুন আগ্রহী পাঠক মফিজউদ্দীনের সাথে, পাতাল রাজ্যের বিভীষিকার সাথে দেখা করতে।সমান্তরাল এক জগতের অদ্ভূত এক গল্পকথা, নাকি বাস্তব? ব্রিটিশ রাজের কিছু কর্মচারীদ্র গোপন খনিতে কাজ ক্রে চলেছে ভূমিপুত্রের দল। খুঁড়তে খুঁড়তে অন্ধকার, তা পেরিয়ে নিষিদ্ধ এক কুঠুরির দেয়ালে যেই পড়োলো গাঁইতির কোপ। ঘুড়ে দাঁড়ালো হাজার বছরের বন্দী শ্বাপদ। অলৌকিক আর লৌকিক মিলিয়ে একাকার এই গল্পে ফাহিম আনজুম বলে চলেছেন এক অদ্ভূত বদ্ধ-ভীতির শ্বাস্রূদ্ধকর গাথা। চলে আসুন আগ্রহী পাঠক মফিজউদ্দীনের সাথে, পাতাল রাজ্যের বিভীষিকার সাথে দেখা করতে।সমান্তরাল এক জগতের অদ্ভূত এক গল্পকথা, নাকি বাস্তব? ব্রিটিশ রাজের কিছু কর্মচারীদ্র গোপন খনিতে কাজ ক্রে চলেছে ভূমিপুত্রের দল। খুঁড়তে খুঁড়তে অন্ধকার, তা পেরিয়ে নিষিদ্ধ এক কুঠুরির দেয়ালে যেই পড়োলো গাঁইতির কোপ। ঘুড়ে দাঁড়ালো হাজার বছরের বন্দী শ্বাপদ। অলৌকিক আর লৌকিক মিলিয়ে একাকার এই গল্পে ফাহিম আনজুম বলে চলেছেন এক অদ্ভূত বদ্ধ-ভীতির শ্বাস্রূদ্ধকর গাথা। চলে আসুন আগ্রহী পাঠক মফিজউদ্দীনের সাথে, পাতাল রাজ্যের বিভীষিকার সাথে দেখা করতে।সমান্তরাল এক জগতের অদ্ভূত এক গল্পকথা, নাকি বাস্তব? ব্রিটিশ রাজের কিছু কর্মচারীদ্র গোপন খনিতে কাজ ক্রে চলেছে ভূমিপুত্রের দল। খুঁড়তে খুঁড়তে অন্ধকার, তা পেরিয়ে নিষিদ্ধ এক কুঠুরির দেয়ালে যেই পড়োলো গাঁইতির কোপ। ঘুড়ে দাঁড়ালো হাজার বছরের বন্দী শ্বাপদ। অলৌকিক আর লৌকিক মিলিয়ে একাকার এই গল্পে ফাহিম আনজুম বলে চলেছেন এক অদ্ভূত বদ্ধ-ভীতির শ্বাস্রূদ্ধকর গাথা। চলে আসুন আগ্রহী পাঠক মফিজউদ্দীনের সাথে, পাতাল রাজ্যের বিভীষিকার সাথে দেখা করতে।</p>', 'upload/ea500597f9.jpg', 'Monir', 'Comic', '2022-10-17', 1),
(16, 3, 'মফিজ উদ্দিন ৩', '<p>সমান্তরাল এক জগতের অদ্ভূত এক গল্পকথা, নাকি বাস্তব? ব্রিটিশ রাজের কিছু কর্মচারীদ্র গোপন খনিতে কাজ ক্রে চলেছে ভূমিপুত্রের দল। খুঁড়তে খুঁড়তে অন্ধকার, তা পেরিয়ে নিষিদ্ধ এক কুঠুরির দেয়ালে যেই পড়োলো গাঁইতির কোপ। ঘুড়ে দাঁড়ালো হাজার বছরের বন্দী শ্বাপদ। অলৌকিক আর লৌকিক মিলিয়ে একাকার এই গল্পে ফাহিম আনজুম বলে চলেছেন এক অদ্ভূত বদ্ধ-ভীতির শ্বাস্রূদ্ধকর গাথা। চলে আসুন আগ্রহী পাঠক মফিজউদ্দীনের সাথে, পাতাল রাজ্যের বিভীষিকার সাথে দেখা করতে।সমান্তরাল এক জগতের অদ্ভূত এক গল্পকথা, নাকি বাস্তব? ব্রিটিশ রাজের কিছু কর্মচারীদ্র গোপন খনিতে কাজ ক্রে চলেছে ভূমিপুত্রের দল। খুঁড়তে খুঁড়তে অন্ধকার, তা পেরিয়ে নিষিদ্ধ এক কুঠুরির দেয়ালে যেই পড়োলো গাঁইতির কোপ। ঘুড়ে দাঁড়ালো হাজার বছরের বন্দী শ্বাপদ। অলৌকিক আর লৌকিক মিলিয়ে একাকার এই গল্পে ফাহিম আনজুম বলে চলেছেন এক অদ্ভূত বদ্ধ-ভীতির শ্বাস্রূদ্ধকর গাথা। চলে আসুন আগ্রহী পাঠক মফিজউদ্দীনের সাথে, পাতাল রাজ্যের বিভীষিকার সাথে দেখা করতে।সমান্তরাল এক জগতের অদ্ভূত এক গল্পকথা, নাকি বাস্তব? ব্রিটিশ রাজের কিছু কর্মচারীদ্র গোপন খনিতে কাজ ক্রে চলেছে ভূমিপুত্রের দল। খুঁড়তে খুঁড়তে অন্ধকার, তা পেরিয়ে নিষিদ্ধ এক কুঠুরির দেয়ালে যেই পড়োলো গাঁইতির কোপ। ঘুড়ে দাঁড়ালো হাজার বছরের বন্দী শ্বাপদ। অলৌকিক আর লৌকিক মিলিয়ে একাকার এই গল্পে ফাহিম আনজুম বলে চলেছেন এক অদ্ভূত বদ্ধ-ভীতির শ্বাস্রূদ্ধকর গাথা। চলে আসুন আগ্রহী পাঠক মফিজউদ্দীনের সাথে, পাতাল রাজ্যের বিভীষিকার সাথে দেখা করতে।সমান্তরাল এক জগতের অদ্ভূত এক গল্পকথা, নাকি বাস্তব? ব্রিটিশ রাজের কিছু কর্মচারীদ্র গোপন খনিতে কাজ ক্রে চলেছে ভূমিপুত্রের দল। খুঁড়তে খুঁড়তে অন্ধকার, তা পেরিয়ে নিষিদ্ধ এক কুঠুরির দেয়ালে যেই পড়োলো গাঁইতির কোপ। ঘুড়ে দাঁড়ালো হাজার বছরের বন্দী শ্বাপদ। অলৌকিক আর লৌকিক মিলিয়ে একাকার এই গল্পে ফাহিম আনজুম বলে চলেছেন এক অদ্ভূত বদ্ধ-ভীতির শ্বাস্রূদ্ধকর গাথা। চলে আসুন আগ্রহী পাঠক মফিজউদ্দীনের সাথে, পাতাল রাজ্যের বিভীষিকার সাথে দেখা করতে।</p>', 'upload/4ec102c6c9.jpg', 'Monir', 'Comic', '2022-10-17', 1),
(17, 4, 'ইব্রাহীম ৬:লড়াই', '<p>বাবা-মার সহায়তায় ইব্রাহীম অবশেষে তার শক্তি নিয়ন্ত্রণ করতে শিখেছে। কিন্তু এখন তাকে প্রথমবারের মত লড়তে হবে অতিমানবীয় শক্তির অধিকারী জঙ্গি গারদানের সাথে। দুই অতিমানবের লড়াইয়ে কে বিজয়ী হবে? জানতে হলে পড়ুন ইব্রাহীম ৬-লড়াইবাবা-মার সহায়তায় ইব্রাহীম অবশেষে তার শক্তি নিয়ন্ত্রণ করতে শিখেছে। কিন্তু এখন তাকে প্রথমবারের মত লড়তে হবে অতিমানবীয় শক্তির অধিকারী জঙ্গি গারদানের সাথে। দুই অতিমানবের লড়াইয়ে কে বিজয়ী হবে? জানতে হলে পড়ুন ইব্রাহীম ৬-লড়াইবাবা-মার সহায়তায় ইব্রাহীম অবশেষে তার শক্তি নিয়ন্ত্রণ করতে শিখেছে। কিন্তু এখন তাকে প্রথমবারের মত লড়তে হবে অতিমানবীয় শক্তির অধিকারী জঙ্গি গারদানের সাথে। দুই অতিমানবের লড়াইয়ে কে বিজয়ী হবে? জানতে হলে পড়ুন ইব্রাহীম ৬-লড়াইবাবা-মার সহায়তায় ইব্রাহীম অবশেষে তার শক্তি নিয়ন্ত্রণ করতে শিখেছে। কিন্তু এখন তাকে প্রথমবারের মত লড়তে হবে অতিমানবীয় শক্তির অধিকারী জঙ্গি গারদানের সাথে। দুই অতিমানবের লড়াইয়ে কে বিজয়ী হবে? জানতে হলে পড়ুন ইব্রাহীম ৬-লড়াই</p>', 'upload/a5d01e0a60.jpg', 'Monir', 'Comic', '2022-10-17', 1),
(21, 4, 'বাংলা কবিতা', '<p>বাংলা-কবিতা ডট কম ওয়েবসাইটটি বর্তমান সময়ে বাংলা কবিতার সবচেয়ে জনপ্রিয় ও সমৃদ্ধ ওয়েব পোর্টাল। এ প্রজন্মের শতাধিক কবি আমাদের কবিতার আসরে প্রতিদিন কবিতা প্রকাশ করছেন। কবিতা প্রকাশের পাশাপাশি রয়েছে কবি ও কবিতার উপর নানারকম আলোচনা, কবিতার বই ও আবৃত্তি প্রকাশের সুবিধা। উপস্থিত সদস্যেরা যেমন সমমনা কবি ও সদস্যদের সাথে পরিচিত হতে পারছেন, পাশাপাশি ওয়েবসাইটের সার্বিক আবহে ঋদ্ধ হচ্ছেন বাংলা সাহিত্যের কাব্যিক আবেশে। এছাড়াও এখানে রয়েছে বাংলার খ্যাতিমান কবিদের সহস্রাধিক কবিতার এক সংগ্রহশালা, যা নিয়মিত আরও সমৃদ্ধ হচ্ছে। আপনি যদি সৌখিন কবি, আবৃত্তিকার, অথবা কবিতা-প্রেমী যে কেউ হয়ে থাকেন, তবে জানবেন এই ওয়েবসাইটটি আপনার জন্যেই তৈরি করা হয়েছে!</p>', 'upload/dd7651916a.jpg', 'monir', 'poem', '2022-10-30', 1),
(22, 8, 'ইসলামী আদর্শ ও জাহিলি কীর্তিকলাপ', '<p>লেখক : আব্দুল আযীয ইবন মারযুক আত ত্বারীফী অনুবাদ : সানাউল্লাহ নজির আহমদ সম্পাদনা : আবু বকর মুহাম্মাদ যাকারিয়া প্রকাশক : ইসলাম প্রচার ব্যুরো, রাবওয়াহ, রিয়াদ আশুরাকে ঘিরে ইসলামী আদর্শ ও জাহিলি কীর্তিকলাপ: আশুরা ইসলামে একটি সম্মানিত দিন। রাসূলুল্লাহ সাল্লাল্লাহু আলাইহি ওয়াসাল্লাম হিজরতের পূর্বে ও পরে এ দিনের সাওম পালন করতেন। কারণ, এ দিনে আল্লাহ তা&lsquo;আলা মূসা আলাইহিস সালাম ও তার জাতিকে ফির&lsquo;আউনের কবল থেকে রক্ষা করেছিলেন। এটিই হচ্ছে এ দিনের মর্যাদার মূল কথা। কিন্তু শিয়ারা এ দিনে যেসব অনুষ্ঠান ও কর্মকাণ্ড করে থাকে তা কখনো ইসলামে অনুমোদিত নয়। আলোচ্য প্রবন্ধে লেখক তা বিস্তারিত আলোচনা করেছেন।</p>', 'upload/c103c4fe44.jpg', 'monir', 'Islamic', '2022-10-30', 1),
(23, 8, 'প্যারাডক্সিক্যাল সাজিদ', '<p>প্যারাডক্সিক্যাল সাজিদ&nbsp;বইটিতে অনেক শিক্ষণীয় ব্যাপার আছে যা আমাদের জীবন রাঙানোর জন্য হলেও সুপাঠ্য&nbsp;ও বন্ধু মহলে উপহার দেওয়ার মত&nbsp;সবথেকে বেশি প্রাসঙ্গিক বই হবে বলে মনে হয়।&nbsp;আমার খুব প্রিয় একজন লেখক আরিফ আজাদ,&nbsp;সুযোগ হলে উনার&nbsp;এই&nbsp;অনবদ্য&nbsp;বইটি পড়বেন।&nbsp;এই বই থেকে যেমন কিশোর পাঠকরা পাবে রোমাঞ্চকর অনুভূতি তেমনি অন্য পাঠকরা পাবেন কঠিন বাস্তবতার সন্ধান।&nbsp;লেখক আরিফ আজাদ এর দূরদর্শিতা&nbsp;লেখার ঘটনা পাঠক মনে ব্যাপকভাবে নাড়া দিয়েছে&nbsp;এবং তাঁর নিখুঁত উপস্থাপন&nbsp;শুরু থেকে শেষ পর্যন্ত পাঠককে একটা টেনশনের মধ্যে রাখতে পেরেছে ও&nbsp;প্যারাডক্সিক্যাল সাজিদ বইটিকে বাস্তব করে তুলেছে।</p>\r\n<div class=\"code-block code-block-7\">&nbsp;</div>\r\n<p>ভালোবাসার এ&nbsp;প্যারাডক্সিক্যাল সাজিদ&nbsp;বইটি যেন আপনার&nbsp;সুসময় ও দুঃসময়ের বন্ধু হতে পারে এ শুভ কামনা।</p>\r\n<p>প্যারাডক্সিক্যাল সাজিদ বইয়ের&nbsp;এই সংস্করণটি মোটামুটি ছোট, খুব দ্রুত পড়ে শেষ করা যায় যার কারণে কাহিনী নিয়ে আমি তেমন&nbsp;কিছু লিখলাম না। লেখক আরিফ আজাদ এর&nbsp;এই বই পড়ে এবং আমার বন্ধু-বান্ধবদের সাথে আলোচনা করে আমার যে ধারনা হলো তা থেকে সংক্ষিপ্ত আকারে লিখলাম। প্যারাডক্সিক্যাল সাজিদ বই টা না পড়লে এই কঠিন সত্যের সম্মুখীন হওয়া কিংবা রোমাঞ্চকর সেই অনুভূতি পাওয়া সম্ভব নয়।</p>', 'upload/b764024b87.jpg', 'monir', 'Islamic', '2022-10-30', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_slider`
--

CREATE TABLE `tbl_slider` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_slider`
--

INSERT INTO `tbl_slider` (`id`, `title`, `image`) VALUES
(1, 'Humayon\'s Book', 'upload/slider/191cecb775.jpg'),
(2, 'Nazrul\'s Book', 'upload/slider/a4d524baab.jpg'),
(4, 'Rabindronath\'s Book', 'upload/slider/1a7e7efa1e.jpg'),
(5, 'Jasim Uddin Book', 'upload/slider/a69b6217de.jpg'),
(6, 'Ahsan Habib', 'upload/slider/1e7bc977e1.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_social`
--

CREATE TABLE `tbl_social` (
  `id` int(11) NOT NULL,
  `fb` varchar(255) NOT NULL,
  `tw` varchar(255) NOT NULL,
  `ln` varchar(255) NOT NULL,
  `gp` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_social`
--

INSERT INTO `tbl_social` (`id`, `fb`, `tw`, `ln`, `gp`) VALUES
(1, 'http://facebook.com', 'http://twitter.com', 'http://linkedin.com', 'http://google.com');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_theme`
--

CREATE TABLE `tbl_theme` (
  `id` int(11) NOT NULL,
  `theme` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_theme`
--

INSERT INTO `tbl_theme` (`id`, `theme`) VALUES
(1, 'yellow');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_user`
--

CREATE TABLE `tbl_user` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(32) NOT NULL,
  `email` varchar(255) NOT NULL,
  `details` text NOT NULL,
  `role` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_user`
--

INSERT INTO `tbl_user` (`id`, `name`, `username`, `password`, `email`, `details`, `role`) VALUES
(1, 'MD. MONIRUZZAMAN', 'monir', '827ccb0eea8a706c4c34a16891f84e7b', 'monir.cse6.bu@gmail.com', '<p>Student of university of barisal.Department of CSE.</p>\r\n<p>&nbsp;</p>\r\n<div id=\"gtx-anchor\" style=\"position: absolute; visibility: hidden; left: 8px; top: 8px; width: 260.406px; height: 34px;\">&nbsp;</div>\r\n<div class=\"jfk-bubble gtx-bubble\" style=\"visibility: visible; left: 123px; top: 52px; opacity: 1;\">&nbsp;</div>', 0),
(2, 'Taohid', 'Islam', '3111962eeb9509eaf53b21f1dce9c00f', 'tauhid.cse6@gmail.com', '<p>I author of this shop</p>', 1),
(3, 'Nayeem', 'Obaidul', '827ccb0eea8a706c4c34a16891f84e7b', 'neyeem.cse6.bu@gmail.com', '<p>Editor of this site</p>', 2);

-- --------------------------------------------------------

--
-- Table structure for table `title_slogan`
--

CREATE TABLE `title_slogan` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `slogan` varchar(255) NOT NULL,
  `logo` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `title_slogan`
--

INSERT INTO `title_slogan` (`id`, `title`, `slogan`, `logo`) VALUES
(1, 'Book Publication Media', 'You will find all categories of books here.', 'upload/logo.png');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_category`
--
ALTER TABLE `tbl_category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_contact`
--
ALTER TABLE `tbl_contact`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_footer`
--
ALTER TABLE `tbl_footer`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_page`
--
ALTER TABLE `tbl_page`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_post`
--
ALTER TABLE `tbl_post`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_slider`
--
ALTER TABLE `tbl_slider`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_social`
--
ALTER TABLE `tbl_social`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_theme`
--
ALTER TABLE `tbl_theme`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_user`
--
ALTER TABLE `tbl_user`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `title_slogan`
--
ALTER TABLE `title_slogan`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_category`
--
ALTER TABLE `tbl_category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `tbl_contact`
--
ALTER TABLE `tbl_contact`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbl_footer`
--
ALTER TABLE `tbl_footer`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbl_page`
--
ALTER TABLE `tbl_page`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tbl_post`
--
ALTER TABLE `tbl_post`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `tbl_slider`
--
ALTER TABLE `tbl_slider`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `tbl_social`
--
ALTER TABLE `tbl_social`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbl_theme`
--
ALTER TABLE `tbl_theme`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbl_user`
--
ALTER TABLE `tbl_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `title_slogan`
--
ALTER TABLE `title_slogan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
