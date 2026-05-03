import 'package:flutter/material.dart';

class DetailsScreen extends StatelessWidget {
  final String title;
  final String subtitle;
  final String rating;
  final String description;
  const DetailsScreen({super.key,
  required this.title,
  required this.subtitle,
  required this.rating,
  required this.description,
  });
  

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      // لون خلفية الصفحة
      backgroundColor: const Color(0xFFF5F6FA),

      // الشريط العلوي لشاشة التفاصيل
      appBar: AppBar(
        title: const Text(
          'Movie Details',
          style:  TextStyle(fontWeight: FontWeight.bold),
        ),
        backgroundColor: const Color(0xFF1E2A38),
        foregroundColor: Colors.white,
        elevation: 4,
      ),

      // محتوى شاشة التفاصيل
      body: Padding(//استخدمناه لسبب بسيط: حتى نبعد محتوى صفحة التفاصيل عن حواف الشاشة.
      //يصبح النص يصبح فيه مسافة مريحة من كل الجهات.
        padding: const EdgeInsets.all(16),

        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,

          children: [
            // عنوان الفيلم
            Text(
              title,
              style: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.bold,
                color: Color(0xFF111827),
              ),
            ),

            const SizedBox(height: 10),

            // النوع والسنة
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 12,//يمين ويسار
               vertical: 6//فوق وتحت
               ),
              decoration: BoxDecoration(
                color: const Color(0xFFE8EDF3),
                borderRadius: BorderRadius.circular(20),
              ),
              child:  Text(
                subtitle,//تاريخ النشر
                style: TextStyle(
                  color: Color(0xFF1E2A38),
                  fontWeight: FontWeight.w500,//سماكة الخط متوسطة
                ),
              ),
            ),

            const SizedBox(height: 16),

            // التقييم
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
              decoration: BoxDecoration(
                color: const Color(0xFFC9A227),
                borderRadius: BorderRadius.circular(12),
                boxShadow: const [
                  BoxShadow(
                    color: Color(0x22000000),
                    blurRadius: 4,
                    offset: Offset(0, 2),
                  ),
                ],
              ),
              child:  Text(
                'Rating: $rating',//التقييم
                style: const TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 14,
                ),
              ),
            ),

            const SizedBox(height: 24),

            // وصف الفيلم
             Text(
              description,//متغير الوصف
              style: TextStyle(
                fontSize: 16,
                height: 1.5,
                color: Color(0xFF374151),
              ),
            ),

            // يدفع الزر إلى أسفل الشاشة
            const Spacer(),//معناه: خذ المساحة الفارغة المتبقية.

            // زر الرجوع
            SizedBox(//يجعل الزر يأخذ عرض الشاشة كاملًا.
              width: double.infinity,//خذ أكبر عرض ممكن.
              child: ElevatedButton(//ينشئ زرًا
              //لا يحتوي خاصية مباشرة اسمها width.
              //لذلك نغلفه داخل SizedBox ونحدد العرض من الخارج.
                onPressed: () {
                  Navigator.pop(context);//يرجع للشاشة السابقة.
                  //context يخبر فلاتر أنا الآن داخل أي شاشة؟ ومن أي مكان أريد الرجوع؟
                },
                style: ElevatedButton.styleFrom(//ينسق شكل الز
                  backgroundColor: const Color(0xFF1E2A38),//لون خلفية الزر.
                  foregroundColor: Colors.white,
                  padding: const EdgeInsets.symmetric(vertical: 16),
                ),
                child: const Text(
                  'Go Back',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
