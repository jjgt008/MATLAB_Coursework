classdef calculator < matlab.apps.AppBase

    % Properties that correspond to app components
    properties (Access = public)
        UIFigure           matlab.ui.Figure
        Button_1chuX       matlab.ui.control.Button
        Button_percentage  matlab.ui.control.Button
        ACButton           matlab.ui.control.Button
        Button_SQRE        matlab.ui.control.Button
        CEButton           matlab.ui.control.Button
        Button_PSCB        matlab.ui.control.Button
        DelButton          matlab.ui.control.Button
        Button_DIVIDE      matlab.ui.control.Button
        Button_MULTIPLY    matlab.ui.control.Button
        Button_MINUS       matlab.ui.control.Button
        Button_PLUS        matlab.ui.control.Button
        Button_Dot         matlab.ui.control.Button
        Button_EQUAL       matlab.ui.control.Button
        Number_9           matlab.ui.control.Button
        Number_8           matlab.ui.control.Button
        Number_7           matlab.ui.control.Button
        Number_6           matlab.ui.control.Button
        Number_5           matlab.ui.control.Button
        Number_4           matlab.ui.control.Button
        Number_3           matlab.ui.control.Button
        Number_2           matlab.ui.control.Button
        Number_1           matlab.ui.control.Button
        Number_0           matlab.ui.control.Button
        Display_2          matlab.ui.control.EditField
        Display            matlab.ui.control.EditField
        Display_3          matlab.ui.control.EditField
    end

    
    properties (Access = public)
        memeries = 0;   %1,2,3,4分别对应上次的加减乘除，0代表无记忆
        push = 0;
        last_type = "0";
        mode = 0;       %0常规模式 1快速计算模式
    end
    

    % Callbacks that handle component events
    methods (Access = private)

        % Code that executes after component creation
        function startupFcn(app, cc)
            app.Display.Value = "0";
            app.Display_3.Visible = 0;        
        end

        % Button pushed function: Number_0
        function Number_0ButtonPushed(app, event)
            app.Display_3.Visible = 0;
            app.mode = 0;
            app.push = 1;
            if app.Display.Value ~= "0"
               app.Display.Value = app.Display.Value + "0";
            else 
               app.Display.Value = "0";
            end
        end

        % Button pushed function: Number_1
        function Number_1ButtonPushed(app, event)
            app.Display_3.Visible = 0;
            app.mode = 0;
            app.push = 1;
            if app.Display.Value ~= "0"
               app.Display.Value = app.Display.Value + "1";
            else 
               app.Display.Value = "1";
            end
        end

        % Button pushed function: Number_2
        function Number_2ButtonPushed(app, event)
            app.Display_3.Visible = 0;
            app.mode = 0;
            app.push = 1;
            if app.Display.Value ~= "0"
               app.Display.Value = app.Display.Value + "2";
            else 
               app.Display.Value = "2";
            end
        end

        % Button pushed function: Number_3
        function Number_3ButtonPushed(app, event)
            app.Display_3.Visible = 0;
            app.mode = 0;
            app.push = 1;
            if app.Display.Value ~= "0"
               app.Display.Value = app.Display.Value + "3";
            else 
               app.Display.Value = "3";
            end
        end

        % Button pushed function: Number_4
        function Number_4ButtonPushed(app, event)
            app.Display_3.Visible = 0;
            app.mode = 0;
            app.push = 1;
            if app.Display.Value ~= "0"
               app.Display.Value = app.Display.Value + "4";
            else 
               app.Display.Value = "4";
            end
        end

        % Button pushed function: Number_5
        function Number_5ButtonPushed(app, event)
            app.Display_3.Visible = 0;
            app.mode = 0;
            app.push = 1;
            if app.Display.Value ~= "0"
               app.Display.Value = app.Display.Value + "5";
            else 
               app.Display.Value = "5";
            end
        end

        % Button pushed function: Number_6
        function Number_6ButtonPushed(app, event)
            app.Display_3.Visible = 0;
            app.mode = 0;
            app.push = 1;
            if app.Display.Value ~= "0"
               app.Display.Value = app.Display.Value + "6";
            else 
               app.Display.Value = "6";
            end
        end

        % Button pushed function: Number_7
        function Number_7ButtonPushed(app, event)
            app.Display_3.Visible = 0;
            app.mode = 0;
            app.push = 1;
            if app.Display.Value ~= "0"
               app.Display.Value = app.Display.Value + "7";
            else 
               app.Display.Value = "7";
            end
        end

        % Button pushed function: Number_8
        function Number_8ButtonPushed(app, event)
            app.Display_3.Visible = 0;
            app.mode = 0;
            app.push = 1;
            if app.Display.Value ~= "0"
               app.Display.Value = app.Display.Value + "8";
            else 
               app.Display.Value = "8";
            end
        end

        % Button pushed function: Number_9
        function Number_9ButtonPushed(app, event)
            app.Display_3.Visible = 0;
            app.mode = 0;
            app.push = 1;
            if app.Display.Value ~= "0"
               app.Display.Value = app.Display.Value + "9";
            else 
               app.Display.Value = "9";
            end
        end

        % Button pushed function: Button_PLUS
        function Button_PLUSPushed(app, event)
        if app.Display_2.Value ~= ""
         V=char(app.Display_2.Value);
         switch(V(end))
             case '+'
               Button_EQUALPushed(app,1);
               Button_PLUSPushed(app,1);
               return;
             case '-'
                if app.push == 0
                 app.Display_2.Value = V(1:end-1)+"+";
                 return;
                else
                 Button_EQUALPushed(app,1);
               Button_PLUSPushed(app,1);
               return;
                end
             case '/'
                 if app.push == 0
                    app.Display_2.Value = V(1:end-1)+"+";
                    return;
                 else
                     Button_EQUALPushed(app,1);
                     Button_PLUSPushed(app,1);
                     return;
                 end
             case '*'
                 if app.push == 0
                    app.Display_2.Value = V(1:end-1)+"+";
                    return;
                 else
                     Button_EQUALPushed(app,1);
                     Button_PLUSPushed(app,1);
                     return;
                 end
         end
        end
            app.memeries = 1;app.mode = 0;
            
            if app.Display_3.Visible == 0
                app.Display_2.Value = app.Display.Value + "+";
                app.last_type = app.Display.Value;
                app.Display.Value = "0";
                app.push = 0;
            else
                app.Display_3.Visible = 0;
                app.Display_2.Value = app.Display_3.Value + "+";
                app.Display.Value = "0";
                app.push = 0;
            end
        end

        % Button pushed function: Button_MINUS
        function Button_MINUSPushed(app, event)
         if app.Display_2.Value ~= ""
         V=char(app.Display_2.Value);
         switch(V(end))
             case "-"
               Button_EQUALPushed(app,1);
               Button_MINUSPushed(app,1);
               return;
             case "+"
                 if app.push == 0
                    app.Display_2.Value = V(1:end-1)+"-";
                    return;
                 else
                     Button_EQUALPushed(app,1);
                     Button_MINUSPushed(app,1);
                     return;
                 end
             case "/"
                 if app.push == 0
                    app.Display_2.Value = V(1:end-1)+"-";
                    return;
                 else
                     Button_EQUALPushed(app,1);
                     Button_MINUSPushed(app,1);
                     return;
                 end
             case "*"
                 if app.push == 0
                    app.Display_2.Value = V(1:end-1)+"-";
                    return;
                 else
                     Button_EQUALPushed(app,1);
                     Button_MINUSPushed(app,1);
                     return;
                 end
         end
        end
            app.memeries = 2;app.mode = 0;
            
            if app.Display_3.Visible == 0
                app.Display_2.Value = app.Display.Value + "-";
                app.last_type = app.Display.Value;
                app.Display.Value = "0";
                app.push = 0;
            else
                app.Display_3.Visible = 0;
                app.Display_2.Value = app.Display_3.Value + "-";
                app.Display.Value = "0";
                app.push = 0;
            end
        end

        % Button pushed function: Button_MULTIPLY
        function Button_MULTIPLYPushed(app, event)
        if app.Display_2.Value ~= ""
         V=char(app.Display_2.Value);
         switch(V(end))
             case "*"
                 if app.push ~= 0
               Button_EQUALPushed(app,1);
               Button_MULTIPLYPushed(app,1);
               return;
                 end
                 return;
             case "-"
                 if app.push == 0
                    app.Display_2.Value = V(1:end-1)+"*";
                    return;
                 else
                     Button_EQUALPushed(app,1);
                     Button_MULTIPLYPushed(app,1);
                     return;
                 end
             case "/"
                 if app.push == 0
                    app.Display_2.Value = V(1:end-1)+"*";
                    return;
                 else
                     Button_EQUALPushed(app,1);
                     Button_MULTIPLYPushed(app,1);
                     return;
                 end
             case "+"
                 if app.push == 0
                    app.Display_2.Value = V(1:end-1)+"*";
                    return;
                 else
                     Button_EQUALPushed(app,1);
                     Button_MULTIPLYPushed(app,1);
                     return;
                 end
         end
        end
            app.memeries = 3;
            app.mode = 0;
            if app.Display_3.Visible == 0
                app.Display_2.Value = app.Display.Value + "*";
                app.last_type = app.Display.Value;
                app.Display.Value = "0";
                app.push = 0;
            else
                app.Display_3.Visible = 0;
                app.Display_2.Value = app.Display_3.Value + "*";
                app.Display.Value = "0";
                app.push = 0;
            end
        end

        % Button pushed function: Button_DIVIDE
        function Button_DIVIDEPushed(app, event)
        if app.Display_2.Value ~= ""
         V=char(app.Display_2.Value);
         switch(V(end))
             case "/"
               Button_EQUALPushed(app,1);
               Button_DIVIDEPushed(app,1);
               return;
             case "-"
               if app.push == 0
                    app.Display_2.Value = V(1:end-1)+"/";
                    return;
                 else
                     Button_EQUALPushed(app,1);
                     Button_DIVIDEPushed(app,1);
                     return;
               end
             case "+"
                  if app.push == 0
                    app.Display_2.Value = V(1:end-1)+"/";
                    return;
                 else
                     Button_EQUALPushed(app,1);
                     Button_DIVIDEPushed(app,1);
                     return;
                  end
             case "*"
                  if app.push == 0
                    app.Display_2.Value = V(1:end-1)+"/";
                    return;
                 else
                     Button_EQUALPushed(app,1);
                     Button_DIVIDEPushed(app,1);
                     return;
                  end
         end
        end
            app.mode = 0;
            app.memeries = 4;
            
            if app.Display_3.Visible == 0
                app.Display_2.Value = app.Display.Value + "/";
                app.last_type = app.Display.Value;
                app.Display.Value = "0";
                app.push = 0;
            else
                app.Display_3.Visible = 0;
                app.Display_2.Value = app.Display_3.Value + "/";
                app.Display.Value = "0";
                app.push = 0;
            end
        end

        % Button pushed function: Button_Dot
        function Button_DotPushed(app, event)
            app.mode = 0;
            app.push = 1;
            app.Display_3.Visible = 0;
            app.Display.Value = app.Display.Value + ".";
        end

        % Button pushed function: Button_EQUAL
        function Button_EQUALPushed(app, event)
    if app.Display_2.Value ~= ""
             V = char(app.Display_2.Value);
             if abs(V(end))<=57 && abs(V(end))>=48
                  if app.Display_3.Visible == 0
                      app.Display_2.Value = app.Display.Value;
                      app.Display_3.Value = app.Display_2.Value;
                      app.Display_3.Visible = 1;
                      app.Display.Value = "0";
                      return
                  else
                      if app.mode == 0
                      app.Display_3.Value = app.Display_2.Value;
                      return
                      end
                  end
             end
    else
        app.Display_2.Value = app.Display.Value;
        app.Display_3.Value = app.Display_2.Value;
        return;
     end
            
     
            
            app.push = 0;
            if app.Display.Value ~= '0'
            app.last_type = app.Display.Value;
            end
         if app.mode == 1
          switch(app.memeries)
            case 1
                A = app.Display_3.Value + "+" +app.last_type;
                app.Display_2.Value = A;
                answer = eval(A);
                app.Display_3.Value = string(answer);
                app.Display_3.Visible = 1;
            case 2
                A = app.Display_3.Value + "-" +app.last_type;
                app.Display_2.Value = A;
                answer = eval(A);
                app.Display_3.Value = string(answer);
                app.Display_3.Visible = 1;
            case 3
                A = app.Display_3.Value + "*" +app.last_type;
                app.Display_2.Value = A;
                answer = eval(A);
                app.Display_3.Value = string(answer);
                app.Display_3.Visible = 1;
            case 4
                A = app.Display_3.Value + "/" +app.last_type;
                app.Display_2.Value = A;
                answer = eval(A);
                app.Display_3.Value = string(answer);
                app.Display_3.Visible = 1;
            otherwise
            A = app.Display_2.Value;
            B = app.Display.Value;
            C = strcat(A,B);
            answer = eval(C);
            app.Display_2.Value = C;
            app.Display_3.Value = string(answer);
            app.Display_3.Visible = 1;
            app.Display.Value = "0";
          end
        else
           A = app.Display_2.Value;
            B = app.Display.Value;
            C = strcat(A,B);
            answer = eval(C);
            app.Display_2.Value = C;
            app.Display_3.Value = string(answer);
            app.Display_3.Visible = 1;
            app.Display.Value = "0";
            app.mode = 1;
        end
        end

        % Button pushed function: Button_percentage
        function Button_percentagePushed(app, event)
             app.mode = 0;
             app.push = 0;
            if app.Display_3.Visible == 0
                A = app.Display.Value;
                app.Display_2.Value = app.Display.Value + "%";
                app.Display.Value = "0";
            else
                app.Display_3.Visible = 0;
                A = app.Display_3.Value;
                app.Display_2.Value = app.Display_3.Value + "%";
                app.Display.Value = "0";
            end
            A = A + "/100";
            answer = eval(A);
            app.Display_3.Value = string(answer);
            app.Display_3.Visible = 1;
             
        end

        % Button pushed function: Button_SQRE
        function Button_SQREPushed(app, event)
             app.mode = 0;
             app.push = 0;
            if app.Display_3.Visible == 0
                A = app.Display.Value;
                app.Display_2.Value = app.Display.Value + "^2";
                app.Display.Value = "0";
            else
                app.Display_3.Visible = 0;
                A = app.Display_3.Value;
                app.Display_2.Value = app.Display_3.Value + "^2";
                app.Display.Value = "0";
            end
            A = A + "*" + A;
            answer = eval(A);
            app.Display_3.Value = string(answer);
            app.Display_3.Visible = 1;
        end

        % Button pushed function: Button_PSCB
        function Button_PSCBPushed(app, event)
             app.mode = 0;
             app.push = 0;
            if app.Display_3.Visible == 0
                app.Display_2.Value = "sqrt("+ app.Display.Value +")";
                app.Display.Value = "0";
            else
                app.Display_3.Visible = 0;
                app.Display_2.Value = "sqrt("+ app.Display_3.Value +")";
                app.Display.Value = "0";
            end
            answer = eval(app.Display_2.Value);
            app.Display_3.Value = string(answer);
            app.Display_3.Visible = 1;
        end

        % Button pushed function: Button_1chuX
        function Button_1chuXPushed(app, event)
             app.mode = 0;
             app.push = 0;
            if app.Display_3.Visible == 0
                app.Display_2.Value = "1/"+app.Display.Value;
                app.Display.Value = "0";
            else
                app.Display_3.Visible = 0;
                app.Display_2.Value = "1/"+app.Display_3.Value;
                app.Display.Value = "0";
            end
            answer = eval(app.Display_2.Value);
            app.Display_3.Value = string(answer);
            app.Display_3.Visible = 1;
        end

        % Button pushed function: ACButton
        function ACButtonPushed(app, event)
            app.push = 0;
            app.Display.Value = "0";
            app.Display_2.Value = "";
            app.Display_3.Value = "";
            app.Display_3.Visible = 0;
            app.memeries = 0;
            app.mode = 0;
        end

        % Button pushed function: CEButton
        function CEButtonPushed(app, event)
            app.memeries = 0;
            app.mode = 0;
            app.push = 0;
            if  app.Display_3.Visible == 1
                app.Display_3.Visible = 0;
                app.Display_2.Value = "";
            end
            app.Display.Value = "0";
        end

        % Button pushed function: DelButton
        function DelButtonPushed(app, event)
            app.mode = 0;
            if app.Display_3.Visible == 1
                app.Display_3.Visible = 0;
                app.Display_2.Value = "";
                app.Display.Value = "0";
                
            end
            if length(app.Display.Value) > 1
                app.Display.Value = app.Display.Value(1:length(app.Display.Value)-1);
            else
               app.Display.Value = "0"; 
               
            end
        end
    end

    % Component initialization
    methods (Access = private)

        % Create UIFigure and components
        function createComponents(app)

            % Create UIFigure and hide until all components are created
            app.UIFigure = uifigure('Visible', 'off');
            app.UIFigure.Position = [100 100 416 522];
            app.UIFigure.Name = 'MATLAB App';

            % Create Button_1chuX
            app.Button_1chuX = uibutton(app.UIFigure, 'push');
            app.Button_1chuX.ButtonPushedFcn = createCallbackFcn(app, @Button_1chuXPushed, true);
            app.Button_1chuX.FontSize = 20;
            app.Button_1chuX.FontWeight = 'bold';
            app.Button_1chuX.FontColor = [1 0 0];
            app.Button_1chuX.Position = [32 259 78 46];
            app.Button_1chuX.Text = '1/x';

            % Create Button_percentage
            app.Button_percentage = uibutton(app.UIFigure, 'push');
            app.Button_percentage.ButtonPushedFcn = createCallbackFcn(app, @Button_percentagePushed, true);
            app.Button_percentage.FontSize = 20;
            app.Button_percentage.FontWeight = 'bold';
            app.Button_percentage.FontColor = [1 0 0];
            app.Button_percentage.Position = [32 314 78 46];
            app.Button_percentage.Text = '%';

            % Create ACButton
            app.ACButton = uibutton(app.UIFigure, 'push');
            app.ACButton.ButtonPushedFcn = createCallbackFcn(app, @ACButtonPushed, true);
            app.ACButton.FontSize = 20;
            app.ACButton.FontWeight = 'bold';
            app.ACButton.FontColor = [1 0 0];
            app.ACButton.Position = [122 314 78 46];
            app.ACButton.Text = 'AC';

            % Create Button_SQRE
            app.Button_SQRE = uibutton(app.UIFigure, 'push');
            app.Button_SQRE.ButtonPushedFcn = createCallbackFcn(app, @Button_SQREPushed, true);
            app.Button_SQRE.FontSize = 20;
            app.Button_SQRE.FontWeight = 'bold';
            app.Button_SQRE.FontColor = [1 0 0];
            app.Button_SQRE.Position = [122 259 78 46];
            app.Button_SQRE.Text = 'x²';

            % Create CEButton
            app.CEButton = uibutton(app.UIFigure, 'push');
            app.CEButton.ButtonPushedFcn = createCallbackFcn(app, @CEButtonPushed, true);
            app.CEButton.FontSize = 20;
            app.CEButton.FontWeight = 'bold';
            app.CEButton.FontColor = [1 0 0];
            app.CEButton.Position = [214 314 80 46];
            app.CEButton.Text = 'CE';

            % Create Button_PSCB
            app.Button_PSCB = uibutton(app.UIFigure, 'push');
            app.Button_PSCB.ButtonPushedFcn = createCallbackFcn(app, @Button_PSCBPushed, true);
            app.Button_PSCB.FontSize = 20;
            app.Button_PSCB.FontWeight = 'bold';
            app.Button_PSCB.FontColor = [1 0 0];
            app.Button_PSCB.Position = [215 259 78 46];
            app.Button_PSCB.Text = '√x';

            % Create DelButton
            app.DelButton = uibutton(app.UIFigure, 'push');
            app.DelButton.ButtonPushedFcn = createCallbackFcn(app, @DelButtonPushed, true);
            app.DelButton.FontSize = 20;
            app.DelButton.FontWeight = 'bold';
            app.DelButton.FontColor = [1 0 0];
            app.DelButton.Position = [307 314 78 46];
            app.DelButton.Text = 'Del';

            % Create Button_DIVIDE
            app.Button_DIVIDE = uibutton(app.UIFigure, 'push');
            app.Button_DIVIDE.ButtonPushedFcn = createCallbackFcn(app, @Button_DIVIDEPushed, true);
            app.Button_DIVIDE.FontSize = 20;
            app.Button_DIVIDE.FontWeight = 'bold';
            app.Button_DIVIDE.FontColor = [1 0 0];
            app.Button_DIVIDE.Position = [307 259 78 46];
            app.Button_DIVIDE.Text = '÷';

            % Create Button_MULTIPLY
            app.Button_MULTIPLY = uibutton(app.UIFigure, 'push');
            app.Button_MULTIPLY.ButtonPushedFcn = createCallbackFcn(app, @Button_MULTIPLYPushed, true);
            app.Button_MULTIPLY.FontSize = 20;
            app.Button_MULTIPLY.FontWeight = 'bold';
            app.Button_MULTIPLY.FontColor = [1 0 0];
            app.Button_MULTIPLY.Position = [307 203 78 46];
            app.Button_MULTIPLY.Text = '×';

            % Create Button_MINUS
            app.Button_MINUS = uibutton(app.UIFigure, 'push');
            app.Button_MINUS.ButtonPushedFcn = createCallbackFcn(app, @Button_MINUSPushed, true);
            app.Button_MINUS.FontSize = 20;
            app.Button_MINUS.FontWeight = 'bold';
            app.Button_MINUS.FontColor = [1 0 0];
            app.Button_MINUS.Position = [307 148 78 46];
            app.Button_MINUS.Text = '-';

            % Create Button_PLUS
            app.Button_PLUS = uibutton(app.UIFigure, 'push');
            app.Button_PLUS.ButtonPushedFcn = createCallbackFcn(app, @Button_PLUSPushed, true);
            app.Button_PLUS.FontSize = 20;
            app.Button_PLUS.FontWeight = 'bold';
            app.Button_PLUS.FontColor = [1 0 0];
            app.Button_PLUS.Position = [307 91 78 46];
            app.Button_PLUS.Text = '+';

            % Create Button_Dot
            app.Button_Dot = uibutton(app.UIFigure, 'push');
            app.Button_Dot.ButtonPushedFcn = createCallbackFcn(app, @Button_DotPushed, true);
            app.Button_Dot.FontSize = 20;
            app.Button_Dot.FontWeight = 'bold';
            app.Button_Dot.Position = [215 36 78 46];
            app.Button_Dot.Text = '.';

            % Create Button_EQUAL
            app.Button_EQUAL = uibutton(app.UIFigure, 'push');
            app.Button_EQUAL.ButtonPushedFcn = createCallbackFcn(app, @Button_EQUALPushed, true);
            app.Button_EQUAL.FontSize = 20;
            app.Button_EQUAL.FontWeight = 'bold';
            app.Button_EQUAL.FontColor = [1 0 0];
            app.Button_EQUAL.Position = [307 36 78 46];
            app.Button_EQUAL.Text = '=';

            % Create Number_9
            app.Number_9 = uibutton(app.UIFigure, 'push');
            app.Number_9.ButtonPushedFcn = createCallbackFcn(app, @Number_9ButtonPushed, true);
            app.Number_9.FontSize = 20;
            app.Number_9.FontWeight = 'bold';
            app.Number_9.Position = [215 203 78 46];
            app.Number_9.Text = '9';

            % Create Number_8
            app.Number_8 = uibutton(app.UIFigure, 'push');
            app.Number_8.ButtonPushedFcn = createCallbackFcn(app, @Number_8ButtonPushed, true);
            app.Number_8.FontSize = 20;
            app.Number_8.FontWeight = 'bold';
            app.Number_8.Position = [123 203 78 46];
            app.Number_8.Text = '8';

            % Create Number_7
            app.Number_7 = uibutton(app.UIFigure, 'push');
            app.Number_7.ButtonPushedFcn = createCallbackFcn(app, @Number_7ButtonPushed, true);
            app.Number_7.FontSize = 20;
            app.Number_7.FontWeight = 'bold';
            app.Number_7.Position = [31 203 78 46];
            app.Number_7.Text = '7';

            % Create Number_6
            app.Number_6 = uibutton(app.UIFigure, 'push');
            app.Number_6.ButtonPushedFcn = createCallbackFcn(app, @Number_6ButtonPushed, true);
            app.Number_6.FontSize = 20;
            app.Number_6.FontWeight = 'bold';
            app.Number_6.Position = [215 148 78 46];
            app.Number_6.Text = '6';

            % Create Number_5
            app.Number_5 = uibutton(app.UIFigure, 'push');
            app.Number_5.ButtonPushedFcn = createCallbackFcn(app, @Number_5ButtonPushed, true);
            app.Number_5.FontSize = 20;
            app.Number_5.FontWeight = 'bold';
            app.Number_5.Position = [123 148 78 46];
            app.Number_5.Text = '5';

            % Create Number_4
            app.Number_4 = uibutton(app.UIFigure, 'push');
            app.Number_4.ButtonPushedFcn = createCallbackFcn(app, @Number_4ButtonPushed, true);
            app.Number_4.FontSize = 20;
            app.Number_4.FontWeight = 'bold';
            app.Number_4.Position = [31 148 78 46];
            app.Number_4.Text = '4';

            % Create Number_3
            app.Number_3 = uibutton(app.UIFigure, 'push');
            app.Number_3.ButtonPushedFcn = createCallbackFcn(app, @Number_3ButtonPushed, true);
            app.Number_3.FontSize = 20;
            app.Number_3.FontWeight = 'bold';
            app.Number_3.Position = [215 91 78 46];
            app.Number_3.Text = '3';

            % Create Number_2
            app.Number_2 = uibutton(app.UIFigure, 'push');
            app.Number_2.ButtonPushedFcn = createCallbackFcn(app, @Number_2ButtonPushed, true);
            app.Number_2.FontSize = 20;
            app.Number_2.FontWeight = 'bold';
            app.Number_2.Position = [124 91 78 46];
            app.Number_2.Text = '2';

            % Create Number_1
            app.Number_1 = uibutton(app.UIFigure, 'push');
            app.Number_1.ButtonPushedFcn = createCallbackFcn(app, @Number_1ButtonPushed, true);
            app.Number_1.FontSize = 20;
            app.Number_1.FontWeight = 'bold';
            app.Number_1.Position = [32 91 78 46];
            app.Number_1.Text = '1';

            % Create Number_0
            app.Number_0 = uibutton(app.UIFigure, 'push');
            app.Number_0.ButtonPushedFcn = createCallbackFcn(app, @Number_0ButtonPushed, true);
            app.Number_0.FontSize = 20;
            app.Number_0.FontWeight = 'bold';
            app.Number_0.Position = [32 36 170 46];
            app.Number_0.Text = '0';

            % Create Display_2
            app.Display_2 = uieditfield(app.UIFigure, 'text');
            app.Display_2.HorizontalAlignment = 'right';
            app.Display_2.FontSize = 20;
            app.Display_2.FontColor = [0.502 0.502 0.502];
            app.Display_2.Position = [32 444 353 56];

            % Create Display
            app.Display = uieditfield(app.UIFigure, 'text');
            app.Display.HorizontalAlignment = 'right';
            app.Display.FontSize = 30;
            app.Display.FontWeight = 'bold';
            app.Display.Position = [32 389 353 56];

            % Create Display_3
            app.Display_3 = uieditfield(app.UIFigure, 'text');
            app.Display_3.HorizontalAlignment = 'right';
            app.Display_3.FontSize = 30;
            app.Display_3.FontWeight = 'bold';
            app.Display_3.Position = [32 389 353 56];

            % Show the figure after all components are created
            app.UIFigure.Visible = 'on';
        end
    end

    % App creation and deletion
    methods (Access = public)

        % Construct app
        function app = calculator(varargin)

            % Create UIFigure and components
            createComponents(app)

            % Register the app with App Designer
            registerApp(app, app.UIFigure)

            % Execute the startup function
            runStartupFcn(app, @(app)startupFcn(app, varargin{:}))

            if nargout == 0
                clear app
            end
        end

        % Code that executes before app deletion
        function delete(app)

            % Delete UIFigure when app is deleted
            delete(app.UIFigure)
        end
    end
end