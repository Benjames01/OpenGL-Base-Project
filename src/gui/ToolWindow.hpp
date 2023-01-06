#ifndef __TOOLWINDOW_H__
#define __TOOLWINDOW_H__
#include <string>

#include <imgui.h>
#include <imgui_impl_opengl3.h>
#include <imgui_impl_glfw.h>

class ToolWindow
{
    protected:
        unsigned int id;
        std::string title;
        bool showing = false;
        bool anchored = false;
    public:
        ToolWindow(unsigned int id, std::string title) : id(id), title(title) {}
        virtual ~ToolWindow() {}

        virtual void Initialise() = 0;
        virtual void SetShowing(bool show) = 0;
        virtual void Display() = 0;
};


class TestWindow : public ToolWindow
{
    public:
        TestWindow(): ToolWindow(0, "Test Window"){}
        virtual void Initialise() override;
        virtual void Display() override;
        virtual void SetShowing(bool show) override;
};

class MenuBar : public ToolWindow
{
    public:
        MenuBar(): ToolWindow(1, "Menu Bar"){}
        virtual void Initialise() override;
        virtual void Display() override;
        virtual void SetShowing(bool show) override;
};

#endif