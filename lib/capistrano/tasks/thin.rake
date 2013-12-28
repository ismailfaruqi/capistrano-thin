namespace :thin do

	desc "Start the Thin server"
	task :start do
		on roles :app do
      		within release_path do
        		execute :bundle, "exec thin start -C /etc/thin/sites/cbsn-core.yml"
      		end      
    	end
	end

	desc "Stop the Thin server"
	task :stop do
		on roles :app do
      		within release_path do
        		execute :bundle, "exec thin stop -C /etc/thin/sites/cbsn-party-planning.yml"
      		end
    	end
	end

	desc "Restart the Thin server"
	task :restart do
		on roles :app do
      		within release_path do
        		execute :bundle, "exec thin restart -C /etc/thin/sites/cbsn-core.yml"
      		end      
    	end
	end

	desc "Checks whether a Thin server is already installed or not"
	task :check do
		test("[ -d thin ]")
	end

end