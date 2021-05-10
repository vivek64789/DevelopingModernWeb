from django.test import RequestFactory
from django.urls import reverse
from django.contrib.auth.models import User, AnonymousUser
from admins.views import addInstructor, showInstructor, addUser, adminDashboard
from mixer.backend.django import mixer
import pytest


@pytest.fixture(scope='module')
def factory():
    return RequestFactory()


@pytest.fixture()
def admins(db):
    return mixer.blend('admins.Admin')


def test_add_user_admin_only(factory, admins):
    path = reverse('addUser')
    request = factory.get(path)
    request.user = mixer.blend(User)
    response = addUser(request)
    assert '/' in response.url


def test_addInstructor_unauthenticated(factory, admins):
    path = reverse('addInstructor')
    request = factory.get(path)
    request.user = AnonymousUser()
    response = addInstructor(request)
    assert '/' in response.url
