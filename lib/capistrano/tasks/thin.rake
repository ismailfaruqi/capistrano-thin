namespace :thin do

	set :thin_config_path, ""

	desc "Start the Thin server"
	task :start do
		on roles :app do
      		within release_path do
      			config_string = fetch(:thin_config_path).blank? ? "" : " -C #{fetch(:thin_config_path)}"
      			env_string = fetch(:rails_env).blank? ? "" : " -e #{fetch(:rails_env)}"
      			execute :bundle, "exec thin start".merge(env_string).merge(config_string)
      		end      
    	end
	end

	desc "Stop the Thin server"
	task :stop do
		on roles :app do
      		within release_path do
      			config_string = fetch(:thin_config_path).blank? ? "" : " -C #{fetch(:thin_config_path)}"
      			env_string = fetch(:rails_env).blank? ? "" : " -e #{fetch(:rails_env)}"
      			execute :bundle, "exec thin stop".merge(env_string).merge(config_string)
      		end
    	end
	end

	desc "Restart the Thin server"
	task :restart do
		on roles :app do
      		within release_path do
      			config_string = fetch(:thin_config_path).blank? ? "" : " -C #{fetch(:thin_config_path)}"
      			env_string = fetch(:rails_env).blank? ? "" : " -e #{fetch(:rails_env)}"
      			execute :bundle, "exec thin restart".merge(env_string).merge(config_string)
      		end      
    	end
	end

	desc "Checks whether a Thin server is already running or not"
	task :check do
		test("[ -d thin ]")
	end

end