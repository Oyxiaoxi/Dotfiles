# 更新所有，清除，通知完成任务
brew update && brew upgrade && brew cleanup ; say mission complete
brew update && brew upgrade brew-cask && brew cleanup ; say mission complete

# 查看哪些包能更新
brew outdated

# 更新指定包
brew upgrade <package>

# 清理所有包
brew cleanup

# 清理旧版本包
brew cleanup -n

# 锁定不想更新的包
brew pin <package> && brew unpin <package>
