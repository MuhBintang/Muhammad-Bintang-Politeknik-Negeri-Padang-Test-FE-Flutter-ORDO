import 'package:flutter/material.dart';

class OrderTrackingPopup extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16.0),
      height: 200,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20.0),
          topRight: Radius.circular(20.0),
        ),
      ),
      child: Column(
        children: [
          Container(
            height: 5,
            width: 50,
            color: Colors.grey[300],
          ),
          SizedBox(height: 16.0),
          Text(
            'Tahap Pemesanan',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          Text(
            'Daftar menu tahap pemesanan',
            style: TextStyle(
              fontSize: 14,
              color: Colors.grey,
            ),
          ),
          SizedBox(height: 16.0),
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Flexible(
                  fit: FlexFit.tight,
                  child: _buildButton(
                    context,
                    title: 'Booking Fee',
                    icon: Icons.attach_money,
                    onTap: () {
                      
                      showModalBottomSheet(
                        context: context,
                        builder: (BuildContext context) {
                          return AdminTrackingPopup();
                        },
                      );
                    },
                  ),
                ),
                Flexible(
                  fit: FlexFit.tight,
                  child: _buildButton(
                    context,
                    title: 'Belum Bayar',
                    icon: Icons.pending,
                  ),
                ),
                Flexible(
                  fit: FlexFit.tight,
                  child: _buildButton(
                    context,
                    title: 'Riwayat Pemesanan',
                    icon: Icons.history,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildButton(BuildContext context, {required String title, required IconData icon, VoidCallback? onTap}) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 4.0),
        decoration: BoxDecoration(
          color: Colors.transparent,
          borderRadius: BorderRadius.circular(10.0),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(
              backgroundColor: Colors.white70,
              child: Icon(icon, color: Color(0xFF324b34)),
            ),
            SizedBox(height: 8.0),
            Text(
              title,
              style: TextStyle(
                color: Color(0xFF324b34),
                fontWeight: FontWeight.bold,
                fontSize: 12,
              ),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}

class AdminTrackingPopup extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16.0),
      height: 400,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20.0),
          topRight: Radius.circular(20.0),
        ),
      ),
      child: Column(
        children: [
          Container(
            height: 5,
            width: 50,
            color: Colors.grey[300],
          ),
          SizedBox(height: 16.0),
          Text(
            'Tahap Administrasi',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          Text(
            'Daftar Menu Tahap Administrasi',
            style: TextStyle(
              fontSize: 14,
              color: Colors.grey,
            ),
          ),
          SizedBox(height: 16.0),
          Expanded(
            child: GridView.count(
              crossAxisCount: 3,
              children: [
                _buildAdminButton(context, 'Tahap SPS', Icons.event, () {
                  
                  showModalBottomSheet(
                    context: context,
                    builder: (BuildContext context) {
                      return PembangunanPopup();
                    },
                  );
                }),
                _buildAdminButton(context, 'Tahap SPR', Icons.event),
                _buildAdminButton(context, 'Tahap PPJB', Icons.event),
                _buildAdminButton(context, 'Daftar Dokumen', Icons.document_scanner),
                _buildAdminButton(context, 'Tahap SP3K', Icons.event),
                _buildAdminButton(context, 'Bayar Angsuran', Icons.payment),
              ],
            ),
          ),
        ],
      ),
    );
  }

    Widget _buildAdminButton(BuildContext context, String title, IconData icon, [VoidCallback? onTap]) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        margin: EdgeInsets.all(4.0),
        decoration: BoxDecoration(
          color: Colors.transparent,
          borderRadius: BorderRadius.circular(10.0),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(
              backgroundColor: Colors.white70,
              child: Icon(icon, color: Color(0xFF324b34)),
            ),
            SizedBox(height: 8.0),
            Text(
              title,
              style: TextStyle(
                color: Color(0xFF324b34),
                fontWeight: FontWeight.bold,
                fontSize: 12,
              ),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}

class PembangunanPopup extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16.0),
      height: 400,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20.0),
          topRight: Radius.circular(20.0),
        ),
      ),
      child: Column(
        children: [
          Container(
            height: 5,
            width: 50,
            color: Colors.grey[300],
          ),
          SizedBox(height: 16.0),
          Text(
            'Tahap Pembangunan',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          Text(
            'Daftar Menu Tahap Pembangunan Rumah',
            style: TextStyle(
              fontSize: 14,
              color: Colors.grey,
            ),
          ),
          SizedBox(height: 60),
          Expanded(
            child: Column(
              children: [
                
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    _buildPembangunanButton('Tahap Persiapan', 1.0, context),
                    _buildPembangunanButton('Tahap Pondasi', 0.2),
                    _buildPembangunanButton('Tahap Unfinished', 0.3),
                  ],
                ),
                SizedBox(height: 16.0),
               
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    _buildPembangunanButton('Tahap Finishing & Interior', 0.4),
                    _buildPembangunanButton('Tahap Pembersihan', 0.0),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildPembangunanButton(String title, double progress, [BuildContext? context]) {
    return GestureDetector(
      onTap: () {
        if (context != null && title == 'Tahap Persiapan') {
          
          showModalBottomSheet(
            context: context,
            builder: (BuildContext context) {
              return TahapAkadSerahTerimaPopup();
            },
          );
        }
        
      },
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 4.0),
        decoration: BoxDecoration(
          color: Colors.transparent,
          borderRadius: BorderRadius.circular(10.0),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 50,
              height: 50,
              child: Stack(
                alignment: Alignment.center,
                children: [
                  
                  CircularProgressIndicator(
                    value: progress,
                    strokeWidth: 6,
                    valueColor: AlwaysStoppedAnimation<Color>(Color(0xFF324b34)),
                    backgroundColor: Colors.grey[300],
                  ),
                  
                  Text(
                    '${(progress * 100).toInt()}%',
                    style: TextStyle(
                      color: Color(0xFF324b34),
                      fontWeight: FontWeight.bold,
                      fontSize: 12,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 8.0),
            Text(
              title,
              style: TextStyle(
                color: Color(0xFF324b34),
                fontWeight: FontWeight.bold,
                fontSize: 12,
              ),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}

class TahapAkadSerahTerimaPopup extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16.0),
      height: 400,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20.0),
          topRight: Radius.circular(20.0),
        ),
      ),
      child: Column(
        children: [
          Container(
            height: 5,
            width: 50,
            color: Colors.grey[300],
          ),
          SizedBox(height: 16.0),
          Text(
            'Tahap Akad & Serah Terima',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          Text(
            'Daftar Menu Akad & Serah Terima',
            style: TextStyle(
              fontSize: 14,
              color: Colors.grey,
            ),
          ),
          SizedBox(height: 16.0),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                // Top row with 3 buttons
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Expanded(child: _buildAkadButton('Tahap Akad\n')),
                    SizedBox(width: 8.0),
                    Expanded(child: _buildAkadButton('Tahap Serah Terima Bangunan')),
                    SizedBox(width: 8.0),
                    Expanded(child: _buildAkadButton('Tahap Serah Terima Legalitas')),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Expanded(child: _buildAkadButton('Daftar Komplain')),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildAkadButton(String title) {
    return GestureDetector(
      onTap: () {
      },
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 4.0),
        decoration: BoxDecoration(
          color: Colors.transparent,
          borderRadius: BorderRadius.circular(10.0),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(
              backgroundColor: Colors.white70,
              child: Icon(Icons.event, color: Color(0xFF324b34)),
            ),
            SizedBox(height: 8.0),
            Text(
              title,
              style: TextStyle(
                color: Color(0xFF324b34),
                fontWeight: FontWeight.bold,
                fontSize: 12,
              ),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}