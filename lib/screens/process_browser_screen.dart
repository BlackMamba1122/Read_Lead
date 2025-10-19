import 'dart:io';

import 'package:flutter/material.dart';
import 'package:open_filex/open_filex.dart';

// Import your 3 generated files (each exposes `const processRef`)
import '../data/process_custom_software.dart' as sw;
import '../data/process_innovative_product.dart' as ip;
import '../data/process_large_government.dart' as gov;
import '../screens/process.dart';
/// Map standards to your asset PDFs (update paths to match your project).
import 'package:flutter/services.dart' show rootBundle;
import 'package:path_provider/path_provider.dart';
import 'package:permission_handler/permission_handler.dart';

// If you use SVG diagrams, uncomment below and add flutter_svg in pubspec
// import 'package:flutter_svg/flutter_svg.dart';

// PDF viewer with pdfx
import 'package:pdfx/pdfx.dart';

/// Map standards -> asset PDFs for deep-linking by citation.
const Map<String, String> kStandardAssets = {
  'PMBOK7': 'assets/pdf/PMBOK.pdf',
  'PMI': 'assets/pdf/PMI.pdf',
  'ISO2021': 'assets/pdf/ISO2021.pdf',
  'ISO2020': 'assets/pdf/ISO2020.pdf',
  'PRINCE2': 'assets/pdf/PRINCE2.pdf',
};

/// Map processes -> exported report PDFs (place into assets/reports)
const Map<String, String> kProcessReportPdf = {
  'custom_software': 'assets/reports/report_custom_software.pdf',
  'innovative_product': 'assets/reports/report_innovative_product.pdf',
  'large_government': 'assets/reports/report_large_government.pdf',
};

class ProcessBrowserScreen extends StatefulWidget {
  const ProcessBrowserScreen({super.key});

  @override
  State<ProcessBrowserScreen> createState() => _ProcessBrowserScreenState();
}

class _ProcessBrowserScreenState extends State<ProcessBrowserScreen> {
  late _Choice _choice;

  static final _choices = <_Choice>[
    _Choice(
      id: 'custom_software',
      title: 'Custom Software',
      subtitle: '≤6 months · ≤7 members',
      ref: sw.processRef,
      diagramAsset: 'assets/diagrams/diagram_custom_software.png',
    ),
    _Choice(
      id: 'innovative_product',
      title: 'Innovative Product',
      subtitle: '~12 months · R&D-heavy',
      ref: ip.processRef,
      diagramAsset: 'assets/diagrams/diagram_innovative_product.png',
    ),
    _Choice(
      id: 'large_government',
      title: 'Large Government',
      subtitle: '2 years · multi-discipline',
      ref: gov.processRef,
      diagramAsset: 'assets/diagrams/diagram_large_government.png',
    ),
  ];

  @override
  void initState() {
    super.initState();
    _choice = _choices.first;
  }

  @override
  Widget build(BuildContext context) {
    final proc = _choice.ref;

    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.surface,
      appBar: AppBar(
        title: const Text('Tailored Processes'),
        centerTitle: true,
      ),
      body: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(child: const SizedBox(height: 8)),
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: _ScenarioPicker(
                choice: _choice,
                choices: _choices,
                onChanged: (c) => setState(() => _choice = c),
              ),
            ),
          ),
          SliverToBoxAdapter(child: const SizedBox(height: 8)),
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: _HeaderCard(choice: _choice),
            ),
          ),
          SliverList.builder(
            itemBuilder: (_, i) => Padding(
              padding: const EdgeInsets.fromLTRB(16, 10, 16, 2),
              child: _PhaseCard(phase: proc.phases[i]),
            ),
            itemCount: proc.phases.length,
          ),
          const SliverToBoxAdapter(child: SizedBox(height: 96)),
        ],
      ),

      // Two floating buttons: LEFT = Download report PDF, RIGHT = Diagram
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
      floatingActionButton: SafeArea(
        minimum: EdgeInsets.only(
          // push above the nav bar height + device inset
          bottom: kBottomNavigationBarHeight + 12,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const SizedBox(width: 24),
            // Left FAB: Download PDF report of selected process
            DownloadFab(processId: _choice.id),
            const Spacer(),
            // Right FAB: Diagram
            _DiagramFab(choice: _choice),
          ],
        ),
      ),
    );
  }
}

// ---------- Data shape hints (your generated files already expose this) ----------

// ---------- Top widgets ----------

class _ScenarioPicker extends StatelessWidget {
  final _Choice choice;
  final List<_Choice> choices;
  final ValueChanged<_Choice> onChanged;

  const _ScenarioPicker({required this.choice, required this.choices, required this.onChanged});

