import pygame as pg
import numpy
    

# grayPixel: pixel -> pixel
# compute and return a gray pixel with the same intensity
# as the given pixel
def grayPixel(pixel):
    red_intensity = pixel[0]
    green_intensity = pixel[1]
    blue_intensity = pixel[2]
    ave_intensity = (red_intensity + green_intensity+ blue_intensity)//3
    return (ave_intensity, ave_intensity, ave_intensity)

# channel: pixel -> channel -> pixel
# return a gray pixel with intensity from given channel of given pixel
def channel(pixel,chan):
    return (pixel[chan],pixel[chan],pixel[chan])


# inverse: pixel -> pixel
# return the color negative of the given pixel
def inverse(pixel):
    return (255-pixel[0], 255-pixel[1], 255-pixel[2])


# intensify: pixel -> nat255 -> pixel
# brighten each channel of pixel by quantity
def intensify(pixel, quantity):
    new_r = numpy.int32(pixel[0]) + quantity;
    if new_r < 0:
        new_r = 0;
    if new_r > 255:
        new_r = 255
    new_g = numpy.int32(pixel[1]) + quantity;
    if new_g < 0:
        new_g= 0;
    if new_g > 255:
        new_g = 255
    new_b = numpy.int32(pixel[2]) + quantity;
    if new_b < 0:
        new_b = 0;
    if new_b > 255:
        new_b = 255
    return (numpy.int8(new_r), numpy.int8(new_g), numpy.int8(new_b))

def darken_pixel(pixel, quantity):
    new_r = numpy.int32(pixel[0]) - quantity;
    if new_r < 0:
        new_r = 0;
    new_g = numpy.int32(pixel[1]) - quantity;
    if new_g < 0:
        new_g = 0;
    new_b = numpy.int32(pixel[2]) - quantity;
    if new_b < 0:
        new_b = 0;

    return (numpy.int8(new_r), numpy.int8(new_g), numpy.int8(new_b))
        

def invert(image_surf):
    # get pixel dimensions of image
    rows = image_surf.get_size()[0]
    cols = image_surf.get_size()[1]
    # get reference to and lock pixel array
    pixels3d = pg.surfarray.pixels3d(image_surf)

    # update pixels in place (side effect!)
    for x in range(rows):
        for y in range(cols):
            pixels3d[x, y] = inverse(pixels3d[x, y])

def darken_image(image_surf):
    # get pixel dimensions of image
    rows = image_surf.get_size()[0]
    cols = image_surf.get_size()[1]
    # get reference to and lock pixel array
    pixels3d = pg.surfarray.pixels3d(image_surf)

    # update pixels in place (side effect!)
    for x in range(rows):
        for y in range(cols):
            pixels3d[x, y] = darken_pixel(pixels3d[x, y], 10);

def lighten(image_surf):
    # get pixel dimensions of image
    rows = image_surf.get_size()[0]
    cols = image_surf.get_size()[1]
    # get reference to and lock pixel array
    pixels3d = pg.surfarray.pixels3d(image_surf)

    # update pixels in place (side effect!)
    for x in range(rows):
        for y in range(cols):
            pixels3d[x, y] = intensify(pixels3d[x, y], 10);
            
def bw(image_surf):
    # get pixel dimensions of image
    rows = image_surf.get_size()[0]
    cols = image_surf.get_size()[1]
    # get reference to and lock pixel array
    pixels3d = pg.surfarray.pixels3d(image_surf)

    # update pixels in place (side effect!)
    for x in range(rows):
        for y in range(cols):
            pixels3d[x, y] = inverse(pixels3d[x, y])

