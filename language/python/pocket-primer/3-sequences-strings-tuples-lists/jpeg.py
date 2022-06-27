# This program creates a JPEG File Name from a Basic String

word = "dog_image"

print("Filename: " + word)

word = word + ".jpeg"

print("Image filename: " + word)

# This section swaps the suffix '.jpeg' to '.jpg'

i = len(word)-5

# Check if there's a suffix '.jpeg'
if word[i:] == ".jpeg":

    # Remove the suffix
    word = word[0:i]

    # Swap the suffix
    word = word + ".jpg"

print("New image filename: " + word)
