---
title: "Random Thoughts Inbox"
tags: [inbox, raw, dump]
type: source
---

-there is a my https://mymind.com app that is use to save everything on internt and find it later should look into it.
-knack engineering services, structwel.com, nbml building material testing, sm testing laboratory llp, sainath laboratory, genstru consultant pvt ltd, make infra,soham lab, madhav lab, theese are the companies e-sehat meditech deals with these companies to sell their construction material testing software we have to figure out siimilar companies nad reach out to them with a demo project ready to showcase on Gmeet.

-I am planning to Setup Hermes agent and although by default Hermes agent manages its own memory I have came to known through few YouTube videos that still Hermes face difficulties managing memories so there are few options that can be used in order to improve Hermes agent so first of all There is this

1-QMD method https://github.com/tobi/qmd

2-LCM plugin which is for openclaw but we can take inspiration https://github.com/Martian-Engineering/lossless-claw 

3-Obsidian (this prompt if from Alex Finn for setting up agent memory/context/database/2nd brain: Prompt:I want to build an Obsidian memory system into OpenClaw. Here's how it will work:
There are 4 layers, from smallest/always-present to largest/on-demand:
LAYER 1: BUILT-IN MEMORY (~2,200 chars)
----------------------------------------
Injected into every single prompt automatically
Tiny — just compact facts and pointers
Things like "Alex's name", "SSH into DGX with ssh spark", "vault is at X path"
Think of it as sticky notes on my monitor — always visible
LAYER 2: AGENTS.md + SOUL.md
-----------------------------
Also injected every single prompt automatically
My operating instructions, personality, and hard rules
Includes the mandatory logging rules we just tightened
This is my "how to behave" layer
LAYER 3: OBSIDIAN VAULT (the big one)
--------------------------------------
Location: iCloud Obsidian vault, shared with OpenClaw
NOT auto-injected — I read it on session start and during work
Three folders:
Agent-Shared/ — both agents read/write
user-profile.md — who you are, preferences, corrections
project-state.md — all projects and their status
decisions-log.md — shared decision history
Agent-Hermes/ — my private workspace
working-context.md — what I'm actively doing right now
mistakes.md — things I've gotten wrong
daily/ — daily logs (one file per day)
Agent-OpenClaw/ — OpenClaw's space (I don't touch it)
I READ on: session start, after compaction, when I need details
I WRITE on: task start, every 3-5 tool calls, task completion, corrections
LAYER 4: SESSION SEARCH
------------------------
Searchable archive of every past conversation
I don't write to it — it's automatic
I query it when you reference past work or I need cross-session context
Last resort recall — "what did we do about X last week?"
THE FLOW
========
New session starts
|
v
Read vault (user-profile, project-state, working-context, today's log)
|
v
Work on tasks — checkpoint to vault every 3-5 tool calls
|
v
Task done — append to daily log, update working-context
|
v
Compaction hits? — todo list survives, re-read vault after
|
v
Session ends — flush everything to daily log)

4- Obsidian paired with,
 -Graphify https://github.com/Graphify-Labs/graphify
 -or YAML frontmatter
 -or OMI 
 -or with a  RAG database plugin.

5-Git Context Controller https://github.com/ImprintLab/git-context-controller

6-mem0(mem-zero) https://github.com/mem0ai/mem0

7-Pinecone Vector

8-Cerebras (https://www.cerebras.ai/blog/how-we-built-our-knowledge-base)

9-Honcho https://github.com/plastic-labs/honcho

-Idea for updating my portfolio website: use this page https://go.juliangoldie.com/strategy-session?utm=julian for inspiration to add in your portfolio