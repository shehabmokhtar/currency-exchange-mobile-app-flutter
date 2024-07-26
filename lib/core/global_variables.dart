import 'package:currency_exchange/core/models/currencies_response_model.dart';
import 'package:currency_exchange/core/models/curriency_model.dart';

// In this variable we will store the currencies rates
CurrenciesResponseModel? currenciesRates;

// The list of curriencies
List<CurriencyModel> currencies = [
  const CurriencyModel(
      1, 'path_to_image/AED.png', 'United Arab Emirates', 'Dirham', 'AED'),
  const CurriencyModel(
      2, 'path_to_image/AFN.png', 'Afghanistan', 'Afghani', 'AFN'),
  const CurriencyModel(3, 'path_to_image/ALL.png', 'Albania', 'Lek', 'ALL'),
  const CurriencyModel(4, 'path_to_image/AMD.png', 'Armenia', 'Dram', 'AMD'),
  const CurriencyModel(
      5, 'path_to_image/ANG.png', 'Netherlands Antilles', 'Guilder', 'ANG'),
  const CurriencyModel(6, 'path_to_image/AOA.png', 'Angola', 'Kwanza', 'AOA'),
  const CurriencyModel(7, 'path_to_image/ARS.png', 'Argentina', 'Peso', 'ARS'),
  const CurriencyModel(
      8, 'path_to_image/AUD.png', 'Australia', 'Dollar', 'AUD'),
  const CurriencyModel(9, 'path_to_image/AWG.png', 'Aruba', 'Florin', 'AWG'),
  const CurriencyModel(
      10, 'path_to_image/AZN.png', 'Azerbaijan', 'Manat', 'AZN'),
  const CurriencyModel(
      11, 'path_to_image/BAM.png', 'Bosnia and Herzegovina', 'Mark', 'BAM'),
  const CurriencyModel(
      12, 'path_to_image/BBD.png', 'Barbados', 'Dollar', 'BBD'),
  const CurriencyModel(
      13, 'path_to_image/BDT.png', 'Bangladesh', 'Taka', 'BDT'),
  const CurriencyModel(14, 'path_to_image/BGN.png', 'Bulgaria', 'Lev', 'BGN'),
  const CurriencyModel(15, 'path_to_image/BHD.png', 'Bahrain', 'Dinar', 'BHD'),
  const CurriencyModel(16, 'path_to_image/BIF.png', 'Burundi', 'Franc', 'BIF'),
  const CurriencyModel(17, 'path_to_image/BMD.png', 'Bermuda', 'Dollar', 'BMD'),
  const CurriencyModel(18, 'path_to_image/BND.png', 'Brunei', 'Dollar', 'BND'),
  const CurriencyModel(
      19, 'path_to_image/BOB.png', 'Bolivia', 'Boliviano', 'BOB'),
  const CurriencyModel(20, 'path_to_image/BRL.png', 'Brazil', 'Real', 'BRL'),
  const CurriencyModel(21, 'path_to_image/BSD.png', 'Bahamas', 'Dollar', 'BSD'),
  const CurriencyModel(
      22, 'path_to_image/BTC.png', 'Bitcoin', 'Bitcoin', 'BTC'),
  const CurriencyModel(
      23, 'path_to_image/BTN.png', 'Bhutan', 'Ngultrum', 'BTN'),
  const CurriencyModel(24, 'path_to_image/BWP.png', 'Botswana', 'Pula', 'BWP'),
  const CurriencyModel(25, 'path_to_image/BYN.png', 'Belarus', 'Ruble', 'BYN'),
  const CurriencyModel(
      26, 'path_to_image/BYR.png', 'Belarus (Old)', 'Ruble', 'BYR'),
  const CurriencyModel(27, 'path_to_image/BZD.png', 'Belize', 'Dollar', 'BZD'),
  const CurriencyModel(28, 'path_to_image/CAD.png', 'Canada', 'Dollar', 'CAD'),
  const CurriencyModel(29, 'path_to_image/CDF.png', 'Congo', 'Franc', 'CDF'),
  const CurriencyModel(
      30, 'path_to_image/CHF.png', 'Switzerland', 'Franc', 'CHF'),
  const CurriencyModel(
      31, 'path_to_image/CLF.png', 'Chile', 'Unidad de Fomento', 'CLF'),
  const CurriencyModel(32, 'path_to_image/CLP.png', 'Chile', 'Peso', 'CLP'),
  const CurriencyModel(33, 'path_to_image/CNY.png', 'China', 'Yuan', 'CNY'),
  const CurriencyModel(
      34, 'path_to_image/CNH.png', 'China (Offshore)', 'Yuan', 'CNH'),
  const CurriencyModel(35, 'path_to_image/COP.png', 'Colombia', 'Peso', 'COP'),
  const CurriencyModel(
      36, 'path_to_image/CRC.png', 'Costa Rica', 'Colon', 'CRC'),
  const CurriencyModel(
      37, 'path_to_image/CUC.png', 'Cuba', 'Convertible Peso', 'CUC'),
  const CurriencyModel(38, 'path_to_image/CUP.png', 'Cuba', 'Peso', 'CUP'),
  const CurriencyModel(
      39, 'path_to_image/CVE.png', 'Cape Verde', 'Escudo', 'CVE'),
  const CurriencyModel(
      40, 'path_to_image/CZK.png', 'Czech Republic', 'Koruna', 'CZK'),
  const CurriencyModel(41, 'path_to_image/DJF.png', 'Djibouti', 'Franc', 'DJF'),
  const CurriencyModel(42, 'path_to_image/DKK.png', 'Denmark', 'Krone', 'DKK'),
  const CurriencyModel(
      43, 'path_to_image/DOP.png', 'Dominican Republic', 'Peso', 'DOP'),
  const CurriencyModel(44, 'path_to_image/DZD.png', 'Algeria', 'Dinar', 'DZD'),
  const CurriencyModel(45, 'path_to_image/EGP.png', 'Egypt', 'Pound', 'EGP'),
  const CurriencyModel(46, 'path_to_image/ERN.png', 'Eritrea', 'Nakfa', 'ERN'),
  const CurriencyModel(47, 'path_to_image/ETB.png', 'Ethiopia', 'Birr', 'ETB'),
  const CurriencyModel(48, 'path_to_image/EUR.png', 'Eurozone', 'Euro', 'EUR'),
  const CurriencyModel(49, 'path_to_image/FJD.png', 'Fiji', 'Dollar', 'FJD'),
  const CurriencyModel(
      50, 'path_to_image/FKP.png', 'Falkland Islands', 'Pound', 'FKP'),
  const CurriencyModel(
      51, 'path_to_image/GBP.png', 'United Kingdom', 'Pound', 'GBP'),
  const CurriencyModel(52, 'path_to_image/GEL.png', 'Georgia', 'Lari', 'GEL'),
  const CurriencyModel(53, 'path_to_image/GGP.png', 'Guernsey', 'Pound', 'GGP'),
  const CurriencyModel(54, 'path_to_image/GHS.png', 'Ghana', 'Cedi', 'GHS'),
  const CurriencyModel(
      55, 'path_to_image/GIP.png', 'Gibraltar', 'Pound', 'GIP'),
  const CurriencyModel(56, 'path_to_image/GMD.png', 'Gambia', 'Dalasi', 'GMD'),
  const CurriencyModel(57, 'path_to_image/GNF.png', 'Guinea', 'Franc', 'GNF'),
  const CurriencyModel(
      58, 'path_to_image/GTQ.png', 'Guatemala', 'Quetzal', 'GTQ'),
  const CurriencyModel(59, 'path_to_image/GYD.png', 'Guyana', 'Dollar', 'GYD'),
  const CurriencyModel(
      60, 'path_to_image/HKD.png', 'Hong Kong', 'Dollar', 'HKD'),
  const CurriencyModel(
      61, 'path_to_image/HNL.png', 'Honduras', 'Lempira', 'HNL'),
  const CurriencyModel(62, 'path_to_image/HRK.png', 'Croatia', 'Kuna', 'HRK'),
  const CurriencyModel(63, 'path_to_image/HTG.png', 'Haiti', 'Gourde', 'HTG'),
  const CurriencyModel(64, 'path_to_image/HUF.png', 'Hungary', 'Forint', 'HUF'),
  const CurriencyModel(
      65, 'path_to_image/IDR.png', 'Indonesia', 'Rupiah', 'IDR'),
  const CurriencyModel(66, 'path_to_image/ILS.png', 'Israel', 'Shekel', 'ILS'),
  const CurriencyModel(
      67, 'path_to_image/IMP.png', 'Isle of Man', 'Pound', 'IMP'),
  const CurriencyModel(68, 'path_to_image/INR.png', 'India', 'Rupee', 'INR'),
  const CurriencyModel(69, 'path_to_image/IQD.png', 'Iraq', 'Dinar', 'IQD'),
  const CurriencyModel(70, 'path_to_image/IRR.png', 'Iran', 'Rial', 'IRR'),
  const CurriencyModel(71, 'path_to_image/ISK.png', 'Iceland', 'Krona', 'ISK'),
  const CurriencyModel(72, 'path_to_image/JEP.png', 'Jersey', 'Pound', 'JEP'),
  const CurriencyModel(73, 'path_to_image/JMD.png', 'Jamaica', 'Dollar', 'JMD'),
  const CurriencyModel(74, 'path_to_image/JOD.png', 'Jordan', 'Dinar', 'JOD'),
  const CurriencyModel(75, 'path_to_image/JPY.png', 'Japan', 'Yen', 'JPY'),
  const CurriencyModel(76, 'path_to_image/KES.png', 'Kenya', 'Shilling', 'KES'),
  const CurriencyModel(77, 'path_to_image/KGS.png', 'Kyrgyzstan', 'Som', 'KGS'),
  const CurriencyModel(78, 'path_to_image/KHR.png', 'Cambodia', 'Riel', 'KHR'),
  const CurriencyModel(79, 'path_to_image/KMF.png', 'Comoros', 'Franc', 'KMF'),
  const CurriencyModel(
      80, 'path_to_image/KPW.png', 'North Korea', 'Won', 'KPW'),
  const CurriencyModel(
      81, 'path_to_image/KRW.png', 'South Korea', 'Won', 'KRW'),
  const CurriencyModel(82, 'path_to_image/KWD.png', 'Kuwait', 'Dinar', 'KWD'),
  const CurriencyModel(
      83, 'path_to_image/KYD.png', 'Cayman Islands', 'Dollar', 'KYD'),
  const CurriencyModel(
      84, 'path_to_image/KZT.png', 'Kazakhstan', 'Tenge', 'KZT'),
  const CurriencyModel(85, 'path_to_image/LAK.png', 'Laos', 'Kip', 'LAK'),
  const CurriencyModel(86, 'path_to_image/LBP.png', 'Lebanon', 'Pound', 'LBP'),
  const CurriencyModel(
      87, 'path_to_image/LKR.png', 'Sri Lanka', 'Rupee', 'LKR'),
  const CurriencyModel(88, 'path_to_image/LRD.png', 'Liberia', 'Dollar', 'LRD'),
  const CurriencyModel(89, 'path_to_image/LSL.png', 'Lesotho', 'Loti', 'LSL'),
  const CurriencyModel(
      90, 'path_to_image/LTL.png', 'Lithuania', 'Litas', 'LTL'),
  const CurriencyModel(91, 'path_to_image/LVL.png', 'Latvia', 'Lat', 'LVL'),
  const CurriencyModel(92, 'path_to_image/LYD.png', 'Libya', 'Dinar', 'LYD'),
  const CurriencyModel(93, 'path_to_image/MAD.png', 'Morocco', 'Dirham', 'MAD'),
  const CurriencyModel(94, 'path_to_image/MDL.png', 'Moldova', 'Leu', 'MDL'),
  const CurriencyModel(
      95, 'path_to_image/MGA.png', 'Madagascar', 'Ariary', 'MGA'),
  const CurriencyModel(
      96, 'path_to_image/MKD.png', 'North Macedonia', 'Denar', 'MKD'),
  const CurriencyModel(97, 'path_to_image/MMK.png', 'Myanmar', 'Kyat', 'MMK'),
  const CurriencyModel(
      98, 'path_to_image/MNT.png', 'Mongolia', 'Tugrik', 'MNT'),
  const CurriencyModel(99, 'path_to_image/MOP.png', 'Macau', 'Pataca', 'MOP'),
  const CurriencyModel(
      100, 'path_to_image/MRU.png', 'Mauritania', 'Ouguiya', 'MRU'),
  const CurriencyModel(
      101, 'path_to_image/MUR.png', 'Mauritius', 'Rupee', 'MUR'),
  const CurriencyModel(
      102, 'path_to_image/MVR.png', 'Maldives', 'Rufiyaa', 'MVR'),
  const CurriencyModel(103, 'path_to_image/MWK.png', 'Malawi', 'Kwacha', 'MWK'),
  const CurriencyModel(104, 'path_to_image/MXN.png', 'Mexico', 'Peso', 'MXN'),
  const CurriencyModel(
      105, 'path_to_image/MYR.png', 'Malaysia', 'Ringgit', 'MYR'),
  const CurriencyModel(
      106, 'path_to_image/MZN.png', 'Mozambique', 'Metical', 'MZN'),
  const CurriencyModel(
      107, 'path_to_image/NAD.png', 'Namibia', 'Dollar', 'NAD'),
  const CurriencyModel(108, 'path_to_image/NGN.png', 'Nigeria', 'Naira', 'NGN'),
  const CurriencyModel(
      109, 'path_to_image/NIO.png', 'Nicaragua', 'Cordoba', 'NIO'),
  const CurriencyModel(110, 'path_to_image/NOK.png', 'Norway', 'Krone', 'NOK'),
  const CurriencyModel(111, 'path_to_image/NPR.png', 'Nepal', 'Rupee', 'NPR'),
  const CurriencyModel(
      112, 'path_to_image/NZD.png', 'New Zealand', 'Dollar', 'NZD'),
  const CurriencyModel(113, 'path_to_image/OMR.png', 'Oman', 'Rial', 'OMR'),
  const CurriencyModel(114, 'path_to_image/PAB.png', 'Panama', 'Balboa', 'PAB'),
  const CurriencyModel(115, 'path_to_image/PEN.png', 'Peru', 'Sol', 'PEN'),
  const CurriencyModel(
      116, 'path_to_image/PGK.png', 'Papua New Guinea', 'Kina', 'PGK'),
  const CurriencyModel(
      117, 'path_to_image/PHP.png', 'Philippines', 'Peso', 'PHP'),
  const CurriencyModel(
      118, 'path_to_image/PKR.png', 'Pakistan', 'Rupee', 'PKR'),
  const CurriencyModel(119, 'path_to_image/PLN.png', 'Poland', 'Zloty', 'PLN'),
  const CurriencyModel(
      120, 'path_to_image/PYG.png', 'Paraguay', 'Guarani', 'PYG'),
  const CurriencyModel(121, 'path_to_image/QAR.png', 'Qatar', 'Rial', 'QAR'),
  const CurriencyModel(122, 'path_to_image/RON.png', 'Romania', 'Leu', 'RON'),
  const CurriencyModel(123, 'path_to_image/RSD.png', 'Serbia', 'Dinar', 'RSD'),
  const CurriencyModel(124, 'path_to_image/RUB.png', 'Russia', 'Ruble', 'RUB'),
  const CurriencyModel(125, 'path_to_image/RWF.png', 'Rwanda', 'Franc', 'RWF'),
  const CurriencyModel(
      126, 'path_to_image/SAR.png', 'Saudi Arabia', 'Riyal', 'SAR'),
  const CurriencyModel(
      127, 'path_to_image/SBD.png', 'Solomon Islands', 'Dollar', 'SBD'),
  const CurriencyModel(
      128, 'path_to_image/SCR.png', 'Seychelles', 'Rupee', 'SCR'),
  const CurriencyModel(129, 'path_to_image/SDG.png', 'Sudan', 'Pound', 'SDG'),
  const CurriencyModel(130, 'path_to_image/SEK.png', 'Sweden', 'Krona', 'SEK'),
  const CurriencyModel(
      131, 'path_to_image/SGD.png', 'Singapore', 'Dollar', 'SGD'),
  const CurriencyModel(
      132, 'path_to_image/SHP.png', 'Saint Helena', 'Pound', 'SHP'),
  const CurriencyModel(
      133, 'path_to_image/SLE.png', 'Sierra Leone', 'Leone', 'SLE'),
  const CurriencyModel(
      134, 'path_to_image/SLL.png', 'Sierra Leone (Old)', 'Leone', 'SLL'),
  const CurriencyModel(
      135, 'path_to_image/SOS.png', 'Somalia', 'Shilling', 'SOS'),
  const CurriencyModel(
      136, 'path_to_image/SRD.png', 'Suriname', 'Dollar', 'SRD'),
  const CurriencyModel(
      137, 'path_to_image/STD.png', 'Sao Tome and Principe', 'Dobra', 'STD'),
  const CurriencyModel(
      138, 'path_to_image/SVC.png', 'El Salvador', 'Colon', 'SVC'),
  const CurriencyModel(139, 'path_to_image/SYP.png', 'Syria', 'Pound', 'SYP'),
  const CurriencyModel(
      140, 'path_to_image/SZL.png', 'Eswatini', 'Lilangeni', 'SZL'),
  const CurriencyModel(141, 'path_to_image/THB.png', 'Thailand', 'Baht', 'THB'),
  const CurriencyModel(
      142, 'path_to_image/TJS.png', 'Tajikistan', 'Somoni', 'TJS'),
  const CurriencyModel(
      143, 'path_to_image/TMT.png', 'Turkmenistan', 'Manat', 'TMT'),
  const CurriencyModel(144, 'path_to_image/TND.png', 'Tunisia', 'Dinar', 'TND'),
  const CurriencyModel(145, 'path_to_image/TOP.png', 'Tonga', 'Paanga', 'TOP'),
  const CurriencyModel(146, 'path_to_image/TRY.png', 'Turkey', 'Lira', 'TRY'),
  const CurriencyModel(
      147, 'path_to_image/TTD.png', 'Trinidad and Tobago', 'Dollar', 'TTD'),
  const CurriencyModel(148, 'path_to_image/TWD.png', 'Taiwan', 'Dollar', 'TWD'),
  const CurriencyModel(
      149, 'path_to_image/TZS.png', 'Tanzania', 'Shilling', 'TZS'),
  const CurriencyModel(
      150, 'path_to_image/UAH.png', 'Ukraine', 'Hryvnia', 'UAH'),
  const CurriencyModel(
      151, 'path_to_image/UGX.png', 'Uganda', 'Shilling', 'UGX'),
  const CurriencyModel(
      152, 'path_to_image/USD.png', 'United States', 'Dollar', 'USD'),
  const CurriencyModel(153, 'path_to_image/UYU.png', 'Uruguay', 'Peso', 'UYU'),
  const CurriencyModel(
      154, 'path_to_image/UZS.png', 'Uzbekistan', 'Som', 'UZS'),
  const CurriencyModel(
      155, 'path_to_image/VEF.png', 'Venezuela (Old)', 'Bolivar', 'VEF'),
  const CurriencyModel(
      156, 'path_to_image/VES.png', 'Venezuela', 'Bolivar', 'VES'),
  const CurriencyModel(157, 'path_to_image/VND.png', 'Vietnam', 'Dong', 'VND'),
  const CurriencyModel(158, 'path_to_image/VUV.png', 'Vanuatu', 'Vatu', 'VUV'),
  const CurriencyModel(159, 'path_to_image/WST.png', 'Samoa', 'Tala', 'WST'),
  const CurriencyModel(160, 'path_to_image/XAF.png', 'Central African Republic',
      'CFA Franc', 'XAF'),
  const CurriencyModel(
      161, 'path_to_image/XAG.png', 'Silver', 'Troy Ounce', 'XAG'),
  const CurriencyModel(
      162, 'path_to_image/XAU.png', 'Gold', 'Troy Ounce', 'XAU'),
  const CurriencyModel(
      163, 'path_to_image/XCD.png', 'East Caribbean', 'Dollar', 'XCD'),
  const CurriencyModel(164, 'path_to_image/XDR.png',
      'International Monetary Fund', 'Special Drawing Rights', 'XDR'),
  const CurriencyModel(165, 'path_to_image/XOF.png',
      'West African Economic and Monetary Union', 'CFA Franc', 'XOF'),
  const CurriencyModel(166, 'path_to_image/XPF.png',
      'French territories of the Pacific', 'CFP Franc', 'XPF'),
  const CurriencyModel(167, 'path_to_image/YER.png', 'Yemen', 'Rial', 'YER'),
  const CurriencyModel(
      168, 'path_to_image/ZAR.png', 'South Africa', 'Rand', 'ZAR'),
  const CurriencyModel(
      169, 'path_to_image/ZMK.png', 'Zambia (Old)', 'Kwacha', 'ZMK'),
  const CurriencyModel(170, 'path_to_image/ZMW.png', 'Zambia', 'Kwacha', 'ZMW'),
  const CurriencyModel(
      171, 'path_to_image/ZWL.png', 'Zimbabwe', 'Dollar', 'ZWL'),
];
