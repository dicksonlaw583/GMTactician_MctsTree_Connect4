# GMTactician: MCTS Connect 4 Example

A demonstration of [MCTS](https://en.wikipedia.org/wiki/Monte_Carlo_tree_search) playing Connect-4, implemented using [GMTactician Collection: MCTS Devkit](https://github.com/dicksonlaw583/GMTactician_MctsTree) on GameMaker Studio 2.3.0.

## Introduction

This project implements a random-playout, minimally blocking MCTS AI that plays Connect-4 via a simple animated UI. You can adjust the AI's strength by setting its thinking time with a slider. All code is extensively commented and the main MCTS engine can be adapted in new projects to play other games.

## Requirements

- GameMaker Studio 2.3.0 or higher
	- Known issue: This library does not work on the HTML5 export for Runtime 2.3.0.401 due to a bug in the way it handles passed functions/methods.
