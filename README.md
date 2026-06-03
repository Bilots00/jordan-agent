# 🧠 Jordan — AI Agent per DreamBrothers

> *"Sic Parvis Magna — Da cose così piccole, cose così grandi."*

Jordan è il tuo socio, mentore e pianificatore spietato. Non è un semplice assistente di produttività: è un e-commerce operator da 9 cifre che ti dice esattamente le 3 cose da fare ogni giorno per arrivare a **40.000€/mese con DreamBrothers**.

---

## 🏗️ Architettura del sistema

```
Jordan Agent
├── Automazioni WhatsApp (ogni giorno)
│   ├── 08:00 — Morning Kick (la task #1 del giorno)
│   ├── 23:30 — Piano delle 3 Task (chunk-down + guardrail)
│   └── Domenica 09:00 — Weekly Review (goal cascade)
├── Daily Planning Notion → Google Calendar (23:00)
│   ├── Legge Memento Mori (Notion)
│   ├── Chunk-down task complesse
│   └── Inserisce eventi su Google Calendar
└── Integrazioni attive
    ├── Notion (Memento Mori page)
    ├── Google Calendar (andrea.bilotta00@gmail.com)
    └── WhatsApp (broadcast_message)
```

---

## 📋 Le 4 Automazioni attive

| Nome | Orario | Canale | Descrizione |
|------|--------|--------|-------------|
| Jordan — Morning Kick | 08:00 ogni giorno | WhatsApp | Task #1 del giorno + pre-commitment |
| Daily Planning — Memento Mori | 23:00 ogni giorno | Google Calendar | Legge Notion → chunk-down → Calendar |
| Jordan — Coach 23:30 WhatsApp | 23:30 ogni giorno | WhatsApp | Piano 3 task + micro-step + guardrail |
| Jordan — Weekly Review Domenica | 09:00 ogni domenica | WhatsApp | Shipping score + goal cascade settimanale |

---

## 🎯 Gerarchia Obiettivi DreamBrothers

```
🌟 NORTH STAR (12 mesi): 40.000€/mese a 30% margine netto
  └── Q1 (Giu-Ago 2026): 10.000€/mese a ≥20% netto
        └── 🎂 Sub-milestone: 5.000€ entro 9 Agosto 2026
  └── Q2 (Set-Nov 2026): 20.000€/mese — scala il vincente
  └── Q3 (Dic 2026-Feb 2027): 30.000€/mese — sistemi & margine
  └── Q4 (Mar-Mag 2027): 40.000€/mese stabile x3 mesi
```

---

## 🁢 Il Piano delle 3 Task (Jordan's Protocol)

Ogni sera Jordan seleziona esattamente **3 task** (mai 4):

1. **🁢 IL DOMINO** — la task che rende inutile tutto il resto. Sempre legata al bottleneck creativo (UGC + mockup + ads).
2. **📣 SHIP CONTENUTO** — 1 output visibile esterno, 15-30 min, non negoziabile ogni giorno feriale.
3. **📊 NUMERI & 1 MOSSA** — leggi le metriche, fai 1 sola modifica, 15 min timer.

Ogni task ha:
- ⏱️ Cap di tempo duro
- ☐ 3-6 micro-step (verbo + FATTO = definizione)
- 🚫 Rabbit hole da evitare
- 🆘 MVP fallback

---

## 🐇 Rabbit Holes Bloccati (Q1)

| Rabbit Hole | Perché è bloccato |
|-------------|-------------------|
| SEO blog automation | Zero impatto vendite Q1 |
| Gelato Plus personalizzazione | Prima valida con prodotti standard |
| Editor stile Nike/Porsche | Grande progetto, sblocca zero oggi |
| Meta campaign automation | Prima costruisci il muscolo manuale |

✅ **Legittimi** (bottleneck reali): mockup automation (Photopea), UGC creative, social autopost (Make → IG/Pinterest/FB)

---

## 🔧 Setup

### Requisiti
- Base44 Superagent account
- Notion integrazione (pagina Memento Mori)
- Google Calendar integrazione
- WhatsApp canale connesso

### Notion Page ID
```
267716f9-d144-80f7-ab4c-dc22c047a0ee
```

### Google Calendar ID
```
andrea.bilotta00@gmail.com
```

---

## 📅 Google Calendar — Blocchi fissi (ogni giorno)

| Orario | Blocco |
|--------|--------|
| 08:00-13:00 | 🧠 DEEP WORK — NO INTERRUZIONI |
| 14:00-19:00 | ⚡ EXECUTION ZONE |
| 20:00-23:00 | 🌙 REVIEW + PLANNING |
| 22:45 | ⏰ Reminder "tra 15 min arriva il planning" |
| 23:30 | 🔴 SHUTDOWN RITUAL |

---

## 💡 Filosofia Jordan

> "Quantità batte qualità → la qualità arriva DOPO, dalla quantità."
> "I soldi amano la VELOCITÀ. La povertà ama la lentezza e l'indecisione."
> "SOTTRARRE, non aggiungere. Less is more."
> "PRIORITIZATION IS THE KEY — Qual è la SOLA cosa che rende inutile tutto il resto?"

---

*Built with Base44 Superagent · DreamBrothers © 2026*
