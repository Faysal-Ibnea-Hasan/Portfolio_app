import 'package:flutter/material.dart';
import 'package:pdfx/pdfx.dart'; // step:1-import the pdfx package

class PDFViewer extends StatefulWidget {
  const PDFViewer({super.key});

  @override
  State<PDFViewer> createState() => _PDFViewerState();
}

class _PDFViewerState extends State<PDFViewer> {
  late PdfControllerPinch pdfPinch; //step:2-Decleare the PdfControllerPinch
  @override
  void initState() {
    super.initState();
    pdfPinch = PdfControllerPinch(
      document:
          PdfDocument.openAsset('lib/assets/pdfs/Faysal_Ibnea_Hasan_Cv_.pdf'),
    );
  }//step:3-Load the pdf from asset in the initial state

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Cv'),
        flexibleSpace: Container(
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    Colors.blue,
                    Colors.greenAccent,
                  ],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                ),
              ),
            ),
            elevation: 20,
            shadowColor: Colors.grey,
      ),
      body: _buildUI(),
    );
  }

  Widget _buildUI() {
    return Column(
      children: [
        _pdfView(),
      ],
    );
  }//step:4-make widget for UI

  Widget _pdfView() {
    return Expanded(
      child: PdfViewPinch(controller: pdfPinch),
    );
  }//step:5-make a extended widget for showing the pdf
}
