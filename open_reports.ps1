{
    "version": "2.0.0",
    "tasks": [
        {
            "label": "Abrir informes",
            "type": "shell",
            "command": "powershell",
            "args": [
                "-Command",
                "Start-Process ./build/cucumber-html-reports/overview-features.html; Start-Process ./build/karate-reports/karate-summary.html"
            ],
            "presentation": {
                "reveal": "always"
            },
            "problemMatcher": []
        }
    ]
}

