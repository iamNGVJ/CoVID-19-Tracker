// autogenerated from https://app.quicktype.io/
// To parse this JSON data, do
//
//     final coronaNews = coronaNewsFromJson(jsonString);

import 'package:meta/meta.dart';
import 'dart:convert';

CoronaNews coronaNewsFromJson(String str) => CoronaNews.fromJson(json.decode(str));

String coronaNewsToJson(CoronaNews data) => json.encode(data.toJson());

class CoronaNews {
    final List<Article> articles;

    CoronaNews({
        @required this.articles,
    });

    factory CoronaNews.fromJson(Map<String, dynamic> json) => CoronaNews(
        articles: List<Article>.from(json["articles"].map((x) => Article.fromJson(x))),
    );

    Map<String, dynamic> toJson() => {
        "articles": List<dynamic>.from(articles.map((x) => x.toJson())),
    };
}

class Article {
    final String author;
    final String content;
    final String description;
    final DateTime publishedAt;
    final Source source;
    final String title;
    final String url;
    final String urlToImage;

    Article({
        @required this.author,
        @required this.content,
        @required this.description,
        @required this.publishedAt,
        @required this.source,
        @required this.title,
        @required this.url,
        @required this.urlToImage,
    });

    factory Article.fromJson(Map<String, dynamic> json) => Article(
        author: json["author"],
        content: json["content"],
        description: json["description"],
        publishedAt: DateTime.parse(json["publishedAt"]),
        source: Source.fromJson(json["source"]),
        title: json["title"],
        url: json["url"],
        urlToImage: json["urlToImage"],
    );

    Map<String, dynamic> toJson() => {
        "author": author,
        "content": content,
        "description": description,
        "publishedAt": publishedAt.toIso8601String(),
        "source": source.toJson(),
        "title": title,
        "url": url,
        "urlToImage": urlToImage,
    };
}

class Source {
    final String id;
    final String name;

    Source({
        @required this.id,
        @required this.name,
    });

    factory Source.fromJson(Map<String, dynamic> json) => Source(
        id: json["id"] == null ? null : json["id"],
        name: json["name"],
    );

    Map<String, dynamic> toJson() => {
        "id": id == null ? null : id,
        "name": name,
    };
}
