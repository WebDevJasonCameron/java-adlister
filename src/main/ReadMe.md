#SESSION LECTURE PLAN


User Story:

User goes to "/color-profile" and sees a form to pick color preferences. When form is submitted, take user back to the
"/ads" page and colors should be styled accordingly. When the user hits the "forget preferences" button, redirects
back to the "/color-profile" page and destroys the session.


Servlets:

	ColorProifleServlet
		doGet - send the user the color-profile.jsp view
		doPost - set the session color preferences and redirect to "/ads"


Views:


	color-profile.jsp - have a form to submit two color preference and button to forget them

	ads/index.jsp - modify to display color choices



Refactor to move jsps to the WEB-INF folder
        