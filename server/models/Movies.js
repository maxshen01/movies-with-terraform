const db = require('../db/connect')

class Movies {
    constructor(movie_id, name, category, length) {
        this.movie_id = movie_id
        this.name = name
        this.category = category
        this.length = length
    }

    static async getAll() {
        try {
            const response = await db.query('SELECT * FROM movies;')

            if (response.rows.length === 0) {
                throw new Error('There are no movies in the table')
            } else {
                return response.rows.map(movie => new Movies(movie))
            }

        } catch (err) {
            throw new Error('Unable to get the movies')
        }
    }

    static async getOneById(id) {
        try {
            const response = await db.query('SELECT * FROM movies WHERE movie_id = $1;', [id])

            if (response.rows.length === 1) {
                return response.rows.map(movie => new Movies(movie))
            } else {
                throw new Error('There are no movies in the table')
            }

        } catch (err) {
            throw new Error('Unable to get the movies')
        }
    }
}

module.exports = Movies