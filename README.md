
# Responsive UI in Flutter

This project demonstrates different methods to create responsive UIs in Flutter. Each branch implements a unique approach, showcasing how various techniques can be used to build adaptive layouts for different screen sizes.

## Project Structure

This repository includes the following branches, each implementing a different responsive design method:

- **Master Branch**: Implements a basic responsive navigation bar using the Responsive Framework library.

- **feature/layout**: Uses `LayoutBuilder` to adapt the UI layout based on the parent constraints, offering control over widget adjustments within specific containers.

- **feature/layout_v2**: Utilizes `MediaQuery` to retrieve screen dimensions and orientation, enabling adjustments based on overall device size.

- **feature/layout_v3**: Implements the **Responsive Framework** library to simplify responsive design with custom breakpoints and scaling options, providing a comprehensive solution for multi-platform applications.

## Getting Started

### Prerequisites

- [Flutter](https://flutter.dev/docs/get-started/install) (version 2.0 or higher recommended)

### Installation

1. **Clone the repository**:
   ```bash
   git clone https://github.com/yourusername/yourprojectname.git
   ```

2. **Navigate to the project directory**:
   ```bash
   cd yourprojectname
   ```

3. **Install dependencies**:
   ```bash
   flutter pub get
   ```

### Running the Project

To test different responsive UI approaches, switch to the desired branch and run the app:

```bash
git checkout <branch_name>
flutter run
```

Replace `<branch_name>` with one of the following:

- `master` – for the basic responsive navigation bar with Responsive Framework
- `feature/layout` – to test the LayoutBuilder approach
- `feature/layout_v2` – to test the MediaQuery approach
- `feature/layout_v3` – to test the Responsive Framework approach in more depth

## Branch Details

### Master Branch
Implements a responsive navigation bar using the **Responsive Framework** library, showcasing a simple yet effective way to create adaptive navigation components.

### feature/layout
Demonstrates how to use `LayoutBuilder` to make UI decisions based on the parent widget’s constraints, allowing for fine-grained control over specific widget layouts.

### feature/layout_v2
Illustrates how `MediaQuery` can be utilized to adapt the layout according to the device's screen size and orientation, ideal for creating responsive designs based on overall screen characteristics.

### feature/layout_v3
Expands on the **Responsive Framework** library, applying custom breakpoints and scaling to create a seamless, scalable UI that adjusts across mobile, tablet, and desktop screens.

## Contributing

Feel free to fork this project, make enhancements, and submit pull requests. Contributions are always welcome!


