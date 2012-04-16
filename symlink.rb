#!/usr/bin/env ruby

HOME = File.expand_path('~')
BACKUP_DIRS = Array['.vimbackup', '.emacsbackup']
BACKUP_DIRS.each do |x|
  unless File.exists?(File.join(HOME,x))
  do
    Dir.mkdir(File.join(HOME, x))
  end
end

Dir['*'].each do |file|
  target = File.join(HOME, ".#{file}")
  File.rename(target,target+".old") if File.exists?(target)
  File.symlink(File.expand_path(file), target)
end

# git push on commit
File.open(".git/hooks/post-commit", 'a') {|f| f.write("git push\n")}
File.chmod(0755, ".git/hooks/post-commit")
