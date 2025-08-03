# technofit_portfolio
## Using FVM and .fvmrc for Flutter Version Management

This project uses [FVM (Flutter Version Management)](https://fvm.app/) to ensure all developers use the same Flutter version.

### Getting Started

1. **Install FVM (if you don’t have it):**
   ```sh
   dart pub global activate fvm
   ```

2. **Install the Flutter version specified in `.fvmrc`:**  
   Run this command in the project root:
   ```sh
   fvm install
   ```

3. **Use FVM for Flutter commands:**  
   Always use the FVM wrapper to ensure you’re using the configured Flutter version:
   ```sh
   fvm flutter pub get
   fvm flutter run
   fvm flutter build
   ```

4. **(Optional) Add `.fvm/flutter_sdk/bin` to your PATH**  
   This allows you to use the correct Flutter version by default.

### Additional Notes

- If you need to change the Flutter version, use:
  ```sh
  fvm use <version>
  ```
  Then commit the updated `.fvmrc` to the repository.

- Do **not** commit the `.fvm/` directory. It should be added to `.gitignore`.

For more info, see [FVM documentation](https://fvm.app/docs/getting_started/usage/).