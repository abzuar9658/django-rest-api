#!/bin/bash

declare -a ERRORS=()
echo "\nRunning autopep8 🚓 💨 💨 💨"

for file in $(git diff --cached --name-only | grep -E '.py')
do
	ERRORS+=("$(autopep8 --in-place --aggressive --aggressive $file)")
done

if [[ "$ERRORS" != "" ]]; then
	echo "🚨 BEE-BOP! There are some linting errors that need to be fixed and recommitted!"
	history -p "${ERRORS[@]}"
  exit 0
fi

echo "Done! autopep8 has no complaints! ✅\n"

exit 0
