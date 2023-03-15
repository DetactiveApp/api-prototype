FROM rust:1.66 as build

EXPOSE 8080
RUN cargo build --release

CMD ["./target/release/detactive"]
