from django.urls import reverse, resolve


class TestUrls:
    def test_course_builder_urls(self):
        path = reverse('courseBuilder', kwargs={'course_id':56})
        assert resolve(path).view_name == 'courseBuilder'

    def test_become_instructor_urls(self):
        path = reverse('becomeInstructor')
        assert resolve(path).view_name == 'becomeInstructor'

    def test_courses_urls(self):
        path = reverse('courses')
        assert resolve(path).view_name == 'courses'

    def test_add_course_title_urls(self):
        path = reverse('addCourseTitle')
        assert resolve(path).view_name == 'addCourseTitle'

    def test_view_course_urls(self):
        path = reverse('viewCourse', kwargs={'course_id':56})
        assert resolve(path).view_name == 'viewCourse'

    def test_read_course_urls(self):
        path = reverse('readCourse', kwargs={'course_id':56})
        assert resolve(path).view_name == 'readCourse'

    def test_edit_topic_content_urls(self):
        path = reverse('editTopicContent')
        assert resolve(path).view_name == 'editTopicContent'

    def test_delete_topic_urls(self):
        path = reverse('deleteTopic')
        assert resolve(path).view_name == 'deleteTopic'



