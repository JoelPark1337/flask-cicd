import unittest
import app
import requests
import json

class UnitTest(unittest.TestCase):
    def setUp(self):
        self.app = app.app.test_client()
        self.host = 'http://localhost:8080'
    
    def test_answer(self):
        response = self.app.get('/')
        data = response.data
        self.assertEqual(b"Deploy123!!", data)

if __name__ == '__main__':
    unittest.main()