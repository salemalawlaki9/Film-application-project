import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //للون خلفية الصفحة
      backgroundColor: const Color(0xFFF5F6FA),
      // الشريط العلوي للتطبيق
      appBar: AppBar(
        // لون خلفية الشريط
        backgroundColor: const Color(0xFF1E2A38),
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
            color: Color(0xFFE8EDF3),
            padding: const EdgeInsets.all(16),
            child: const Text(
              'Popular Movies',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Color(0xFF1E2A38),
              ),
            ),
          ),
          _buildMovieCard(
            title: 'Inception',
            subtitle: 'Sci-Fi • 2010',
            rating: '8.5',
          ),
          // استدعاء الدالة لإنشاء بطاقة الفيلم الثانية
          _buildMovieCard(
            title: 'The Matrix',
            subtitle: 'Sci-Fi • 1999',
            rating: '8.7',
          ),
          // استدعاء الدالة لإنشاء بطاقة الفيلم الثالثة
          _buildMovieCard(
            title: 'Interstellar',
            subtitle: 'Sci-Fi • 2014',
            rating: '8.6',
          ),
          // استدعاء الدالة لإنشاء بطاقة الفيلم الربع
          _buildMovieCard(
            title: 'The Tomorrow War',
            subtitle: 'Sci-Fi • 2021',
            rating: '7.5',
          ),
        ],
      ),
      // زر عائم يظهر فوق محتوى الصفحة
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // لاحقًا ممكن نخلي الزر يضيف فيلم أو يفتح شاشة جديدة
        },
        backgroundColor: const Color(0xFFC9A227), //أضفنا لون الزر
        foregroundColor: Colors.white, //للون للايقون هذا يجعل أيقونة + بيضاء.
        child: const Icon(Icons.add), //ايقونة الاضافة
      ),

      // مكان ظهور الزر العائم هذا يجعل الزر يظهر أسفل الشاشة في المنتصف.
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }

  // دالة ترجع بطاقة فيلم
  Widget _buildMovieCard({
    //دالة من نوع ويدجت
    //عند استدعاء الدالة لازم تعطيها هذه القيم.
    /*
   في هذه المرحلة حولت بطاقة الفيلم إلى دالة نوعها Widget
    حتى أقلل تكرار الكود. جعلت الدالة تستقبل 
   title و subtitle و rating باستخدام required، 
   ثم استخدمت هذه القيم داخل Text. وأضفت Spacer قبل صندوق التقييم حتى يظهر التقييم في يمين البطاقة.
   */
    required String title,
    required String subtitle,
    required String rating,
  }) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      padding: const EdgeInsets.all(16),

      decoration: BoxDecoration(
        color: Colors.white,

        // جعل زوايا البطاقة دائرية
        borderRadius: BorderRadius.circular(12),

        // إضافة ظل للبطاقة
        boxShadow: [
          BoxShadow(
            color: Colors.grey.shade300,
            blurRadius: 4,
            offset: const Offset(0, 2),
          ),
        ],
      ),

      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,

        children: [
          // صندوق الأيقونة
          Container(
            width: 50,
            height: 50,
            decoration: BoxDecoration(
              color: const Color(0xFFD9E2EC),
              borderRadius: BorderRadius.circular(8),
            ),
            child: const Icon(Icons.movie, color: Color(0xFF1E2A38)),
          ),

          // مسافة بين الأيقونة والنصوص
          const SizedBox(width: 16),

          // اسم الفيلم والنوع
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: const TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),

              Text(
                subtitle,
                style: TextStyle(fontSize: 14, color: Colors.grey.shade600),
              ),
            ],
          ),

          // يدفع التقييم إلى أقصى اليمين
          const Spacer(),

          // صندوق التقييم
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 6),
            decoration: BoxDecoration(
              color: Color(0xFFC9A227),
              borderRadius: BorderRadius.circular(12),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.shade400,
                  blurRadius: 4,
                  offset: const Offset(0, 2),
                ),
              ],
            ),
            child: Text(
              rating,
              style: const TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 13,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
