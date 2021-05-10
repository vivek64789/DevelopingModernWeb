from django.urls import reverse, resolve


class TestAdminUrls:
    def test_admin_dashboard_urls(self):
        path = reverse('adminDashboard')
        assert resolve(path).view_name == 'adminDashboard'

    def test_admin_view_students_urls(self):
        path = reverse('adminShowStudents')
        assert resolve(path).view_name == 'adminShowStudents'

    def test_admin_view_user_urls(self):
        path = reverse('showUser')
        assert resolve(path).view_name == 'showUser'

    def test_admin_suspend_course_urls(self):
        path = reverse('adminSuspendCourse')
        assert resolve(path).view_name == 'adminSuspendCourse'

    def test_admin_add_user(self):
        path = reverse('addUser')
        assert resolve(path).view_name == 'addUser'
