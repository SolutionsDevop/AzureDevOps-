## MonoRepo
    - Single repo for all codes
    - Holds everything related to the project
    - Codes are organized into directories or modules
    - Same version history for all projects
    - It has all files in a place
    
  ## Advantages of MonoRepo
    - Its easy to share code
    - Consistency in code style
    - Easy to refactor
    - Dependency is updated easily
    - A unified CI/CD process

  ## Disadvantages of MonoRepo    
    - Large repo sixw
    - Complicated access control
    - Risk of merge conflicts
    - Longer build times
    - Harder to scale

## Multiple Repos: This devide source codes across various independent repo, each dedicated to specific project
    - Idenpendent code management
    - Isolated CI/CD pipelines
    - Decentralized version control
    - Separate repository per project/module
    - Modular dependency handling

  ## Advantages of Multiple Repos
    - Modular development
    - Grnaular access control
    - Easy to scale
    - Faster builds
    - Independent CI/CD process

  ## Disadvantages of Multiple Repos
    - Complex dependency management
    - Inconsisstent code syle
    - Duplication of effort
    - Complicated integration
    - Multiple CICD pipelines

## Things to consider when picking the right branching strategies
    - Project size and complexity
    - Team size and structures
    - Dependency management needs
    - Build and deployment requirements
    - Long-term maintenance

## Things to consider before selecting branch workflow type
    - Scalability: as the team grows is the workflow adaptable
    - Error correction: Is rectifying mmistake easy within the workflow
    - Cognitive Load: Will the workflow introduces complexity that could impact team efficiency    

## Feature Branch
    - Branch creation: screate branch specifically for the new feature away from the main code
    - Commit work: to save progress regularly commit progress
    - PR Initiation: create a PR for integration 
    - Code discussion: use the PR for review of the changes
    - Code deployment: deploy the code to test in an isolated environment
    - Merge: merge the feature into the main branch, ensuring no disruption to the codebase.

## Github flow process
    - Create a new branch
    - Make changes
    - PR initiation
    - Collaborate
    - Merge
    - Delete branch    