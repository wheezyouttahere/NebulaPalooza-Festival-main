# Festival Concept Specification: NebulaPalooza 2026

## 1. Basic Festival Identity

- **Name:** NebulaPalooza
- **Edition/Year:** 1st Edition / 2026
- **Location:** Prague, Czech Republic
- **Venues:** \* **Letná Park:** Main outdoor music, light shows, and rocket launches.
  - **Výstaviště Praha:** Exhibits, science talks, and painting masterclasses.
- **Date Range:** June 4 – June 6, 2026

## 2. Target Audience & Event Character

- **Target Audience:** Families with children, college students, and space enthusiasts.
- **Event Character:** A "Sci-Art" fusion festival blending high-energy music with educational space exploration.
- **Genres & Themes:**
  1. Rocketry and Aerospace
  2. Live Synthwave and DJ Sets
  3. Immersive Visual & Drone Shows
  4. Astrophysics Science Talks
  5. Cosmic Painting Masterclasses
  6. Interactive Technology Fair

## 3. Detailed Programme Content

### 🚀 Workshops

- **Build Your Own Telescope:** Learn optics, assemble a simple telescope, and try stargazing.
- **Night Sky Mapping:** Use planetarium software or star charts to identify constellations.
- **Astrophotography Basics:** How to photograph stars and planets using phones or cameras.
- **Mini Satellite / CubeSat Model:** Learn satellite components and build a small mock satellite.
- **Water Rocket Launch Lab:** Safe model rockets using water and air pressure to teach propulsion.
- **Drone Navigation Challenge:** Fly small drones simulating space exploration tasks.
- **Gravity & Orbital Mechanics:** Simulate planetary orbits with balls, magnets, and tables.
- **Black Hole Simulation:** Use fluids or 3D models to understand gravity wells.
- **Laser Lab / Light Shows:** Learn about wavelengths and laser patterns synced with music.
- **Synthwave Creation Lab:** Build simple electronic beats inspired by space sounds.
- **Cosmic Sound Design:** Use software to make sci-fi soundscapes.
- **Live Coding Music:** Create live music through real-time programming.

### 🌌 Visual Shows & Music

- **VR Space Travel:** Explore planets, asteroids, and nebulae in virtual reality.
- **Astronaut Training Simulator:** Simulate zero gravity or rover driving challenges.
- **Night Drone Shows:** Two nightly performances featuring synchronized aerial formations.
- **Musical Acts:** Aurora Synth, Lumina Beats, Galaxy Groove.

### 🎤 Science Talks

- **Journey to Mars:** Humanity’s Next Giant Leap – Exploring mission tech and Martian life.
- **Life Beyond Earth:** Are We Alone? – Discussion on exoplanets and microbial possibilities.
- **Black Holes:** The Universe’s Dark Giants – Formation and space-time warping.
- **The Future of Space Exploration:** New rocket technologies and private space agency roadmaps.

### 🎨 Painting Masterclasses

- **Painting the Milky Way:** Blending and splatter techniques for realistic galaxies.
- **Cosmic Watercolor:** Experimenting with gradients and salt textures for nebulae.
- **Design Your Own Planet:** Shading and atmosphere effects for fictional alien worlds.
- **Astronaut Art:** Focuses on light reflections and metallic textures in space.
- **Glow-in-the-Dark Galaxy:** Using fluorescent and UV paints for dramatic effects.

## 4. Website Structure (Minimum Requirements)

The website will be organized into the following primary navigation sections:

### I. Introduction

A landing page featuring the "NebulaPalooza" vision statement, a countdown to the opening ceremony in Prague, and an overview of the "Space meets Sound" concept.

### II. Programme

A searchable 3-day schedule (June 4-6) allowing users to filter by venue (Letná vs. Výstaviště) or genre. It will display all 60+ scheduled events.

### III. Performers

A comprehensive directory of the 60+ participants, including:

- **Musical Acts:** Aurora Synth, Lumina Beats, Galaxy Groove, etc.
- **Speakers:** Dr. Pavel Horák, Dr. Amara Singh, Prof. Daniel Weiss.
- **Instructors:** Professional artists and engineering educators.

### IV. Venues & Practical Information

- **Letná Park (The Launchpad):** Map of the outdoor stage and rocket safety zones.
- **Výstaviště Praha (The Lab):** Floor plan for workshops, talk halls, and the VR zone.
- **Travel:** Integration with Prague Public Transport (PID) info for tram and metro access.
- **Ticketing:** Options for "Day Passes" or "Full Cosmic Access."

## SEMINAR 3

## INTERACTIVE CORE FUNCTIONS:

 - sorting or filtering lists

 Category Dropdown Filtering: A <select> dropdown menu that filters performance rows by tags/categories (e.g., Music, Workshops, Headliners).
 Chained Filter Execution: A unified filterProgramme() function that simultaneously checks both the search query string and the selected category dropdown, ensuring both criteria are met before displaying results.


 - a custom list of favourite performances

 Interactive Bookmark Toggle: "★ Save" / "✓ Saved" buttons on performance items allowing users to add or remove events with a single click.
 Persistent Storage (localStorage): Bookmarked items are saved under the key "myFavourites", ensuring preferences remain intact across page reloads and browser sessions.
 Dynamic Rendering (custom_list.html):
 Renders saved events using the same 3-column CSS Grid layout (Time, Event Details, Action Button) as the main programme page.
 Displays an explicit empty-state notification ("No events yet.") with a direct navigation link back to the schedule when no items are bookmarked.
 Allows direct item removal from within the custom list view.

 - searching for performers

 Live Text Filtering: A responsive search input field on programme.html that listens for user input in real-time.
 Text Normalization: String processing using .trim() and .toLowerCase() to ensure case-insensitive matching across artist names, stage locations, and performance descriptions.

## Relationship Between Functions and USER needs

1. 
- user need: "I want to find my favoutite performer quickly without scrolling through the whole 3 day list."
- Implemented Function: searching for preformers.
- Instantly highlights matching performers as the user types into the search box.

2. 
- user need: "I only want to look through a specific type of event, for example, only workshops."
- Implemented Function: Sorting and Filtering Lists
- Solution: Filters out irrelevant events so users can focus on specific categories of interest.

3. 
- user need: "I want to keep all the preffered events in my own list so I could build a schedule for myself."
- Implemented Function: custom list of favourites. 
- Solution: Saves selected performances to localStorage, accessible anytime on a dedicated, mobile-friendly page (custom_list.html).

## What was verified and how

1. Searching for Performers
- Tested partial string queries, uppercase/lowercase inputs, and empty search inputs in DevTools.
- Verified accurate query matching using .trim().toLowerCase().

2. Sorting & Filtering Lists
- Selected different categories while typing text in the search input to test chained logic.
- Confirmed simultaneous text search and tag filtering work seamlessly.

3. Custom List of Favourites
- Saved items, refreshed browser, closed tab, and inspected localStorage key "myFavourites".
- Verified data persistence across sessions and dynamic rendering on custom_list.html.

## Use of AI
- AI was used visuals and as a coding assistant to fix syntax issues and help with array filtering.

## Verification of AI output
- AI output was integrated into the codebase and tested on the website. Verification was performed by running live debugging sessions.















 
