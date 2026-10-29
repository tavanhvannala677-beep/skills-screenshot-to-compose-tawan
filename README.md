# screenshot-to-compose Skill

A specialized AI Agent Skill designed for **Native Kotlin + Jetpack Compose** projects (such as Grabtamp Customer). It guides AI coding assistants (like Codex, Claude, Antigravity) to implement or adjust Android screens directly from screenshots or Figma designs without breaking existing architecture or modifying unrelated code.

---

## 🇹🇭 สรุปจุดเด่นและความสามารถหลัก 5 ด้าน

1. 🖼️ **ทำ UI ตามภาพ** — เลียนแบบ Layout สี ฟอนต์ ระยะห่าง รัศมีความโค้ง และขนาดให้ใกล้เคียงต้นฉบับมากที่สุด
2. 🧩 **ใช้ Components เดิม** — ค้นหาและนำ Components, Theme Tokens, Icons และ Navigation ที่มีอยู่แล้วในโปรเจกต์กลับมาใช้ซ้ำ
3. 🛡️ **รักษาโค้ดเดิม** — แก้เฉพาะหน้าจอที่สั่ง ไม่สร้าง Gradle module ใหม่ ไม่แตะ Business Logic หรือ Refactor หน้าอื่นโดยไม่จำเป็น
4. 🧪 **ตรวจสอบงาน** — รัน Gradle Build และ Test เมื่อสภาพแวดล้อมอำนวย พร้อมตรวจ `git diff` ก่อนส่งงานเสมอ
5. 📋 **สรุปผลลัพธ์ชัดเจน** — สรุปไฟล์ที่ถูกแก้ไข ผลการรัน Build/Test และจุดที่ยังมีความต่างจากภาพอ้างอิง (ถ้ามี)

> ⚠️ **ข้อจำกัดสำคัญ:** Skill นี้เป็นชุดคำสั่งควบคุมพฤติกรรมของ AI (Prompt & Workflow Rules) ไม่ได้สร้าง UI อัตโนมัติด้วยตัวเอง ต้องใช้ร่วมกับ AI Assistant (เช่น Codex) โดยต้องแนบภาพอ้างอิงและระบุหน้าจอเป้าหมายให้ชัดเจน

---

## 📁 โครงสร้างและการติดตั้ง (Installation)

### 1. ติดตั้งในโปรเจกต์ Android ของคุณ
วางไว้ที่โฟลเดอร์ของโปรเจกต์:
```
<Project_Root>/android/.agents/skills/screenshot-to-compose/SKILL.md
```

### 2. โครงสร้างใน Skill Repository นี้
```
.
├── SKILL.md                                        # Root skill definition
├── .agents/skills/screenshot-to-compose/SKILL.md   # Codex local skill format
└── README.md                                       # คู่มือการใช้งานและเอกสารกำกับ
```

---

## 🚀 ตัวอย่างการเรียกใช้งานใน Codex (Usage Example)

เปิดโปรเจกต์ Android ใน Codex จากนั้นพิมพ์คำสั่งพร้อมแนบภาพ Screenshot หรือ Figma:

```text
Use the $screenshot-to-compose skill.
Implement the Wallet screen in my existing Grabtamp Customer Android project based on the attached screenshot.

Requirements:
- Use native Kotlin and Jetpack Compose.
- Match the screenshot as closely as possible.
- Inspect the existing code and reuse current design-system components, theme, assets, and navigation.
- Modify only the files necessary for the target screen.
- Do not create a new Gradle module.
- Do not refactor unrelated screens or change existing behavior.
- Preserve all unrelated uncommitted changes.
- Do not invent UI elements that are not present in the reference.
- Run the relevant build or tests and inspect the final diff.
- First identify the existing implementation and explain the planned minimal changes.
- Report changed files, verification results, and any remaining visual differences.
```
