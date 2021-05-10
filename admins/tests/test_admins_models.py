from mixer.backend.django import mixer
import pytest


@pytest.fixture()
def admins_first_name(request, db):
    return mixer.blend('admins.Admin', first_name=request.param)


@pytest.mark.parametrize('admins_first_name', ["Bibekanand"], indirect=True)
def test_get_first_name(admins_first_name):
    assert admins_first_name.get_first_name == "Bibekanand"


