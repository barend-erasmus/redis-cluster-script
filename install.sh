# Updates package indexes of local machine
sudo apt-get update

# Install 'build-essential' and 'tcl'
sudo apt-get install -y build-essential tcl

# Create and Change to '/temp_install' directory
mkdir /temp_install
cd /temp_install

# Download Redis sources
curl -O http://download.redis.io/redis-stable.tar.gz

# Unzip Redis sources
tar xzvf redis-stable.tar.gz

# Change to 'redis-stable'
cd redis-stable

# Compile Redis source
make

# Run Redis source tests
make test

# Install Redis
sudo make install

# Create '/etc/redis' directory
sudo mkdir /etc/redis

# Install redis instances
IFS='|' read -a ports <<< "$1"

for port in "${ports[@]}"
do
    curl -s https://raw.githubusercontent.com/barend-erasmus/redis-cluster-script/master/redis/install.sh | bash -s $port
done

# Install 'ruby'
sudo apt-get install -y ruby

# Install 'redis' package for ruby
gem install redis
