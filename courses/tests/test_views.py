from django.test import RequestFactory
from django.urls import reverse
from django.contrib.auth.models import User, AnonymousUser
from courses.views import courseBuilder
from mixer.backend.django import mixer
import pytest


@pytest.fixture(scope='module')
def factory():
    return RequestFactory()


@pytest.fixture()
def courses(db):
    return mixer.blend('courses.Course')


def test_addCourseTitle_instructor_only(factory, courses):
    path = reverse('addCourseTitle')
    request = factory.get(path)
    request.user = mixer.blend(User)
    response = courseBuilder(request)
    assert '/' in response.url


def test_addCourseTitle_unauthenticated(factory, courses):
    path = reverse('addCourseTitle')
    request = factory.get(path)
    request.user = AnonymousUser()
    response = courseBuilder(request)
    assert '/' in response.url


def test_becomeInstructor_only_for_student(factory, courses):
    path = reverse('addCourseTitle')
    request = factory.get(path)
    request.user = mixer.blend(User)
    response = courseBuilder(request)
    assert '/' in response.url
