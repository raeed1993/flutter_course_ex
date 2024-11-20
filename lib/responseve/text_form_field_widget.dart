import 'package:flutter/material.dart';



class MyCustomTextField extends StatefulWidget {
  @override
  _MyCustomTextFieldState createState() => _MyCustomTextFieldState();
}

class _MyCustomTextFieldState extends State<MyCustomTextField> {
  final TextEditingController _controller = TextEditingController();
  String? _errorText;

  // دالة تقوم بعمل التحقق كما في validator
  String? _validateInput(String value) {
    if (value.isEmpty) {
      return 'الرجاء إدخال الاسم';
    }
    return null; // الإدخال صحيح، لا توجد رسالة خطأ
  }

  void _submit() {
    setState(() {
      // استدعاء دالة التحقق لتعيين _errorText
      _errorText = _validateInput(_controller.text);
    });

    if (_errorText == null) {
      // إذا لم يكن هناك خطأ، يمكنك تنفيذ الإجراء المطلوب هنا
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('تم الإدخال بنجاح')),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              TextField(
                controller: _controller,
                decoration: InputDecoration(
                  labelText: 'أدخل اسمك',
                  border: OutlineInputBorder(),
                  errorText: _errorText, // عرض رسالة الخطأ هنا إذا كانت موجودة
                ),
              ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: _submit, // استدعاء دالة التحقق عند الضغط
                child: Text('إرسال'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
