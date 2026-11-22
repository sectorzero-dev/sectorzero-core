#!/usr/bin/env bash
set -euo pipefail

ROOT="sectorzero-core"

# Create directory tree
mkdir -p "$ROOT"/{src/{geometry,temporal,evidence,objectives,probability,serialization},tests,examples}

# Create root files
touch "$ROOT"/{build.zig,build.zig.zon,README.md,LICENSE}

# Create src files
touch "$ROOT/src"/{root.zig,c_api.zig}
touch "$ROOT/src/geometry"/{point.zig,bounds.zig,polygon.zig,distance.zig}
touch "$ROOT/src/temporal"/{interval.zig,recurrence.zig,activity.zig}
touch "$ROOT/src/evidence"/{observation.zig,provenance.zig,confidence.zig}
touch "$ROOT/src/objectives"/{objective.zig,evaluator.zig}
touch "$ROOT/src/probability"/{scoring.zig,field.zig}
touch "$ROOT/src/serialization/binary.zig"

# Create test files
touch "$ROOT/tests"/{geometry_test.zig,temporal_test.zig,scoring_test.zig}

echo "Created $ROOT directory structure."