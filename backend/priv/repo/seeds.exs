alias Backend.{Posts, Repo}

mock_photos = 8

photos_list = [
  "https://freestocks.org/fs/wp-content/uploads/2021/12/french_bulldog_making_a_funny_face_while_the_owner_picks_up_the_poop-1024x683.jpg",
  "https://freestocks.org/fs/wp-content/uploads/2017/11/taking_a_photo_with_iphone_x-1024x683.jpg",
  "https://freestocks.org/fs/wp-content/uploads/2018/07/iphone_6s_with_headphones_5-1024x683.jpg",
  "https://freestocks.org/fs/wp-content/uploads/2021/12/french_bulldog_making_a_funny_face_while_the_owner_picks_up_the_poop-1024x683.jpg",
  "https://freestocks.org/fs/wp-content/uploads/2017/11/taking_a_photo_with_iphone_x-1024x683.jpg",
  "https://freestocks.org/fs/wp-content/uploads/2018/07/iphone_6s_with_headphones_5-1024x683.jpg",
  "https://freestocks.org/fs/wp-content/uploads/2021/12/french_bulldog_making_a_funny_face_while_the_owner_picks_up_the_poop-1024x683.jpg",
  "https://freestocks.org/fs/wp-content/uploads/2017/11/taking_a_photo_with_iphone_x-1024x683.jpg",
  "https://freestocks.org/fs/wp-content/uploads/2018/07/iphone_6s_with_headphones_5-1024x683.jpg"
]

for i <- 00..mock_photos do
  photo = %{
    image_url: Enum.at(photos_list, i),
    caption: Faker.Lorem.Shakespeare.hamlet
  }

  %Posts.Photo{}
  |> Posts.Photo.changeset(photo)
  |> Repo.insert!
end
