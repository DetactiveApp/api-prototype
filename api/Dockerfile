# Stage 1: Build Stage
FROM rust:latest as build

WORKDIR /detactive-api

RUN cargo build --release
RUN rm src/*.rs

ARG RUST_LOG=info

CMD ["./detactive-api"]
