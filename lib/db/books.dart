class Book {
  final String id;
  final String title;
  final String author;
  final int pages;
  final String coverUrl;
  final String bookUrl;
  final double rating;

  Book({
    required this.id,
    required this.bookUrl,
    required this.rating,
    required this.title,
    required this.author,
    required this.pages,
    required this.coverUrl,
  });
}

final nameMap ={
  "A Guide to the Project Management Body of Knowledge" : "PMBOK",
  "Managing Successful Projects with PRINCE2":"PRINCE2",
  "Project, programme and portfolio management — Context and concepts":"ISO2021",
  "Project, programme and portfolio management — Guidance on project management":"ISO2020",
  "Process Group: A Practice Guide" : "PMI"
};
final List<Book> books = [
  Book(
    id: '001',
    bookUrl: 'assets/pdf/PMBOK.pdf',
    title: "A Guide to the Project Management Body of Knowledge",
    author: "Project Management Institute",
    pages: 10,
    coverUrl: "assets/pdf_image/PMBOK.png",
    rating: 4.9
  ),
  Book(
      id: '004',
      bookUrl: 'assets/pdf/PMI.pdf',
      title: "Process Group: A Practice Guide",
      author: "Project Management Institute",
      pages: 1,
      coverUrl: "assets/pdf_image/PMI.png",
      rating: 4.8
  ),
  Book(
      id: '005',
      bookUrl: 'assets/pdf/PRINCE2.pdf',
      title: "Managing Successful Projects with PRINCE2",
      author: "PeopleCert",
      pages: 1,
      coverUrl: "assets/pdf_image/PRINCE2.png",
      rating: 4.7
  ),
  Book(
      id: '002',
      bookUrl: 'assets/pdf/ISO2020.pdf',
      title: "Project, programme and portfolio management — Guidance on project management",
      author: "International Standard",
      pages: 1,
      coverUrl: "assets/pdf_image/ISO2020.png",
      rating: 4.6
  ),
  Book(
      id: '003',
      bookUrl: 'assets/pdf/ISO2021.pdf',
      title: "Project, programme and portfolio management — Context and concepts",
      author: "International Standard",
      pages: 1,
      coverUrl: "assets/pdf_image/ISO2021.png",
      rating: 4.5
  ),
];