  @override
  Widget build(BuildContext context) {
    return SegmentedButton<_Choice>(
      segments: choices
          .map((c) => ButtonSegment(
        value: c,
        label: Text(c.title),
        icon: const Icon(Icons.auto_awesome),
      ))
          .toList(),
      selected: {choice},
      onSelectionChanged: (set) => onChanged(set.first),
      style: ButtonStyle(
        visualDensity: VisualDensity.standard,
        padding: WidgetStateProperty.all(const EdgeInsets.symmetric(horizontal: 12, vertical: 10)),
      ),
    );
  }
}

class _HeaderCard extends StatelessWidget {
  final _Choice choice;
  const _HeaderCard({required this.choice});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final proc = choice.ref;

    return Card(
      elevation: 1,
      clipBehavior: Clip.antiAlias,
      child: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              theme.colorScheme.primaryContainer,
              theme.colorScheme.surface,
            ],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
        padding: const EdgeInsets.all(16),
        child: Row(
          children: [
            Icon(Icons.workspace_premium, color: theme.colorScheme.primary, size: 28),
            const SizedBox(width: 12),
            Expanded(
              child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                Text(proc.scenarioName, style: theme.textTheme.titleMedium?.copyWith(fontWeight: FontWeight.w700)),
                const SizedBox(height: 6),
                Text(proc.tailoringRationale),
              ]),
            ),
          ],
        ),
      ),
    );
  }
}

class _PhaseCard extends StatelessWidget {
  final PhaseRef phase;
  const _PhaseCard({required this.phase});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      elevation: 1,
      child: Padding(
        padding: const EdgeInsets.fromLTRB(14, 12, 14, 12),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Title row
            Row(
              children: [
                Container(
                  decoration: BoxDecoration(
                    color: theme.colorScheme.primaryContainer,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 6),
                  child: Text('~${phase.durationWeeks} wks', style: const TextStyle(fontWeight: FontWeight.w700)),
                ),
                const SizedBox(width: 10),
                Expanded(
                  child: Text(
                    phase.name,
                    style: theme.textTheme.titleMedium?.copyWith(fontWeight: FontWeight.w700),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 10),

            _Bullets(title: 'Objectives', items: phase.objectives),
            _Bullets(title: 'Entry', items: phase.entryCriteria),
            _Bullets(title: 'Exit', items: phase.exitCriteria),
            _Bullets(title: 'Measures', items: phase.successMeasures),

            _KeyValueRow(label: 'Roles', values: phase.roles),
            _KeyValueRow(label: 'Artifacts', values: phase.artifacts),
            _KeyValueRow(label: 'Decision Gates', values: phase.decisionGates),

            const Divider(height: 24),
            Text('Activities', style: theme.textTheme.titleSmall?.copyWith(fontWeight: FontWeight.bold)),
            const SizedBox(height: 8),

            ...phase.activities.map((a) => _ActivityCard(activity: a)),
          ],
        ),
      ),
    );
  }
}

class _Bullets extends StatelessWidget {
  final String title;
  final List<String> items;
  const _Bullets({required this.title, required this.items});

  @override
  Widget build(BuildContext context) {
    if (items.isEmpty) return const SizedBox.shrink();
    return Padding(
      padding: const EdgeInsets.only(bottom: 8),
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Text(title, style: const TextStyle(fontWeight: FontWeight.w700)),
        const SizedBox(height: 4),
        Wrap(
          spacing: 10,
          runSpacing: 6,
          children: items.take(4).map((e) => Chip(label: Text(e))).toList(),
        ),
      ]),
    );
  }
}

class _KeyValueRow extends StatelessWidget {
  final String label;
  final List<String> values;
  const _KeyValueRow({required this.label, required this.values});

  @override
  Widget build(BuildContext context) {
    if (values.isEmpty) return const SizedBox.shrink();
    return Padding(
      padding: const EdgeInsets.only(bottom: 8),
      child: Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
        SizedBox(width: 120, child: Text(label, style: const TextStyle(fontWeight: FontWeight.w700))),
        Expanded(child: Text(values.join(', '))),
      ]),
    );
  }
}

class _ActivityCard extends StatelessWidget {
  final ActivityRef activity;
  const _ActivityCard({required this.activity});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Card(
      margin: const EdgeInsets.symmetric(vertical: 6),
      color: theme.colorScheme.surfaceContainerHighest,
      elevation: 0,
      child: Padding(
        padding: const EdgeInsets.fromLTRB(12, 10, 12, 12),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Text(activity.name, style: const TextStyle(fontWeight: FontWeight.w700)),
          const SizedBox(height: 8),
          if (activity.citations.isEmpty)
            const Text('No citations'),
          if (activity.citations.isNotEmpty)
            Wrap(
              spacing: 8,
              runSpacing: 10,
              children: activity.citations
                  .map((c) => _CitationChip(citation: c))
                  .toList(),
            ),
        ]),
      ),
    );
  }
}

