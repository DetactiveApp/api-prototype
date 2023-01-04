FROM rust:1.66 as build

RUN USER=root cargo new --bin storyhunter-server
WORKDIR /storyhunter-server

COPY ./Cargo.lock ./Cargo.lock
COPY ./Cargo.toml ./Cargo.toml
RUN cargo build --release

RUN rm src/*.rs
COPY ./src ./src

RUN rm ./target/release/deps/storyhunter_server*
RUN cargo build --release

FROM debian:buster-slim
COPY --from=build /storyhunter-server/target/release/storyhunter-server .

CMD ["./storyhunter-server"]