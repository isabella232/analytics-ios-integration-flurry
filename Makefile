SDK ?= "iphonesimulator"
DESTINATION ?= "platform=iOS Simulator,name=iPhone 8"
PROJECT := Segment-Flurry
XC_ARGS := -scheme $(PROJECT)-Example -workspace Example/$(PROJECT).xcworkspace -sdk $(SDK) -destination $(DESTINATION) ONLY_ACTIVE_ARCH=NO

install: Example/Podfile $(PROJECT).podspec
	pod install --project-directory=Example

lint:
	pod lib lint --allow-warnings

clean:
	set -o pipefail && xcodebuild $(XC_ARGS) clean | xcpretty

build:
	set -o pipefail && xcodebuild $(XC_ARGS) | xcpretty

test:
	set -o pipefail && xcodebuild test $(XC_ARGS) | xcpretty --report junit

.PHONY: clean install build test
