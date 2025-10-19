class ProcessRef {
  final String id;
  final String scenarioName;
  final String tailoringRationale;
  final List<PhaseRef> phases;
  const ProcessRef({
    required this.id,
    required this.scenarioName,
    required this.tailoringRationale,
    this.phases = const [],
  });
}

class PhaseRef {
  final String name;
  final int durationWeeks;
  final List<String> objectives;
  final List<String> entryCriteria;
  final List<String> exitCriteria;
  final List<String> successMeasures;
  final List<String> roles;
  final List<String> artifacts;
  final List<String> decisionGates;
  final List<ActivityRef> activities;
  const PhaseRef({
    required this.name,
    required this.durationWeeks,
    this.objectives = const [],
    this.entryCriteria = const [],
    this.exitCriteria = const [],
    this.successMeasures = const [],
    this.roles = const [],
    this.artifacts = const [],
    this.decisionGates = const [],
    this.activities = const [],
  });
}

class ActivityRef {
  final String name;
  final List<CitationRef> citations;
  const ActivityRef({required this.name, this.citations = const []});
}

class CitationRef {
  final String standard;
  final int page;
  final String label;
  final String summary;
  const CitationRef({
    required this.standard,
    required this.page,
    required this.label,
    required this.summary,
  });
}