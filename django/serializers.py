from rest_framework import serializers
from .models import Student

class StudentSerializer(serializers.ModelSerializer):

    class Meta:
        model = Student
        fields = "__all__"

    def validate_age(self, value):
        if value < 5 or value > 18:
            raise serializers.ValidationError(
                "Age must be between 5 and 18."
            )
        return value

    def validate_phone(self, value):
        if len(value) != 10 or not value.isdigit():
            raise serializers.ValidationError(
                "Phone number must contain exactly 10 digits."
            )
        return value
