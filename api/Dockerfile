FROM rust:latest as build

RUN USER=root cargo new --bin detactive-api
WORKDIR /detactive-api

COPY ./Cargo.lock ./Cargo.lock
COPY ./Cargo.toml ./Cargo.toml

RUN cargo build --release
RUN rm src/*.rs

COPY ./src ./src
COPY ./db ./db

RUN rm ./target/release/deps/detactive_api*

RUN cargo install sqlx-cli
RUN sqlx migrate build-script

RUN cargo build --release

FROM rust:latest

COPY --from=build /detactive-api/target/release/detactive-api .

CMD ["./detactive-api"]
