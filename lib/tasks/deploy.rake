namespace :deploy do
  def makefile_path
    File.expand_path("../../../scripts/deploy.make", __FILE__)
  end

  desc "deploys current branch to staging"
  task :staging do
    system "make -f #{makefile_path} staging"
  end

  desc "deploys local master to production"
  task :production do
    system "make -f #{makefile_path} production"
  end
end
