# Add `~/bin` to the `$PATH`
export PATH="~/marger/marger-0.7/bin:~/Library/Python/3.6/bin:$HOME/Library/Android/sdk/platform-tools:$HOME/Library/Android/sdk/tools:$HOME/bin:$PATH:/Applications/Visual Studio Code.app/Contents/Resources/app/bin";
export MIREGO_REPO="http://mirego-read:1QNr3uuvmn4DzM5@52.5.214.66:8081/nexus/content/groups/public"

export JAVA7_HOME="/Library/Java/JavaVirtualMachines/jdk1.7.0_79.jdk/Contents/Home"
export JAVA8_HOME="/Library/Java/JavaVirtualMachines/jdk1.8.0_65.jdk/Contents/Home"
export JAVA_HOME="${JAVA8_HOME}"
export MAVEN_OPTS="-Xmx512m -XX:MaxPermSize=128m"
export GROOVY_HOME="/usr/local"

# Load the shell dotfiles, and then some:
# * ~/.path can be used to extend `$PATH`.
# * ~/.extra can be used for other settings you don’t want to commit.
for file in ~/.{path,bash_prompt,exports,aliases,functions,extra}; do
	[ -r "$file" ] && [ -f "$file" ] && source "$file";
done;
unset file;

# Case-insensitive globbing (used in pathname expansion)
shopt -s nocaseglob;

# Append to the Bash history file, rather than overwriting it
shopt -s histappend;

# Autocorrect typos in path names when using `cd`
shopt -s cdspell;

# Enable some Bash 4 features when possible:
# * `autocd`, e.g. `**/qux` will enter `./foo/bar/baz/qux`
# * Recursive globbing, e.g. `echo **/*.txt`
for option in autocd globstar; do
	shopt -s "$option" 2> /dev/null;
done;

# Add tab completion for many Bash commands
if which brew > /dev/null && [ -f "$(brew --prefix)/share/bash-completion/bash_completion" ]; then
	source "$(brew --prefix)/share/bash-completion/bash_completion";
elif [ -f /etc/bash_completion ]; then
	source /etc/bash_completion;
fi;

# Enable tab completion for `g` by marking it as an alias for `git`
if type _git &> /dev/null && [ -f /usr/local/etc/bash_completion.d/git-completion.bash ]; then
	complete -o default -o nospace -F _git g;
fi;

if [ -f `brew --prefix`/etc/bash_completion.d/git-completion.bash ]; then
  . `brew --prefix`/etc/bash_completion.d/git-completion.bash
fi

#add git completion
if [ -f `brew --prefix`/etc/bash_completion ]; then
    . `brew --prefix`/etc/bash_completion
fi

# Add tab completion for SSH hostnames based on ~/.ssh/config, ignoring wildcards
[ -e "$HOME/.ssh/config" ] && complete -o "default" -o "nospace" -W "$(grep "^Host" ~/.ssh/config | grep -v "[?*]" | cut -d " " -f2- | tr ' ' '\n')" scp sftp ssh;

# Add tab completion for `defaults read|write NSGlobalDomain`
# You could just use `-g` instead, but I like being explicit
complete -W "NSGlobalDomain" defaults;

# Add `killall` tab completion for common apps
complete -o "nospace" -W "Contacts Calendar Dock Finder Mail Safari iTunes SystemUIServer Terminal Twitter" killall;

export HEROKU_USER="mlefrancois@mirego.com"
export HEROKU_KEY="af4fed2f-0c41-4099-8c92-537985a0691f"

# Added by MiregoGradle
export BINTRAY_USER="mlefrancois"
export BINTRAY_KEY="b19086debda8dafe4f77cb9a765fddc02bbd413e"


export DEVELOPER_DIR="/Applications/Xcode.app/Contents/Developer"

source ~/.profile

eval "$(ssh-agent -s)"