class _CitationChip extends StatelessWidget {
  final CitationRef citation;
  const _CitationChip({required this.citation});

  @override
  Widget build(BuildContext context) {
    final label = '${citation.standard} · p.${citation.page}';
    return ActionChip(
      avatar: const Icon(Icons.menu_book_outlined, size: 18),
      label: SizedBox(
        width: 240,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(label, style: const TextStyle(fontWeight: FontWeight.w700), overflow: TextOverflow.ellipsis),
            Text(citation.label, maxLines: 1, overflow: TextOverflow.ellipsis),
          ],
        ),
      ),
      onPressed: () {
        Navigator.of(context).push(MaterialPageRoute(
          builder: (_) => _PdfxViewerScreen(
            title: label,
            assetPath: kStandardAssets[citation.standard]!,
            initialPage: citation.page,
            infoSentence: citation.summary, // “highlight” hint
          ),
        ));
      },
      tooltip: citation.summary.isNotEmpty ? citation.summary : label,
    );
  }
}

// ---------- Floating buttons ----------

class _DiagramFab extends StatelessWidget {
  final _Choice choice;
  const _DiagramFab({required this.choice});

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton.extended(
      heroTag: 'diagramFab',
      icon: const Icon(Icons.hub_outlined),
      label: const Text('Diagram'),
      onPressed: () => Navigator.of(context).push(
        MaterialPageRoute(builder: (_) => _DiagramScreen(choice: choice)),
      ),
    );
  }
}

class DownloadFab extends StatelessWidget {
  final String processId;
  const DownloadFab({super.key, required this.processId});

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton.extended(
      heroTag: 'downloadFab',
      backgroundColor: Theme.of(context).colorScheme.secondaryContainer,
      foregroundColor: Theme.of(context).colorScheme.onSecondaryContainer,
      icon: const Icon(Icons.download_rounded),
      label: const Text('Download PDF'),
      onPressed: () async {
        final asset = kProcessReportPdf[processId];
        if (asset == null) {
          ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(content: Text('No report PDF asset configured.')),
          );
          return;
        }

        final fileName = 'report_${processId.replaceAll('_', '-')}.pdf';

        final file = await _saveAssetToDownloads(context, asset, fileName: fileName);
        if (file == null) return; // already showed error

        // Open with the device's default PDF viewer
        // ignore: use_build_context_synchronously
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text('Saved to: ${file.path} — opening…')),
        );
        await OpenFilex.open(file.path); // OS chooser / default app
      },
    );
  }

  // ---------- Helpers ----------

  Future<Directory?> _getDownloadDirectory() async {
    if (Platform.isAndroid) {
      // Request storage permission
      var status = await Permission.manageExternalStorage.request();
      if (!status.isGranted) {
        status = await Permission.storage.request(); // for API < 30
        if (!status.isGranted) return null;
      }

      // Prefer public Downloads
      try {
        final dirs = await getExternalStorageDirectories(type: StorageDirectory.downloads);
        if (dirs != null && dirs.isNotEmpty) {
          return dirs.first;
        }
      } catch (_) {}

      // Common fallback path
      final fallback = Directory('/storage/emulated/0/Download');
      if (await fallback.exists()) return fallback;

      // App-specific external dir
      return await getExternalStorageDirectory();
    }

    if (Platform.isIOS || Platform.isMacOS) {
      return await getApplicationDocumentsDirectory();
    }

    return await getDownloadsDirectory();
  }

  /// Returns the saved file (or null on error).
  Future<File?> _saveAssetToDownloads(
      BuildContext context,
      String asset, {
        required String fileName,
      }) async {
    try {
      final dir = await _getDownloadDirectory();
      if (dir == null) {
        // ignore: use_build_context_synchronously
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(content: Text('Storage permission denied.')),
        );
        return null;
      }

      // Load asset
      final data = await rootBundle.load(asset);
      final bytes = data.buffer.asUint8List();

      // Ensure folder exists
      if (!await dir.exists()) {
        await dir.create(recursive: true);
      }

      // Write file
      final safe = fileName.replaceAll(RegExp(r'[^\w\-.]'), '_');
      final out = File('${dir.path}/$safe');
      await out.writeAsBytes(bytes);

      // Optional extra message
      // ignore: use_build_context_synchronously
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Saved to: ${out.path}')),
      );

      return out;
    } catch (e) {
      // ignore: use_build_context_synchronously
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Save failed: $e')),
      );
      return null;
    }
  }
}

// ---------- Pdfx viewer with “focus chip” for the summary ----------
class _PdfxViewerScreen extends StatefulWidget {
  final String title;
  final String assetPath;
  final int initialPage;
  final String infoSentence;

  const _PdfxViewerScreen({
    required this.title,
    required this.assetPath,
    required this.initialPage,
    required this.infoSentence,
  });

