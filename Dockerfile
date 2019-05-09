# Use the elixir base image to start off.
FROM elixir:latest

# Install the package manager
RUN mix local.hex --force

# Install Phoenix package
RUN mix archive.install hex phx_new --force

# Install rebar3, required for running the database
RUN mix local.rebar --force

# Install NodeJS
RUN curl -sL https://deb.nodesource.com/setup_10.x | bash -
RUN apt-get update && apt-get install -y \
    nodejs \
    build-essential \
    inotify-tools \
    libssl-dev \
    postgresql-client \
    --no-install-recommends && rm -rf /var/lib/apt/lists/*


# Copy all our files into the image.
RUN mkdir /code
WORKDIR /code
COPY . /code/

EXPOSE 4000
WORKDIR phxtrial

CMD ["mix", "phx.server"]
