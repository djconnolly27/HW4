# Deliverable 6

## Decoder 1 to 32 Explanation
`assign out = enable<<address`
This decoder utilizes a binary shift operator. It shifts the value of enable
to the left by "address" number of bits. If enable is 0, this will simply
shift 0 to the left by "address" number of places and then pad the most
significant bits with 0s, resulting in all output bits being sent to 0. If
enable is 1, then this shifts that 1 to the left by "address" number of places
and pads the most significant bits with 0 if necessary, which makes out[address]
equal to 1, while leaving all other bits at 0.
