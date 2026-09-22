# Orchestration Fundamentals for Agentic Development

## Course Details

| Course detail | Value |
| --- | --- |
| Duration | 4 hours per cohort |
| Audience | Developers, tech leads, and engineers who plan or delegate agentic development work |
| Skill level | Intermediate |
| Format | Instructor-led course with demonstrations, a quiz, and two breakout labs |
| Primary tool | Claude Code |

## Delivery Model

| | Day 1 |
| --- | --- |
| **Morning Cohort** | Session 1 (AM) |
| **Afternoon Cohort** | Session 1 (PM, repeated) |

The instructor delivers the same four-hour session to both cohorts. The afternoon session repeats the morning instruction, demonstrations, quiz, labs, and outcomes without content changes.

## Course Overview

Participants learn how to plan and run multi-agent development work with Claude Code. They begin by decomposing complex features into bounded, verifiable tasks. They then select models according to task complexity, risk, speed, and cost. The session closes with a parallel development workflow that coordinates agent sessions through explicit file boundaries, Git branches, durable handoffs, and integration checks.

## Main Topics Covered

- Decomposing complex features into agent-ready units of work
- Selecting models according to task complexity, risk, speed, and cost
- Coordinating parallel Claude Code sessions across related subtasks

## Learning Outcomes

By the end of the session, participants will be able to:

- Break down complex features into units of work suited for agent execution.
- Select an appropriate model for a task based on its complexity, risk, and cost.
- Run and coordinate multiple Claude Code sessions on related subtasks.

## Project Context and Tools

Participants use Claude Code, Git, and a prepared sample repository with independent snapshots for each lab. The course materials include feature briefs, repository maps, task cards, acceptance checks, and model profiles. Each lab starts from its own supplied artifacts, so learners can complete it without relying on earlier lab output.

## Prerequisites

Participants should have:

- Experience using Claude Code or a similar AI coding assistant for development tasks
- Working knowledge of Git, including creating branches and merging changes
- Comfort using a terminal to inspect files and run commands

## Session 1: Planning and Running Multi-Agent Development Work

### 1. Decomposing Complex Features for Multi-Agent Execution

#### Concept & Demo

The instructor evaluates which tasks an agent can complete independently and which tasks require close human control. A feature brief is divided into bounded units with clear inputs, outputs, file ownership, dependencies, acceptance criteria, and verification commands. The demonstration shows how task size and shared-resource conflicts affect sequencing, then tests whether a separate agent can complete and verify each task without hidden context.

#### Breakout Lab 1.1: Agent-Ready Work Plan

Participants receive a standalone feature brief, repository map, and test command list. They divide the feature into agent-ready tasks, identify dependencies and shared files, and write acceptance criteria for each task. They finish by classifying tasks as parallel, sequential, or human-controlled.

Lab outcome: A dependency-aware work plan with bounded task specifications, file ownership, acceptance criteria, and verification commands.

### 2. Model Selection Strategy for Agentic Development

#### Concept & Demo

The instructor compares model choices across routine edits, repository-wide reasoning, ambiguous debugging, and high-risk changes. The demonstration uses a selection matrix based on complexity, uncertainty, blast radius, verification cost, latency, and price. It also shows when evidence from a weaker model should trigger escalation to a stronger model instead of repeated retries.

### 3. Orchestrating Multiple Agent Sessions

#### Concept & Demo

The instructor prepares parallel Claude Code sessions with separate Git branches or worktrees, explicit task specifications, and non-overlapping file boundaries. The demonstration covers shared context, progress tracking, handoff artifacts, dependency checkpoints, and integration order. It concludes by merging agent results, running acceptance checks, and resolving a simulated conflict without copying full chat histories between sessions.

#### Breakout Lab 3.1: Parallel Agent Coordination

Participants receive a fresh repository snapshot and two related task specifications. They prepare isolated workspaces, assign each task to a separate Claude Code session, and record file boundaries and dependency checkpoints. They inspect both results, complete a structured handoff, merge the changes in dependency order, and run the supplied acceptance checks.

Lab outcome: An orchestration record containing workspace assignments, task boundaries, handoff evidence, merge order, acceptance results, and one documented human approval point.

### Session Breakdown Table

| Topic | Duration |
| --- | ---: |
| Welcome & Course Intro & Setup  | 15 min |
| 1. Decomposing Complex Features for Multi-Agent Execution: Concept & Demo | 45 min |
| Lab 1.1: Agent-Ready Work Plan | 30 min |
| Bio Break | 15 min |
| 2. Model Selection Strategy for Agentic Development: Concept & Demo | 40 min |
| Kahoot Quiz 1 | 15 min |
| Bio Break | 10 min |
| Mandatory Course Survey | 5 min |
| 3. Orchestrating Multiple Agent Sessions: Concept & Demo | 20 min |
| Lab 3.1: Parallel Agent Coordination | 30 min |
| Course Wrap-up | 15 min |
| **Total** | **4 hours** |
