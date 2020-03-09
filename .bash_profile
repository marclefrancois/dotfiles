# Add `~/bin` to the `$PATH`
export ANDROID_HOME="/Users/marclefrancois/Library/Android/sdk"
export PATH="~/Library/Marger/bin:~/Library/Python/3.6/bin:$HOME/Library/Android/sdk/platform-tools:$HOME/Library/Android/sdk/tools:$HOME/bin:$PATH:/Applications/Visual Studio Code.app/Contents/Resources/app/bin:$ANDROID_HOME";
export MIREGO_REPO="http://mirego-read:1QNr3uuvmn4DzM5@52.5.214.66:8081/nexus/content/groups/public"

export JAVA7_HOME="/Library/Java/JavaVirtualMachines/jdk1.7.0_79.jdk/Contents/Home"
export JAVA8_HOME="/Library/Java/JavaVirtualMachines/adoptopenjdk-8.jdk/Contents/Home"
export JAVA_HOME="${JAVA8_HOME}"
export MAVEN_OPTS="-Xmx512m -XX:MaxPermSize=128m"
export GROOVY_HOME="/usr/local"

export DEVELOPER_DIR="/Applications/Xcode.app/Contents/Developer"

eval "$(ssh-agent -s)"
