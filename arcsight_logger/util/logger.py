"""Unofficial Python SDK for Arcsight Logger."""
import json
import time

proxy = {'http': 'http://socovalu:QAYwsxEDCrfv321@192.168.10.31:3128'}


class LoggerClient:
    def __init__(self, url, login, password, rc, log):
        self.host = url
        self.rc = rc
        self.log = log
        self.authtoken = self.login(login, password)["log.loginResponse"]["log.return"]

    def post(self, url, data, verify=False, disable_warning=True):
        """Request implementation, to simplify error handling.
        Args:
            host (string): Hostname of Logger
            url (string): URL for the API Endpoint
            data (array): Payload of the body
            verify (bool, optional): SSL Verification
            disable_warning (bool, optional): Disable SSL warnings
        Returns:
            json: An array upon success, or empty if HTTP 204.
            If an error is caught the error will be printed
            and the application will exit.
        """
        headers = {'accept': 'application/json', 'Content-Type': 'application/json'}
        url = 'https://' + self.host + url
        self.log.debug("*****************************")
        self.log.debug(url)
        self.log.debug("*****************************")
        self.log.debug(data)
        self.log.debug("*****************************")
        self.log.debug(headers)

        response = self.rc(method="post", url=url, json=data, headers=headers, verify=verify,
                           timeout=6)
        response.raise_for_status()
        if response.status_code == 200:
            if response.text:
                response = json.loads(response.text)
        else:
            response = response.text
        return response

    def login(self, username, password):
        """Authenticate with the ArcSight Logger.
        Args:
            host (string): Hostname of Logger
            username (string): Username to authenticate with
            password (string): Password related to the user account
        Returns:
            json: On successful login it will return the related authtoken
        """
        url = '/core-service/rest/LoginService/login'
        payload = {
            "log.login": {
                "log.login": username,
                "log.password": password
            }
        }
        response = self.post(url, data=payload)
        return response

    def logout(self):

        """Close the provided authtoken.
        Args:
            host (string): Hostname of Logger
            authtoken (string): Token for the current session
        Returns:
            Null: Returns an empty HTTP 204 upon success
        """
        url = '/core-service/rest/LoginService/logout'
        payload = {
            "log.logout": {
                "log.authToken": self.authtoken,
            }
        }
        response = self.post(url=url, data=payload)
        return response

    def search(self, query, search_id, **kwargs):
        """Start a background search job.
        Args:
            host (string): Hostname of Logger
            authtoken (string): Token for the current session
            query (string): Which query to run
            search_id (int): The search_id to be generated for the search
            **kwargs: All arguments marked as optional in documentation
        Returns:
            json: If successful returns a sessionId, this ID is only
            related if you want to find the running search
            on the ArcSight Logger web interface. This is not related
            to the search_id provided by the user.
        """
        url = '/server/search'
        payload = {
            'search_session_id': search_id,
            'user_session_id': self.authtoken,
            'query': query,
            **kwargs
        }
        response = self.post(url=url, data=payload)
        return response

    def status(self, search_id):
        """Retrieve status of an existing search.
        Args:
            host (string): Hostname of Logger
            authtoken (string): Token for the current session
            search_id (int): The search_id for the search to take action on
        Returns:
            json: An array showing the current status of a search
        """
        url = '/server/search/status'
        payload = {
            'search_session_id': search_id,
            'user_session_id': self.authtoken,
        }
        response = self.post(url=url, data=payload)
        return response

    def wait(self, search_id):
        """Wait until a search is finalized, checking every 5 seconds.
        Args:
            host (string): Hostname of Logger
            authtoken (string): Token for the current session
            search_id (int): The search_id for the search to take action on
        Returns:
            json: An array showing the current status of a search
        """
        response = self.status(search_id=search_id)
        while response['status'] != 'complete':
            response = self.status(search_id=search_id)
            if response['status'] != 'complete':
                time.sleep(5.0)
        return response

    def events(self, search_id, **kwargs):
        """Retrieve events related to a running or finalized search.
        Args:
            host (string): Hostname of Logger
            authtoken (string): Token for the current session
            search_id (int): The search_id for the search to take action on
            **kwargs: All arguments marked as optional in documentation
        Returns:
            json: Array including the events for the related search_id
        """
        url = '/server/search/events'
        payload = {
            'search_session_id': search_id,
            'user_session_id': self.authtoken,
            **kwargs
        }
        response = self.post(url=url, data=payload)
        return response

    def chart_data(self, search_id, **kwargs):
        """Return results to be used in charts or statistics.
        Args:
            host (string): Hostname of Logger
            authtoken (string): Token for the current session
            search_id (int): The search_id for the search to take action on
            **kwargs: All arguments marked as optional in documentation
        Returns:
            json: An array of aggregated data based on the specific search_id
        """
        url = '/server/search/chart_data'
        payload = {
            'search_session_id': search_id,
            'user_session_id': self.authtoken,
            **kwargs
        }
        response = self.post(url, data=payload)
        return response

    def close(self, search_id):
        """Close down an ongoing or finished search, and delete it's current results.
        Args:
            host (string): Hostname of Logger
            authtoken (string): Token for the current session
            search_id (int): The search_id for the search to take action on
        Returns:
            null: An empty HTTP 204 response upon success
        """
        url = '/server/search/close'
        payload = {
            'search_session_id': search_id,
            'user_session_id': self.authtoken,
        }
        response = self.post(url, data=payload)
        return response
