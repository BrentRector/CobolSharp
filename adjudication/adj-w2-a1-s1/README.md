# adj-w2-a1-s1 — Annex A.1 adjudication, wave 2 (kb/Work PB1522)

- **Pinned sha:** `0caa7d54004e81c4e34529d95764cdc1ccec1779` (0caa7d5)
- **Rows:** 18 (DOC-A.1-114, 116, 117, 118, 119, 120, 121, 122, 124, 126, 130, 131, 132, 138, 139, 141, 142, 143)
- **Probes:** `/tmp/adj/adj-w2-a1-s1/probe/` (ls1, ls2, lst, loc, mn, nx1, nx2, int1, int2, pg, pg3, sh, pl, pa)

## Wall-clock (UTC)

| Phase | Start | End |
|---|---|---|
| Adjudication (18 rows, checkpoints at 5/10/15) | 2026-09-24 22:18:05 | 2026-09-24 22:31:39 |
| Findings + final.jsonl + README | 2026-09-24 22:31:39 | 2026-09-24 22:33 |
| Refute | pending (dispatched by the orchestrator) | — |

## Verdict counts (pre-refute; `final.jsonl` == `adjudicate.jsonl`)

| Verdict | Count | Rows |
|---|---|---|
| CONFORMS | 3 | 118, 119, 138 |
| PARTIAL | 2 | 126, 139 |
| DIVERGES | 11 | 114, 116, 117, 120, 121, 122, 124, 130, 131, 132, 141 |
| NOT-IMPLEMENTED | 2 | 142, 143 |

`record_verdicts.py --dry-run` over the batch: 0 shape violations; GAP 1664 -> 1661 (+3 closed).

## Refute: pending

The CONFORMS rows for the refuter: DOC-A.1-118, DOC-A.1-119, DOC-A.1-138.
Overturns: none yet (refute.jsonl not written by this agent).
