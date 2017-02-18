\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{beamer_fct}[2017/02/18 Presentation FCT-UNL LaTeX class]

\LoadClass{beamer}

\RequirePackage{pgf}
\RequirePackage{graphicx}
\RequirePackage{ifthen}
\RequirePackage{xcolor}
\RequirePackage{tikz}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
% Write some dummy contents. For testing purpose
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\newcommand{\mylipsum}{
    just dummy text
}
\newcommand{\myliplip}{
    \mylipsum{} \mylipsum{} \mylipsum{} \mylipsum
}
\newcommand{\myblabla}{
    this is more serious or not
}
\newcommand{\myblagf}{
    how i hear my girlfriend when I'm watch my football team? "bla bla bla bla"
}
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%
%%%%%% Some commands to integrate in a beamer theme Boadilla
%%%%%% 
%%%%%% Cool stuffs are doing here, just look if you want, but...
%%%%%%                            
%%%%%%                         ||
%%%%%%                        \||/
%%%%%%                         \/
%%%%%%
%%%%%%                    don't touch!
%%%%%%                     IS DANGER!
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%%%%%%%%%%%%%%%%%%%%%%
%                    %
% Colors Defenitions %
%                    %
%%%%%%%%%%%%%%%%%%%%%%

%Color present in the logos (to use in the first page)
\definecolor{greenfct}{HTML}{7DB901}
\definecolor{bluedarkfct}{HTML}{416AB9}
\definecolor{bluelightfct}{HTML}{5DB8CB}
\definecolor{greenunl}{HTML}{01710F}
\definecolor{grayunl}{HTML}{6A6A6A}
\definecolor{danger}{HTML}{D8000C}
\definecolor{dangerbody}{HTML}{FFBABA}
\definecolor{info}{HTML}{00529B}
\definecolor{infobody}{HTML}{BDE5F8}
\definecolor{success}{HTML}{4F8A10}
\definecolor{successbody}{HTML}{DFF2BF}

%Create variable with the defined color
\colorlet{greenfct}{greenfct}
\colorlet{bluedarkfct}{bluedarkfct}
\colorlet{bluelightfct}{bluelightfct}
\colorlet{greenunl}{greenunl}
\colorlet{grayunl}{grayunl}
\colorlet{danger}{danger}
\colorlet{dangerbody}{dangerbody}
\colorlet{info}{info}
\colorlet{infobody}{infobody}
\colorlet{success}{success}
\colorlet{successbody}{successbody}

%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                         %
% Insert and Remove Logos %
%                         %
%%%%%%%%%%%%%%%%%%%%%%%%%%%  

%Command to insert logos
\newcommand{\newlogo}[4]{
    \pgfputat{\pgfxy(#3,#4)}{
        \pgfbox[right,base]{
            \includegraphics[width=#2cm,keepaspectratio]{#1}
        }
    }
}

%Command to remove logos
\newcommand{\nologo}{
    \setbeamertemplate{logo}{}
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                                                  %
% Blocks definition for different types of content %
%                                                  %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%Command to display a block of type danger
\newcommand{\blockdanger}{
    \setbeamercolor{block title}{
        bg=danger,fg=white
    }
    \setbeamercolor{block body}{
        bg=dangerbody,fg=black
    }
    \setbeamertemplate{enumerate items}[default]
    \setbeamercolor{enumerate item}{
        fg=danger!90!black
    }
    \setbeamercolor{enumerate subitem}{
        fg=danger!70!black
    }
}

%Command to display a block of type info
\newcommand{\blockinfo}{
    \setbeamercolor{block title}{
        bg=info,fg=white
    }
    \setbeamercolor{block body}{
        bg=infobody,fg=black
    }
    \setbeamertemplate{enumerate items}[default]
    \setbeamercolor{enumerate item}{
        fg=info!90!black
    }
    \setbeamercolor{enumerate subitem}{
        fg=info!70!black
    }
}

%Command to display a block of type success
\newcommand{\blocksuccess}{
    \setbeamercolor{block title}{
        bg=success,fg=white
    }
    \setbeamercolor{block body}{
        bg=successbody,fg=black
    }
    \setbeamertemplate{enumerate items}[default]
    \setbeamercolor{enumerate item}{
        fg=success!90!black
    }
    \setbeamercolor{enumerate subitem}{
        fg=success!70!black
    }
}

%Command to display a block of type code
\newcommand{\blockcode}{

    \setbeamercolor{block title}{
        bg=NavyBlue!80!white,fg=white
    }
    \setbeamercolor{block body}{
        bg=white!27!black,fg=white
    }
    
    \setbeamertemplate{enumerate items}[default]
    \setbeamercolor{enumerate item}{
        fg=Cyan!80!black
    }
    \setbeamercolor{enumerate subitem}{
        fg=LimeGreen!80!black
    }
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                             %
% Background colour of canvas %
%                             %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%Command to change the background canvas
\newcommand{\backgroundcanvas}[1]{
     \usebackgroundtemplate{color = #1}
}

%Command to change the background canvas
\newcommand{\removebackgroundcanvas}{
    \usebackgroundtemplate{color = white}
}