// GENERATED — enriched process data with durations and multiline citations
import '../screens/process.dart';

const processRef = ProcessRef(
  id: 'custom_software',
  scenarioName: 'Custom Software (≤6 months, ≤7 team members)',
  tailoringRationale: 'Short duration & small team → lightweight governance, iterative cadence, minimal but sufficient documentation.',
  phases: [
    PhaseRef(
      name: 'Discovery & Shaping',
      durationWeeks: 2,
      objectives: ['Confirm problem/goal', 'Draft high-level scope and constraints', 'Identify main risks & stakeholders'],
      entryCriteria: ['Sponsor intent clarified', 'Initial business need identified'],
      exitCriteria: ['Agreed problem statement', 'High-level scope outline', 'Initial risks noted'],
      successMeasures: ['Clear scope statement', 'Stakeholder list ready'],
      roles: ['PM/SM', 'Product Owner', 'Tech Lead', 'UX'],
      artifacts: ['Problem Statement', 'High-level Scope', 'Initial Risk Notes'],
      decisionGates: ['Proceed to Inception'],
      activities: [
      ActivityRef(
        name: 'Stakeholder quick interviews',
        citations: [
          CitationRef(
            standard: 'PMBOK7',
            page: 92,
            label: 'Stakeholders',
            summary: 'Information sought by the stakeholder, such as a project team member going to an intranet to find communication policies or templates, running internet searches, and using online repositories. The degree of stakeholder satisfaction can often be determined by h…',
          ),
          CitationRef(
            standard: 'PMI',
            page: 322,
            label: 'Stakeholder',
            summary: 'Each of these techniques supports a grouping of stakeholders according to their level of authority (power), level of concern about the project’s outcomes (interest), ability to influence the outcomes of the project (influence), or ability to cause changes to t…',
          ),
          CitationRef(
            standard: 'ISO2021',
            page: 11,
            label: 'Internal',
            summary: 'Factors to be considered in the external environment include, but are not limited to: — opportunities and threats arising from economic, political, social, technological, legal and environmental constraints; — expectations and requirements from government or p…',
          ),
          CitationRef(
            standard: 'ISO2020',
            page: 48,
            label: 'Communication',
            summary: 'Engagement can include activities such as identifying stakeholder concerns, resolving issues and specific activities, such as communications (see 7.13), aimed at getting an appropriate level of key stakeholder involvement in decision-making (see 4.3.1) or othe…',
          ),
          CitationRef(
            standard: 'PRINCE2',
            page: 43,
            label: 'Project',
            summary: 'Stakeholders within the business could be a work council, sustainability board, diversity board, owners, department leaders, or other project teams; stakeholders outside the business could be trade unions, customers, suppliers, communities, interest groups, ba…',
          )
        ],
      ),
      ActivityRef(
        name: 'Scope shaping & constraints',
        citations: [
          CitationRef(
            standard: 'PMBOK7',
            page: 153,
            label: 'Scope',
            summary: 'Those individuals managing requirements may use specialized software, backlogs, index cards, traceability matrices, or some other method to ensure there is an appropriate level of requirement flexibility versus stability, and that new and changing requirements…',
          ),
          CitationRef(
            standard: 'PMI',
            page: 242,
            label: 'Project',
            summary: 'It enables the project team to perform more detailed planning, guides the project team’s work during execution, and provides the baseline for evaluating whether requests for changes or additional work are contained within or outside the project’s boundaries. T…',
          ),
          CitationRef(
            standard: 'ISO2021',
            page: 3,
            label: 'Foreword',
            summary: '9 5.2.1 Core standards...................................................................................................................................................................9 5.2.2 Supporting standards and vocabulary................................…',
          ),
          CitationRef(
            standard: 'ISO2020',
            page: 38,
            label: 'Scope',
            summary: '7.4.4 Confirming scope delivery The delivery of outputs and outcomes comprising the scope of the project should be confirmed in accordance with the defined acceptance criteria, including: a) verifying and validating that the project’s quality requirements and …',
          ),
          CitationRef(
            standard: 'PRINCE2',
            page: 118,
            label: 'Project',
            summary: 'Plans Chapter 7 - Plans 99 ●The when the sequence and estimated duration of delivery activities ●The where the locations and facilities involved in delivery and acceptance ●The who the required skills and responsibilities of the project team and how they will …',
          )
        ],
      ),
      ActivityRef(
        name: 'Initial risk checklist',
        citations: [
          CitationRef(
            standard: 'PMBOK7',
            page: 314,
            label: 'Risk',
            summary: 'A risk response strategy whereby the team acknowledges that a risk is outside of its sphere of influence and shifts the ownership of the risk to a higher level of the organization where it is more effectively managed. A risk response strategy whereby the proje…',
          ),
          CitationRef(
            standard: 'PMI',
            page: 362,
            label: 'Risk',
            summary: 'Organization by sources of risk (e.g., using the RBS), the area of the project affected (e.g., using the WBS), or other useful category (e.g., project phase) to determine the areas of the project most exposed to the effects of uncertainty. A risk response stra…',
          ),
          CitationRef(
            standard: 'ISO2021',
            page: 12,
            label: 'Strategy',
            summary: 'The organization can use portfolio management to: — plan for the allocation of resources and the timing of benefits realization; — evaluate and mitigate the overall risk exposure; — coordinate the timing of projects, programmes and other related work; — assist…',
          ),
          CitationRef(
            standard: 'ISO2020',
            page: 43,
            label: 'Risk',
            summary: '7.8.5 Controlling risk Controlling risks should involve ensuring that responses to negative risks minimize disruption to the project while responses to positive risks maximize beneficial impact, by determining if the risk responses are undertaken and whether t…',
          ),
          CitationRef(
            standard: 'PRINCE2',
            page: 171,
            label: 'Risk',
            summary: 'Managing Successful Projects with PRINCE2 Chapter 9 - Risk 152 Response options Use Reduce a threat Enhance an opportunity This option chooses to take definite action now to change the probability and/or impact of the risk. For example, the primary risk taker …',
          )
        ],
      )
      ],
    ),
    PhaseRef(
      name: 'Inception',
      durationWeeks: 1,
      objectives: ['Create a lightweight charter', 'Set up backlog and release goal'],
      entryCriteria: ['Discovery outputs approved'],
      exitCriteria: ['Charter approved', 'Backlog seeded', 'Release goal agreed'],
      successMeasures: ['Timeboxed inception complete', 'Team aligned on MVP'],
      roles: ['PM/SM', 'Product Owner', 'Tech Lead', 'Developers', 'QA'],
      artifacts: ['Project Charter', 'Seeded Backlog', 'Release Goal'],
      decisionGates: ['Go/No-Go'],
      activities: [
      ActivityRef(
        name: 'Lightweight charter & vision',
        citations: [
          CitationRef(
            standard: 'PMBOK7',
            page: 100,
            label: 'Project',
            summary: 'It does the following: Summarizes the project with a powerful phrase or short description, Describes the best achievable outcome, Creates a common, cohesive picture in project team members’ minds, and Inspires passion for the outcome. 2.2.4.2 Critical Thinking…',
          ),
          CitationRef(
            standard: 'PMI',
            page: 94,
            label: 'Project',
            summary: '4.2 IDENTIFY STAKEHOLDERS Identify Stakeholders is the process of identifying project stakeholders regularly and analyzing and documenting relevant information regarding their interests, involvement, interdependencies, influence, and potential impact on projec…',
          ),
          CitationRef(
            standard: 'ISO2021',
            page: 12,
            label: 'Strategy',
            summary: 'The organization can use portfolio management to: — plan for the allocation of resources and the timing of benefits realization; — evaluate and mitigate the overall risk exposure; — coordinate the timing of projects, programmes and other related work; — assist…',
          ),
          CitationRef(
            standard: 'ISO2020',
            page: 21,
            label: 'Project',
            summary: 'The project manager’s other activities may include, but are not limited to: a) establishing the management approach in alignment with the agreed governance approach; b) motivating the project team; c) providing day-to-day supervision and leadership; d) definin…',
          ),
          CitationRef(
            standard: 'PRINCE2',
            page: 32,
            label: 'Data',
            summary: 'The high-level project plan is as follows: Stage 1 (initiation) ●product backlog ●minimum viable product definition Stage 2 ●timebox 1 ●prototype of time-recording application ●mock-up of resource management reports ●timebox 2 ●first release of time-recording …',
          )
        ],
      ),
      ActivityRef(
        name: 'Backlog setup & prioritization',
        citations: [
          CitationRef(
            standard: 'PMBOK7',
            page: 241,
            label: 'Project',
            summary: 'Information in a risk register can include the person responsible for managing the risk, probability, impact, risk score, planned risk responses, and other information used to get a high-level understanding of individual risks. A lessons learned register is us…',
          ),
          CitationRef(
            standard: 'PMI',
            page: 82,
            label: 'Project',
            summary: '61 Role of the Project Manager ▶ Exhibiting integrity and being culturally sensitive, courageous, a problem solver, and decisive; ▶ Giving credit to others where due; ▶ Being a lifelong learner who is results- and action-oriented; ▶ Focusing on the important t…',
          ),
          CitationRef(
            standard: 'ISO2020',
            page: 27,
            label: 'Project',
            summary: 'Identified needs and opportunities, resulting from the organizational strategy or business requirements, should be evaluated to enable senior management, such as organizational management, portfolio management or programme management, to identify potential pro…',
          ),
          CitationRef(
            standard: 'PRINCE2',
            page: 139,
            label: 'Project',
            summary: 'Managing Successful Projects with PRINCE2 Chapter 7 - Plans 120 ●determining the length of releases or timeboxes and defining these as stages ●estimating the resource requirements for each stage and preparing the project budget ●combining the product backlog a…',
          )
        ],
      ),
      ActivityRef(
        name: 'Delivery plan & Definition of Done',
        citations: [
          CitationRef(
            standard: 'PMBOK7',
            page: 242,
            label: 'Plan',
            summary: 'A change control plan is a component of the project management plan that establishes the change control board, documents the extent of its authority, and describes how the change control system will be implemented. This plan is a component of the project, prog…',
          ),
          CitationRef(
            standard: 'PMI',
            page: 332,
            label: 'Cost',
            summary: 'EV = sum of the planned value of completed work CV = EV – AC SV = EV – PV VAC = BAC – EAC CPI = EV/AC SPI = EV/PV EAC = BAC/CPI EAC = AC + BAC – EV EAC = AC + Bottom-up ETC EAC = AC + [(BAC – EV)/ (CPI x SPI)] ETC = EAC – AC ETC = Reestimate TCPI = (BAC – EV)/…',
          ),
          CitationRef(
            standard: 'ISO2021',
            page: 7,
            label: 'Iso',
            summary: '3.1 benefit created advantage, value or other positive effect [SOURCE: ISO/TR 21506:2018, 3.6] 3.2 business case documented justification to support decision making about the commitment to a project (3.15), programme (3.12) or portfolio (3.9) [SOURCE: ISO/TR 2…',
          ),
          CitationRef(
            standard: 'ISO2020',
            page: 36,
            label: 'Plan',
            summary: 'A plan can include: a) benefits to be realized (see 7.3); b) scope: outputs and outcomes to be delivered (see 7.4), taking quality into account (see 7.11); c) resources needed, such as people, materials, tools and equipment and other organizations (see 7.5); d…',
          ),
          CitationRef(
            standard: 'PRINCE2',
            page: 143,
            label: 'Project',
            summary: 'Table 7.1 Areas of focus for key roles associated with the plans practice Role Responsibilities Business layer set project tolerances and document them in the project mandate or confirm them to the project board for inclusion in the project brief approve excep…',
          )
        ],
      )
      ],
    ),
    PhaseRef(
      name: 'Iterative Delivery (Sprints)',
      durationWeeks: 12,
      objectives: ['Deliver increments', 'Validate with users', 'Control changes lightly'],
      entryCriteria: ['Charter and backlog ready'],
      exitCriteria: ['MVP meets acceptance criteria', 'Known defects within threshold'],
      successMeasures: ['Velocity stable', 'Defect escape rate low', 'Sprint goals met ≥80%'],
      roles: ['Developers', 'QA', 'UX', 'PM/SM', 'PO'],
      artifacts: ['Sprint Plan', 'DoD', 'Increment', 'Release Notes'],
      decisionGates: ['Release Readiness'],
      activities: [
      ActivityRef(
        name: 'Timeboxed sprints with demos & retros',
        citations: [
          CitationRef(
            standard: 'PMBOK7',
            page: 236,
            label: 'Project',
            summary: 'A project review meeting is an event at the end of a phase or a project to assess the status, evaluate the value delivered, and determine if the project is ready to move to the next phase, or transition to operations. 4.4.4 OTHER METHODS The methods described …',
          ),
          CitationRef(
            standard: 'PMI',
            page: 256,
            label: 'Schedule',
            summary: '235 Inputs and Outputs ▶ Resource requirements by time period, often in the form of a resource histogram; ▶ Alternative schedules, such as best case or worst case, not resource-leveled or resource- leveled, or with or without imposed dates; and ▶ Applied sched…',
          ),
          CitationRef(
            standard: 'PRINCE2',
            page: 220,
            label: 'Kanban',
            summary: 'Backlog Development Testing Deployment Done In progress Done In progress Done work in progress limits 3 2 2 Task assign- ment (user story 11) Database update (technical story 1) Resource utilization report template GUI update (user story 18) Time recording (us…',
          )
        ],
      ),
      ActivityRef(
        name: 'CI/CD pipeline and Definition of Done',
        citations: [
          CitationRef(
            standard: 'PMBOK7',
            page: 154,
            label: 'Project',
            summary: '2.6.2.3 Moving Targets of Completion Projects that operate in uncertain and rapidly changing environments face the situation that a “good enough for release” or “done” goal may be subject to change. At some point, a decision will be made whether to release the…',
          ),
          CitationRef(
            standard: 'PMI',
            page: 254,
            label: 'Risk',
            summary: 'Example of Definitions for Probability and Impacts SCALE PROBABILITY TIME COST QUALITY +/– IMPACT ON PROJECT OBJECTIVES Very signiﬁcant impact on overall functionality Signiﬁcant impact on overall functionality Some impact in key functional areas Minor impact …',
          ),
          CitationRef(
            standard: 'ISO2021',
            page: 7,
            label: 'Iso',
            summary: '3.1 benefit created advantage, value or other positive effect [SOURCE: ISO/TR 21506:2018, 3.6] 3.2 business case documented justification to support decision making about the commitment to a project (3.15), programme (3.12) or portfolio (3.9) [SOURCE: ISO/TR 2…',
          ),
          CitationRef(
            standard: 'ISO2020',
            page: 9,
            label: 'Iso',
            summary: 'ISO and IEC maintain terminological databases for use in standardization at the following addresses: — ISO Online browsing platform: available at https://​www​.iso​.org/​obp — IEC Electropedia: available at http://​www​.electropedia​.org/​ 3.1 baseline referen…',
          ),
          CitationRef(
            standard: 'PRINCE2',
            page: 360,
            label: 'Project',
            summary: 'Index Index 341 exception, 291–292 highlight, 292–293 issue, 294 lessons, 295 request for change, 172 requirements, 129 functional, 137 non-functional, 137 residual risk, 152 responsibilities in closing a project process, 283 in controlling a stage process, 25…',
          )
        ],
      ),
      ActivityRef(
        name: 'Lightweight change control',
        citations: [
          CitationRef(
            standard: 'PMBOK7',
            page: 77,
            label: 'Change',
            summary: 'Project team members and project managers can work with relevant stakeholders to address resistance, fatigue, and change absorption to increase the probability that change will be adopted or assimilated successfully by customers or recipients of project delive…',
          ),
          CitationRef(
            standard: 'PMI',
            page: 189,
            label: 'Project',
            summary: 'When required, the Perform Integrated Change Control process includes a change control board (CCB), which is a formally chartered group responsible for reviewing, evaluating, approving, deferring, or rejecting changes to the project and for recording and commu…',
          ),
          CitationRef(
            standard: 'ISO2021',
            page: 16,
            label: 'Iso',
            summary: '5.3.3 Programme management The benefits of using ISO 21503 include, but are not limited to: — initiating and coordinating projects to contribute to a desired outcome; — maintaining consistent oversight of the projects that together contribute to the desired ou…',
          ),
          CitationRef(
            standard: 'ISO2020',
            page: 45,
            label: 'Change',
            summary: '7.10.3 Identifying and assessing change requests Throughout the project, it is necessary to record change requests, evaluate them in terms of objectives, benefits, stakeholder expectations, scope, resources, schedule, cost, quality and risk, and to assess the …',
          ),
          CitationRef(
            standard: 'PRINCE2',
            page: 188,
            label: 'Project',
            summary: '10.2 Guidance for effective issue management The PRINCE2 issue management approach comprises: ●Baselines describes what is subject to change control ●Issue resolution how issues are identified, captured, assessed, and recommended for resolution ●Change control…',
          )
        ],
      )
      ],
    ),
    PhaseRef(
      name: 'Release Preparation',
      durationWeeks: 2,
      objectives: ['Harden MVP', 'Complete release checks'],
      entryCriteria: ['MVP feature set complete'],
      exitCriteria: ['All release criteria passed', 'Rollback plan ready'],
      successMeasures: ['Green test suite', 'Sign-offs obtained'],
      roles: ['PM/SM', 'Tech Lead', 'QA', 'Ops'],
      artifacts: ['Release Plan', 'Runbook', 'Cutover Checklist'],
      decisionGates: ['Production Go/No-Go'],
      activities: [
      ActivityRef(
        name: 'Final hardening & regression',
        citations: [
          CitationRef(
            standard: 'PMBOK7',
            page: 232,
            label: 'Analysis',
            summary: 'A make-or-buy analysis is the process of gathering and organizing data about product requirements and analyzing them against available alternatives such as the purchase versus internal manufacture of the product. A regression analysis is an analytical techniqu…',
          ),
          CitationRef(
            standard: 'PMI',
            page: 217,
            label: 'Project',
            summary: 'Project documents • Assumption log • Basis of estimates • Change log • Issue log • Lessons learned register • Milestone list • Project communications • Quality control measurements • Quality reports • Requirements documentation • Risk register • Risk report 4.…',
          ),
          CitationRef(
            standard: 'ISO2020',
            page: 22,
            label: 'Project',
            summary: 'The work package leader’s responsibilities include, but are not limited to: a) confirming work packages are completed to the required quality, on schedule and on budget; b) contributing to and reviewing significant management documentation; c) planning, monito…',
          ),
          CitationRef(
            standard: 'PRINCE2',
            page: 233,
            label: 'Stage',
            summary: 'Delivering Managing Directing Pre-project Initiation stage Subsequent stage(s) Final stage Initiating a project Controlling a stage Controlling a stage Managing product delivery Managing a stage boundary Managing a stage boundary Closing a project Managing pro…',
          )
        ],
      ),
      ActivityRef(
        name: 'Cutover rehearsal & rollback',
        citations: [
          CitationRef(
            standard: 'PRINCE2',
            page: 42,
            label: 'Project',
            summary: 'Projects should be clear about what data is required, how it will be analysed so that insights can be gained and applied, and what will happen to the data during the project and when the project closes. Principles Chapter 2 - Principles 23 Learning from experi…',
          )
        ],
      )
      ],
    ),
    PhaseRef(
      name: 'Release & Hypercare',
      durationWeeks: 2,
      objectives: ['Stabilize in production', 'Handover to BAU support'],
      entryCriteria: ['Go/No-Go: Go'],
      exitCriteria: ['Stability KPIs met', 'Support handover complete'],
      successMeasures: ['MTTR within target', 'No Sev-1 for 2 weeks'],
      roles: ['PM/SM', 'Tech Lead', 'Support'],
      artifacts: ['Handover Notes', 'Runbook updates'],
      decisionGates: ['Project Close'],
      activities: [
      ActivityRef(
        name: 'Final acceptance & release',
        citations: [
          CitationRef(
            standard: 'PMBOK7',
            page: 133,
            label: 'Dependency',
            summary: 'The planning for the work in future releases is kept at a high level so the project team does not engage in planning that could change based on feedback from earlier releases. Value may include features, risk reduction, experimentation, or other ways of delive…',
          ),
          CitationRef(
            standard: 'PMI',
            page: 267,
            label: 'Iteration',
            summary: 'Release 3 Release 2 Release 1 Release Plan Iteration Plan Iteration 0 Iteration 1 Iteration 2 Iteration 3 Iteration n Feature D (User Story 5) Feature C (User Story 4) Feature B (User Story 3) Feature A (User Story 2) Feature A (User Story 1) 5 Hours 8 Hours 4…',
          ),
          CitationRef(
            standard: 'ISO2020',
            page: 33,
            label: 'Project',
            summary: 'In the case of termination of the project, the following actions should be taken: — confirm and document completed activities, including those activities undertaken by suppliers; — document activities not completed; — confirm deliverables that should be transf…',
          ),
          CitationRef(
            standard: 'PRINCE2',
            page: 323,
            label: 'Project',
            summary: 'High-level content Purpose a description of what the project products will fulfil and who will use them Major products a description of the major products to be delivered Derived from what the products are based on, such as existing products or a requirement f…',
          )
        ],
      ),
      ActivityRef(
        name: 'Stabilization (hypercare)',
        citations: const [],
      )
      ],
    )
  ],
);
