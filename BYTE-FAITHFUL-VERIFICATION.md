\# Byte-Faithful Verification



Status



Draft



Purpose



Define when repository-assisted verification may be treated as cryptographic integrity verification.



Principle



Cryptographic verification requires access to the exact byte stream used to generate the recorded hash.



A transformed, rendered, escaped, normalized, decoded, re-encoded, or display-oriented representation is not sufficient for SHA256 verification.



Verification Classes



Inspection Verification



The system can inspect repository content sufficiently to support orientation.



Examples include:



\- repository accessibility;

\- file presence;

\- manifest visibility;

\- document readability;

\- expected sections present.



Inspection verification supports orientation.



Inspection verification does not establish cryptographic integrity.



Structural Verification



The system can verify repository identity, branch, file presence, and bootstrap-critical artifact structure.



Structural verification supports repository-assisted orientation.



Structural verification does not establish byte-level integrity.



Byte-Faithful Verification



The system retrieves the exact byte stream stored by the repository and computes SHA256 over those bytes.



Only byte-faithful verification supports cryptographic integrity verification.



Transformation Risk



Verification results may become inconsistent if the retrieval path performs any transformation, including:



\- markdown rendering;

\- escaping characters;

\- line-ending normalization;

\- BOM insertion or removal;

\- character encoding conversion;

\- display formatting;

\- content rewriting.



Hash differences observed through a transformed retrieval path do not, by themselves, demonstrate repository corruption.



They demonstrate that byte fidelity has not been established.



Observable Conclusions



Repository-assisted inspection may establish:



\- repository accessibility;

\- artifact presence;

\- visible content consistency;

\- structural consistency.



Repository-assisted inspection alone does not establish:



\- byte-for-byte integrity;

\- cryptographic hash equivalence.



Operational Rule



Repository-assisted cryptographic verification requires a demonstrated byte-faithful retrieval path.



If byte fidelity cannot be demonstrated, classify verification as inspection or structural verification.



Do not classify it as cryptographic verification.



Current Observation



The GitHub connector successfully supports repository inspection and orientation.



Observed connector output appears to undergo presentation transformation.



Therefore, connector inspection should not presently be treated as authoritative for bootstrap-critical SHA256 verification.



Authoritative Verification



The repository verification procedure remains:



powershell -ExecutionPolicy Bypass -File .\\verify-bootstrap.ps1



When connector inspection and workstation byte-level verification disagree, prefer the byte-faithful verification result until connector byte fidelity has been independently demonstrated.



Relationship to Observable Verification



Observable verification requires disclosure of both:



\- the evidence inspected;

\- the limitations of the inspection method.



Byte-faithful verification is a specialized form of observable verification supporting cryptographic integrity.



Inspection and cryptographic verification should not be treated as equivalent.



Next Safe Move



Continue using repository-assisted inspection for orientation.



Continue using local byte-faithful verification for bootstrap-critical integrity.



Disclose the verification class used before drawing integrity conclusions.

