import 'package:tamkeen/core/utils/app_assets.dart';
import 'package:tamkeen/features/search/models/coursesmodel.dart';

List<Course> courses = [
  Course(
    category: 'Design',
    imageUrl: Assets.generative_art,
    title: 'Generative Art &\nCreative Coding',
    instructor: 'Rafaela Mendes',
    instructorImageUrl: Assets.image4,
    rating: 4.9,
    studentCount: '12k',
    duration: '8h',
    price: 99.99,
  ),
  Course(
    category: '3d Art',
    imageUrl: Assets.blendercourse,
    title: 'Mastering \nBlender 3D',
    instructor: 'Anya Petrova',
    instructorImageUrl: Assets.instructoravatar,
    rating: 4.9,
    studentCount: '18k',
    duration: '32h',
    price: 119.99,
  ),
  Course(
    category: 'Data',
    imageUrl: Assets.sciencecourse,
    title: 'Data Science for\nBeginners',
    instructor: 'Ben Carter',
    instructorImageUrl: Assets.instructoravatar2,
    rating: 4.7,
    studentCount: '25k',
    duration: '15h',
    price: 129.99,
  ),
  Course(
    category: 'Music',
    imageUrl: Assets.audioengineering_course,
    title: 'Audio Engineering \nfundamentals',
    instructor: 'Javier Gomez',
    instructorImageUrl: Assets.instructoravatar3,
    rating: 4.8,
    studentCount: '9k',
    duration: '11h',
    price: 159.99,
  ),
];