  @override
  State<_PdfxViewerScreen> createState() => _PdfxViewerScreenState();
}

class _PdfxViewerScreenState extends State<_PdfxViewerScreen> with SingleTickerProviderStateMixin {
  late final PdfController _controller;
  late final AnimationController _blink;
  bool _showInfo = true;

  @override
  void initState() {
    super.initState();
    _controller = PdfController(
      document: PdfDocument.openAsset(widget.assetPath),
      initialPage: widget.initialPage,
    );
    _blink = AnimationController(vsync: this, duration: const Duration(milliseconds: 900))
      ..repeat(reverse: true);
  }

  @override
  void dispose() {
    _controller.dispose();
    _blink.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final info = widget.infoSentence.trim();
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        actions: [
          IconButton(
            tooltip: 'Toggle hint',
            icon: const Icon(Icons.tips_and_updates_outlined),
            onPressed: () => setState(() => _showInfo = !_showInfo),
          ),
        ],
      ),
      body: Stack(
        children: [
          PdfView(
            controller: _controller,
            builders: PdfViewBuilders<DefaultBuilderOptions>(
              options: const DefaultBuilderOptions(),
              documentLoaderBuilder: (_) => const Center(child: CircularProgressIndicator()),
              pageLoaderBuilder: (_) => const Center(child: CircularProgressIndicator()),
              errorBuilder: (_, err) => Center(child: Text('Error: $err')),
            ),
          ),
          if (_showInfo && info.isNotEmpty)
            Positioned(
              left: 16,
              right: 16,
              bottom: 20,
              child: _BlinkingInfoChip(text: info, controller: _blink),
            ),
        ],
      ),
      bottomNavigationBar: _PdfPager(controller: _controller),
    );
  }
}

class _PdfPager extends StatelessWidget {
  final PdfController controller;
  const _PdfPager({required this.controller});

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<PdfDocument>(
      future: controller.document,
      builder: (_, snap) {
        if (snap.connectionState != ConnectionState.done || !snap.hasData) {
          return const SizedBox.shrink();
        }
        final pages = snap.data!.pagesCount;

        // ✅ Use ValueListenableBuilder<int> instead of StreamBuilder<PdfPageState>
        return BottomAppBar(
          height: 56,
          child: Row(
            children: [
              IconButton(
                icon: const Icon(Icons.chevron_left),
                onPressed: () => controller.previousPage(
                  duration: const Duration(milliseconds: 200),
                  curve: Curves.easeOut,
                ),
              ),
              Expanded(
                child: Center(
                  child: ValueListenableBuilder<int>(
                    valueListenable: controller.pageListenable,
                    builder: (_, pageNumber, __) {
                      return Text(
                        'Page $pageNumber / $pages',
                        style: const TextStyle(fontWeight: FontWeight.w600),
                      );
                    },
                  ),
                ),
              ),
              IconButton(
                icon: const Icon(Icons.chevron_right),
                onPressed: () => controller.nextPage(
                  duration: const Duration(milliseconds: 200),
                  curve: Curves.easeOut,
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}


class _BlinkingInfoChip extends StatelessWidget {
  final String text;
  final AnimationController controller;
  const _BlinkingInfoChip({required this.text, required this.controller});

  @override
  Widget build(BuildContext context) {
    return FadeTransition(
      opacity: Tween(begin: 0.35, end: 1.0).animate(CurvedAnimation(parent: controller, curve: Curves.easeInOut)),
      child: Material(
        elevation: 8,
        borderRadius: BorderRadius.circular(14),
        color: Colors.yellow.shade100,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 10),
          child: Row(
            children: [
              const Icon(Icons.highlight_alt_outlined, size: 18),
              const SizedBox(width: 8),
              Expanded(child: Text(text, maxLines: 3, overflow: TextOverflow.ellipsis)),
              IconButton(
                tooltip: 'Dismiss',
                icon: const Icon(Icons.close),
                onPressed: () => ScaffoldMessenger.of(context).hideCurrentSnackBar(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

// ---------- simple diagram screen ----------
class _DiagramScreen extends StatelessWidget {
  final _Choice choice;
  const _DiagramScreen({required this.choice});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('${choice.title} Diagram')),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Image.asset(choice.diagramAsset, fit: BoxFit.contain),
          // If you export SVGs, replace with:
          // child: SvgPicture.asset(choice.diagramAssetSvg, fit: BoxFit.contain),
        ),
      ),
    );
  }
}

// ---------- choice model ----------
class _Choice {
  final String id;
  final String title;
  final String subtitle;
  final ProcessRef ref;
  final String diagramAsset;
  const _Choice({
    required this.id,
    required this.title,
    required this.subtitle,
    required this.ref,
    required this.diagramAsset,
  });
}
