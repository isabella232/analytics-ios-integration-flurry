Releasing
=========
 If you have never pushed to cocapods before, run the following:
 `pod trunk register <your-email> 'Your Name'`
    1. Find someone who is a pod owner by running `pod trunk info Segment-Flurry` 
    2. Have one of those people add you as a pod owner by running:
        `pod trunk add-owner Segment-Flurry <your email>`

 1. Verify changes are working as expected, open PR against master, and merge once approved.
 2. Update the version in `Segment-Flurry.podspec` to a non-beta version.
 3. Update the `CHANGELOG.md` for the impending release.
4. `git commit -am "Prepare for release X.Y.Z."` (where X.Y.Z is the new version)
 5. `git tag -a X.Y.Z -m "Version X.Y.Z"` (where X.Y.Z is the new version)
 6. `git push && git push --tags`
 7. `pod trunk push Segment-Flurry.podspec --use-libraries --allow-warnings`
