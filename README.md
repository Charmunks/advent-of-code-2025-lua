# Ivie's Lua Advent of Code 2025 Solutions
This will be the home for my solutions to Advent of Code 2025

Every solution will be written in lua, using the [Astra](https://astra.arkforge.net/) lua framework.

Each solution will have its own folder in the repo

## Running my solutions

Requirements: [Astra](https://astra.arkforge.net/docs/latest/getting_started.html) lua runtime

```bash
git clone https://github.com/Charmunks/advent-of-code-2025-lua/
cd dirname # the name of the solutions folder
astra export-bundle # optional, needed for IntelliSense/editor autocomplete
astra run main.lua
```

## Solution 1 (/01)

My first advent of code solution! This one took me 40 minutes to complete. To be honest, I had literally no idea what I was doing. My first mistake was testing using my inputs instead of the sample, so I had to use the sites checker to verify my solution, which was rate limited. What I should have done, was use the sample so I could instantly verify my solution. I also didn't read the question carefully enough, and I spent a lot of time trying to figure out what the question was asking. I should have read the question carefully and then read the sample input and output to understand what the question was asking and exact values (ie I used 100 and not 99 for the overflow)

In the end, I learned a lot from this solution, and hope to do better in the future