/* This coursework specification, and the example code provided during the
 * course, is Copyright 2026 Heriot-Watt University.
 * Distributing this coursework specification or your solution to it outside
 * the university is academic misconduct and a violation of copyright law. */

#include <stdbool.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>

/* The RGB values of a pixel.
 * As our image is HQ8, the pixel is stored by unsigne 8-bit values
 * we can use a much smaller data formatl.
 *  */
struct Pixel {
    unsigned char red;
    unsigned char green;
    unsigned char blue;
};

/* An image loaded from a file. */
struct Image {
    /* TODO: Question 2 */
    int height;
    int width;
    int nvalues;
    struct Pixel *pixels;
};

/* Free a struct Image */
void free_image(struct Image *img)
{
    /* TODO: Question 3a */
    /* Avoid the null pointer */
    if(img == NULL){
        fprintf(stderr, "Image is null.");
        return;
    }
    /* Free the pixels of the image
     * Declare as the pointer as null to avoid operate a pointer which is free.
     *  */
    free(img->pixels);
    img->pixels = NULL;
    
    /* Free the image itself */
    free(img);
}

/* Opens and reads an image file, returning a pointer to a new struct Image.
 * On error, prints an error message and returns NULL. */
struct Image *load_image(const char *filename)
{
    /* Open the file for reading */
    FILE *f = fopen(filename, "r");
    if (f == NULL) {
        fprintf(stderr, "File %s could not be opened.\n", filename);
        return NULL;
    }

    /* Allocate the Image object, and read the image from the file */
    /* TODO: Question 3b */
    struct Image *img = NULL;
    const char *image_type; 
    const char *image_type_t = "HQ8";
    int height, width, nvalues;
    img = malloc(sizeof(struct Image));
    fscanf(f, "%s %d %d %d",image_type, &height, &width, &nvalues);
    if(!strcmp(image_type,image_type_t) || nvalues != 3)
    {
        fprintf(stderr, "File %s is an invalid image\n", filename);
        return NULL;
        }
    img->height = height;
    img->width = width;
    img->nvalues = nvalues;
    img->pixels = malloc(sizeof(struct Pixel)* height * width);
    
    /* Close the file */
    fclose(f);

    if (img == NULL) {
        fprintf(stderr, "File %s could not be read.\n", filename);
        return NULL;
    }

    return img;
}

/* Write img to file filename. Return true on success, false on error. */
bool save_image(const struct Image *img, const char *filename)
{
    /* TODO: Question 3c */
    return false;
}

/* Allocate a new struct Image and copy an existing struct Image's contents
 * into it. On error, returns NULL. */
struct Image *copy_image(const struct Image *source)
{
    /* TODO: Question 3d */
    return NULL;
}

/* Perform your first task.
 * (TODO: Write a better comment here, and rename the function.
 * You may need to add or change arguments depending on the task.)
 * Returns a new struct Image containing the result, or NULL on error. */
struct Image *apply_BLUR(const struct Image *source)
{
    /* TODO: Question 4 */
    return NULL;
}

/* Perform your second task.
 * (TODO: Write a better comment here, and rename the function.
 * You may need to add or change arguments depending on the task.)
 * Returns true on success, or false on error. */
bool apply_NORM(const struct Image *source)
{
    /* TODO: Question 5 */
    return false;
}

int main(int argc, char *argv[])
{
    /* Check command-line arguments */
    /* TODO: You may need to make changes here depending on your tasks. */
    if (argc != 3) {
        fprintf(stderr, "Usage: process INPUTFILE OUTPUTFILE\n");
        return 1;
    }

    /* Load the input image */
    struct Image *in_img = load_image(argv[1]);
    if (in_img == NULL) {
        return 1;
    }

    /* Apply the first process to the input image */
    /* TODO: Change the function name and arguments to match your task. */
    struct Image *out_img = apply_BLUR(in_img);
    if (out_img == NULL) {
        fprintf(stderr, "First process failed.\n");
        free_image(in_img);
        return 1;
    }

    /* Apply the second process to the output of the first process */
    /* TODO: Change the function name and arguments to match your task. */
    if (!apply_NORM(out_img)) {
        fprintf(stderr, "Second process failed.\n");
        free_image(in_img);
        free_image(out_img);
        return 1;
    }

    /* Save the output image */
    if (!save_image(out_img, argv[2])) {
        fprintf(stderr, "Saving image to %s failed.\n", argv[2]);
        free_image(in_img);
        free_image(out_img);
        return 1;
    }

    free_image(in_img);
    free_image(out_img);
    return 0;
}
