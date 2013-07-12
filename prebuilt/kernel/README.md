Moved kernels to prebuilt model to save time and confusion.
kernel (file) and modules (dir) are just symlinks to the subdir contents
to support different kernel configurations (i.e. 720p vs 1080p kernels, etc.)
and to handle future kernel versions 3.0.36 and beyond.
