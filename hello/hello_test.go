package hello

import "testing"

// docker run --rm -v "$PWD":/usr/src/myapp -w /usr/src/myapp golang:1.15 go test
func TestHello(t *testing.T) {
	want := "Hello, world."
	if got := Hello(); got != want {
		t.Errorf("Hello() = %q, want %q", got, want)
	}
}