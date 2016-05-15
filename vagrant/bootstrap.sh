# Add repo for Elixir
wget https://packages.erlang-solutions.com/erlang-solutions_1.0_all.deb
dpkg -i erlang-solutions_1.0_all.deb

# Update Package Manager
apt-get update

# Install Elixir
apt-get install esl-erlang elixir -y
