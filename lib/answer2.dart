import 'package:flutter/material.dart';

class FormSimple extends StatefulWidget {
  const FormSimple({super.key});
  @override
  State<FormSimple> createState() => _FormSimpleState();
}

class _FormSimpleState extends State<FormSimple> {
  final _formKey = GlobalKey<FormState>(); // ใช้สำหรับตรวจสอบฟอร์ม
  String? _selectedItem;
  String? _gender = 'Female';
  bool _isChecked = false;

  // สุดตรงนี้ เคลียร์สถานะ
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'คำนวณค่าจัดส่ง',
          style: TextStyle(
            color: Colors.black, // เปลี่ยนสีข้อความใน AppBar
            fontSize: 20, // ปรับขนาดตัวหนังสือ
            fontWeight: FontWeight.bold, // เพิ่มความหนา
          ),
        ),
        backgroundColor: Color.fromARGB(255, 255, 255, 255),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Form(
          key: _formKey,
          child: Column(
            //  mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
               const Text('น้ำหนักสินค้า(กก.)'),
              TextFormField(
                decoration: const InputDecoration(),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'กรุณาใส่น้ำหนัก';
                  }
                  return null;
                },
              ),
              const Text('เลือกระยะทางซ '),
              DropdownButtonFormField<String>(
                decoration: const InputDecoration(
                  labelText: 'ต่างจังหวัด:',
                ),
                value: _selectedItem,
                items:
                    ['ในเมือง', 'ต่างจังหวัด', 'ต่างประเศ']
                        .map(
                          (item) =>
                              DropdownMenuItem(value: item, child: Text(item)),
                        )
                        .toList(),
                onChanged: (value) {
                  _selectedItem = value;
                },
                validator:
                    (value) => value == null ? 'Please select an option' : null,
              ),
              const Text('บริการเสริม'),
              CheckboxListTile(
                title: const Text('แพ็คกิ้งพิเศษ (+20)'),
                value: _isChecked,
                onChanged: (value) {
                  setState(() {
                    _isChecked = value!;
                  });
                },
                
              ),
              CheckboxListTile(
                title: const Text('ประกันพิเศษ (+50)'),
                value: _isChecked,
                onChanged: (value) {
                  setState(() {
                    _isChecked = value!;
                  });
                },
                
              ),
              const Text('เลือกความเร่งด่วน'),
           
                  Expanded(
                    child: RadioListTile(
                      title: const Text('ปกติ'),
                      value: 'ปกติ',
                      groupValue: _gender,
                      onChanged: (value) {
                        setState(() {
                          _gender = value.toString();
                        });
                      },
                    ),
                  ),
                  Expanded(
                    child: RadioListTile(
                      title: const Text('ด่วน'),
                      value: 'ด่วน',
                      groupValue: _gender,
                      onChanged: (value) {
                        setState(() {
                          _gender = value.toString();
                        });
                      },
                    ),
                  ),
                  Expanded(
                    child: RadioListTile(
                      title: const Text('ด่วน'),
                      value: 'ด่วนพิเศษ',
                      groupValue: _gender,
                      onChanged: (value) {
                        setState(() {
                          _gender = value.toString();
                        });
                      },
                    ),
                  ),
               Center(
                child: ElevatedButton(
                  onPressed: () {
                    if (_formKey.currentState!.validate()) {
                      _formKey.currentState!.save();
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(content: Text('Registration Successful!')),
                      );
                    }
                  },
                  child: const Text('คำนวณราคา'),
                ),
              ),
              Text('ต่าจัดส่งทั้งหมด')
            ],
          ),
        ),
      ),
    );
  }
}
