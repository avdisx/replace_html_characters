extension ReplaceHTMLCharacters on String {
  String get replaceHTMLCharacters => _specialCharacterEncode(this);
}

String _specialCharacterEncode(String value) {
  String tempValue = value;
  for (var i = 0; i < _characters.keys.length; i++) {
    String activeKey = _characters.keys.toList()[i];
    if (_characters[activeKey] != null) {
      tempValue = tempValue.replaceAll(activeKey, _characters[activeKey]!);
    }
  }
  return tempValue;
}

const Map<String, String> _characters = <String, String>{
  '&#32;': ' ',
  '&#x20;': ' ',
  '&#33;': '!',
  '&#x21;': '!',
  '&#34;': '"',
  '&quot;': '"',
  '&#x22;': '"',
  '&#35;': '#',
  '&#x23;': '#',
  '&#36;': '\$',
  '&#x24;': '\$',
  '&#37;': '%',
  '&#x25;': '%',
  '&#38;': '&',
  '&amp;': '&',
  '&#x26': '&',
  '&#39;': '\'',
  '&apos;': '\'',
  '&#x27;': '\'',
  '&#40;': '(',
  '&#x28;': '(',
  '&#41;': ')',
  '&#x29;': ')',
  '&#42;': '*',
  '&#x2a;': '*',
  '&#43;': '+',
  '&#x2b;': '+',
  '&#44;': ',',
  '&#x2c': ',',
  '&#45;': '-',
  '&#x2d': '-',
  '&#46;': '.',
  '&#x2e;': '.',
  '&#47;': '/',
  '&#x2f;': '/',
  '&#48;': '0',
  '&#x30;': '0',
  '&#49;': '1',
  '&#x31;': '1',
  '&#50;': '2',
  '&#x32;': '2',
  '&#51;': '3',
  '&#x33': '3',
  '&#52;': '4',
  '&#x34': '4',
  '&#53;': '5',
  '&#x35': '5',
  '&#54;': '6',
  '&#x36': '6',
  '&#55;': '7',
  '&#x37': '7',
  '&#56;': '8',
  '&#x38': '8',
  '&#57;': '9',
  '&#x39': '9',
  '&#58;': ':',
  '&#x3a;': ':',
  '&#59;': ';',
  '&#x3b;': ';',
  '&#60;': '<',
  '&#x3c;': '<',
  '&lt;': '<',
  '&#61;': '=',
  '&#x3d;': '=',
  '&#62;': '>',
  '&#x3e;': '>',
  '&gt;': '>',
  '&#63;': '?',
  '&#x3f;': '?',
  '&#64;': '@',
  '&#x40;': '@',
  '&#65;': 'A',
  '&#x41;': 'A',
  '&#66;': 'B',
  '&#x42;': 'B',
  '&#67;': 'C',
  '&#x43;': 'C',
  '&#68;': 'D',
  '&#x44;': 'D',
  '&#69;': 'E',
  '&#x45;': 'E',
  '&#70;': 'F',
  '&#x46;': 'F',
  '&#71;': 'G',
  '&#x47;': 'G',
  '&#72;': 'H',
  '&#x48;': 'H',
  '&#73;': 'I',
  '&#x49;': 'I',
  '&#74;': 'J',
  '&#x4a;': 'J',
  '&#75;': 'K',
  '&#x4b;': 'K',
  '&#76;': 'L',
  '&#x4c;': 'L',
  '&#77;': 'M',
  '&#x4d;': 'M',
  '&#78;': 'N',
  '&#x4e;': 'N',
  '&#79;': 'O',
  '&#x4f;': 'O',
  '&#80;': 'P',
  '&#x50;': 'P',
  '&#81;': 'Q',
  '&#x51;': 'Q',
  '&#82;': 'R',
  '&#x52;': 'R',
  '&#83;': 'S',
  '&#x53;': 'S',
  '&#84;': 'T',
  '&#x54;': 'T',
  '&#85;': 'U',
  '&#x55;': 'U',
  '&#86;': 'V',
  '&#x56;': 'V',
  '&#87;': 'W',
  '&#x57;': 'W',
  '&#88;': 'X',
  '&#x58;': 'X',
  '&#89;': 'Y',
  '&#x59;': 'Y',
  '&#90;': 'Z',
  '&#x5a;': 'Z',
  '&#91;': '[',
  '&#x5b;': '[',
  '&#92;': '\\',
  '&#x5c;': '\\',
  '&#93;': ']',
  '&#x5d;': ']',
  '&#94;': '^',
  '&#x5e;': '^',
  '&#95;': '_',
  '&#x5f;': '_',
  '&#96;': '`',
  '&#x60;': '`',
  '&#97;': 'a',
  '&#x61;': 'a',
  '&#98;': 'b',
  '&#x62;': 'b',
  '&#99;': 'c',
  '&#x63;': 'c',
  '&#100;': 'd',
  '&#x64;': 'd',
  '&#101;': 'e',
  '&#x65;': 'e',
  '&#102;': 'f',
  '&#x66;': 'f',
  '&#103;': 'g',
  '&#x67;': 'g',
  '&#104;': 'h',
  '&#x68;': 'h',
  '&#105;': 'i',
  '&#x69;': 'i',
  '&#106;': 'j',
  '&#x6a;': 'j',
  '&#107;': 'k',
  '&#x6b;': 'k',
  '&#108;': 'l',
  '&#x6c;': 'l',
  '&#109;': 'm',
  '&#x6d;': 'm',
  '&#110;': 'n',
  '&#x6e;': 'n',
  '&#111;': 'o',
  '&#x6f;': 'o',
  '&#112;': 'p',
  '&#x70;': 'p',
  '&#113;': 'q',
  '&#x71;': 'q',
  '&#114;': 'r',
  '&#x72;': 'r',
  '&#115;': 's',
  '&#x73;': 's',
  '&#116;': 't',
  '&#x74;': 't',
  '&#117;': 'u',
  '&#x75;': 'u',
  '&#118;': 'v',
  '&#x76;': 'v',
  '&#119;': 'w',
  '&#x77;': 'w',
  '&#120;': 'x',
  '&#x78;': 'x',
  '&#121;': 'y',
  '&#x79;': 'y',
  '&#122;': 'z',
  '&#x7a;': 'z',
  '&#123;': '{',
  '&#x7b;': '{',
  '&#124;': '|',
  '&#x7c;': '|',
  '&#125;': '}',
  '&#x7d;': '}',
  '&#126;': '~',
  '&#x7e;': '~',
  '&#160;': ' ',
  '&#xa0;': ' ',
  '&nbsp;': ' ',
  '&#161;': '¡',
  '&#xa1;': '¡',
  '&iexcl;': '¡',
  '&#162;': '¢',
  '&#xa2;': '¢',
  '&cent;': '¢',
  '&#163;': '£',
  '&#xa3;': '£',
  '&pound;': '£',
  '&#164;': '¤',
  '&#xa4;': '¤',
  '&curren;': '¤',
  '&#165;': '¥',
  '&#xa5;': '¥',
  '&yen;': '¥',
  '&#166;': '¦',
  '&#xa6;': '¦',
  '&brvbar;': '¦',
  '&#167;': '§',
  '&#xa7;': '§',
  '&sect;': '§',
  '&#168;': '¨',
  '&#xa8;': '¨',
  '&uml;': '¨',
  '&#169;': '©',
  '&#xa9;': '©',
  '&copy;': '©',
  '&#170;': 'ª',
  '&#xaa;': 'ª',
  '&ordf;': 'ª',
  '&#171;': '«',
  '&#xab;': '«',
  '&laquo;': '«',
  '&#172;': '¬',
  '&#xac;': '¬',
  '&not;': '¬',
  '&#173;': '',
  '&#xad;': '',
  '&shy;': '',
  '&#174;': '®',
  '&#xae;': '®',
  '&reg;': '®',
  '&#175;': '¯',
  '&#xaf;': '¯',
  '&macr;': '¯',
  '&#176;': '°',
  '&#xb0;': '°',
  '&deg;': '°',
  '&#177;': '±',
  '&#xb1;': '±',
  '&plusmn;': '±',
  '&#178;': '²',
  '&#xb2;': '²',
  '&sup2;': '²',
  '&#179;': '³',
  '&#xb3;': '³',
  '&sup3;': '³',
  '&#180;': '´',
  '&#xb4;': '´',
  '&acute;': '´',
  '&#181;': 'µ',
  '&#xb5;': 'µ',
  '&micro;': 'µ',
  '&#182;': '¶',
  '&#xb6;': '¶',
  '&para;': '¶',
  '&#183;': '·',
  '&#xb7;': '·',
  '&middot;': '·',
  '&#184;': '¸',
  '&#xb8;': '¸',
  '&cedil;': '¸',
  '&#185;': '¹',
  '&#xb9;': '¹',
  '&sup1;': '¹',
  '&#186;': 'º',
  '&#xba;': 'º',
  '&ordm;': 'º',
  '&#187;': '»',
  '&#xbb;': '»',
  '&raquo;': '»',
  '&#188;': '¼',
  '&#xbc;': '¼',
  '&frac14;': '¼',
  '&#189;': '½',
  '&#xbd;': '½',
  '&frac12;': '½',
  '&#190;': '¾',
  '&#xbe;': '¾',
  '&frac34;': '¾',
  '&#191;': '¿',
  '&#xbf;': '¿',
  '&iquest;': '¿',
  '&#192;': 'À',
  '&#xc0;': 'À',
  '&Agrave;': 'À',
  '&#193;': 'Á',
  '&#xc1;': 'Á',
  '&Aacute;': 'Á',
  '&#194;': 'Â',
  '&#xc2;': 'Â',
  '&Acirc;': 'Â',
  '&#195;': 'Ã',
  '&#xc3;': 'Ã',
  '&Atilde;': 'Ã',
  '&#196;': 'Ä',
  '&#xc4;': 'Ä',
  '&Auml;': 'Ä',
  '&#197;': 'Å',
  '&#xc5;': 'Å',
  '&Aring;': 'Å',
  '&#198;': 'Æ',
  '&#xc6;': 'Æ',
  '&AElig;': 'Æ',
  '&#199;': 'Ç',
  '&#xc7;': 'Ç',
  '&Ccedil;': 'Ç',
  '&#200;': 'È',
  '&#xc8;': 'È',
  '&Egrave;': 'È',
  '&#201;': 'É',
  '&#xc9;': 'É',
  '&Eacute;': 'É',
  '&#202;': 'Ê',
  '&#xca;': 'Ê',
  '&Ecirc;': 'Ê',
  '&#203;': 'Ë',
  '&#xcb;': 'Ë',
  '&Euml;': 'Ë',
  '&#204;': 'Ì',
  '&#xcc;': 'Ì',
  '&Igrave;': 'Ì',
  '&#205;': 'Í',
  '&#xcd;': 'Í',
  '&Iacute;': 'Í',
  '&#206;': 'Î',
  '&#xce;': 'Î',
  '&Icirc;': 'Î',
  '&#207;': 'Ï',
  '&#xcf;': 'Ï',
  '&Iuml;': 'Ï',
  '&#208;': 'Ð',
  '&#xd0;': 'Ð',
  '&ETH;': 'Ð',
  '&#209;': 'Ñ',
  '&#xd1;': 'Ñ',
  '&Ntilde;': 'Ñ',
  '&#210;': 'Ò',
  '&#xd2;': 'Ò',
  '&Ograve;': 'Ò',
  '&#211;': 'Ó',
  '&#xd3;': 'Ó',
  '&Oacute;': 'Ó',
  '&#212;': 'Ô',
  '&#xd4;': 'Ô',
  '&Ocirc;': 'Ô',
  '&#213;': 'Õ',
  '&#xd5;': 'Õ',
  '&Otilde;': 'Õ',
  '&#214;': 'Ö',
  '&#xd6;': 'Ö',
  '&Ouml;': 'Ö',
  '&#215;': '×',
  '&#xd7;': '×',
  '&times;': '×',
  '&#216;': 'Ø',
  '&#xd8;': 'Ø',
  '&Oslash;': 'Ø',
  '&#217;': 'Ù',
  '&#xd9;': 'Ù',
  '&Ugrave;': 'Ù',
  '&#218;': 'Ú',
  '&#xda;': 'Ú',
  '&Uacute;': 'Ú',
  '&#219;': 'Û',
  '&#xdb;': 'Û',
  '&Ucirc;': 'Û',
  '&#220;': 'Ü',
  '&#xdc;': 'Ü',
  '&Uuml;': 'Ü',
  '&#221;': 'Ý',
  '&#xdd;': 'Ý',
  '&Yacute;': 'Ý',
  '&#222;': 'Þ',
  '&#xde;': 'Þ',
  '&THORN;': 'Þ',
  '&#223;': 'ß',
  '&#xdf;': 'ß',
  '&szlig;': 'ß',
  '&#224;': 'à',
  '&#xe0;': 'à',
  '&agrave;': 'à',
  '&#225;': 'á',
  '&#xe1;': 'á',
  '&aacute;': 'á',
  '&#226;': 'â',
  '&#xe2;': 'â',
  '&acirc;': 'â',
  '&#227;': 'ã',
  '&#xe3;': 'ã',
  '&atilde;': 'ã',
  '&#228;': 'ä',
  '&#xe4;': 'ä',
  '&auml;': 'ä',
  '&#229;': 'å',
  '&#xe5;': 'å',
  '&aring;': 'å',
  '&#230;': 'æ',
  '&#xe6;': 'æ',
  '&aelig;': 'æ',
  '&#231;': 'ç',
  '&#xe7;': 'ç',
  '&ccedil;': 'ç',
  '&#232;': 'è',
  '&#xe8;': 'è',
  '&egrave;': 'è',
  '&#233;': 'é',
  '&#xe9;': 'é',
  '&eacute;': 'é',
  '&#234;': 'ê',
  '&#xea;': 'ê',
  '&ecirc;': 'ê',
  '&#235;': 'ë',
  '&#xeb;': 'ë',
  '&euml;': 'ë',
  '&#236;': 'ì',
  '&#xec;': 'ì',
  '&igrave;': 'ì',
  '&#237;': 'í',
  '&#xed;': 'í',
  '&iacute;': 'í',
  '&#238;': 'î',
  '&#xee;': 'î',
  '&icirc;': 'î',
  '&#239;': 'ï',
  '&#xef;': 'ï',
  '&iuml;': 'ï',
  '&#240;': 'ð',
  '&#xf0;': 'ð',
  '&eth;': 'ð',
  '&#241;': 'ñ',
  '&#xf1;': 'ñ',
  '&ntilde;': 'ñ',
  '&#242;': 'ò',
  '&#xf2;': 'ò',
  '&ograve;': 'ò',
  '&#243;': 'ó',
  '&#xf3;': 'ó',
  '&oacute;': 'ó',
  '&#244;': 'ô',
  '&#xf4;': 'ô',
  '&ocirc;': 'ô',
  '&#245;': 'õ',
  '&#xf5;': 'õ',
  '&otilde;': 'õ',
  '&#246;': 'ö',
  '&#xf6;': 'ö',
  '&ouml;': 'ö',
  '&#247;': '÷',
  '&#xf7;': '÷',
  '&divide;': '÷',
  '&#248;': 'ø',
  '&#xf8;': 'ø',
  '&oslash;': 'ø',
  '&#249;': 'ù',
  '&#xf9;': 'ù',
  '&ugrave;': 'ù',
  '&#250;': 'ú',
  '&#xfa;': 'ú',
  '&uacute;': 'ú',
  '&#251;': 'û',
  '&#xfb;': 'û',
  '&ucirc;': 'û',
  '&#252;': 'ü',
  '&#xfc;': 'ü',
  '&uuml;': 'ü',
  '&#253;': 'ý',
  '&#xfd;': 'ý',
  '&yacute;': 'ý',
  '&#254;': 'þ',
  '&#xfe;': 'þ',
  '&thorn;': 'þ',
  '&#255;': 'ÿ',
  '&#xff;': 'ÿ',
  '&yuml;': 'ÿ',
  '&#338;': 'Œ',
  '&#x152;': 'Œ',
  '&OElig;': 'Œ',
  '&#339;': 'œ',
  '&#x153;': 'œ',
  '&oelig;': 'œ',
  '&#352;': 'Š',
  '&#x160;': 'Š',
  '&Scaron;': 'Š',
  '&#353;': 'š',
  '&#x161;': 'š',
  '&scaron;': 'š',
  '&#372;': 'Ŵ',
  '&#x174;': 'Ŵ',
  '&#373;': 'ŵ',
  '&#x175;': 'ŵ',
  '&#374;': 'Ŷ',
  '&#x176;': 'Ŷ',
  '&#375;': 'ŷ',
  '&#x177;': 'ŷ',
  '&#376;': 'Ÿ',
  '&#x178;': 'Ÿ',
  '&Yuml;': 'Ÿ',
  '&#402;': 'ƒ',
  '&#x192;': 'ƒ',
  '&fnof;': 'ƒ',
  '&#710;': 'ˆ',
  '&#x2c6;': 'ˆ',
  '&circ;': 'ˆ',
  '&#732;': '˜',
  '&#x2dc;': '˜',
  '&tilde;': '˜',
  '&#913;': 'Α',
  '&#x391;': 'Α',
  '&Alpha;': 'Α',
  '&#914;': 'Β',
  '&#x392;': 'Β',
  '&Beta;': 'Β',
  '&#915;': 'Γ',
  '&#x393;': 'Γ',
  '&Gamma;': 'Γ',
  '&#916;': 'Δ',
  '&#x394;': 'Δ',
  '&Delta;': 'Δ',
  '&#917;': 'Ε',
  '&#x395;': 'Ε',
  '&Epsilon;': 'Ε',
  '&#918;': 'Ζ',
  '&#x396;': 'Ζ',
  '&Zeta;': 'Ζ',
  '&#919;': 'Η',
  '&#x397;': 'Η',
  '&Eta;': 'Η',
  '&#920;': 'Θ',
  '&#x398;': 'Θ',
  '&Theta;': 'Θ',
  '&#921;': 'Ι',
  '&#x399;': 'Ι',
  '&Iota;': 'Ι',
  '&#922;': 'Κ',
  '&#x39a;': 'Κ',
  '&Kappa;': 'Κ',
  '&#923;': 'Λ',
  '&#x39b;': 'Λ',
  '&Lambda;': 'Λ',
  '&#924;': 'Μ',
  '&#x39c;': 'Μ',
  '&Mu;': 'Μ',
  '&#925;': 'Ν',
  '&#x39d;': 'Ν',
  '&Nu;': 'Ν',
  '&#926;': 'Ξ',
  '&#x39e;': 'Ξ',
  '&Xi;': 'Ξ',
  '&#927;': 'Ο',
  '&#x39f;': 'Ο',
  '&Omicron;': 'Ο',
  '&#928;': 'Π',
  '&#x3a0;': 'Π',
  '&Pi;': 'Π',
  '&#929;': 'Ρ',
  '&#x3a1;': 'Ρ',
  '&Rho;': 'Ρ',
  '&#931;': 'Σ',
  '&#x3a3;': 'Σ',
  '&Sigma;': 'Σ',
  '&#932;': 'Τ',
  '&#x3a4;': 'Τ',
  '&Tau;': 'Τ',
  '&#933;': 'Υ',
  '&#x3a5;': 'Υ',
  '&Upsilon;': 'Υ',
  '&#934;': 'Φ',
  '&#x3a6;': 'Φ',
  '&Phi;': 'Φ',
  '&#935;': 'Χ',
  '&#x3a7;': 'Χ',
  '&Chi;': 'Χ',
  '&#936;': 'Ψ',
  '&#x3a8;': 'Ψ',
  '&Psi;': 'Ψ',
  '&#937;': 'Ω',
  '&#x3a9;': 'Ω',
  '&Omega;': 'Ω',
  '&#938;': 'Ϊ',
  '&#x3aa;': 'Ϊ',
  '&#939;': 'Ϋ',
  '&#x3ab;': 'Ϋ',
  '&#940;': 'ά',
  '&#x3ac;': 'ά',
  '&#941;': 'έ',
  '&#x3ad;': 'έ',
  '&#942;': 'ή',
  '&#x3ae;': 'ή',
  '&#943;': 'ί',
  '&#x3af;': 'ί',
  '&#944;': 'ΰ',
  '&#x3b0;': 'ΰ',
  '&#945;': 'α',
  '&#x3b1;': 'α',
  '&alpha;': 'α',
  '&#946;': 'β',
  '&#x3b2;': 'β',
  '&beta;': 'β',
  '&#947;': 'γ',
  '&#x3b3;': 'γ',
  '&gamma;': 'γ',
  '&#948;': 'δ',
  '&#x3b4;': 'δ',
  '&delta;': 'δ',
  '&#949;': 'ε',
  '&#x3b5;': 'ε',
  '&epsilon;': 'ε',
  '&#950;': 'ζ',
  '&#x3b6;': 'ζ',
  '&zeta;': 'ζ',
  '&#951;': 'η',
  '&#x3b7;': 'η',
  '&eta;': 'η',
  '&#952;': 'θ',
  '&#x3b8;': 'θ',
  '&theta;': 'θ',
  '&#953;': 'ι',
  '&#x3b9;': 'ι',
  '&iota;': 'ι',
  '&#954;': 'κ',
  '&#x3ba;': 'κ',
  '&kappa;': 'κ',
  '&#955;': 'λ',
  '&#x3bb;': 'λ',
  '&lambda;': 'λ',
  '&#956;': 'μ',
  '&#x3bc;': 'μ',
  '&mu;': 'μ',
  '&#957;': 'ν',
  '&#x3bd;': 'ν',
  '&nu;': 'ν',
  '&#958;': 'ξ',
  '&#x3be;': 'ξ',
  '&xi;': 'ξ',
  '&#959;': 'ο',
  '&#x3bf;': 'ο',
  '&omicron;': 'ο',
  '&#960;': 'π',
  '&#x3c0;': 'π',
  '&pi;': 'π',
  '&#961;': 'ρ',
  '&#x3c1;': 'ρ',
  '&rho;': 'ρ',
  '&#962;': 'ς',
  '&#x3c2;': 'ς',
  '&sigmaf;': 'ς',
  '&#963;': 'σ',
  '&#x3c3;': 'σ',
  '&sigma;': 'σ',
  '&#964;': 'τ',
  '&#x3c4;': 'τ',
  '&tau;': 'τ',
  '&#965;': 'υ',
  '&#x3c5;': 'υ',
  '&upsilon;': 'υ',
  '&#966;': 'φ',
  '&#x3c6;': 'φ',
  '&phi;': 'φ',
  '&#967;': 'χ',
  '&#x3c7;': 'χ',
  '&chi;': 'χ',
  '&#968;': 'ψ',
  '&#x3c8;': 'ψ',
  '&psi;': 'ψ',
  '&#969': 'ω',
  '&#x3c9;': 'ω',
  '&omega;': 'ω',
  '&#970;': 'ϊ',
  '&#x3ca;': 'ϊ',
  '&#971;': 'ϋ',
  '&#x3cb;': 'ϋ',
  '&#972;': 'ό',
  '&#x3cc;': 'ό',
  '&#973;': 'ύ',
  '&#x3cd;': 'ύ',
  '&#974;': 'ώ',
  '&#x3ce;': 'ώ',
  '&#975;': 'Ϗ',
  '&#x3cf;': 'Ϗ',
  '&#976;': 'ϐ',
  '&#x3d0;': 'ϐ',
  '&#977;': 'ϑ',
  '&#x3d1;': 'ϑ',
  '&thetasym;': 'ϑ',
  '&#978;': 'ϒ',
  '&#x3d2;': 'ϒ',
  '&upsih;': 'ϒ',
  '&#979;': 'ϓ',
  '&#x3d3;': 'ϓ',
  '&#980;': 'ϔ',
  '&#x3d4;': 'ϔ',
  '&#981;': 'ϕ',
  '&#x3d5;': 'ϕ',
  '&straightphi;': 'ϕ',
  '&#982;': 'ϖ',
  '&#x3d6;': 'ϖ',
  '&piv;': 'ϖ',
  '&varpi;': 'ϖ',
  '&#7808;': 'Ẁ',
  '&#x1e80;': 'Ẁ',
  '&#7809;': 'ẁ',
  '&#x1e81;': 'ẁ',
  '&#7810;': 'Ẃ',
  '&#x1e82;': 'Ẃ',
  '&#7811;': 'ẃ',
  '&#x1e83;': 'ẃ',
  '&#7812;': 'Ẅ',
  '&#x1e84;': 'Ẅ',
  '&#7813;': 'ẅ',
  '&#x1e85;': 'ẅ',
  '&#7922;': 'Ỳ',
  '&#x1ef2;': 'Ỳ',
  '&#7923;': 'ỳ',
  '&#x1ef3;': 'ỳ',
  '&#8194;': ' ',
  '&#x2002;': ' ',
  '&ensp;': ' ',
  '&#8195;': ' ',
  '&#x2003;': ' ',
  '&emsp;': ' ',
  '&#8201;': ' ',
  '&#x2009;': ' ',
  '&thinsp;': ' ',
  '&#8204;': '',
  '&#x200c;': '',
  '&zwnj;': '',
  '&#8205;': '',
  '&#x200d;': '',
  '&zwj;': '',
  '&#8206;': '',
  '&#x200e;': '',
  '&lrm;': '',
  '&#8207;': '',
  '&#x200f;': '',
  '&rlm;': '',
  '&#8211;': '–',
  '&#x2013;': '–',
  '&ndash;': '–',
  '&#8212;': '—',
  '&#x2014;': '—',
  '&mdash;': '—',
  '&#8216;': '‘',
  '&#x2018;': '‘',
  '&lsquo;': '‘',
  '&#8217;': '’',
  '&#x2019;': '’',
  '&rsquo;': '’',
  '&#8218;': '‚',
  '&#x201a;': '‚',
  '&sbquo;': '‚',
  '&#8220;': '“',
  '&#x201c;': '“',
  '&ldquo;': '“',
  '&#8221;': '”',
  '&#x201d;': '”',
  '&rdquo;': '”',
  '&#8222;': '„',
  '&#x201e;': '„',
  '&bdquo;': '„',
  '&#8224;': '†',
  '&#x2020;': '†',
  '&dagger;': '†',
  '&#8225;': '‡',
  '&#x2021;': '‡',
  '&Dagger;': '‡',
  '&#8226;': '•',
  '&#x2022;': '•',
  '&bull;': '•',
  '&#8230;': '…',
  '&#x2026;': '…',
  '&hellip;': '…',
  '&#8240;': '‰',
  '&#x2030;': '‰',
  '&permil;': '‰',
  '&#8242;': '′',
  '&#x2032;': '′',
  '&prime;': '′',
  '&#8243;': '″',
  '&#x2033;': '″',
  '&Prime;': '″',
  '&#8249;': '‹',
  '&#x2039;': '‹',
  '&lsaquo;': '‹',
  '&#8250;': '›',
  '&#x203a;': '›',
  '&rsaquo;': '›',
  '&#8254;': '‾',
  '&#x203e;': '‾',
  '&oline;': '‾',
  '&#8260;': '⁄',
  '&#x2044;': '⁄',
  '&frasl;': '⁄',
  '&#8364;': '€',
  '&#x20ac;': '€',
  '&euro;': '€',
  '&#8465;': 'ℑ',
  '&#x2111;': 'ℑ',
  '&image;': 'ℑ',
  '&#8472;': '℘',
  '&#x2118;': '℘',
  '&weierp;': '℘',
  '&#8476;': 'ℜ',
  '&#x211c;': 'ℜ',
  '&real;': 'ℜ',
  '&#8482;': '™',
  '&#x2122;': '™',
  '&trade;': '™',
  '&#8501;': 'ℵ',
  '&#x2135;': 'ℵ',
  '&alefsym;': 'ℵ',
  '&#8592;': '←',
  '&#x2190;': '←',
  '&larr;': '←',
  '&#8593;': '↑',
  '&#x2191;': '↑',
  '&uarr;': '↑',
  '&#8594;': '→',
  '&#x2192;': '→',
  '&rarr;': '→',
  '&#8595;': '↓',
  '&#x2193;': '↓',
  '&darr;': '↓',
  '&#8596;': '↔',
  '&#x2194;': '↔',
  '&harr;': '↔',
  '&#8629;': '↵',
  '&#x21b5;': '↵',
  '&crarr;': '↵',
  '&#8656;': '⇐',
  '&#x21d0;': '⇐',
  '&lArr;': '⇐',
  '&#8657;': '⇑',
  '&#x21d1;': '⇑',
  '&uArr;': '⇑',
  '&#8658': '⇒',
  '&#x21d2': '⇒',
  '&rArr;': '⇒',
  '&#8659;': '⇓',
  '&#x21d3;': '⇓',
  '&dArr;': '⇓',
  '&#8660;': '⇔',
  '&#x21d4;': '⇔',
  '&hArr;': '⇔',
  '&#8704;': '∀',
  '&#x2200;': '∀',
  '&forall;': '∀',
  '&#8706;': '∂',
  '&#x2202;': '∂',
  '&part;': '∂',
  '&#8707;': '∃',
  '&#x2203;': '∃',
  '&exist;': '∃',
  '&#8709;': '∅',
  '&#x2205;': '∅',
  '&empty;': '∅',
  '&#8711;': '∇',
  '&#x2207;': '∇',
  '&nabla;': '∇',
  '&#8712;': '∈',
  '&#x2208;': '∈',
  '&isin;': '∈',
  '&#8713;': '∉',
  '&#x2209;': '∉',
  '&notin;': '∉',
  '&#8715;': '∋',
  '&#x220b;': '∋',
  '&ni;': '∋',
  '&#8719;': '∏',
  '&#x220f;': '∏',
  '&prod;': '∏',
  '&#8721;': '∑',
  '&#x2211;': '∑',
  '&sum;': '∑',
  '&#8722;': '−',
  '&#x2212;': '−',
  '&minus;': '−',
  '&#8727;': '∗',
  '&#x2217;': '∗',
  '&lowast;': '∗',
  '&#8730;': '√',
  '&#x221a;': '√',
  '&radic;': '√',
  '&#8733;': '∝',
  '&#x221d;': '∝',
  '&prop;': '∝',
  '&#8734;': '∞',
  '&#x221e;': '∞',
  '&infin;': '∞',
  '&#8736;': '∠',
  '&#x2220;': '∠',
  '&ang;': '∠',
  '&#8743;': '∧',
  '&#x2227;': '∧',
  '&and;': '∧',
  '&#8744;': '∨',
  '&#x2228;': '∨',
  '&or;': '∨',
  '&#8745;': '∩',
  '&#x2229;': '∩',
  '&cap;': '∩',
  '&#8746;': '∪',
  '&#x222a;': '∪',
  '&cup;': '∪',
  '&#8747;': '∫',
  '&#x222b': '∫',
  '&int;': '∫',
  '&#8756;': '∴',
  '&#x2234;': '∴',
  '&there4;': '∴',
  '&#8764;': '∼',
  '&#x223c;': '∼',
  '&sim;': '∼',
  '&#8773;': '≅',
  '&#x2245;': '≅',
  '&cong;': '≅',
  '&#8776;': '≈',
  '&#x2248;': '≈',
  '&asymp;': '≈',
  '&#8800;': '≠',
  '&#x2260;': '≠',
  '&ne;': '≠',
  '&#8801;': '≡',
  '&#x2261;': '≡',
  '&equiv;': '≡',
  '&#8804;': '≤',
  '&#x2264;': '≤',
  '&le;': '≤',
  '&#8805;': '≥',
  '&#x2265;': '≥',
  '&ge;': '≥',
  '&#8834;': '⊂',
  '&#x2282;': '⊂',
  '&sub;': '⊂',
  '&#8835;': '⊃',
  '&#x2283;': '⊃',
  '&sup;': '⊃',
  '&#8836;': '⊄',
  '&#x2284;': '⊄',
  '&nsub;': '⊄',
  '&#8838;': '⊆',
  '&#x2286;': '⊆',
  '&sube;': '⊆',
  '&#8839;': '⊇',
  '&#x2287;': '⊇',
  '&supe;': '⊇',
  '&#8853;': '⊕',
  '&#x2295;': '⊕',
  '&oplus;': '⊕',
  '&#8855;': '⊗',
  '&#x2297;': '⊗',
  '&otimes;': '⊗',
  '&#8869;': '⊥',
  '&#x22a5;': '⊥',
  '&perp;': '⊥',
  '&#8901;': '⋅',
  '&#x22c5;': '⋅',
  '&sdot;': '⋅',
  '&#8942;': '⋮',
  '&#x22ee;': '⋮',
  '&vellip;': '⋮',
  '&#8968;': '⌈',
  '&#x2308;': '⌈',
  '&lceil;': '⌈',
  '&#8969;': '⌉',
  '&#x2309;': '⌉',
  '&rceil;': '⌉',
  '&#8970;': '⌊',
  '&#x230a;': '⌊',
  '&lfloor;': '⌊',
  '&#8971;': '⌋',
  '&#x230b;': '⌋',
  '&rfloor;': '⌋',
  '&#9001;': '〈',
  '&#x2329;': '〈',
  '&lang;': '〈',
  '&#9002;': '〉',
  '&#x232a;': '〉',
  '&rang;': '〉',
  '&#9674;': '◊',
  '&#x25ca;': '◊',
  '&loz;': '◊',
  '&#9824;': '♠',
  '&#x2660;': '♠',
  '&spades;': '♠',
  '&#9827;': '♣',
  '&#x2663;': '♣',
  '&clubs;': '♣',
  '&#9829;': '♥',
  '&#x2665;': '♥',
  '&hearts;': '♥',
  '&#9830;': '♦',
  '&#x2666;': '♦',
  '&diams;': '♦',
};
