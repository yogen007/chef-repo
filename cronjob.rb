# Cron job

cron "exec_script" do
     hour "11"
     user "root"
     command "/home"
	not_if "test -f /tmp/bashout.txt"
end
