from django.db import models


class Quotee(models.Model):
    # https://www.merriam-webster.com/dictionary/quotee
    name = models.CharField(max_length=200,
                            null=False, blank=False)
    link = models.URLField(null=True, blank=True)

    def __str__(self):
        return self.name


class Quote(models.Model):
    phrase = models.TextField(null=False, blank=False)
    quotee = models.ForeignKey(Quotee, on_delete=models.DO_NOTHING)

    def __str__(self):
        return f'{self.phrase[:15]}...'
