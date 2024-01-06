FROM rust as builder
WORKDIR /detactive-api
COPY . .
RUN if [["$DEVELOPMENT" == "TRUE"]]; then cargo build; else cargo build --release; fi

FROM rust
WORKDIR /detactive-api
COPY --from=builder /detactive-api/target ./target
CMD ["./target/release/detactive-api"]
