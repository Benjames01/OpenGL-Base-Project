#include <gui/ToolWindow.hpp>
#include <glad/glad.h>

void TestWindow::Initialise()
{

}

void TestWindow::Display()
{   
    if(!showing && !anchored)
    {
        return;
    }

    static ImColor colour = ImVec4(1,1,0,1);
    static bool wireframeMode;

    if(wireframeMode)
    {
        glPolygonMode(GL_FRONT_AND_BACK, GL_LINE);
    } else {
        glPolygonMode(GL_FRONT_AND_BACK, GL_FILL);
    }

    ImGui::Begin("Controls");                         
    ImGui::TextColored(colour, "buttery biscuit base.");    

    ImGui::Checkbox("Wireframe mode", &wireframeMode);           
    ImGui::Checkbox("Always Show Window", &anchored);       
    ImGui::ColorEdit3("colour", (float*)&colour); // Edit 3 floats representing a color
    ImGui::Text("Application average %.3f ms/frame (%.1f FPS)", 1000.0f / ImGui::GetIO().Framerate, ImGui::GetIO().Framerate);
    ImGui::End();
}

void TestWindow::SetShowing(bool show)
{
    showing = show;
}



void MenuBar::SetShowing(bool show)
{
    // always shown
    showing = true;
}

void MenuBar::Initialise(){}

void MenuBar::Display()
{

    if(ImGui::BeginMainMenuBar())
    {
        if(ImGui::BeginMenu("File"))
        {
            bool showImport = false;
            ImGui::MenuItem("Import", NULL, &showImport);
            ImGui::EndMenu();
        }
    }

    ImGui::EndMainMenuBar();
}