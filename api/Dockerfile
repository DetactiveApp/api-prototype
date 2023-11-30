# Stage 1: Build Stage
FROM rust:latest as build
WORKDIR /detactive-api
COPY . .
RUN cargo build --release
ARG RUST_LOG=info
CMD ["target/release/detactive-api"]
