import 'package:flutter_application_1/models/quiz_question.dart';

const questions = [
  QuizQuestion(
    'Flutter ใช้ภาษาโปรแกรมอะไร',
    [
      'Dart',
      'Python',
      'HTML',
      'assembly',
    ],
    0,
  ),
  QuizQuestion(
    'ข้อดีของ Flutter คืออะไร',
    [
      'ประสิทธิภาพใกล้เคียงกับเจ้าของภาษา',
      'การเรนเดอร์ที่รวดเร็ว สม่ำเสมอ และปรับแต่งได้',
      'คนส่วนใหญ่อาจจะยังไม่คุ้นเคยกับ syntax ของภาษา dart นี้',
      'ถูกทั้งข้อ 1 และ 2',
    ],
    3,
  ),
  QuizQuestion(
    'การใช้งานคำสั่ง setState() เพื่อกำหนดการเปลี่ยนแปลง ใช้ใน State อะไร ',
    [
      'StatefulWidget',
      'StatelessWidget',
      'ใช้ได้ทั้งข้อ 1 และ 2',
    ],
    0,
  ),
  QuizQuestion(
    'ข้อใดผิดจาก StatefulWidget',
    [
      'ไม่มีการ Override method build() แต่จะมีส่วนของ Class State เพิ่มเติมขึ้นมา',
      'มีการ Override method build()',
      'สามารถ Rebuild หรือเปลี่ยนแปลงค่าของ State ภายในได้'
    ],
    1,
  ),
  QuizQuestion(
    'ข้อใดถูกต้องจาก StatelessWidget',
    [
      'Widget ที่รับค่ามาแล้วแสดงผลเพียงอย่างเดียวโดยหลังจาก Build ขึ้นมาแล้วจะไม่สามารถเปลี่ยนค่าตัวแปร(State)',
      'ไม่มีการ extends StatelessWidget',
      'ไม่มีการ Override method build()',
      'ถูกทั้งข้อ 1 และ 2',
    ],
    0,
  ),
];
