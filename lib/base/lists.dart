import 'models/element_model.dart';
import 'models/type_model.dart';

class Lists {
  static final List<ElementModel> _power = [
    ElementModel(
        name : "Cell",
        discuription : "Circuit uchun ta'minot berish uchun ishlatiladi.",
        urlImage :
        "https://www.circuitstoday.com/wp-content/uploads/2011/11/Cell-Circuit-Symbol.jpg"
    ),
    ElementModel(
        name : "batareya",
        discuription :
        "Pillar yoki qator bo'lib, bir nechta zarracha yig'indisidir. Tengsiz oqibatlar shaffof zarrachada va katta tomonda joylashadi. Qisqartirilgan shaklida ‘B’ deb yoziladi.",
        urlImage :
        "https://www.circuitstoday.com/wp-content/uploads/2011/11/Battery-Circuit-Symbol.jpg"
    ),
    ElementModel(
        name : "DC manba",
        discuription :
        "Har doim bir tomonli oqim o'tkazadi. DC quvvat manbai sifatida ishlatiladi.",
        urlImage :
        "https://www.circuitstoday.com/wp-content/uploads/2011/11/DC-Supply-Circuit-Symbol.jpg"
    ),
    ElementModel(
        name : "AC manba",
        discuription :
        "Oqimning yo'nalishi almashtiriladi. AC quvvat manbai sifatida ishlatiladi.",
        urlImage :
        "https://www.circuitstoday.com/wp-content/uploads/2011/11/AC-Supply-Circuit-Symbol.jpg"
    ),
    ElementModel(
        name : "Fuse",
        discuription :
        "Odatda ko'p oqim yurishi ehtimoli bor bo'lgan elektr qurilmalarida ishlatiladi. Agar oqim o'tkazishi juda yuqori bo'lsa, sig'in oqimni kesadi va boshqa qurilmalarni zarardan himoya qiladi.",
        urlImage :
        "https://www.circuitstoday.com/wp-content/uploads/2011/11/Fuse-Circuit-Symbol.jpg"
    ),
    ElementModel(
        name : "Transformer",
        discuription :
        "AC quvvat manbai sifatida ishlatiladi. U ikki o'rindi yoki primariy va sekondariydan tashkil topgan jamlanma va ularga o'tkazuvchi iron yadrodan iborat. Ikki o'rindi o'rtasida fizikaviy bog'lanish yo'q. O'zaro inductance prinsipi quvvat tayinlashda ishlatiladi. Qisqartirilgan shaklida ‘T’ deb yoziladi.",
        urlImage :
        "https://www.circuitstoday.com/wp-content/uploads/2011/11/Transformer-Circuit-Symbol.jpg"
    ),
    ElementModel(
        name : "Earth/Ground",
        discuription :
        "Elektron qurilmalarda quvvat manbai 0 voltni ifodalaydi. Shu paytda, radiolarda va quvvatlovlarda ‘real earth’ sifatida ifodalash mumkin.",
        urlImage : "https://www.circuitstoday.com/wp-content/uploads/2011/11/Earth-Circuit-Symbol.jpg"),
  ];
  static final List<ElementModel> _resistor = [
    ElementModel(
        name: "Resistor",
        discuription: "Rezistor, bir qurilmadan o`tayotgan elektr to`plamlarida o`tayotgan yig`indini cheklash uchun ishlatiladi. 'R' bilan xarakterlanadi.",
        urlImage:
        "https://www.circuitstoday.com/wp-content/uploads/2011/11/Resistor-Circuit-Symbol.jpg"),
    ElementModel(
        name: "Rheostat",
        discuription:
        "Rheostat, ikki aloqa punktiga ega bo`lgan elektr oqimlarini boshqarish uchun ishlatiladi. Lampalarning yorug`lik darajasi, kondensatorlar yuklanish tezligi va hokazo boshqa sohalarda foydalaniladi.",
        urlImage:
        "https://www.circuitstoday.com/wp-content/uploads/2011/11/Rheostat-Circuit-Symbol.jpg"),
    ElementModel(
      name: "Potentiometer",
      discuription:
      "Potensiometr, quvvat oqimini boshqarish uchun ishlatiladi va uchta aloqa punktiga ega. Mexanik burchak o`zgartirilishini elektr parametrlariga aylantirish uchun foydalaniladi. 'POT' bilan xarakterlanadi.",
      urlImage:
      "https://www.circuitstoday.com/wp-content/uploads/2011/11/Potentiometer-Circuit-Symbol.jpg",
    ),
    ElementModel(
      name: "Preset",
      discuription:
      "Presetlar, yoritgich holda bo`lgan o`zgaruvchan rezistorlar bo`lib, yorug`lik to`plamining oxirida faqat qurilma loyihasidagi mablag`ga ta`sir ko`rsatadi. Qulay narxlari tufayli ishlovchi elementlardir.",
      urlImage:
      "https://www.circuitstoday.com/wp-content/uploads/2011/11/Preset-Circuit-Symbol.jpg",
    ),
  ];
  static final List<ElementModel> _capacitor = [
    ElementModel(
        name: "Capacitor",
        discuription: "A resistor is used to restrict the amount of current flow through a device. Abbreviated as ‘R’.",
        urlImage:
        "https://www.circuitstoday.com/wp-content/uploads/2011/11/Capacitor-Circuit-Symbol.jpg"),
    ElementModel(
        name: "Capacitor – Polarized",
        discuription:
        "Capacitor is a device that is used to store electrical energy. It consists of two metals plates that are separated by a dielectric. It is applicable as a filter, that is, to block DC signals and allow AC signals. Abbreviated with the letter ‘C’.",
        urlImage:
        "https://www.circuitstoday.com/wp-content/uploads/2011/11/Capacitor-Polarised-Circuit-Symbol.jpg"),
    ElementModel(
      name: "Variable Capacitor",
      discuription:
      "Used to vary the capacitance by turning the knob. A type of variable capacitor is the trimmer capacitor that is small in size. The notations are all the same.",
      urlImage:
      "https://www.circuitstoday.com/wp-content/uploads/2011/11/Variable-Capacitor-Circuit-Symbol.jpg",
    ),
  ];
  static final List<ElementModel> _diode= [
    ElementModel(
      name: "Diode",
      discuription:
      "Elektr ta'qiqlanishining faqat bitta yo'nalishda bo'lishiga ruxsat berish uchun ishlatiladi. 'D' bilan qisqartiriladi.",
      urlImage:
      "https://www.circuitstoday.com/wp-content/uploads/2011/11/Diode-Circuit-Symbol.jpg",
    ),
    ElementModel(
      name: "Chiqishdagi yorug'lik diodi (LED)",
      discuription:
      "LED, qurilmani elektr to'qidagi o'tkazilganida yorug'lik chiqarish uchun ishlatiladi. LED bilan qisqartiriladi.",
      urlImage:
      "https://www.circuitstoday.com/wp-content/uploads/2011/11/LED-Circuit-Symbol.jpg",
    ),
    ElementModel(
      name: "Zener diodi",
      discuription:
      "Qurilmani umuman orqa yo'nalishda ishlashiga ruxsat beradigan o'tish kuchidan keyin. 'Z' bilan qisqartiriladi.",
      urlImage:
      "https://www.circuitstoday.com/wp-content/uploads/2011/11/Zener-Diode-Circuit-Symbol.jpg",
    ),
    ElementModel(
      name: "Foto diodi",
      discuription:
      "Foto diodi nurdan foydalanib, nur o'ziga mos keladigan tortish yoki kuchga aylanishga aylantiriladi.",
      urlImage:
      "https://www.circuitstoday.com/wp-content/uploads/2011/11/Photo-Diode-Circuit-Symbol.jpg",
    ),
    ElementModel(
      name: "Tunnel diodi",
      discuription:
      "Kvant mexanik ta'sirining ishlatilishi sababli baland tezlikdagi ishga ega. ",
      urlImage:
      "https://www.circuitstoday.com/wp-content/uploads/2011/11/Tunnel-Diode-Circuit-Symbol.jpg",
    ),
    ElementModel(
      name: "Schottky diodi",
      discuription:
      "Schottky diodi oldingi to'lov yuqori bo'lgani uchun almashish dasturlarida yaxshi qo'llaniladi.",
      urlImage:
      "https://www.circuitstoday.com/wp-content/uploads/2011/11/Schottky-Diode-Circuit-Symbol.jpg",
    ),
  ];


  final List<TypeElement> _type = [
    TypeElement(
      name: 'Manbalar',
      elements: _power,
    ),
    TypeElement(
      name: 'Qarshiliklar',
      elements: _resistor,
    ),
    TypeElement(
      name: 'Condensatorlar',
      elements: _capacitor,
    ),
    TypeElement(
      name: 'Diodlar',
      elements: _diode,
    ),
  ];

  List<TypeElement> get type => _type;
}
