if status is-interactive
	# Commands to run in interactive sessions can go here
	source (/Users/AlexMoore/.cargo/bin/starship init fish --print-full-init | psub)
	set -g PI 73.60.219.59
	abbr -a su "sudo su"
	abbr -a ga "git add"
	abbr -a gc "git commit"
	abbr -a gp "git push"
	abbr -a gs "git status"
	abbr -a ccd "cd ..;"
end

thefuck --alias | source
