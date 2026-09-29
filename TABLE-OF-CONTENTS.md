\# Continuity Recovery Handshake (CRH)



Repository Table of Contents



Status



Draft



Purpose



Provide a structured guide to the CRH repository.



This document identifies the purpose of each major artifact and suggests a recommended reading order for new readers.



Recommended Reading Order



1\. README.md



Project overview.



2\. CORE-CONCEPTS.md

Foundational definitions of continuity, recovery, handshake, and resumption.

3\. WHAT-IS-CRH.md



Public explanation of CRH.



4\. MATURITY.md



Current maturity assessment.



5\. VERSION.md



Current specification version.



6\. CRH-CONTROL-MODEL.md



Overall control architecture.



After these documents, readers may continue into the individual specifications according to their interests.



Repository Structure



Foundation



README.md



Project overview.



WHAT-IS-CRH.md



Public explanation.



VERSION.md



Specification version.



MATURITY.md



Current maturity declaration.



Architecture



CRH-CONTROL-MODEL.md



Defines the overall CRH control architecture.




Prerequisites and Boundaries


PREREQUISITES.md


Defines the prerequisites for meaningful CRH operation and conformance assessment.


CROSS-CHANNEL-BOUNDARY.md


Defines continuity boundaries across channels, devices, sessions, and environments.


ENVIRONMENT-SETUP.md


Defines the procedure for introducing and establishing a new operational environment.

Bootstrap



BOOTSTRAP.md



Authoritative bootstrap source.



AXIOM-INVOCATION.md



Operational invocation artifact.



REENTRY.md



Recovery procedure following interruption.



BOOTSTRAP-MANIFEST.md



Bootstrap manifest.



BOOTSTRAP-CRITICAL.sha256



Bootstrap integrity manifest.



verify-bootstrap.ps1



Bootstrap verification procedure.



Verification



OBSERVABLE-VERIFICATION.md



Observable verification model.



BYTE-FAITHFUL-VERIFICATION.md



Byte-level cryptographic verification model.




Validation


CROSS-DEVICE-TEST-GUIDE.md


Repeatable validation procedure for cross-device and cross-environment behavior.

Governance



TRUST-BOUNDARY.md



Trust limitations and disclosure.

TRUST-MODEL.md



Defines the evidence-bounded trust model.



ESCALATION_MODEL.md



Defines evidence-driven escalation and constraint behavior.



CONFORMANCE\_TESTS.md



Expected system conformance.



DEGRADATION\_TESTS.md



Expected degraded-state behavior.



FIRST-FIVE-MINUTES.md



Early operational guidance.



CAR Documents



CAR-001.md



Architectural observation and assessment.



CAR-002.md



Verification class separation.



Purpose of Document Classes



Foundation



Introduces the project.



Architecture



Explains how the project fits together.



Specifications



Define normative CRH behavior.



Governance



Defines operational controls and limitations.



Engineering Records



Capture architectural observations and decisions.



Reading Strategy



New readers should begin with the Foundation documents.



Architecture should be understood before reading individual specifications.



Engineering Records explain why architectural changes occurred.



Specifications describe expected behavior.



Governance documents define operational limits.



Repository Philosophy



The repository separates:



\- explanation;

\- architecture;

\- specification;

\- governance;

\- engineering history.



This separation improves readability while preserving traceability.



Future Growth



As additional documents are introduced, they should be incorporated into this navigation structure.



New architectural decisions should normally be accompanied by an Engineering Record (CAR).



Next Safe Move



Begin with the Foundation.



Understand the Architecture.



Read the relevant Specifications.



Consult Governance when operational limits are important.



Review Engineering Records to understand how the framework evolved.
