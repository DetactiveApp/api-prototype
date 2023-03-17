FROM rust:latest as build

RUN USER=root cargo new --bin detactive-gameserver
WORKDIR /detactive-gameserver

COPY ./Cargo.lock ./Cargo.lock
COPY ./Cargo.toml ./Cargo.toml

RUN cargo build --release
RUN rm src/*.rs

COPY ./src ./src

RUN rm ./target/release/deps/detactive_gameserver*
RUN cargo build --release

FROM rust:latest

COPY --from=build /detactive-gameserver/target/release/detactive-gameserver .

CMD ["./detactive-gameserver"]
