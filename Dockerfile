FROM rust:1.64.0 as builder
WORKDIR /build
ENV RUSTFLAGS="-C target-feature=+crt-static"

COPY . .

RUN cargo build --release --target x86_64-unknown-linux-gnu

FROM scratch
COPY --from=builder /build/target/x86_64-unknown-linux-gnu/release/iot-assignment-1 /entrypoint
ENTRYPOINT ["./entrypoint"]
