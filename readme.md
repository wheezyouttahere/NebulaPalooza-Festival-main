# NebulaPalooza 2026

> A Sci-Art fusion festival website — **Markup Languages** course project, ČZU Prague.

NebulaPalooza is a fictional festival held in Prague, June 4–6, 2026, blending high-energy synthwave music with educational space exploration. Events take place across two venues: **Letná Park** (outdoor main stage, drone shows, rocket launches) and **Výstaviště Praha** (science talks, workshops, painting masterclasses, VR fair). The festival targets families, students, and space enthusiasts, featuring 60+ performers across three days.

**Tickets:** Day Pass €20 / 500 CZK · Full Cosmic Access €49 / 1200 CZK · Children under 12 free

---

## Team

| Name               |
| ------------------ |
| Shagieva Liliana   |
|Bexultan Beisembayev|
| Gulnaz Baizhaunova |

---

## Project Structure

```
/
├── web/
│   ├── index.html          # Home — countdown, carousel, highlights
│   ├── programme.html      # 3-day schedule across both venues
│   ├── performers.html     # Directory of 60+ performers + spotlights
│   ├── practical.html      # Venues, transport, accommodation, tickets
│   ├── style.css           # Single external stylesheet (no frameworks)
│   ├── carousel.js         # Image carousel
│   ├── countdown.js        # Countdown to festival opening
│   └── images/
│
└── data/
    ├── festival.xml        # Master data (60 performers, 60 events, 3 days, 2 venues)
    ├── festival.xsd        # XML Schema with pattern/enum/range restrictions
    └── API/
        ├── openapi.yaml            # OpenAPI 3.1 specification
        ├── transformation/*.xslt   # 7× XSLT (XML → JSON)
        ├── json/*.json             # 7× Static JSON API responses
        └── json-schema/*.json      # 7× JSON Schema files
```

---

## API Endpoints

Static JSON files generated via XSLT from `festival.xml`, described in `openapi.yaml`.

| Endpoint                   | Description                              |
| -------------------------- | ---------------------------------------- |
| `GET /api/festival`        | Festival identity, dates, tickets, links |
| `GET /api/venues`          | All venues                               |
| `GET /api/venues/{id}`     | Venue detail with events                 |
| `GET /api/performers`      | Paginated performer list                 |
| `GET /api/performers/{id}` | Performer detail with events             |
| `GET /api/events`          | Filtered & paginated event list          |
| `GET /api/events/{id}`     | Event detail with venue and performer    |

**`/api/events` filters:** `day=YYYY-MM-DD`, `venueId=V1`, `performerId=P18`  
**Pagination:** `page`, `pageSize` on `/api/performers` and `/api/events`  
**All endpoints:** 200 / 400 / 404 responses defined

---

## Requirements Checklist

| Category | Requirement                                                     | Location                   |
| -------- | --------------------------------------------------------------- | -------------------------- |
| Context  | specification.md                                                | `specification.md`         |
| Context  | Well-formed XML, 3 days, 2 venues, 60 performers, 60 events     | `data/festival.xml`        |
| HTML     | 4 mandatory pages                                               | `web/*.html`               |
| HTML     | Semantic structure (header/nav/main/section/article/footer)     | All HTML files             |
| HTML     | Heading hierarchy h1→h2→h3                                      | All HTML files             |
| HTML     | title + meta description                                        | All HTML files `<head>`    |
| HTML     | Open Graph (title/description/image)                            | All HTML files `<head>`    |
| HTML     | JSON-LD (Festival, Event, Place, Person)                        | All HTML files `<head>`    |
| HTML     | Required elements: section×3+, article×3+, aside, time, address | All HTML files             |
| HTML     | Single CSS file, no frameworks                                  | `web/style.css`            |
| API      | XSD with pattern/enum/range restrictions + comments             | `data/festival.xsd`        |
| API      | 7× XSLT transformations                                         | `data/API/transformation/` |
| API      | 7× JSON outputs                                                 | `data/API/json/`           |
| API      | 7× JSON Schema files                                            | `data/API/json-schema/`    |
| API      | OpenAPI 3.1 (info/servers/paths/schemas/responses)              | `data/API/openapi.yaml`    |

---

## Running Locally

1. Open `data.code-workspace` in VS Code
2. Click **Go Live** in the status bar to start Live Server
3. Visit `http://127.0.0.1:5500/web/index.html`

Browse API files at `http://127.0.0.1:5500/data/API/json/festival.json` etc.

---

## Tools Used

| Tool                        | Version           | Purpose                                   |
| --------------------------- | ----------------- | ----------------------------------------- |
| Visual Studio Code          | Latest            | Editor                                    |
| Claude (Anthropic)          | Claude Sonnet 4.5 | AI assistant — code generation and review |
| Gemini / Nano Banana 2      | Google Gemini     | AI image generation                       |
| GitHub                      | git 2.x           | Version control                           |
| Google Chrome + Live Server | Latest            | Browser testing                           |
| Swagger Editor              | editor.swagger.io | OpenAPI validation                        |

---

## Key Prompts Used

1. _"Replace the current page background with this image and make sure it covers the full viewport without repeating."_
2. _"Center this image horizontally within its section and add consistent spacing above and below."_
3. _"Make all spacing throughout the page consistent and visually balanced. Remove any redundant CSS rules and keep the file as clean as possible."_
4. _"Generate a valid XML file for our festival with at least 60 performers and 60 events across 3 days and 2 venues."_
5. _"Write an XSD schema to validate festival.xml. Include at least one pattern restriction, one enumeration, and one numeric range constraint, each marked with a comment."_
6. _"Write an XSLT stylesheet that transforms festival.xml into a JSON response for GET /api/events, including pagination and filter fields."_
7. _"Write an OpenAPI 3.1 specification for our festival REST API with all 7 GET endpoints, parameter constraints, and reusable schemas."_
8. _"If I want to turn this static festival website into a full-stack project over the summer, what technology stack would you recommend?"_

---

## Critical Evaluation of AI Usage

AI tools (primarily Claude) were useful for generating structured and repetitive content — XML data, XSLT transformations, and the OpenAPI specification were produced much faster than writing by hand. However, AI assistance had clear limitations in visual and layout tasks. Spacing, image sizing, and CSS consistency frequently required manual correction, as the generated output did not match our intentions precisely. The overall lesson is that AI works best as a starting point: it reduces effort on boilerplate but cannot replace human judgement when it comes to design decisions and quality control.

---

_Made by Beisembayev Bexultan, Shagieva Liliana, Gulnaz Baizhaunova — ČZU v Praze, 2026_
