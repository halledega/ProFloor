@echo off
echo Creating Beam Analysis App Project Structure...
echo.

REM Create main project directory
mkdir beam-analysis-app
cd beam-analysis-app

echo Creating backend structure...
REM Backend structure
mkdir backend
cd backend

mkdir app
cd app
echo. > __init__.py

mkdir models
cd models
echo. > __init__.py
echo. > beam.py
echo. > loads.py
echo. > results.py
cd ..

mkdir services
cd services
echo. > __init__.py
echo. > beam_analyzer.py
echo. > material_service.py
echo. > section_service.py
cd ..

mkdir api
cd api
echo. > __init__.py
echo. > dependencies.py

mkdir routes
cd routes
echo. > __init__.py
echo. > beam.py
echo. > analysis.py
echo. > materials.py
cd ..
cd ..

mkdir utils
cd utils
echo. > __init__.py
echo. > validators.py
echo. > exceptions.py
cd ..

echo. > main.py
echo. > config.py
cd ..

mkdir tests
cd tests
echo. > __init__.py
echo. > test_beam_analyzer.py
echo. > test_api.py
cd ..

echo. > requirements.txt
echo. > Dockerfile
echo. > README.md

cd ..

echo Creating frontend structure...
REM Frontend structure (will be populated after create-react-app)
mkdir frontend-structure-template
cd frontend-structure-template

mkdir src
cd src

mkdir components
cd components

mkdir common
cd common
echo. > Button.tsx
echo. > Input.tsx
echo. > Select.tsx
echo. > UnitToggle.tsx
echo. > LoadingSpinner.tsx
cd ..

mkdir layout
cd layout
echo. > Header.tsx
echo. > Sidebar.tsx
echo. > MainContent.tsx
echo. > Footer.tsx
cd ..

mkdir beam
cd beam
echo. > BeamDiagram.tsx
echo. > BeamGeometry.tsx
echo. > LoadInput.tsx
echo. > LoadVisualization.tsx
cd ..

mkdir analysis
cd analysis
echo. > AnalysisControls.tsx
echo. > AnalysisStatus.tsx
cd ..

mkdir results
cd results
echo. > MomentDiagram.tsx
echo. > ShearDiagram.tsx
echo. > DeflectionDiagram.tsx
echo. > ResultsSummary.tsx
echo. > ExportControls.tsx
cd ..
cd ..

mkdir hooks
cd hooks
echo. > useBeamData.ts
echo. > useAnalysis.ts
echo. > useApi.ts
cd ..

mkdir services
cd services
echo. > api.ts
echo. > beamService.ts
echo. > analysisService.ts
echo. > exportService.ts
cd ..

mkdir types
cd types
echo. > beam.ts
echo. > loads.ts
echo. > results.ts
echo. > api.ts
cd ..

mkdir utils
cd utils
echo. > validation.ts
echo. > units.ts
echo. > calculations.ts
echo. > formatters.ts
cd ..

mkdir context
cd context
echo. > BeamContext.tsx
echo. > AnalysisContext.tsx
cd ..

mkdir pages
cd pages
echo. > Home.tsx
echo. > BeamDesign.tsx
echo. > Results.tsx
cd ..

mkdir styles
cd styles
echo. > globals.css
echo. > tailwind.css
cd ..

cd ..
cd ..

echo Creating documentation structure...
mkdir docs
cd docs
echo. > API.md
echo. > SETUP.md
echo. > USER_GUIDE.md
cd ..

echo Creating root files...
echo. > docker-compose.yml
echo. > .gitignore
echo. > .env.example
echo. > README.md

echo.
echo ========================================
echo Project structure created successfully!
echo ========================================
echo.
echo Next steps:
echo 1. Navigate to beam-analysis-app directory
echo 2. Set up Python virtual environment in backend folder:
echo    cd backend
echo    python -m venv venv
echo    venv\Scripts\activate
echo    pip install fastapi uvicorn PyNite
echo.
echo 3. Set up React frontend:
echo    cd ..\frontend
echo    npx create-react-app . --template typescript
echo    npm install axios recharts
echo    npm install -D tailwindcss postcss autoprefixer
echo    npx tailwindcss init -p
echo.
echo 4. Copy frontend structure from frontend-structure-template to frontend/src
echo    (After create-react-app completes)
echo.
echo 5. Configure Tailwind CSS and TypeScript paths as per setup guide
echo.
echo Happy coding!
pause