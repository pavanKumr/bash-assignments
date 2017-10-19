#
# Cookbook:: pavan
# Recipe:: default
#
# Copyright:: 2017, The Authors, All Rights Reserved.

user 'pavan' do
 comment 'Pavan Swayampakula'
end

group 'devops' do 
members 'pavan'
end

package 'httpd' do
action :remove
end

package 'postgresql' do
action :remove
end
package 'httpd' do
action :install
end
package 'tomcat' do
action :remove
end


package 'tomcat'

package 'git'

package 'tree'

package 'mariadb-server'

package 'postgresql'

package 'postfix'


package 'unzip'

package 'vim'
