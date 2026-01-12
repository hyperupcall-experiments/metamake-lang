# shellcheck shell=bash

task.run() {
	deno run --allow-read --allow-write main.ts
}

task.m4() {
	scripts=(./script.py ./script.js ./script.rb)
	declare -A map=(
		[./script.py]=python
		[./script.js]=javascript
		[./script.rb]=ruby
	)
	for script in "${scripts[@]}"; do
		m4 \
			--define=ARG_LANGUAGE="${map[$script]}" \
			./script.m4 \
			> ./output/"$script"
	done
	printf '%s\n' "Compiled M4."
	for script in "${scripts[@]}"; do
		chmod +x ./output/"$script"
		printf '%s\n' "-> $script"
		./output/"$script"
		printf '%s\n' "---"
	done
}
