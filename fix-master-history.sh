#!/bin/bash
# Script to fix the divergent commit history issue in the docker-gnome-extension repository
# This script creates a corrected master branch that shares history with other branches

set -e

echo "=== Docker GNOME Extension - Commit History Fix ==="
echo ""
echo "This script will fix the master branch to have proper commit history."
echo ""

# Configuration
ORIGINAL_MASTER="00338b9410499c1d082894d5082a5591aa9415f3"
NEW_PARENT="a5c3feff4946a8ffab75872a948d80dc993371cc"
REPO_DIR="$(cd "$(dirname "$0")" && pwd)"

cd "$REPO_DIR"

# Verify we're in a git repository
if [ ! -d .git ]; then
    echo "Error: Not in a git repository!"
    exit 1
fi

echo "Step 1: Fetching latest changes..."
git fetch origin

echo ""
echo "Step 2: Verifying commits exist..."
if ! git cat-file -e $ORIGINAL_MASTER 2>/dev/null; then
    echo "Error: Original master commit $ORIGINAL_MASTER not found!"
    exit 1
fi

if ! git cat-file -e $NEW_PARENT 2>/dev/null; then
    echo "Error: Parent commit $NEW_PARENT not found!"
    exit 1
fi

echo "✓ Commits verified"

echo ""
echo "Step 3: Extracting commit information..."
TREE=$(git cat-file commit $ORIGINAL_MASTER | grep '^tree' | awk '{print $2}')
MESSAGE=$(git log -1 --format=%B $ORIGINAL_MASTER)

# Set author and committer info to preserve original commit metadata
export GIT_AUTHOR_NAME="Carlos Manuel Fernandez"
export GIT_AUTHOR_EMAIL="carlosm.fernandez@hospitalitaliano.org.ar"
export GIT_AUTHOR_DATE="Wed Feb 11 01:42:02 2026 -0300"
export GIT_COMMITTER_NAME="$GIT_AUTHOR_NAME"
export GIT_COMMITTER_EMAIL="$GIT_AUTHOR_EMAIL"
export GIT_COMMITTER_DATE="$GIT_AUTHOR_DATE"

echo "✓ Tree: $TREE"
echo "✓ Parent: $NEW_PARENT"

echo ""
echo "Step 4: Creating corrected commit..."
NEW_MASTER_COMMIT=$(git commit-tree $TREE -p $NEW_PARENT -m "$MESSAGE")
echo "✓ New commit created: $NEW_MASTER_COMMIT"

echo ""
echo "Step 5: Updating master branch..."
git branch -f master $NEW_MASTER_COMMIT
echo "✓ Local master branch updated"

echo ""
echo "Step 6: Verifying the fix..."
COMMON_ANCESTOR=$(git merge-base master origin/copilot/update-docker-api-version-again 2>&1 || echo "FAILED")

if [ "$COMMON_ANCESTOR" = "$NEW_PARENT" ]; then
    echo "✓ Success! Common ancestor found: $COMMON_ANCESTOR"
else
    echo "⚠ Warning: Could not verify common ancestor"
    echo "  Expected: $NEW_PARENT"
    echo "  Got: $COMMON_ANCESTOR"
fi

echo ""
echo "Step 7: Displaying updated history..."
echo ""
git log --oneline --graph --decorate -10 master
echo ""

echo "=== Fix Complete ==="
echo ""
echo "The master branch has been updated locally."
echo ""
echo "To push the fixed master branch to the remote repository, run:"
echo "  git push origin master --force-with-lease"
echo ""
echo "⚠ WARNING: This requires force-push permissions!"
echo ""
echo "Before pushing, verify that no one else has pushed to master."
echo "The --force-with-lease flag will abort if the remote has changed."
echo ""
