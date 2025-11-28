# CodeFlow - Python Code Analysis & Debugging Tool

CodeFlow is an advanced code analysis and debugging visualization tool for Python developers. It provides real-time analysis of Python code, visualizes control flow graphs, and offers step-by-step debugging capabilities through an intuitive web interface.

view : https://www.linkedin.com/posts/mohamed-sarhan-a18530383_im-excited-to-share-a-new-project-ive-activity-7398771531293675520-NwgB?utm_source=share&utm_medium=member_desktop&rcm=ACoAAF6VpLQBQKFygxmxKWjOlnIIECjM2Xl4HUg

## Features

- 🧠 **Smart Code Analysis**: Automatically analyzes Python code structure including variables, functions, classes, loops, and conditionals
- 📊 **Control Flow Visualization**: Generates interactive control flow graphs to visualize program execution paths
- 🐞 **Step-by-Step Debugging**: Execute code line-by-line with variable state tracking
- 📈 **Execution Timeline**: Visualize the execution history and program flow
- 📦 **Multi-File Project Support**: Analyze entire Python projects with multiple files
- 💾 **Session History**: Save and revisit previous analysis sessions
- 📤 **Export Capabilities**: Export analysis results in JSON format

## Prerequisites

- Python 3.8+
- Node.js 16+
- npm 8+

## Installation

1. Clone or download this repository
2. Navigate to the project root directory

### Backend Setup

1. Create a virtual environment (using `.venv` folder as per your requirement):
   ```bash
   python -m venv .venv
   ```

2. Activate the virtual environment:
   - On Windows:
     ```bash
     .venv\Scripts\activate
     ```
   - On macOS/Linux:
     ```bash
     source .venv/bin/activate
     ```

3. Install Python dependencies:
   ```bash
   cd backend
   pip install -r requirements.txt
   cd ..
   ```

### Frontend Setup

1. Install frontend dependencies:
   ```bash
   cd frontend
   npm install
   cd ..
   ```

## Usage

### Quick Start

Simply run the provided batch file:
```bash
start.bat
```

This will:
1. Start the backend API server
2. Launch the frontend development server
3. Open your browser to the application

### Manual Start

Alternatively, you can start the services manually:

1. Start the backend server:
   ```bash
   cd backend
   python main.py
   ```

2. In a new terminal, start the frontend:
   ```bash
   cd frontend
   npm run dev
   ```

3. Open your browser and navigate to `http://localhost:5173`

## How It Works

1. **Upload Python Code**: Load a single Python file or an entire project folder
2. **Automatic Analysis**: The tool parses your code and identifies:
   - Variables and their scopes
   - Functions and their parameters
   - Classes and their methods
   - Loops and conditional statements
3. **Visualization**: View the control flow graph of your program
4. **Debugging**: Select specific lines to debug and execute code step-by-step
5. **Inspection**: Monitor variable values and program state at each execution step

## Benefits

- **Educational Tool**: Perfect for teaching programming concepts and code flow
- **Code Comprehension**: Quickly understand complex code structures and execution paths
- **Debugging Assistance**: Identify issues through step-by-step execution visualization
- **Learning Aid**: Great for students learning Python programming
- **Development Support**: Helps developers understand legacy code or review teammates' code
- **Visual Feedback**: Interactive graphs make it easy to grasp program flow

## Project Structure

```
codeflow/
├── backend/           # Python FastAPI backend
│   ├── analysis/      # Code analysis modules
│   ├── database/      # Database models
│   ├── execution/     # Debugging engine
│   ├── output/        # Analysis output files
│   ├── code_analyzer.py  # Main analysis module
│   ├── main.py        # API server
│   └── requirements.txt  # Python dependencies
├── frontend/          # React/Vite frontend
│   ├── src/           # Source code
│   ├── components/    # React components
│   └── ...
├── .venv/             # Virtual environment (created during setup)
└── start.bat          # Quick start script
```

## API Endpoints

- `GET /` - Health check endpoint
- `GET /sessions` - Retrieve analysis history
- `POST /sessions` - Save a new analysis session
- `GET /sessions/{id}` - Retrieve a specific session
- `WebSocket /ws/analysis` - Real-time code analysis
- `WebSocket /ws/debug` - Debugging interface

## Contributing

Contributions are welcome! Feel free to submit issues or pull requests.

## License


This project is licensed under the MIT License.
