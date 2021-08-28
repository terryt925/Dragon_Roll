export const fetchBookmarks = () => (
  $.ajax({
    method: 'GET',
    url: '/api/bookmarks'
  })
)

export const fetchBookmark = (bookmarkId) => (
  $.ajax({
    method: 'GET',
    url: `/api/bookmarks${bookmarkId}`
  })
)


export const createBookmark = (bookmark) => (
  $.ajax({
    method: "POST",
    url: "/api/bookmarks",
    data: {bookmark}
  })
)

export const updateBookmark = (bookmark) => (
  $.ajax({
    method: "PATCH",
    url: `/api/bookmarks/${bookmark.id}`,
    data: {bookmark}
  })
)

export const deleteBookmark = (id) => (
  $.ajax({
    method: "DELETE",
    url: `/api/bookmarks/${id}`
  })
)