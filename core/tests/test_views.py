from django.test import TestCase
from django.urls import reverse


class TestIndexView(TestCase):
    def test_index_response_deve_ser_200(self):
        response = self.client.get(reverse('core:index'))
        self.assertEqual(response.status_code, 200)
