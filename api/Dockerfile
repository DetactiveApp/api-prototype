FROM rust:latest as build

RUN USER=root cargo new --bin detactive-api
WORKDIR /detactive-api

COPY ./Cargo.lock ./Cargo.lock
COPY ./Cargo.toml ./Cargo.toml

RUN cargo build --release
RUN rm src/*.rs

COPY ./src ./src

RUN rm ./target/release/deps/api*
RUN cargo build --release

FROM rust:latest

COPY --from=build /detactive-api/target/release/detactive-api .

CMD ["./detactive-api"]
