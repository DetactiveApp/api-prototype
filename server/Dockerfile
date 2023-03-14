FROM rust:1.66 as build

COPY . .


RUN cargo build --release

CMD ["./target/release/detactive"]
