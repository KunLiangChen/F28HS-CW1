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
    struct Pixel *pixels;//image matrix
};

/*Helper func: give head value to struct image*/
void assign_head(struct Image *img,int width, int height, int nvalues)
{
    img->height = height;
    img->width = width;
    img->nvalues = nvalues;
    }
    
/*Helper func: compare the uchar */
int compare_uchar(const void *a, const void *b)
{
    return(*(unsigned char *)a - *(unsigned char *)b);
    }    

/*Helper func: Check whether the image valid(include Null ptr, nvalues, pixels)*/
bool img_valid(const struct Image *img)
{
    if(img == NULL || img->pixels == NULL || img->nvalues != 3) return false;
    return true;
    }

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
    const char image_type[4]; 
    int height, width, nvalues;
    img = malloc(sizeof(struct Image));
    if(img == NULL) return NULL;
    fscanf(f, "%3s %d %d %d",image_type, &width, &height, &nvalues);
    if( strcmp(image_type,"HQ8") != 0 || nvalues != 3)
    {
        fprintf(stderr, "File %s is an invalid image\n", filename);
        return NULL;
        }
    assign_head(img, width, height, nvalues);
    img->pixels = calloc(height * width, sizeof(struct Pixel)); //allocate the memory for Pixels, make sure it is allocated
    if(img->pixels == NULL)
    {
        free_image(img);
        return NULL;
        }
    fgetc(f);//skip the tab
    /*
     * Read the content of the image, check whether there is content lost.
     * */
    if(fread(img->pixels,sizeof(struct Pixel),width*height,f)!=(size_t)(width*height))
    {
        fprintf(stderr,"Error: Failed to read binary image data\n");
        }
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
    FILE *f = fopen(filename, "w");
    if (f == NULL) {
        fprintf(stderr, "File to be saved %s could not be opened.\n", filename);
        return false;
    }
    if(!img_valid(img)) return false;
    
    if(fprintf(f, "HQ8 %d %d %d\n", img->width, img->height, img->nvalues) < 0)
    {
        fprintf(stderr, "Fail to write the file\n");
        return false;
        }
        
    size_t total_pixels = (size_t)(img->width * img->height);
    size_t written = fwrite(img->pixels, sizeof(struct Pixel), total_pixels, f);
    if(written < total_pixels)
    {
        fprintf(stderr,"Fail while writting the pixels, write %zu/%zu pixels\n", written, total_pixels);
        return false;       
                }
    fclose(f);
    return true;
}

/* Allocate a new struct Image and copy an existing struct Image's contents
 * into it. On error, returns NULL. */
struct Image *copy_image(const struct Image *source)
{
    /* TODO: Question 3d */
    struct Image *copy = malloc(sizeof(struct Image));
    if(copy == NULL) return NULL;
    assign_head(copy, source->width, source->height, source->nvalues);
    copy->pixels = calloc(source->height * source->width, sizeof(struct Pixel));
    if(copy->pixels == NULL)
    {
        free_image(copy);
        return NULL;
        }
    size_t total_pixels = (size_t)(source->width * source->height);
    memcpy(copy->pixels, source->pixels, total_pixels * sizeof(struct Pixel));
    return copy;
}

/* Perform your first task.
 * Build a Meian window to check adjacent 9 pixels
 * take the meddian as the value of the pixels
 * */
struct Image *apply_MEDIAN(const struct Image *source)
{
    /* TODO: Question 4 */
    if(!img_valid(source))  return NULL;
    struct Image *img = copy_image(source);
    if(!img_valid(img)) return NULL;
    for(int y = 0; y < source->height; y++)
    {
        for(int x = 0; x < source->width; x++)
        {
            unsigned char r_values[9], g_values[9], b_values[9];
            int count = 0;
            
            //Visit adjacent windows, collect the values.
            for(int dy = -1; dy<=1; dy++)
            {
                for(int dx=-1; dx<=1; dx++)
                {
                    int ny = y+dy;
                    int nx = x+dx;
                    if(ny>=0 && ny<source->height && nx>=0 && nx<source->width)
                    {// Not out the bound
                        struct Pixel p = source->pixels[ny * source->width + nx];
                        r_values[count] = p.red;
                        g_values[count] = p.green;
                        b_values[count] = p.blue;
                        count++;
                        }
                    }
                }
            //Sort the value in the window
            qsort(r_values, count , sizeof(unsigned char), compare_uchar);
            qsort(g_values, count , sizeof(unsigned char), compare_uchar);
            qsort(b_values, count , sizeof(unsigned char), compare_uchar);
            
            int target_idx = y*img->width + x;
            img->pixels[target_idx].red = r_values[count/2];
            img->pixels[target_idx].green = g_values[count/2];
            img->pixels[target_idx].blue = b_values[count/2];
            }
        }
    return img;
}

/* Perform your second task.
 * (TODO: Write a better comment here, and rename the function.
 * You may need to add or change arguments depending on the task.)
 * Returns true on success, or false on error. */
bool apply_NORM(struct Image *img)
{
    /* TODO: Question 5 */
    if(!img_valid(img)) return false;
    unsigned char min = 255;
    unsigned char max = 0;
    size_t total_pixels = (size_t)(img->width * img->height);
    for(size_t i = 0; i < total_pixels; i++)
    {
        struct Pixel p = img->pixels[i];
        if(p.red < min ) min = p.red;
        if(p.green < min ) min = p.green;
        if(p.blue < min ) min = p.blue;
        
        if(p.red > max ) max = p.red;
        if(p.green > max ) max = p.green;
        if(p.blue > max ) max = p.blue;
        
        }
        
    printf("Minimum value: %u\n", min);
    printf("Maximum value:%u\n", max);
    if(max == min) return true;
    
    float scale = 255.0f / (max-min);
    
    for(size_t i = 0; i < total_pixels; i++)
    {
        img->pixels[i].red = (unsigned char)((img->pixels[i].red - min) * scale);
        img->pixels[i].green = (unsigned char)((img->pixels[i].green - min) * scale);
        img->pixels[i].blue = (unsigned char)((img->pixels[i].blue - min) * scale);
        
        }
    
    return true;
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
   struct Image *out_img = apply_MEDIAN(in_img);
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
