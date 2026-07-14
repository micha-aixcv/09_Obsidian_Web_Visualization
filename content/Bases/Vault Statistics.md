---
title: Vault Statistics
tags:
  - vault/statistics
updated_at: 2026-07-06T13:52:49Z
source_script: skills/vault-audit/scripts/vault_audit.py
---

# Vault Statistics

Updated: 2026-07-06T13:52:49Z

## Core Counts

| Item | Count |
|---|---:|
| Total papers processed | 226 |
| Total paper notes | 226 |
| Manifest processed papers | 232 |
| Total vault notes | 894 |
| Total wikilinks | 20001 |
| Total unique wikilinks | 8859 |
| Total unique wikilink targets | 882 |
| Resolved unique targets | 882 |
| Unresolved unique targets | 0 |
| Total embeds | 0 |
| Notes with outgoing links | 893 |
| Orphan notes excluding Bases | 10 |
| Duplicate note names | 1 |

## Notes By Top-Level Folder

| Item | Count |
|---|---:|
| Bases | 1 |
| Benchmarks | 12 |
| Concepts | 13 |
| Datasets | 156 |
| Domains | 28 |
| Learning Paradigms | 13 |
| Methods | 274 |
| Metrics | 108 |
| Papers | 226 |
| Tasks | 63 |

## Paper Notes By Type

| Item | Count |
|---|---:|
| benchmark | 4 |
| dataset | 38 |
| other | 3 |
| research | 163 |
| review | 16 |
| systems | 2 |

## Paper Notes By Status

| Item | Count |
|---|---:|
| processed | 226 |

## Dataset Notes By Availability

| Item | Count |
|---|---:|
| Availability Unspecified | 68 |
| Private | 2 |
| Public | 85 |
| root | 1 |

## Definitions

- Total papers processed counts paper notes under `obsidian/Papers/` whose frontmatter `status` is `processed`.
- Manifest processed papers counts records in `paper-inbox/90_processing/manifest.json` whose status is `processed`.
- Total wikilinks counts every Obsidian wikilink occurrence in vault markdown files.
- Total unique wikilinks deduplicates repeated links from the same source note to the same target.
- Total unique wikilink targets deduplicates link targets by note name, ignoring aliases, headings, and block IDs.
- Unresolved unique targets are wikilink targets that do not match any current markdown note basename.
