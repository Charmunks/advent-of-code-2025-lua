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

## Utils

As I go, I will be writing up util functions for common things I need to do, in attempt to complete solutions faster. The most recent util file will be located at /template/utils.lua.

Current utils:
- parseFile(path): converts input txt file into an array, with each space seperated string in the input file being a value
- parseFileChar(path): converts input txt file into an array, with each character in the input file being a value
- checkMatch(value, array): checks if an array contains a value
- checkNumber(value): checks if value is a number
- checkAdj(startIndex, array, rowSize, compare): Checks if a value is adjacent to an index in a table/sheet. Includes diagonals. Think word searches 
- parseNum(path) converts input txt file into an array, extracting each number

## Solution 2 ([/02](https://github.com/Charmunks/advent-of-code-2025-lua/tree/main/02))

The puzzle can be found [here](https://adventofcode.com/2025/day/2). This was a mess. At first, I completely misunderstood the question, but was able to figure it out eventually. This lost me 16 minutes though. After I figured out what it meant, implementing the functionality was fairly simple, using a lua repeat loop. In the end, it took me 23 minutes to complete part 1, but subtracting the 16 minute misunderstanding, it took me 7 minutes.

Now part 2 is where this really falls apart. Within 10 minutes I got something working on the samples, using a bunch of for loops, but it just was not working on my inputs. I spent more then 20 minutes troubleshooting, and in the end gave up (I'm doing these at midnight my time, I am tired) and looked at someone elses solution for the general logic. Now, it was a different lang so I did have to figure out how to implement it in lua, but I still feel disappointed I was not able to figure it out myself.

## Solution 1 ([/01](https://github.com/Charmunks/advent-of-code-2025-lua/tree/main/01))

My first advent of code solution! This one took me 40 minutes to complete. To be honest, I had literally no idea what I was doing. My first mistake was testing using my inputs instead of the sample, so I had to use the sites checker to verify my solution, which was rate limited. What I should have done, was use the sample so I could instantly verify my solution. I also didn't read the question carefully enough, and I spent a lot of time trying to figure out what the question was asking. I should have read the question carefully and then read the sample input and output to understand what the question was asking and exact values (ie I used 100 and not 99 for the overflow)

The puzzle can be found [here](https://adventofcode.com/2025/day/1). I initally approached the problem by subtracking/adding the total amount to change, then using math to calculate overflow. This was not working, and I got tired of trying to debug why, so I ended up just rewritting it to use a for loop to subtract/add one by one, calculating overflow the moment it went over, which proved successful. This turned out to be a better solution anyways, as it allowed me to quickly adapt my solution for problem 2 by only changing a few lines.

In the end, I learned a lot from this solution, and hope to do better in the future.