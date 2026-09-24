# adj-w2-a1-s2 — Annex A.1 adjudication batch (kb/Work PB1522 wave 2)

- Pinned sha: `0caa7d54004e81c4e34529d95764cdc1ccec1779` (read-only tree `/home/user/CobolSharp`, prebuilt Debug compiler)
- Rows: 18 (all DOC-A.1-N), 18 input files from `/tmp/adj/adj-w2-a1-s2/in/`
- Shape: `record_verdicts.py --dry-run` passes on all 18 records

## Wall-clock (UTC)
| Phase | Start | End |
|---|---|---|
| Adjudication (18 rows) | 2026-09-24 22:18:07 | 2026-09-24 22:27:30 |
| Findings + deliver | 2026-09-24 22:27:30 | 2026-09-24 22:29 |
| Refute | pending (orchestrator dispatches) | — |

## Verdict counts (pre-refute)
- DIVERGES 12: 146, 147, 148, 154, 155, 156, 157, 159, 160, 167, 168, 181
- NEEDS-OWNER-DECISION 5: 149, 152, 161, 162, 172
- CONFORMS 1: 169 (test-needed)

## Refute
refute: pending. CONFORMS rows for the refuter: DOC-A.1-169.
`final.jsonl` is currently a copy of `adjudicate.jsonl` (pre-refute).

## Files
`adjudicate.jsonl` (per-row checkpoint), `final.jsonl`, `findings.json` (11 mechanisms), this README.
