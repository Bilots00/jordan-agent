#!/bin/bash
# Setup Google Calendar — Blocchi fissi giornalieri per DreamBrothers
# Richiede: GOOGLECALENDAR_ACCESS_TOKEN env var
# Utilizzo: bash setup_calendar_blocks.sh

CALENDAR_ID="andrea.bilotta00@gmail.com"
TIMEZONE="Europe/Rome"
START_DATE="2026-06-02"

echo "Creando blocchi fissi su Google Calendar..."

# 1. Deep Work 08:00-13:00
curl -s -X POST "https://www.googleapis.com/calendar/v3/calendars/primary/events" \
  -H "Authorization: Bearer $GOOGLECALENDAR_ACCESS_TOKEN" \
  -H "Content-Type: application/json" \
  -d "{
    \"summary\": \"🧠 DEEP WORK — NO INTERRUZIONI\",
    \"description\": \"Zona sacra. Solo la task #1 e #2 di priorità assoluta.\nNiente email, niente social, niente chat.\nQual è la SOLA cosa che rende inutile tutto il resto?\nFAI QUELLA.\",
    \"start\": {\"dateTime\": \"${START_DATE}T08:00:00\", \"timeZone\": \"${TIMEZONE}\"},
    \"end\": {\"dateTime\": \"${START_DATE}T13:00:00\", \"timeZone\": \"${TIMEZONE}\"},
    \"recurrence\": [\"RRULE:FREQ=WEEKLY;BYDAY=MO,TU,WE,TH,FR\"],
    \"colorId\": \"11\",
    \"reminders\": {\"useDefault\": false, \"overrides\": [{\"method\": \"popup\", \"minutes\": 0}]}
  }" > /dev/null && echo "✓ Deep Work 08:00-13:00"

# 2. Execution Zone 14:00-19:00
curl -s -X POST "https://www.googleapis.com/calendar/v3/calendars/primary/events" \
  -H "Authorization: Bearer $GOOGLECALENDAR_ACCESS_TOKEN" \
  -H "Content-Type: application/json" \
  -d "{
    \"summary\": \"⚡ EXECUTION ZONE\",
    \"description\": \"Task operative, implementazione, velocità e volume.\nMockup, schede prodotto, automazioni, UGC creative.\",
    \"start\": {\"dateTime\": \"${START_DATE}T14:00:00\", \"timeZone\": \"${TIMEZONE}\"},
    \"end\": {\"dateTime\": \"${START_DATE}T19:00:00\", \"timeZone\": \"${TIMEZONE}\"},
    \"recurrence\": [\"RRULE:FREQ=WEEKLY;BYDAY=MO,TU,WE,TH,FR\"],
    \"colorId\": \"5\",
    \"reminders\": {\"useDefault\": false, \"overrides\": [{\"method\": \"popup\", \"minutes\": 0}]}
  }" > /dev/null && echo "✓ Execution Zone 14:00-19:00"

# 3. Review + Planning 20:00-23:00
curl -s -X POST "https://www.googleapis.com/calendar/v3/calendars/primary/events" \
  -H "Authorization: Bearer $GOOGLECALENDAR_ACCESS_TOKEN" \
  -H "Content-Type: application/json" \
  -d "{
    \"summary\": \"🌙 REVIEW + PLANNING\",
    \"description\": \"Chiudi i loop aperti. Documenta i risultati.\nAlle 23:00 arriva il planning automatico del giorno dopo.\",
    \"start\": {\"dateTime\": \"${START_DATE}T20:00:00\", \"timeZone\": \"${TIMEZONE}\"},
    \"end\": {\"dateTime\": \"${START_DATE}T23:00:00\", \"timeZone\": \"${TIMEZONE}\"},
    \"recurrence\": [\"RRULE:FREQ=WEEKLY;BYDAY=MO,TU,WE,TH,FR\"],
    \"colorId\": \"9\",
    \"reminders\": {\"useDefault\": false, \"overrides\": [{\"method\": \"popup\", \"minutes\": 0}]}
  }" > /dev/null && echo "✓ Review + Planning 20:00-23:00"

# 4. Shutdown Ritual 23:30
curl -s -X POST "https://www.googleapis.com/calendar/v3/calendars/primary/events" \
  -H "Authorization: Bearer $GOOGLECALENDAR_ACCESS_TOKEN" \
  -H "Content-Type: application/json" \
  -d "{
    \"summary\": \"🔴 SHUTDOWN RITUAL — Chiudi tutto\",
    \"description\": \"Chiudi tutte le tab aperte.\nScrivi 1 cosa che hai completato oggi.\",
    \"start\": {\"dateTime\": \"${START_DATE}T23:30:00\", \"timeZone\": \"${TIMEZONE}\"},
    \"end\": {\"dateTime\": \"${START_DATE}T23:59:00\", \"timeZone\": \"${TIMEZONE}\"},
    \"recurrence\": [\"RRULE:FREQ=WEEKLY;BYDAY=MO,TU,WE,TH,FR\"],
    \"colorId\": \"11\",
    \"reminders\": {\"useDefault\": false, \"overrides\": [{\"method\": \"popup\", \"minutes\": 10}]}
  }" > /dev/null && echo "✓ Shutdown Ritual 23:30"

echo ""
echo "✅ Tutti i blocchi creati su Google Calendar!"
