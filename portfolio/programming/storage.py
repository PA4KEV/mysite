from django.core.files.storage import FileSystemStorage


class OverwriteStorage(FileSystemStorage):
    """
    Django appends a prefix to the filename of a new uploaded file
    when a file with the same name already exists.
    This class overwrites the existing file.
    """
    def _save(self, name, content):
        if self.exists(name):
            self.delete(name)
        return super(OverwriteStorage, self)._save(name, content)

    def get_available_name(self, name, *args, **kwargs):
        return name
