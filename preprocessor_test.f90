program PREPROCESSOR_TEST
  implicit none
  CHARACTER*50 :: git_version, git_branch, git_hash
  integer :: index


  OPEN (UNIT=15,FILE='git_version.txt',STATUS='OLD',ACTION='READ')
  READ(15,*) git_version

  git_version = trim(git_version)
  index = SCAN(git_version,'@')
  git_branch = git_version(1:index-2)
  git_hash = git_version(index+1:)


  print*,'git_version: ', git_version
  print*,'git_branch: ', git_branch
  print*,'git_hash: ', git_hash





END PROGRAM
