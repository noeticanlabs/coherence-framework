# Interfaces and Schemas (L4)

## Minimal interfaces (language-agnostic)

### State
- serialize() -> bytes (canonical)
- summary() -> dict (bounded size)
- check_invariants() -> dict[str,bool]
- clone() -> State

### Model
- rhs(state,t)
- step(state,t,dt) -> proposed_state
- residual(state, proposed_state, t, dt) -> metrics dict

### GatePolicy
- evaluate(metrics) -> verdicts + decision

### Rail
- apply(state, metrics, context) -> (state, context)

### ReceiptEmitter
- emit(receipt_dict) -> (receipt_json, hash)

## Complete Receipt JSON Schema (draft 2020-12)
```json
{
  "$schema": "https://json-schema.org/draft/2020-12/schema",
  "title": "CoherenceReceipt",
  "type": "object",
  "required": ["header","state","metrics","gates","actions","provenance","integrity"],
  "properties": {
    "header": {
      "type": "object",
      "required": ["run_id","step_id","t","dt","timezone"],
      "properties": {
        "run_id": {"type":"string"},
        "step_id": {"type":"integer","minimum":0},
        "t": {"type":"number"},
        "dt": {"type":"number","exclusiveMinimum":0},
        "timezone": {"type":"string"}
      }
    },
    "state": {
      "type":"object",
      "required":["hash_before","hash_after","summary"],
      "properties": {
        "hash_before":{"type":"string"},
        "hash_after":{"type":"string"},
        "summary":{"type":"object"}
      }
    },
    "metrics": {
      "type":"object",
      "required":["residuals","debt","invariants"],
      "properties":{
        "residuals":{"type":"object"},
        "debt":{"type":"object"},
        "invariants":{"type":"object"}
      }
    },
    "gates": {
      "type":"object",
      "required":["hard","soft","decision"],
      "properties":{
        "hard":{"type":"object"},
        "soft":{"type":"object"},
        "decision":{"type":"string","enum":["accept","reject","abort"]}
      }
    },
    "actions": {
      "type":"object",
      "required":["rails","retries_used","notes"],
      "properties":{
        "rails":{"type":"array","items":{"type":"object"}},
        "retries_used":{"type":"integer","minimum":0},
        "notes":{"type":"array","items":{"type":"string"}}
      }
    },
    "provenance": {
      "type":"object",
      "required":["lexicon_terms_used","layers","code_version","seed"],
      "properties":{
        "lexicon_terms_used":{"type":"array","items":{"type":"string"}},
        "layers":{"type":"array","items":{"type":"string"}},
        "code_version":{"type":"string"},
        "seed":{"type":"integer"}
      }
    },
    "integrity": {
      "type":"object",
      "required":["prev_hash","this_hash"],
      "properties":{
        "prev_hash":{"type":"string"},
        "this_hash":{"type":"string"}
      }
    }
  }
}
```

## Deterministic hashing rule

canonical_json = sorted keys, UTF-8, separators(",",":").
this_hash = sha256(canonical_json(receipt) || prev_hash).

## Lexicon binding requirement

Every receipt must include lexicon_terms_used[] and layers[] so illegal projections can be detected.
