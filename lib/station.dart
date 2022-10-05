import 'package:flutter/material.dart';
import 'package:flutter_application_1/busseats.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';

class station extends StatefulWidget {
  station({Key? key}) : super(key: key);

  @override
  State<station> createState() => _stationState();
}

class _stationState extends State<station> {
  @override
  DateTime? _dateTime;
  TextEditingController t1 = TextEditingController();
  TextEditingController t2 = TextEditingController();
  TextEditingController d1 = TextEditingController();
  TextEditingController _time = TextEditingController();
  List _from = [];
  List _to = [];
  List cities = [
    {"city_station_name": "القاهرة - الترجمان", "station_id": "1"},
    {"city_station_name": "الفيوم - الفيوم", "station_id": "2"},
    {"city_station_name": "بني سويف - بنى سويف", "station_id": "3"},
    {"city_station_name": "اسيوط - اسيوط", "station_id": "4"},
    {"city_station_name": "قنا - قنا", "station_id": "6"},
    {"city_station_name": "الداخلة - الداخلة", "station_id": "7"},
    {"city_station_name": "الخارجة - الخارجة", "station_id": "8"},
    {"city_station_name": "ملوى - ملوى", "station_id": "9"},
    {"city_station_name": "الداخلة - بلاط", "station_id": "10"},
    {"city_station_name": "منيا القمح - بنى مزار", "station_id": "12"},
    {"city_station_name": "المنيا - بنى مزار", "station_id": "13"},
    {"city_station_name": "ابو رماد - ابورماد", "station_id": "14"},
    {"city_station_name": "شلاتين - الشلاتين", "station_id": "15"},
    {"city_station_name": "مرسي علم - مرسى علم", "station_id": "16"},
    {"city_station_name": "القصير - القصير", "station_id": "17"},
    {"city_station_name": "راس غارب - رأس غارب", "station_id": "18"},
    {"city_station_name": "الغردقة - الغردقة", "station_id": "19"},
    {"city_station_name": "الواحات - الواحات البحرية", "station_id": "21"},
    {"city_station_name": "القاهرة - حلوان", "station_id": "22"},
    {"city_station_name": "الفيوم - الميكروباص", "station_id": "23"},
    {"city_station_name": "سوهاج - سوهاج", "station_id": "26"},
    {"city_station_name": "سوهاج - جرجا", "station_id": "27"},
    {"city_station_name": "سوهاج - طهطا", "station_id": "28"},
    {"city_station_name": "سوهاج - طما", "station_id": "29"},
    {"city_station_name": "نجع حمادى - نجع حمادى", "station_id": "30"},
    {"city_station_name": "الاقصر - اسنا", "station_id": "31"},
    {"city_station_name": "اسوان - ادفو", "station_id": "32"},
    {"city_station_name": "اسوان - اسوان", "station_id": "33"},
    {"city_station_name": "اسوان - ابو سمبل", "station_id": "35"},
    {"city_station_name": "سفاجا - سفاجا", "station_id": "36"},
    {"city_station_name": "الفرافرة - الفرافرة", "station_id": "37"},
    {"city_station_name": "السويس - السخنه", "station_id": "38"},
    {"city_station_name": "حلايب - حلايب", "station_id": "39"},
    {"city_station_name": "القاهرة - عبود", "station_id": "40"},
    {"city_station_name": "المنيا - الشيخ فضل", "station_id": "41"},
    {"city_station_name": "الاسكندرية - العامرية", "station_id": "42"},
    {"city_station_name": "المنيا - مغاغه", "station_id": "43"},
    {"city_station_name": "القاهرة - القاهرة", "station_id": "59"},
    {"city_station_name": "الاسكندرية - محرم بك", "station_id": "61"},
    {"city_station_name": "القاهرة - التجنيد", "station_id": "63"},
    {"city_station_name": "سوهاج - سوهاج1", "station_id": "10046"},
    {"city_station_name": "القاهرة - وسط البلد", "station_id": "20044"},
    {
      "city_station_name": "ايتاى البارود - ايتاى البارود",
      "station_id": "20046"
    },
    {"city_station_name": "مرسي مطروح - مرسي مطروح", "station_id": "20047"},
    {"city_station_name": "جنوب سيناء - سفاجا", "station_id": "20050"},
    {"city_station_name": "منوف - أشمون", "station_id": "20052"},
    {"city_station_name": "منوف - الباجور", "station_id": "20053"},
    {"city_station_name": "القاهرة - التجنيد", "station_id": "20054"},
    {"city_station_name": "القاهرة - الترجمان", "station_id": "20055"},
    {"city_station_name": "القاهرة - الجيزة", "station_id": "20056"},
    {"city_station_name": "القاهرة - الخازندارة", "station_id": "20057"},
    {"city_station_name": "القاهرة - السادات", "station_id": "20058"},
    {"city_station_name": "مرسي مطروح - الضبعة", "station_id": "20059"},
    {"city_station_name": "الاسكندرية - العامرية", "station_id": "20060"},
    {"city_station_name": "القاهرة - العباسية", "station_id": "20061"},
    {"city_station_name": "القاهرة - الماظة", "station_id": "20062"},
    {"city_station_name": "القاهرة - الماظة الجديدة", "station_id": "20063"},
    {"city_station_name": "المحلة الكبرى - المحلة", "station_id": "20064"},
    {"city_station_name": "القاهرة - المطار", "station_id": "20065"},
    {"city_station_name": "المنصورة - المنصورة", "station_id": "20066"},
    {"city_station_name": "دمنهور - دمنهور", "station_id": "20067"},
    {"city_station_name": "طنطا - سبرباى", "station_id": "20068"},
    {"city_station_name": "سيوة - سيوة", "station_id": "20069"},
    {"city_station_name": "شبين الكوم - شبين الكوم", "station_id": "20070"},
    {"city_station_name": "طنطا - طنطا", "station_id": "20071"},
    {"city_station_name": "القاهرة - عبد المنعم رياض", "station_id": "20072"},
    {"city_station_name": "القاهرة - عبود", "station_id": "20073"},
    {"city_station_name": "كفر الزيات - كفر الزيات", "station_id": "20074"},
    {"city_station_name": "كفر الشيخ  - كفر الشيخ", "station_id": "20075"},
    {"city_station_name": "الاسكندرية - محطة الرمل", "station_id": "20077"},
    {
      "city_station_name": "مرسي مطروح - مطروح ش اسكندرية",
      "station_id": "20079"
    },
    {"city_station_name": "الاسكندرية - ميامى", "station_id": "20080"},
    {"city_station_name": "الاسكندرية - 15مايو", "station_id": "20081"},
    {"city_station_name": "القاهرة - الماظة", "station_id": "20084"},
    {"city_station_name": "الاسماعيلية - الإسماعيلية", "station_id": "20129"},
    {
      "city_station_name": "سيدى عبد الرحمن - سيدى عبدالرحمن",
      "station_id": "20130"
    },
    {"city_station_name": "العلمين  - العلمين", "station_id": "20131"},
    {"city_station_name": "الاسكندرية - محرم بك ", "station_id": "30133"},
    {"city_station_name": "مرسي مطروح - مطروح", "station_id": "30138"},
    {"city_station_name": "شمال سيناء - النفق", "station_id": "30139"},
    {"city_station_name": "جنوب سيناء - الطور", "station_id": "30140"},
    {"city_station_name": "جنوب سيناء - ابورديس", "station_id": "30141"},
    {"city_station_name": "شرم الشيخ - شرم", "station_id": "30142"},
    {"city_station_name": "اسيوط الجديدة - ابوتيج", "station_id": "30143"},
    {"city_station_name": "الزقازيق - الزقازيق", "station_id": "30144"},
    {"city_station_name": "السويس - السويس", "station_id": "30145"},
    {"city_station_name": "شمال سيناء - العريش", "station_id": "30147"},
    {"city_station_name": "المطرية - المطرية", "station_id": "30148"},
    {"city_station_name": "مرسي مطروح - السلوم", "station_id": "30149"},
    {"city_station_name": "بورسعيد - بورسعيد", "station_id": "30150"},
    {"city_station_name": "دمياط - دمياط", "station_id": "30151"},
    {"city_station_name": "الغردقة - الغردقة", "station_id": "30152"},
    {"city_station_name": "الاسماعيلية - الاسماعيلية", "station_id": "30153"},
    {"city_station_name": "كفر الشيخ  - كفر الشيخ", "station_id": "30154"},
    {"city_station_name": "سيدى برانى - برانى", "station_id": "30155"},
    {"city_station_name": "الزقازيق - الزقازيق", "station_id": "30156"},
    {"city_station_name": "القاهرة - الماظة", "station_id": "30157"},
    {"city_station_name": "قنا - قفط", "station_id": "30158"},
    {"city_station_name": "السويس - السويس", "station_id": "30159"},
    {"city_station_name": "فاقوس - فاقوس", "station_id": "30160"},
    {"city_station_name": "كفر صقر - كفر صقر", "station_id": "30161"},
    {"city_station_name": "ملوى - ملوى", "station_id": "30162"},
    {"city_station_name": "البحر الاحمر - حدربه", "station_id": "30163"},
    {"city_station_name": "الاقصر - الاقصر", "station_id": "30165"},
    {"city_station_name": "شمال سيناء - قوص", "station_id": "30166"},
    {"city_station_name": "الوادى - الوادى", "station_id": "30167"},
    {"city_station_name": "المنيا - المنيا", "station_id": "30168"},
    {"city_station_name": "المنيا - ابوقرقاص", "station_id": "30170"},
    {"city_station_name": "الاسكندرية - مكتب القصر", "station_id": "30172"},
    {"city_station_name": "شرم الشيخ - شرم الشيخ", "station_id": "30173"},
    {"city_station_name": "الاسكندرية - قرية ايجلز", "station_id": "30174"},
    {"city_station_name": "العاشر من رمضان - العاشر", "station_id": "30177"},
    {"city_station_name": "ميت غمر - ميت غمر", "station_id": "30178"},
    {"city_station_name": "الطور - الطور", "station_id": "30180"},
    {"city_station_name": "راس غارب - راس غارب", "station_id": "30181"},
    {"city_station_name": "دهب - دهب", "station_id": "30186"},
    {"city_station_name": "الفرافرة - الفرافرة", "station_id": "30187"},
    {"city_station_name": "الواحات - الواحات", "station_id": "30188"},
    {"city_station_name": "زفتى - زفتى", "station_id": "30191"},
    {"city_station_name": "منوف - اشمون - مطروح", "station_id": "30192"},
    {"city_station_name": "بلطيم - بلطيم", "station_id": "30193"},
    {"city_station_name": "سوهاج - سوهاج", "station_id": "30194"},
    {"city_station_name": "اسيوط - اسيوط", "station_id": "30195"},
    {"city_station_name": "راس سدر - راس سدر", "station_id": "30196"},
    {"city_station_name": "الفيوم - الفيوم", "station_id": "30197"},
    {"city_station_name": "بني سويف - بنى سويف", "station_id": "30198"},
    {"city_station_name": "بنها - بنها", "station_id": "30199"},
    {"city_station_name": "المنيا - المنيا", "station_id": "30200"},
    {"city_station_name": "النجيلة - النجيلة", "station_id": "30201"},
    {"city_station_name": "الاسماعيلية - الاسماعيلية", "station_id": "30202"},
    {"city_station_name": "القصاصين - القصاصين", "station_id": "30203"},
    {"city_station_name": "التل الكبير - التل الكبير", "station_id": "30204"},
    {"city_station_name": "سيدى برانى - براني", "station_id": "30208"},
    {"city_station_name": "بورسعيد - بورسعيد", "station_id": "30209"},
    {"city_station_name": "القاهرة - الترجمان", "station_id": "30210"},
    {"city_station_name": "القاهرة - المحطه الدوليه", "station_id": "30211"},
    {"city_station_name": "المنصورة - المنصوره", "station_id": "30212"},
    {"city_station_name": "القاهرة - القللى", "station_id": "30213"},
    {"city_station_name": "القاهرة - عبد المنعم رياض", "station_id": "30214"},
    {
      "city_station_name": "القاهرة - الماظة(الطريق الدائرى)",
      "station_id": "30215"
    },
    {"city_station_name": "القاهرة - عبود", "station_id": "30216"},
    {"city_station_name": "راس سدر - راس سدر", "station_id": "30217"},
    {"city_station_name": "القاهرة - المطرية", "station_id": "30218"},
    {"city_station_name": "العريش - أبو زنيمة", "station_id": "30219"},
    {"city_station_name": "العريش - ( ابو رديس )", "station_id": "30220"},
    {"city_station_name": "شرم الشيخ - شرم الشيخ", "station_id": "30221"},
    {"city_station_name": "جنوب سيناء - النفق", "station_id": "30222"},
    {"city_station_name": "الاسماعيلية - نخل", "station_id": "30224"},
    {"city_station_name": "القاهرة - المرج", "station_id": "30225"},
    {"city_station_name": "سانت كاترين - سانت كاترين", "station_id": "30226"},
    {"city_station_name": "راس البر - راس البر", "station_id": "30228"},
    {"city_station_name": "الزقازيق - الزقازيق", "station_id": "30229"},
    {"city_station_name": "الاسماعيلية - فاقوس", "station_id": "30230"},
    {"city_station_name": "بنها - بنها", "station_id": "30231"},
    {"city_station_name": "دهب - العصله", "station_id": "30232"},
    {"city_station_name": "كفر الشيخ  - كفر الشيخ", "station_id": "30233"},
    {"city_station_name": "دمنهور - دمنهور", "station_id": "30234"},
    {"city_station_name": "دراو - دكرنس", "station_id": "30235"},
    {"city_station_name": "القاهرة - المنيب", "station_id": "30237"},
    {"city_station_name": "اسيوط الجديدة - اسيوط", "station_id": "30238"},
    {"city_station_name": "قنا - قنا", "station_id": "30239"},
    {"city_station_name": "الاقصر - الاقصر", "station_id": "30240"},
    {"city_station_name": "الغردقة - الغردقه شرق", "station_id": "30241"},
    {"city_station_name": "المحلة الكبرى - المحله", "station_id": "30242"},
    {"city_station_name": "شبين الكوم - شبين الكوم", "station_id": "30243"},
    {"city_station_name": "سفاجا - سفاجا", "station_id": "30244"},
    {"city_station_name": "سوهاج - سوهاج", "station_id": "30246"},
    {"city_station_name": "جرجا - جرجا", "station_id": "30247"},
    {"city_station_name": "القاهرة - التجنيد", "station_id": "30248"},
    {"city_station_name": "جنوب سيناء - طورسيناء", "station_id": "30249"},
    {"city_station_name": "دهب - دهب", "station_id": "30250"},
    {"city_station_name": "بورسعيد - بورفؤاد", "station_id": "30251"},
    {"city_station_name": "جنوب سيناء - نوبيع", "station_id": "30252"},
    {"city_station_name": "الفيوم - الفيوم", "station_id": "30253"},
    {"city_station_name": "مرسي مطروح - مرسى مطروح", "station_id": "30254"},
    {"city_station_name": "دمياط - جمصه", "station_id": "30255"},
    {"city_station_name": "كفر صقر - كفر صقر", "station_id": "30256"},
    {"city_station_name": "راس غارب - غارب", "station_id": "30258"},
    {"city_station_name": "جنيفه\r\n - جنيفه", "station_id": "30260"},
    {"city_station_name": "فايد - فايد", "station_id": "30261"},
    {"city_station_name": "ابوصوير\r\n - ابوصوير", "station_id": "30262"},
    {"city_station_name": "القصاصين - القصاصين", "station_id": "30263"},
    {"city_station_name": "ديرب نجم\r\n - ديرب نجم", "station_id": "30264"},
    {"city_station_name": "ابوحماد - ابوحماد", "station_id": "30265"},
    {"city_station_name": "المثلث\r\n - المثلث", "station_id": "30266"},
    {"city_station_name": "بورسعيد - القنطره", "station_id": "30267"},
    {"city_station_name": "قويسنا - قويسنا", "station_id": "30268"},
    {"city_station_name": "السنبلاوين - السنبلاوين", "station_id": "30270"},
    {"city_station_name": "التل الكبير - التل الكبير", "station_id": "30271"},
    {"city_station_name": "شمال سيناء - بئر العبد", "station_id": "30273"},
    {"city_station_name": "رمانه\r\n - رمانه", "station_id": "30274"},
    {"city_station_name": "الزقازيق - أبوكبير", "station_id": "30275"},
    {"city_station_name": "الزقازيق - الصالحيه", "station_id": "30276"},
    {"city_station_name": "بلبيس - بلبيس", "station_id": "30277"},
    {"city_station_name": "الاسكندرية - محرم بيك", "station_id": "30278"},
    {"city_station_name": "القاهرة - 6 اكتوبر", "station_id": "30279"},
    {"city_station_name": "جنوب سيناء - بلوظه", "station_id": "30280"},
    {"city_station_name": "رابعه\r\n - رابعه", "station_id": "30281"},
    {"city_station_name": "الباجور - الباجور", "station_id": "30282"},
    {"city_station_name": " اشمون - أشمون", "station_id": "30283"},
    {"city_station_name": "منوف - منوف", "station_id": "30284"},
    {"city_station_name": "بنى مزار - بنى مزار", "station_id": "30285"},
    {"city_station_name": "القاهرة - مكتب عين شمس", "station_id": "30286"},
    {"city_station_name": "جنوب سيناء - طابا", "station_id": "30288"},
    {"city_station_name": "دمياط - كفر سعد", "station_id": "30293"},
    {"city_station_name": "السويس - السويس", "station_id": "30296"},
    {"city_station_name": "شبين القناطر - شبين القناطر", "station_id": "30297"},
    {"city_station_name": "فارسكور - فارسكور", "station_id": "30299"},
    {"city_station_name": "الزرقا - الزرقا", "station_id": "30300"},
    {"city_station_name": "منية النصر - منية النصر", "station_id": "30301"},
    {"city_station_name": "اسوان - المسبط", "station_id": "30302"},
    {"city_station_name": "القاهرة - السوق التجارى", "station_id": "30303"},
    {"city_station_name": "الاسكندرية - المنشية", "station_id": "30304"},
    {"city_station_name": "القاهرة - المزينة", "station_id": "30305"},
    {"city_station_name": "الوادى - الوادى", "station_id": "30306"},
    {"city_station_name": "القاهرة - المصنع", "station_id": "30307"},
    {"city_station_name": "القاهرة - البنك الاهلى", "station_id": "30308"},
    {"city_station_name": "بنها - كفر شكر", "station_id": "30309"},
    {"city_station_name": "جنوب سيناء - النقب", "station_id": "30310"},
    {"city_station_name": "جنوب سيناء - وادى فيران", "station_id": "30311"},
    {"city_station_name": "العريش - العريش", "station_id": "30314"},
    {"city_station_name": "الاسماعيلية - الاسماعيلية", "station_id": "30317"},
    {"city_station_name": "دمياط - دمياط", "station_id": "30318"},
    {"city_station_name": "الاسكندرية - اسكندرية", "station_id": "30319"},
    {"city_station_name": "جهينة الغربية - طنطا", "station_id": "30320"},
    {"city_station_name": "القاهرة - العاشر", "station_id": "30321"},
    {"city_station_name": "منيا القمح - منيا القمح", "station_id": "30322"},
    {"city_station_name": "ميت غمر - ميت غمر", "station_id": "30324"},
    {"city_station_name": "بني سويف - بنى سويف", "station_id": "30325"},
    {"city_station_name": "ملوى - ملوى", "station_id": "30326"},
    {"city_station_name": "شرم الشيخ - حى النور", "station_id": "30327"},
    {"city_station_name": "القاهرة - القاهره", "station_id": "30328"},
    {"city_station_name": "القاهرة - القللى", "station_id": "30329"},
    {"city_station_name": "القاهرة - العباسية", "station_id": "30331"},
    {"city_station_name": "القاهرة - نادى السكة الحديد", "station_id": "30334"},
    {"city_station_name": "بلقاس - الخازندار", "station_id": "30335"},
    {"city_station_name": "كفر الزيات - الزيات", "station_id": "30338"},
    {"city_station_name": "الخارجة - ابوطرطور", "station_id": "30339"},
    {"city_station_name": "الجيزة - السادس من اكوبر", "station_id": "30343"},
    {"city_station_name": "الجيزة - الجيزة", "station_id": "30344"},
    {"city_station_name": "الزعفرانه - الزعفرنة", "station_id": "30345"},
    {"city_station_name": "بلبيس - بلبيس", "station_id": "30346"},
    {"city_station_name": "البحر الاحمر - العين السخنه", "station_id": "30347"},
    {"city_station_name": "ابورديس - ابو دريس", "station_id": "30348"},
    {"city_station_name": "البحر الاحمر - بورتو السخنه", "station_id": "30349"},
    {"city_station_name": "القنطرة غرب - القنطرة غرب", "station_id": "30350"},
    {"city_station_name": "بئر العبد - بئر العبد", "station_id": "30351"},
    {"city_station_name": "ابوزنيمة - زنيمة", "station_id": "30352"},
    {"city_station_name": "شمال سيناء - النفق", "station_id": "30353"},
    {"city_station_name": "كفر الشيخ  - دسوق", "station_id": "30354"},
    {"city_station_name": "الاسكندرية - سيدى جابر", "station_id": "30355"},
    {"city_station_name": "القاهرة - القاهرة", "station_id": "30356"},
    {"city_station_name": "الاسكندرية - الاسكندريه", "station_id": "30359"},
    {"city_station_name": "جنوب سيناء - ابو زنيمة", "station_id": "30361"},
    {"city_station_name": "مدينة برج العرب - برج العرب", "station_id": "30363"},
    {"city_station_name": "القاهرة - المعصرة", "station_id": "30364"},
    {"city_station_name": "كوم امبو - كوم امبو", "station_id": "30365"},
    {"city_station_name": "مكتب الكفاح - الكفاح", "station_id": "30366"},
    {"city_station_name": "ابو هريرة - ابوهريرة", "station_id": "30367"},
    {
      "city_station_name": "دمياط الجديدة - دمياط الجديدة",
      "station_id": "30368"
    },
    {"city_station_name": "ميت ابوغالب - ميت ابو خالد", "station_id": "30369"},
    {"city_station_name": "ههيا - ههيا", "station_id": "30370"},
    {"city_station_name": "الحسنيه - الحسنيه", "station_id": "30371"},
    {"city_station_name": "الزقازيق - الزراعه", "station_id": "30372"},
    {"city_station_name": "أبو زعبل - أبو زعبل", "station_id": "30374"},
    {"city_station_name": "اجا - اجا", "station_id": "30375"},
    {"city_station_name": "زفتى - زفتي", "station_id": "30376"},
    {"city_station_name": "السنطة - السنطة", "station_id": "30377"},
    {"city_station_name": "كفر الزيات - كفر الزيات", "station_id": "30378"},
    {"city_station_name": "مسطرد - مسطرد", "station_id": "30379"},
    {"city_station_name": "المنزلة - المنزلة", "station_id": "30380"},
    {"city_station_name": "الزعفرانه - الزعفرانه", "station_id": "30381"},
    {"city_station_name": "التوفيقيه - التوفيقيه", "station_id": "30382"},
    {"city_station_name": "مركز بدر - مركز بدر", "station_id": "30383"},
    {"city_station_name": "البحر الاحمر - العين السخنه", "station_id": "30384"},
    {"city_station_name": "المنيا - ديروط", "station_id": "30385"},
    {"city_station_name": "المنيا - المنيا", "station_id": "30386"},
    {"city_station_name": "المنيا - ديرمواس", "station_id": "30387"},
    {"city_station_name": "الاسكندرية - العصافرة", "station_id": "30388"},
    {"city_station_name": "الاسكندرية - الموقف الجديد", "station_id": "30389"},
    {"city_station_name": "العلمين  - العلمين", "station_id": "30390"},
    {
      "city_station_name": "سيدى عبد الرحمن - سيدى عبدالرحمن",
      "station_id": "30391"
    },
    {"city_station_name": "الضبعة - الضبعة", "station_id": "30392"},
    {"city_station_name": "مرسي مطروح - مطروح", "station_id": "30393"},
    {"city_station_name": "سيوة - سيوه", "station_id": "30394"},
    {"city_station_name": "القاهرة - القاهرة", "station_id": "30395"},
    {"city_station_name": "الاسماعيلية - الاسماعيلية", "station_id": "30396"},
    {"city_station_name": "اسوان - اسوان", "station_id": "30397"},
    {"city_station_name": "دمنهور - دمنهور", "station_id": "30398"},
    {"city_station_name": "الاسكندرية - الاسكندرية", "station_id": "30399"},
    {"city_station_name": "الاقصر - الاقصر", "station_id": "30400"},
    {"city_station_name": "ادفو - ادفو", "station_id": "30401"},
    {"city_station_name": "دمنهور - كفر الدوار", "station_id": "30402"},
    {"city_station_name": "دمنهور - ابو حمص", "station_id": "30403"},
    {"city_station_name": "شلاتين - شلاتين", "station_id": "30404"},
    {"city_station_name": "دمياط - دمياط", "station_id": "30406"},
    {"city_station_name": "الداخلة - غرب الموهوب", "station_id": "30407"},
    {"city_station_name": "اسيوط - اسيوط", "station_id": "30408"},
    {
      "city_station_name": "مرسي علم - فندق رويال تيوليب",
      "station_id": "30409"
    },
    {"city_station_name": "جمصة - جمصة", "station_id": "30410"},
    {"city_station_name": "الشرقية - ابو حماد", "station_id": "30411"},
    {"city_station_name": "ابو منقار - ابو منقار", "station_id": "30412"}
  ];

  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title:
              Center(child: Text("حدد رحلتك",style: TextStyle( fontSize: 24))),
          elevation: 12,
        ),
        body: SingleChildScrollView(
          child: Column(children: [
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: TextField(
                controller: t1,
                decoration: InputDecoration(
                    contentPadding:
                        const EdgeInsets.symmetric(vertical: 5, horizontal: 5),
                    border: OutlineInputBorder(),
                    labelText: "متجه من"),
                onChanged: (value) {
                  setState(() {
                    _from.clear();
                    for (int i = 0; i < cities.length; i++) {
                      if (cities[i]["city_station_name"]
                          .contains(value.toLowerCase())) {
                        _from.add(cities[i]["city_station_name"]);
                      }
                    }
                    ;
                  });
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: TextField(
                controller: t2,
                decoration: InputDecoration(
                    contentPadding:
                        const EdgeInsets.symmetric(vertical: 5, horizontal: 5),
                    border: OutlineInputBorder(),
                    labelText: "متجه الى"),
                onChanged: (value) {
                  setState(() {
                    _to.clear();
                    for (int i = 0; i < cities.length; i++) {
                      if (cities[i]["city_station_name"]
                          .contains(value.toLowerCase())) {
                        _to.add(cities[i]["city_station_name"]);
                      }
                    }
                  });
                },
              ),
            ),
            for (int i = 0; i < _from.length; i++)
              ListTile(
                leading: Icon(Icons.pin_drop),
                title: Text(_from[i]),
                onTap: () {
                  t1.text = _from[i];
                  setState(() {
                    _from.clear();
                  });
                },
              ),
            for (int i = 0; i < _to.length; i++)
              ListTile(
                leading: Icon(Icons.pin_drop),
                title: Text(_to[i]),
                onTap: () {
                  t2.text = _to[i];
                  setState(() {
                    _to.clear();
                  });
                },
              ),
            ElevatedButton(
                onPressed: () {
                  showDatePicker(
                          context: context,
                          initialDate: DateTime.now(),
                          firstDate: DateTime(2022),
                          lastDate: DateTime.now().add(Duration(days: 10)))
                      .then((value) {
                    setState(() {
                      d1.text = value.toString();
                    });
                  });
                },
                child: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Text("حدد تاريخ الرحلة", style: TextStyle(fontSize:18),),
                )),
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: TextField(controller: d1,decoration: InputDecoration( contentPadding:
                        const EdgeInsets.symmetric(vertical: 5, horizontal: 5),
                    border: OutlineInputBorder(),
                    
                    hintText: "ادخل ",labelText: ""),
                  ),
                ),
           
          

            ElevatedButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => busseat2()));
                },
                child: Text("اختار الكرسى", style: TextStyle(fontSize: 24))),

            Padding(
              padding: const EdgeInsets.all(100),
              child: BottomNavigationBar(items: const<BottomNavigationBarItem>
          [BottomNavigationBarItem(icon:(Icon(Icons.home)),label: 'الرئيسية', ),
          
          BottomNavigationBarItem(icon:(Icon(Icons.home)),label: 'التذاكر'),
          BottomNavigationBarItem(icon:(Icon(Icons.home)),label: 'الدفع')
          ]),
            ),    
          ],
          ),
          
        ),
        
        
        );
  }
}
