from django.conf import settings
from django.conf.urls import include, url
from django.conf.urls.static import static

from django.contrib import admin
admin.autodiscover()

from postorius.views import list as list_views

urlpatterns = [
    url(r'^admin/', include(admin.site.urls)),
    url('', include('django_browserid.urls')),
    url(r'^$', list_views.list_index),
    url(r'^postorius/', include('postorius.urls')),
] + static(settings.STATIC_URL, document_root=settings.STATIC_ROOT)
