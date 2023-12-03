FROM rust
WORKDIR /detactive-api
COPY . .
RUN if [["$DEVELOPMENT" == "TRUE"]]; then cargo build; else cargo build --release; fi
CMD ["./target/release/detactive-api"]