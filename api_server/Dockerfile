FROM rust:1.66 as build

EXPOSE 8080

RUN USER=root cargo new --bin detactive-gameserver
WORKDIR /detactive-gameserver

COPY ./Cargo.lock ./Cargo.lock
COPY ./Cargo.toml ./Cargo.toml

RUN cargo build --release
RUN rm src/*.rs

COPY ./src ./src

RUN rm ./target/release/deps/detactive-gameserver*
RUN cargo install --path .

CMD ["detactive-gameserver"]
