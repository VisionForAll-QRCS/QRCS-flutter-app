# QRCS Accessible Donation Prototype

This repository contains the final deliverables for the Qatar Red Crescent Society (QRCS) Information Systems Consulting Project (Spring 2025). The focus of this project was to improve the **accessibility of the donation experience** for visually impaired users through a Flutter-based iOS prototype, compliant with WCAG standards and compatible with iOS VoiceOver.

---

## Project Overview

- **Client:** Qatar Red Crescent Society (QRCS)  
- **Consulting Team:** Al Anoud Al Khulaifi, Fatima Al-Haddad, Deema Al-Mohanadi  
- **Advisor:** Professor Abdul Salam  
- **Tech Stack:** Flutter (iOS only), Dart, WCAG 2.1 accessibility standards  
- **Primary Goal:** Simulate and demonstrate an accessible donation process tailored for users relying on screen readers and assistive technologies.

---

## Repository Structure
QRCS_Accessibility_Prototype main files:

lib/ | assets/ │ pubspec.yaml │ README.md (this file)

Essential Documents Located Under Folder docs/

wireframes/ 

testing/

sprint_reports/ 

training/ 

handover_manual/ 

---

## Running the Prototype

> **Note:** This app is designed for iOS and optimized for use with VoiceOver.

### Prerequisites

- Flutter SDK (>= 3.10)
- Xcode (for iOS simulation)
- A Mac device (for iOS development)

### Setup Steps

1. Clone the repository:
```bash
   git clone https://github.com/VisionForAll-QRCS/QRCS-flutter-app.git 
```

2. Navigate into the prototype folder:
```bash
   cd QRCS_flutter_app
```

3. Install dependencies:
```bash
   flutter pub get
```

4. Run on iOS simulator:
```bash
   flutter run
```
### VoiceOver Testing

To simulate the experience for visually impaired users:

- Enable VoiceOver when using the app on a physical device

- Navigate through the prototype using swipe and double-tap gestures

Focus on areas like:
- Project details
- Add to cart and donation confirmation flow

### Testing Artifacts
Located in docs/testing/:

handover_manual.pdf – Step-by-step testing tasks and procedures

testing_results.pdf – Summary of usability testing results

signoff_form.pdf – Final validation form signed by the client

### Navigation Tips for QRCS Team
If you're viewing this repository on Google Drive or GitHub:

- Need wireframes? Go to docs/Wireframes/

- Training material for developers? Look under docs/training/

- Project progress and collaboration logs? View docs/sprint_reports/

### Contact
For any questions about this prototype or for future improvements, please reach out to the student consultants:

Deema Al-Mohanadi at dmohanad@andrew.cmu.edu

Fatima Al-Haddad at fhaddad@andrew.cmu.edu

Al Anoud Al Khulaifi at amkhulai@andrew.cmu.edu

Or contact Professor Abdul Salam via the CMU-Q Information Systems Department.
