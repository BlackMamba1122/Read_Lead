// GENERATED — enriched process data with durations and multiline citations
import '../screens/process.dart';

const processRef = ProcessRef(
  id: 'large_government',
  scenarioName: 'Large Government (2 years; civil/electrical/IT)',
  tailoringRationale: 'Public/regulated context → strong governance, formal stage boundaries, rigorous procurement, compliance & assurance.',
  phases: [
    PhaseRef(
      name: 'Concept',
      durationWeeks: 8,
      objectives: ['Establish need & options', 'Initial business case'],
      entryCriteria: ['Policy/mandate defined'],
      exitCriteria: ['Preferred option', 'Initial business case'],
      successMeasures: ['Options appraisal complete', 'Stakeholder endorsement'],
      roles: ['SRO/Sponsor', 'PM', 'Analysts'],
      artifacts: ['Strategic Outline', 'Options Appraisal'],
      decisionGates: ['Gate 0: Strategic Assessment'],
      activities: [
      ActivityRef(
        name: 'Strategic context & outcomes',
        citations: [
          CitationRef(
            standard: 'PMBOK7',
            page: 27,
            label: 'Domain',
            summary: 'Checking Outcomes—Development Approach and Life Cycle Performance Domain Table 2-6. Mapping of Models Likely to Be Used in Each Performance Domain Table 4-2.',
          ),
          CitationRef(
            standard: 'PMI',
            page: 32,
            label: 'Program',
            summary: 'Comparative Overview of Portfolios, Programs, and Projects Organizational Project Management Projects Programs Portfolios A project is a temporary endeavor undertaken to create a unique product, service, or result. A program is a group of related projects, sub…',
          ),
          CitationRef(
            standard: 'ISO2021',
            page: 10,
            label: 'Note',
            summary: '— Programmes are groups of programme components managed in a coordinated way to provide advantages and synergies, contribute to the achievement of common strategic and operational objectives, and realize benefits. NOTE 2 The dashed lines of the operations box …',
          ),
          CitationRef(
            standard: 'ISO2020',
            page: 49,
            label: 'Change',
            summary: 'NOTE 1 Organizational changes include how an organization is structured, managed or operates, such as the introduction of new ways of working, NOTE 2 Societal changes include those changes which affect society, such as infrastructure (such as roads, rail, airp…',
          ),
          CitationRef(
            standard: 'PRINCE2',
            page: 40,
            label: 'Project',
            summary: 'contracts, relationships Figure 2.1 How to apply and tailor PRINCE2 to a project The seven principles offer flexibility, as they provide guidance on how the integrated elements of the method can be applied and tailored to find the best fit for the project and …',
          )
        ],
      ),
      ActivityRef(
        name: 'High-level risk & stakeholder scan',
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
            page: 11,
            label: 'Internal',
            summary: 'Factors to be considered in the external environment include, but are not limited to: — opportunities and threats arising from economic, political, social, technological, legal and environmental constraints; — expectations and requirements from government or p…',
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
      name: 'Definition',
      durationWeeks: 16,
      objectives: ['Define scope, governance, baselines'],
      entryCriteria: ['Strategic approval'],
      exitCriteria: ['PID approved', 'Baselines set (scope/schedule/cost)'],
      successMeasures: ['Integrated plan established', 'Governance active'],
      roles: ['Project Board', 'PM', 'Workstream Leads', 'Compliance'],
      artifacts: ['PID', 'IMS', 'Risk/Issue Registers'],
      decisionGates: ['Gate 1: Business Justification'],
      activities: [
      ActivityRef(
        name: 'Establish governance bodies & roles',
        citations: [
          CitationRef(
            standard: 'PMBOK7',
            page: 97,
            label: 'Project',
            summary: 'When project teams form across different organizations based on a contract, strategic partnership, or other business relationship, specific roles that perform various functions may be more formalized and less flexible depending on the contract or other terms. …',
          ),
          CitationRef(
            standard: 'PMI',
            page: 64,
            label: 'Governance',
            summary: 'Governance at the project level includes: ▶ Guiding and overseeing the management of project work; ▶ Ensuring adherence to policies, standards, and guidelines; ▶ Establishing governance roles, responsibilities, and authorities; ▶ Decision making regarding risk…',
          ),
          CitationRef(
            standard: 'ISO2021',
            page: 17,
            label: 'Iso',
            summary: '5.4 Organizational considerations for selection Selecting which standard(s) to apply to a specific organization can be dependent on several considerations, including but not limited to: — the strategic objectives to be achieved; — the range of options for achi…',
          ),
          CitationRef(
            standard: 'ISO2020',
            page: 17,
            label: 'Project',
            summary: 'A business case should be used to justify the undertaking and continuation of a project and should as a minimum include or reference: a) objectives to be achieved; b) strategic alignment and potential benefits to be realized; c) defined metrics to evaluate the…',
          ),
          CitationRef(
            standard: 'PRINCE2',
            page: 10,
            label: 'Table',
            summary: 'ix List of tables Table 4.1 The seven PRINCE2 practices 50 Table 5.1 Areas of focus for the key roles associated with the business case practice 71 Table 5.2 Key relationship between the business case practice and PRINCE2 principles 72 Table 6.1 Description of…',
          )
        ],
      ),
      ActivityRef(
        name: 'Project Initiation Document (PID)',
        citations: [
          CitationRef(
            standard: 'PMBOK7',
            page: 310,
            label: 'Project',
            summary: 'A document issued by the project initiator or sponsor that formally authorizes the existence of a project and provides the project manager with the authority to apply organizational resources to project activities. The framework, functions, and processes that …',
          ),
          CitationRef(
            standard: 'PMI',
            page: 226,
            label: 'Project',
            summary: 'The project manager is responsible for providing recommendations and oversight to keep the project business case, project management plan, project charter, and project benefits management plan success measures in alignment with one another and with the goals a…',
          ),
          CitationRef(
            standard: 'ISO2021',
            page: 16,
            label: 'Iso',
            summary: '5.3.3 Programme management The benefits of using ISO 21503 include, but are not limited to: — initiating and coordinating projects to contribute to a desired outcome; — maintaining consistent oversight of the projects that together contribute to the desired ou…',
          ),
          CitationRef(
            standard: 'ISO2020',
            page: 29,
            label: 'Project',
            summary: 'The project management approach can be described in a single document, a single overarching document with a set of subsidiary documents or a set of subsidiary documents covering specific practices, such as a risk or quality management plan (see ISO 21505). Typ…',
          ),
          CitationRef(
            standard: 'PRINCE2',
            page: 256,
            label: 'Project',
            summary: 'Table 14.3 Application of the practices to the directing a project process Practice Application to the directing a project process Business case The project board provides input to the business case to ensure it is desirable, viable, and achievable and that th…',
          )
        ],
      ),
      ActivityRef(
        name: 'Baseline scope/schedule/cost',
        citations: [
          CitationRef(
            standard: 'PMBOK7',
            page: 315,
            label: 'Schedule',
            summary: 'The approved version of a scope statement, work breakdown structure (WBS), and its associated WBS dictionary that can be changed using formal change control procedures and is used as the basis for comparison to actual results. A representation of the plan for …',
          ),
          CitationRef(
            standard: 'PMI',
            page: 332,
            label: 'Cost',
            summary: 'EV = sum of the planned value of completed work CV = EV – AC SV = EV – PV VAC = BAC – EAC CPI = EV/AC SPI = EV/PV EAC = BAC/CPI EAC = AC + BAC – EV EAC = AC + Bottom-up ETC EAC = AC + [(BAC – EV)/ (CPI x SPI)] ETC = EAC – AC ETC = Reestimate TCPI = (BAC – EV)/…',
          ),
          CitationRef(
            standard: 'ISO2021',
            page: 16,
            label: 'Iso',
            summary: '5.3.3 Programme management The benefits of using ISO 21503 include, but are not limited to: — initiating and coordinating projects to contribute to a desired outcome; — maintaining consistent oversight of the projects that together contribute to the desired ou…',
          ),
          CitationRef(
            standard: 'ISO2020',
            page: 42,
            label: 'Costs',
            summary: 'In controlling costs, several resources can be reviewed, including budget, actual costs and cost estimates, forecasted costs, progress data, activity lists, change requests and authorized changes, corrective actions and the project’s plan. Monitoring actual co…',
          ),
          CitationRef(
            standard: 'PRINCE2',
            page: 83,
            label: 'Investment',
            summary: 'Examples of investment appraisal techniques include the following: ●Whole life costs analysing the total cost of implementation and any incremental transitional, operational, and maintenance costs ●Net benefits analysing the total value of the benefits minus t…',
          )
        ],
      )
      ],
    ),
    PhaseRef(
      name: 'Procurement',
      durationWeeks: 24,
      objectives: ['Select suppliers competitively', 'Assure compliance'],
      entryCriteria: ['Defined requirements & budget'],
      exitCriteria: ['Contracts awarded', 'Compliance satisfied'],
      successMeasures: ['Fair/transparent process', 'Value-for-money'],
      roles: ['Commercial', 'Legal', 'Compliance', 'PM'],
      artifacts: ['Procurement Strategy', 'RFP', 'Evaluation Reports', 'Contracts', 'Compliance Matrix'],
      decisionGates: ['Gate 2: Procurement Approval'],
      activities: [
      ActivityRef(
        name: 'Supplier strategy & market engagement',
        citations: [
          CitationRef(
            standard: 'PMBOK7',
            page: 54,
            label: 'Project',
            summary: 'Communication is a key part of engagement; however, engagement delves deeper to include awareness of the ideas of others, assimilation of other perspectives, and collective shaping of a shared solution. Effective and efficient engagement and communication incl…',
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
            page: 15,
            label: 'Project',
            summary: '﻿ Figure 2 — An example of value creation through projects and programmes 4.2.3 Customer and supplier perspective Projects can be undertaken from two perspectives: a) customer or sponsoring organization: the organization owns the requirements and can either un…',
          ),
          CitationRef(
            standard: 'PRINCE2',
            page: 108,
            label: 'Project',
            summary: 'Organizing Chapter 6 - Organizing 89 ●reports and reviews are efficient, such as in projects within a programme that have common project board members who could align stage boundaries and meet collectively to conduct end stage assessments for all the projects …',
          )
        ],
      ),
      ActivityRef(
        name: 'Formal tender & evaluation',
        citations: [
          CitationRef(
            standard: 'PMBOK7',
            page: 208,
            label: 'Project',
            summary: 'Does the organization have a formal knowledge management repository that a project team is required to use, and is it readily accessible? What management processes are most effective based on the organizational culture, complexity, and other project factors?',
          ),
          CitationRef(
            standard: 'PMI',
            page: 259,
            label: 'Process',
            summary: 'The components of a scope management plan include: ▶ Process for preparing a project scope statement, ▶ Process that enables the creation of the work breakdown structure (WBS) from the detailed project scope statement, ▶ Process that establishes how the scope …',
          ),
          CitationRef(
            standard: 'ISO2020',
            page: 24,
            label: 'Project',
            summary: 'When considering the implementation of a formal project management approach, an organization should consider, but not be limited to, the following factors: a) identified needs for and benefits of formal project management; b) ability to integrate and align oth…',
          ),
          CitationRef(
            standard: 'PRINCE2',
            page: 210,
            label: 'Project',
            summary: 'Lessons can be captured: ●during a post-project review ●during any meetings throughout the project (you do not have to wait until a post-project review to share lessons) ●via PRINCE2 management products like checkpoint reports or highlight reports ●by performi…',
          )
        ],
      )
      ],
    ),
    PhaseRef(
      name: 'Design & Mobilization',
      durationWeeks: 12,
      objectives: ['Detailed design', 'Mobilize suppliers/teams'],
      entryCriteria: ['Contracts signed'],
      exitCriteria: ['Design sign-off', 'Mobilized teams & environments'],
      successMeasures: ['Readiness reviews passed'],
      roles: ['PM', 'Suppliers', 'Engineering', 'QA'],
      artifacts: ['Design Pack', 'Mob Plan'],
      decisionGates: ['Gate 3: Readiness to Deliver'],
      activities: [
      ActivityRef(
        name: 'Detailed design & reviews',
        citations: [
          CitationRef(
            standard: 'PMBOK7',
            page: 127,
            label: 'Project',
            summary: 'Projects that use iterative or incremental approaches can have high-level themes or epics that are decomposed into features, which are then further decomposed into user stories and other backlog items. Work that is unique, significant, risky, or novel can be p…',
          ),
          CitationRef(
            standard: 'PMI',
            page: 67,
            label: 'Project',
            summary: 'Resource Availability Project Manager’s Role Project Manager’s Authority Work Groups Arranged by: Flexible; people working side by side Job being done (e.g., engineering, manufacturing) One of: product; production processes; portfolio; program; geographic regi…',
          ),
          CitationRef(
            standard: 'ISO2020',
            page: 19,
            label: 'Project',
            summary: 'Figure 5 — An example of a project organization structure An individual may fulfil more than one role, but the individual undertaking the project sponsor role should not also undertake the project manager, work package leader or project team member roles, due …',
          ),
          CitationRef(
            standard: 'PRINCE2',
            page: 103,
            label: 'Project',
            summary: 'There should be clarity on who retains responsibility for issues such as: ●People management for example, performance management, rewards, advancement, and wellbeing ●Governance for example, which decisions are subject to corporate governance or governance pat…',
          )
        ],
      ),
      ActivityRef(
        name: 'Environment setup & mobilization',
        citations: [
          CitationRef(
            standard: 'PMBOK7',
            page: 42,
            label: 'Product',
            summary: 'While portfolio, program, and product management are beyond the scope of this standard, understanding each discipline and the relationships between them provides a useful context for projects whose deliverables are products. Product management may initiate pro…',
          ),
          CitationRef(
            standard: 'PMI',
            page: 28,
            label: 'Introduction',
            summary: 'There are four fundamental categories for these factors, which illustrate the context of a project: ▶ Meet regulatory, legal, or social requirements; ▶ Satisfy stakeholder requests or needs; ▶ Create, improve, or fix products, processes, or services; and ▶ Imp…',
          ),
          CitationRef(
            standard: 'ISO2021',
            page: 11,
            label: 'Internal',
            summary: 'Factors to be considered in the external environment include, but are not limited to: — opportunities and threats arising from economic, political, social, technological, legal and environmental constraints; — expectations and requirements from government or p…',
          ),
          CitationRef(
            standard: 'ISO2020',
            page: 24,
            label: 'Project',
            summary: 'When considering the implementation of a formal project management approach, an organization should consider, but not be limited to, the following factors: a) identified needs for and benefits of formal project management; b) ability to integrate and align oth…',
          ),
          CitationRef(
            standard: 'PRINCE2',
            page: 15,
            label: 'Project',
            summary: 'She has expertise in negotiating contracts, setting up sustainable governance, assurance and requirements regimes and operationalising strategic objectives, commitments, and legal obligations into pragmatic day to day ways of working, such as the well-regarded…',
          )
        ],
      )
      ],
    ),
    PhaseRef(
      name: 'Delivery Stage 1',
      durationWeeks: 16,
      objectives: ['Deliver tranche 1', 'Control progress & change'],
      entryCriteria: ['Mobilization complete'],
      exitCriteria: ['Stage 1 outputs accepted'],
      successMeasures: ['EV within tolerance', 'Quality targets met'],
      roles: ['PM', 'Workstream Leads', 'Assurance'],
      artifacts: ['Stage Plan 1', 'Stage Report 1', 'Change Records'],
      decisionGates: ['Stage Boundary 1'],
      activities: [
      ActivityRef(
        name: 'Stage planning, monitoring & control',
        citations: [
          CitationRef(
            standard: 'PMBOK7',
            page: 126,
            label: 'Planning',
            summary: 'The project team progressively elaborates initial project documents, such as a vision statement, project charter, business case, or similar documents to identify or define a coordinated path to achieve the desired outcomes. Project teams use planning artifacts…',
          ),
          CitationRef(
            standard: 'PMI',
            page: 347,
            label: 'Control',
            summary: 'The approved version of the time-phased project budget, excluding any management reserves, which can be changed only through formal change control procedures and is used as a basis for comparison to actual results. A graphic display of process data over time a…',
          ),
          CitationRef(
            standard: 'ISO2021',
            page: 8,
            label: 'Source',
            summary: '﻿ ISO 21500:2021(E) 3.5 governing body person, group or entity accountable for the governance (3.4) of an organization, organizations or a part of an organization [SOURCE: ISO/TR 21506:2018, 3.26] 3.6 opportunity risk occurrence that would have a favourable im…',
          ),
          CitationRef(
            standard: 'ISO2020',
            page: 4,
            label: 'Overview',
            summary: '﻿ ﻿ 6.6.3 Managing project performance........................................................................................................................22 6.6.4 Managing the start and close of each project phase...........................................…',
          ),
          CitationRef(
            standard: 'PRINCE2',
            page: 291,
            label: 'Project',
            summary: 'Table 18.1 Inputs, activities, and outputs for managing a stage boundary Inputs Activities Outputs Stage boundary approaching (triggers this process) Project initiation documentation (review) Project plan (review) Project log (check) Prepare the next stage pla…',
          )
        ],
      ),
      ActivityRef(
        name: 'Quality planning & assurance',
        citations: [
          CitationRef(
            standard: 'PMBOK7',
            page: 156,
            label: 'Quality',
            summary: 'Examples include: Product or service requirements, such as the establishment of specifications for incoming materials, processes, finished products, and services; Quality planning, such as the creation of plans for quality, reliability, operations, production,…',
          ),
          CitationRef(
            standard: 'PMI',
            page: 162,
            label: 'Quality',
            summary: '• Project charter 7.2 Perform Integrated Change Control Project management plan • Quality management plan Project documents • Lessons learned register • Quality control measurements • Quality metrics • Risk report Project Management Plan Project Documents Proj…',
          ),
          CitationRef(
            standard: 'ISO2021',
            page: 13,
            label: 'Management',
            summary: 'These concepts include, but are not limited to: — strategic alignment: projects, programmes and portfolios should be linked to organizational strategy and objectives; — continuous justification: continuous business justification should be used to confirm that …',
          ),
          CitationRef(
            standard: 'ISO2020',
            page: 46,
            label: 'Quality',
            summary: '7.11.3 Assuring quality Quality assurance should facilitate and enable conformity to applicable performance requirements, quality processes and standards, and includes: a) communicating the objectives and relevant standards to be used and verifying that they a…',
          ),
          CitationRef(
            standard: 'PRINCE2',
            page: 165,
            label: 'Quality',
            summary: 'Table 8.3 Key relationships between the quality practice and PRINCE2 principles Principle Achieved by Resulting in Ensure continued business justification developing a quality management approach that designs and delivers products that meet quality specificati…',
          )
        ],
      ),
      ActivityRef(
        name: 'Independent assurance & reporting',
        citations: [
          CitationRef(
            standard: 'PMBOK7',
            page: 209,
            label: 'Project',
            summary: 'Project teams that do not use retrospectives can look to issues, threats, quality assurance statistics, and stakeholder feedback for signs that further tailoring or adaptation might be required or useful. Is the level of risk increased for this project because…',
          ),
          CitationRef(
            standard: 'PMI',
            page: 162,
            label: 'Quality',
            summary: '• Project charter 7.2 Perform Integrated Change Control Project management plan • Quality management plan Project documents • Lessons learned register • Quality control measurements • Quality metrics • Risk report Project Management Plan Project Documents Proj…',
          ),
          CitationRef(
            standard: 'ISO2021',
            page: 14,
            label: 'Management',
            summary: 'An integrated governance and management approach for projects, programmes and portfolios, including the foregoing concepts, should contribute to: — building a common understanding of the organization’s strategies, objectives, plans and roadmaps; — developing a…',
          ),
          CitationRef(
            standard: 'ISO2020',
            page: 50,
            label: 'Project',
            summary: 'Reporting can include but is not limited to reports: a) from work package managers to the project manager, containing progress reports, decisions and direction required and team issues; b) from the project manager to the project sponsor and project board, refl…',
          ),
          CitationRef(
            standard: 'PRINCE2',
            page: 154,
            label: 'Quality',
            summary: 'Quality Chapter 8 - Quality 135 8.2.3 Quality assurance Definition: Quality assurance A planned and systematic activity that provides confidence that products will meet their defined quality specifications when tested under quality control. 8.3 Techniques 8.3.…',
          )
        ],
      )
      ],
    ),
    PhaseRef(
      name: 'Delivery Stage 2',
      durationWeeks: 16,
      objectives: ['Deliver tranche 2', 'Prepare for integration'],
      entryCriteria: ['Stage 1 accepted'],
      exitCriteria: ['Stage 2 outputs accepted'],
      successMeasures: ['EV within tolerance', 'Quality targets met'],
      roles: ['PM', 'Workstream Leads', 'Assurance'],
      artifacts: ['Stage Plan 2', 'Stage Report 2', 'Change Records'],
      decisionGates: ['Stage Boundary 2'],
      activities: [
      ActivityRef(
        name: 'Stage planning, monitoring & control',
        citations: [
          CitationRef(
            standard: 'PMBOK7',
            page: 126,
            label: 'Planning',
            summary: 'The project team progressively elaborates initial project documents, such as a vision statement, project charter, business case, or similar documents to identify or define a coordinated path to achieve the desired outcomes. Project teams use planning artifacts…',
          ),
          CitationRef(
            standard: 'PMI',
            page: 347,
            label: 'Control',
            summary: 'The approved version of the time-phased project budget, excluding any management reserves, which can be changed only through formal change control procedures and is used as a basis for comparison to actual results. A graphic display of process data over time a…',
          ),
          CitationRef(
            standard: 'ISO2021',
            page: 8,
            label: 'Source',
            summary: '﻿ ISO 21500:2021(E) 3.5 governing body person, group or entity accountable for the governance (3.4) of an organization, organizations or a part of an organization [SOURCE: ISO/TR 21506:2018, 3.26] 3.6 opportunity risk occurrence that would have a favourable im…',
          ),
          CitationRef(
            standard: 'ISO2020',
            page: 4,
            label: 'Overview',
            summary: '﻿ ﻿ 6.6.3 Managing project performance........................................................................................................................22 6.6.4 Managing the start and close of each project phase...........................................…',
          ),
          CitationRef(
            standard: 'PRINCE2',
            page: 291,
            label: 'Project',
            summary: 'Table 18.1 Inputs, activities, and outputs for managing a stage boundary Inputs Activities Outputs Stage boundary approaching (triggers this process) Project initiation documentation (review) Project plan (review) Project log (check) Prepare the next stage pla…',
          )
        ],
      ),
      ActivityRef(
        name: 'Quality planning & assurance',
        citations: [
          CitationRef(
            standard: 'PMBOK7',
            page: 156,
            label: 'Quality',
            summary: 'Examples include: Product or service requirements, such as the establishment of specifications for incoming materials, processes, finished products, and services; Quality planning, such as the creation of plans for quality, reliability, operations, production,…',
          ),
          CitationRef(
            standard: 'PMI',
            page: 162,
            label: 'Quality',
            summary: '• Project charter 7.2 Perform Integrated Change Control Project management plan • Quality management plan Project documents • Lessons learned register • Quality control measurements • Quality metrics • Risk report Project Management Plan Project Documents Proj…',
          ),
          CitationRef(
            standard: 'ISO2021',
            page: 13,
            label: 'Management',
            summary: 'These concepts include, but are not limited to: — strategic alignment: projects, programmes and portfolios should be linked to organizational strategy and objectives; — continuous justification: continuous business justification should be used to confirm that …',
          ),
          CitationRef(
            standard: 'ISO2020',
            page: 46,
            label: 'Quality',
            summary: '7.11.3 Assuring quality Quality assurance should facilitate and enable conformity to applicable performance requirements, quality processes and standards, and includes: a) communicating the objectives and relevant standards to be used and verifying that they a…',
          ),
          CitationRef(
            standard: 'PRINCE2',
            page: 165,
            label: 'Quality',
            summary: 'Table 8.3 Key relationships between the quality practice and PRINCE2 principles Principle Achieved by Resulting in Ensure continued business justification developing a quality management approach that designs and delivers products that meet quality specificati…',
          )
        ],
      ),
      ActivityRef(
        name: 'Independent assurance & reporting',
        citations: [
          CitationRef(
            standard: 'PMBOK7',
            page: 209,
            label: 'Project',
            summary: 'Project teams that do not use retrospectives can look to issues, threats, quality assurance statistics, and stakeholder feedback for signs that further tailoring or adaptation might be required or useful. Is the level of risk increased for this project because…',
          ),
          CitationRef(
            standard: 'PMI',
            page: 162,
            label: 'Quality',
            summary: '• Project charter 7.2 Perform Integrated Change Control Project management plan • Quality management plan Project documents • Lessons learned register • Quality control measurements • Quality metrics • Risk report Project Management Plan Project Documents Proj…',
          ),
          CitationRef(
            standard: 'ISO2021',
            page: 14,
            label: 'Management',
            summary: 'An integrated governance and management approach for projects, programmes and portfolios, including the foregoing concepts, should contribute to: — building a common understanding of the organization’s strategies, objectives, plans and roadmaps; — developing a…',
          ),
          CitationRef(
            standard: 'ISO2020',
            page: 50,
            label: 'Project',
            summary: 'Reporting can include but is not limited to reports: a) from work package managers to the project manager, containing progress reports, decisions and direction required and team issues; b) from the project manager to the project sponsor and project board, refl…',
          ),
          CitationRef(
            standard: 'PRINCE2',
            page: 154,
            label: 'Quality',
            summary: 'Quality Chapter 8 - Quality 135 8.2.3 Quality assurance Definition: Quality assurance A planned and systematic activity that provides confidence that products will meet their defined quality specifications when tested under quality control. 8.3 Techniques 8.3.…',
          )
        ],
      )
      ],
    ),
    PhaseRef(
      name: 'Integration & Commissioning',
      durationWeeks: 8,
      objectives: ['Integrate disciplines', 'Commission services'],
      entryCriteria: ['Stages delivered'],
      exitCriteria: ['Integrated solution commissioned'],
      successMeasures: ['Operational readiness confirmed'],
      roles: ['PM', 'Ops', 'Suppliers', 'Compliance'],
      artifacts: ['Integration Plan', 'Commissioning Records'],
      decisionGates: ['Readiness for Service'],
      activities: [
      ActivityRef(
        name: 'Integration planning & execution',
        citations: [
          CitationRef(
            standard: 'PMBOK7',
            page: 126,
            label: 'Planning',
            summary: 'The project team progressively elaborates initial project documents, such as a vision statement, project charter, business case, or similar documents to identify or define a coordinated path to achieve the desired outcomes. Project teams use planning artifacts…',
          ),
          CitationRef(
            standard: 'PMI',
            page: 99,
            label: 'Project',
            summary: '78 Process Groups: A Practice Guide The Planning Process Group consists of those processes that establish the total scope of the effort, define and refine the objectives, and develop the course of action required to attain those objectives. 5.1 DEVELOP PROJECT…',
          ),
          CitationRef(
            standard: 'ISO2021',
            page: 13,
            label: 'Management',
            summary: 'These concepts include, but are not limited to: — strategic alignment: projects, programmes and portfolios should be linked to organizational strategy and objectives; — continuous justification: continuous business justification should be used to confirm that …',
          ),
          CitationRef(
            standard: 'ISO2020',
            page: 57,
            label: 'Iso',
            summary: '﻿ Processes and concepts in ISO 21500:2012 References in this document Perform quality assurance 4.3.33 Assuring quality 7.11.3 Perform quality control 4.3.34 Controlling quality 7.11.4 Procurement Procurement 7.17 Plan procurements 4.3.35 Planning procurement…',
          ),
          CitationRef(
            standard: 'PRINCE2',
            page: 126,
            label: 'Planning',
            summary: 'Product-based planning takes the definition and analysis of the required products as the starting point for planning and deriving any supporting elements of the plan from these product descriptions, such as the work breakdown structure, estimates, and project …',
          )
        ],
      ),
      ActivityRef(
        name: 'Commissioning & acceptance',
        citations: [
          CitationRef(
            standard: 'PMBOK7',
            page: 68,
            label: 'Quality',
            summary: 'Quality management processes and practices help produce deliverables and outcomes that meet project objectives and align to the expectations, uses, and acceptance criteria expressed by the organization and relevant stakeholders. This results in: Moving the del…',
          ),
          CitationRef(
            standard: 'PMI',
            page: 326,
            label: 'Risk',
            summary: 'This risk response strategy is appropriate when the project team or the project sponsor agrees that an opportunity is outside the scope of the project or that the proposed response would exceed the project manager’s authority. The risk transfer can be achieved…',
          ),
          CitationRef(
            standard: 'ISO2020',
            page: 38,
            label: 'Scope',
            summary: '7.4.4 Confirming scope delivery The delivery of outputs and outcomes comprising the scope of the project should be confirmed in accordance with the defined acceptance criteria, including: a) verifying and validating that the project’s quality requirements and …',
          ),
          CitationRef(
            standard: 'PRINCE2',
            page: 323,
            label: 'Project',
            summary: 'High-level content Purpose a description of what the project products will fulfil and who will use them Major products a description of the major products to be delivered Derived from what the products are based on, such as existing products or a requirement f…',
          )
        ],
      )
      ],
    ),
    PhaseRef(
      name: 'Handover & Benefits',
      durationWeeks: 4,
      objectives: ['Transition to BAU', 'Start benefits realization tracking'],
      entryCriteria: ['Commissioned system'],
      exitCriteria: ['Handover complete', 'Benefit tracking underway'],
      successMeasures: ['Operational KPIs met', 'Benefits baseline set'],
      roles: ['PM', 'Operations', 'Sponsor'],
      artifacts: ['Handover Pack', 'Benefits Plan'],
      decisionGates: ['Project Close'],
      activities: [
      ActivityRef(
        name: 'Transition to BAU & acceptance',
        citations: [
          CitationRef(
            standard: 'PMBOK7',
            page: 221,
            label: 'Change',
            summary: '4.2.4.5 Transition Model William Bridges’ Transition Model provides an understanding of what occurs to individuals psychologically when an organizational change takes place. The framework offers five problem and decision-making contexts: Where there is an obvi…',
          ),
          CitationRef(
            standard: 'PMI',
            page: 326,
            label: 'Risk',
            summary: 'This risk response strategy is appropriate when the project team or the project sponsor agrees that an opportunity is outside the scope of the project or that the proposed response would exceed the project manager’s authority. The risk transfer can be achieved…',
          ),
          CitationRef(
            standard: 'ISO2020',
            page: 38,
            label: 'Scope',
            summary: '7.4.4 Confirming scope delivery The delivery of outputs and outcomes comprising the scope of the project should be confirmed in accordance with the defined acceptance criteria, including: a) verifying and validating that the project’s quality requirements and …',
          ),
          CitationRef(
            standard: 'PRINCE2',
            page: 54,
            label: 'Change',
            summary: 'High-level content Scope what changes will be delivered by the project; any exclusions Change states description of current, interim, target states State characteristics for each state, highlighting those that are changing: for example, routines, practices, pr…',
          )
        ],
      ),
      ActivityRef(
        name: 'Benefits tracking/reporting',
        citations: [
          CitationRef(
            standard: 'PMBOK7',
            page: 167,
            label: 'Project',
            summary: 'For projects that expect to deliver benefits during the project life cycle, measuring the benefits delivered and the value of those benefits, then comparing that information to the business case, provides information that can justify the continuation of the pr…',
          ),
          CitationRef(
            standard: 'PMI',
            page: 224,
            label: 'Benefits',
            summary: 'The benefits management plan and the project management plan include a description of how the business value resulting from the project becomes part of the organization’s ongoing operations, including the metrics to be used. The project manager works with the …',
          ),
          CitationRef(
            standard: 'ISO2021',
            page: 16,
            label: 'Iso',
            summary: '5.3.3 Programme management The benefits of using ISO 21503 include, but are not limited to: — initiating and coordinating projects to contribute to a desired outcome; — maintaining consistent oversight of the projects that together contribute to the desired ou…',
          ),
          CitationRef(
            standard: 'ISO2020',
            page: 37,
            label: 'Benefits',
            summary: 'Benefit identification and analysis should include, but is not limited to: a) identifying and prioritizing expected benefits; b) identifying possible negative impacts from the expected benefits; c) identifying additional benefits throughout the project life cy…',
          ),
          CitationRef(
            standard: 'PRINCE2',
            page: 82,
            label: 'Project',
            summary: 'Business case Chapter 5 - Business case 63 5.3.1.3 Maintain At the end of each stage, the project manager updates the business case with the progress data (such as products delivered, projects costs, benefits realized) and the latest forecasted benefits and pe…',
          )
        ],
      )
      ],
    )
  ],
);
