import requests
import csv

try:
    response = requests.get('http://localhost:3000/filterArticlesByCategory')

    articleNumberByCategory = []
    authors = []
    articleWords = []
    count = {}


    if response.status_code == 200:
        articles = response.json()

        for category in articles:
            articleNumberByCategory.append({
                'category': category,
                'length': len(articles[category])
            })
            for article in articles[category]:
                authors.append(article['author'])
                articleWords.append(len(article['content'].split()))

        average = { 'average': (sum(articleWords))/len(articleWords)}

        for author in authors:
            if author not in count:
                count[author] = {'author': author, 'length': 1}
            else:
                count[author]['length'] += 1

        author = list(count.values())


        with open("jurishand.csv", 'w', newline='') as csvfile:
            writer = csv.writer(csvfile)

            writer.writerow(['i. Quantidade de artigos por categoria'])
            writer.writerow(['Categoria', 'Quantidade'])
            for row in articleNumberByCategory:
                writer.writerow([row['category'], row['length']])

            writer.writerow(['\nii. Quantidade de artigos por autor'])
            writer.writerow(['Autor', 'Quantidade'])
            for row in author:
                writer.writerow([row['author'], row['length']])

            writer.writerow(['\niii. Média de palavras por artigo'])
            writer.writerow(['Média', average['average']])

            csvfile.close()


except Exception as e:
    print(f"Ocorreu um erro ao fazer a solicitação: {e}")