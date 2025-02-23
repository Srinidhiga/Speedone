document.addEventListener('DOMContentLoaded', () => {
    fetch('/api/live-news')
        .then(response => response.json())
        .then(articles => {
            const newsContainer = document.getElementById('news-container');
            newsContainer.innerHTML = ''; // Clear loading message

            // Filter articles on the frontend
            const keywords = ['Formula 1', 'F1', 'Grand Prix', 'Formula One'];
            const filteredArticles = articles.filter(article =>
                keywords.some(keyword =>
                    article.title.includes(keyword) ||
                    article.description.includes(keyword)
                )
            );

            if (filteredArticles.length === 0) {
                newsContainer.innerHTML = '<p>No Formula 1 news available at the moment.</p>';
                return;
            }

            filteredArticles.forEach(article => {
                const articleDiv = document.createElement('div');
                articleDiv.classList.add('news-item');
                articleDiv.innerHTML = `
                    <img src="${article.image}" alt="${article.title}" />
                    <h2><a href="${article.url}" target="_blank">${article.title}</a></h2>
                    <p>${article.description || 'No description available.'}</p>
                    <small>Published: ${article.publishedAt}</small>
                `;
                newsContainer.appendChild(articleDiv);
            });
        })
        .catch(error => {
            console.error('Error fetching news:', error);
            const newsContainer = document.getElementById('news-container');
            newsContainer.innerHTML = '<p>Error loading news. Please try again later.</p>';
        });
});
q
