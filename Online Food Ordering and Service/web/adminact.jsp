
<%

                        try {

                            String username = request.getParameter("name");
                            String password = request.getParameter("pass");

                            System.out.println("the username is " + username);
                            System.out.println("the password is " + password);

                            if ((username.equals("admin") ) && (password.equals("admin"))) {

                                response.sendRedirect("adminhome.jsp?m1=success");

                            } else {

                    %>

                        <%
                                response.sendRedirect("admin.jsp?m2=Failed");

                                }
                            } catch (Exception e) {
                                e.printStackTrace();
                            }

                        %>
