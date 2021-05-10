from mixer.backend.django import mixer
import pytest


@pytest.fixture()
def course(request, db):
    return mixer.blend('courses.Course', is_approved=request.param)


@pytest.fixture()
def courseTopicTitle(request, db):
    return mixer.blend('courses.Course', pk=request.param)


@pytest.mark.parametrize('course', ["Approved"], indirect=True)
def test_is_course_approved(course):
    assert course.is_approved == "Approved"


@pytest.mark.parametrize('course', ["Pending"], indirect=True)
def test_is_course_not_approved(course):
    assert course.is_approved == "Pending"

