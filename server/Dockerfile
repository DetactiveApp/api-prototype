FROM rust:1.66 as build

RUN USER=root cargo new --bin detactive-server
WORKDIR /detactive-server

COPY ./Cargo.lock ./Cargo.lock
COPY ./Cargo.toml ./Cargo.toml
RUN cargo build --release

COPY ./src ./src

RUN cargo build --release

FROM debian:buster-slim
COPY --from=build /detactive-server/target/release/detactive-server .

CMD ["./detactive-server"]
