cmake_minimum_required(VERSION 3.20.3)

# project name!
project(main)

# Executabal files! 
add_executable(${PROJECT_NAME} main.cpp)

# Include Header files directory. !!!Change LIBRARY NAME!!! 
#target_include_directories(${PROJECT_NAME} PUBLIC external/LIBRARY/include)

# Link against the a Specific library. !!!Change LIBRARY NAME!!! 
#target_link_directories(${PROJECT_NAME} PRIVATE external/LIBRARY/lib)

# Link against the Libraries. !!!Change LIBRARY NAME!!! 
#target_link_libraries(${PROJECT_NAME} PRIVATE ADD LIBRARIES)