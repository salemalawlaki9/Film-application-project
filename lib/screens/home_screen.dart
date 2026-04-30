import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // الشريط العلوي للتطبيق
      appBar: AppBar(
        // لون خلفية الشريط
        backgroundColor: Colors.deepPurple,
        // لون النصوص والأيقونات داخل الشريط
        foregroundColor: Colors.white,
        // درجة الظل أسفل الشريط
        elevation: 4,
        // ارتفاع الشريط
        toolbarHeight: 60, //الافتراضي تقريبًا 56.
        // وضوح عناصر الشريط
        toolbarOpacity: 1.0,

        // الأيقونة الموجودة في بداية الشريط
        leading: IconButton(
          //هو العنصر الذي يظهر في بداية الشريط.
          //IconButton هذا زر يحتوي على أيقونة.
          icon: const Icon(Icons.menu), //ايقونة منيو قائمة
          onPressed: () {
            // لاحقًا ممكن نضيف وظيفة هنا
          },
        ),
        // عنوان الشريط
        title: const Text(
          'Movie Explorer', //وهذا يمثل العنوان الظاهر في الشريط العلوي للشاشة.
          style: TextStyle(fontWeight: FontWeight.bold),
        ),

        // الأيقونات الموجودة في نهاية الشريط
        actions: [
          IconButton(
            icon: const Icon(Icons.search), //ايقونة البحث
            onPressed: () {
              // لاحقًا ممكن نضيف البحث هنا
            },
          ),
          IconButton(
            icon: const Icon(Icons.more_vert), // ايقونة الخيارات
            onPressed: () {
              // لاحقًا ممكن نضيف قائمة خيارات هنا
            },
          ),
        ],
      ),
      // محتوى الصفحة الرئيسية
      body: Column(
        // ترتيب العناصر من أعلى الصفحة
        mainAxisAlignment: MainAxisAlignment.start,

        // تمديد العناصر بعرض الشاشة
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          // عنوان قسم الأفلام
          Container(
            color: Colors.deepPurple.shade50,
            padding: const EdgeInsets.all(16),
            child: const Text(
              'Popular Movies',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.deepPurple,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
