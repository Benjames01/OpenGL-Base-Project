#include <common/UserInput.hpp>
#include <glm/gtc/matrix_transform.hpp>
#include <imgui.h>
#include <iostream>

float horizontalAngle = 3.14f;
float verticalAngle = 0.0f;
float initialFOV = 45.0f;

float speed = 3.0f;
float mouseSpeed = 0.5f;
float zoomAmount = 1;
float speedModifier = 1;

glm::vec3 position = glm::vec3(0, 0, 5);
glm::mat4 projectionMatrix;
glm::mat4 viewMatrix;

GLFWwindow* mainWindow;
bool showWindows = false;

glm::mat4 GetViewMatrix()
{
    return viewMatrix;
}

glm::mat4 GetProjectionMatrix()
{
    return projectionMatrix;
}

void ToggleCursor(bool show)
{
    if(show)
    {
        glfwSetInputMode(mainWindow, GLFW_CURSOR, GLFW_CURSOR_NORMAL);
    } else {
        glfwSetInputMode(mainWindow, GLFW_CURSOR, GLFW_CURSOR_DISABLED);
        int width, height;
        glfwGetWindowSize(mainWindow, &width, &height);
        glfwSetCursorPos(mainWindow, width/2, height/2); // Lock the cursor to centre screen
    }

}

void ScrollCallback(GLFWwindow* window, double xoffset, double yoffset){
    zoomAmount += yoffset;
}

void KeyCallback(GLFWwindow* window, int key, int scancode, int action, int mods)
{
    ImGuiIO& io = ImGui::GetIO();



    if(key == GLFW_KEY_P && action == GLFW_PRESS)
    {
        if(io.WantCaptureKeyboard)
        {
            std::cout << "imgui want capture keyboard\n";
        } else {
            std::cout << "imgui doesnt want capture keyboard\n";
        }
        if(io.WantCaptureMouse)
        {
            std::cout << "imgui want capture mouse\n";
        } else {
            std::cout << "imgui doesnt want capture mouse\n";
        }
    }

    if(key == GLFW_KEY_GRAVE_ACCENT && action == GLFW_PRESS)
    {   
        if(!showWindows){
            ToggleCursor(true);
            showWindows = true; 
        } else {
            ToggleCursor(false);
            showWindows = false; 
        }

    }
}



void SetWindow(GLFWwindow* newWindow){

    GLFWwindow* oldWindow = mainWindow;
    mainWindow = newWindow;

    if(oldWindow != NULL)
    {
        glfwSetScrollCallback(oldWindow, NULL);
        glfwSetKeyCallback(oldWindow, NULL);
    }
   
    glfwSetScrollCallback(mainWindow, ScrollCallback);
    glfwSetKeyCallback(mainWindow, KeyCallback);

    // imgui needs to be setup after callbacks are set
    IMGUI_CHECKVERSION();
    ImGuiContext * ctx = ImGui::CreateContext();
    ImGui::StyleColorsDark();
    ImGui_ImplGlfw_InitForOpenGL(mainWindow, true);
    ImGui_ImplOpenGL3_Init("#version 460");




    std::cout << "Window has been set" << std::endl;
}

float GetSpeed()
{
    return speed * speedModifier;
}


bool GetWindowsShowing()
{
    return showWindows;
}



void CalculateMatrices()
{
    ImGuiIO& io = ImGui::GetIO();

    static double lastTime = glfwGetTime();

    double currentTime = glfwGetTime();
    float deltaTime = float(currentTime - lastTime);

    if(mainWindow == NULL){
        std::cout << "window is null" << std::endl;
        // window hasn't been set yet
        return;
    }

    if(&io == nullptr)
    {
        std::cout << "ImGui IO is null" << std::endl;
        // window & io hasn't been set yet
        return;
    }

    if(showWindows)
    {
        lastTime = currentTime;
        return;
    }

    double xPos, yPos;
    glfwGetCursorPos(mainWindow, &xPos, &yPos);

    int width, height;
    glfwGetWindowSize(mainWindow, &width, &height);
    glfwSetCursorPos(mainWindow, width/2, height/2);
    
    horizontalAngle += mouseSpeed * deltaTime * float(width/2 - xPos);
    verticalAngle += mouseSpeed * deltaTime * float(height/2 - yPos);

    glm::vec3 direction(cos(verticalAngle) * sin(horizontalAngle),sin(verticalAngle),cos(verticalAngle) * cos(horizontalAngle));
    glm::vec3 right = glm::vec3(sin(horizontalAngle - 3.14f/2.0f), 0,cos(horizontalAngle - 3.14f/2.0f));
    glm::vec3 up = glm::cross(right, direction);

    if(glfwGetKey(mainWindow, GLFW_KEY_LEFT_SHIFT) == GLFW_PRESS)
    {
        speedModifier = 3;
    } else 
    {
        speedModifier = 1;
    }

    if(glfwGetKey(mainWindow, GLFW_KEY_W) == GLFW_PRESS)
    {
        position += direction * deltaTime * GetSpeed();
    }
    if(glfwGetKey(mainWindow, GLFW_KEY_S) == GLFW_PRESS)
    {
        position -= direction * deltaTime * GetSpeed();
    }
    if(glfwGetKey(mainWindow, GLFW_KEY_A) == GLFW_PRESS)
    {
        position -= right * deltaTime * GetSpeed();
    }
    if(glfwGetKey(mainWindow, GLFW_KEY_D) == GLFW_PRESS)
    {
        position += right * deltaTime * GetSpeed();
    }

    if(glfwGetKey(mainWindow, GLFW_KEY_E) == GLFW_PRESS)
    {
        position += up * deltaTime * GetSpeed();
    }
    if(glfwGetKey(mainWindow, GLFW_KEY_Q) == GLFW_PRESS)
    {
        position -= up * deltaTime * GetSpeed();
    }

    float FOV = initialFOV;
    projectionMatrix = glm::perspective(glm::radians(FOV), 16.0f / 9.0f, 0.1f, 100.0f);
    viewMatrix = glm::lookAt(position, position+direction, up);

    lastTime = currentTime;
}