## 更新 homebrew-cask
cd "$(brew --repo)"/Library/Taps/homebrew/homebrew-cask

# 更换源
git remote set-url origin https://mirrors.ustc.edu.cn/homebrew-cask.git

# 更新，由于已经 cd 到相应文件夹了，因此不需要通过 -C 指定路径了
git fetch --unshallow 

## 更新 homebrew-core
cd "$(brew --repo)"/Library/Taps/homebrew/homebrew-core

# 更换源
git remote set-url origin https://mirrors.ustc.edu.cn/homebrew-core.git
# 更新
git fetch --unshallow 
