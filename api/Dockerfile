# Stage 1: Build Stage
FROM rust:latest as build

# Create a new project and set workdir
RUN USER=root cargo new --bin detactive-api
WORKDIR /detactive-api

# Copy only the necessary files for dependency installation
COPY ./Cargo.lock ./Cargo.lock
COPY ./Cargo.toml ./Cargo.toml

# Install dependencies
RUN cargo build --release
RUN rm src/*.rs

# Copy the rest of the files
COPY ./src ./src
COPY ./db ./db

# Remove unnecessary files
RUN rm -rf target/debug/deps/*.d \
    && rm -rf target/debug/build \
    && rm -rf target/debug/incremental \
    && rm -rf target/release/deps/*.d \
    && rm -rf target/release/build \
    && rm -rf target/release/incremental

# Install sqlx-cli and build migrations
RUN cargo install sqlx-cli
RUN sqlx migrate build-script

# Build the application
RUN cargo build --release

# Stage 2: Final Stage
FROM rust:latest

# Copy the built binary from the build stage
COPY --from=build /detactive-api/target/release/detactive-api .

# Set environment variable
ARG RUST_LOG=info

# Run the application
CMD ["./detactive-api"]
