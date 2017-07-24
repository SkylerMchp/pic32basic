/******************************************************************************/
/*  Files to Include                                                          */
/******************************************************************************/
#ifdef __XC32
#include <xc.h>          /* Defines special function registers, CP0 regs  */
#endif

#include <stdint.h>         /* For uint32_t definition                        */
#include <stdbool.h>        /* For true/false definition                      */

#include "user.h"           /* User funct/params, such as InitApp             */
#include "OLED.h"

#include <math.h>

void DrawCircle1(int cx, int cy, int radius, int color) {
    float a, x, y;

    OledSetDrawColor(color);

    for (a = 0.0; a < 2 * 3.14159; a += 0.03) {
        x = cos(a) * radius + cx;
        y = sin(a) * radius + cy;
        // draw filled circle
        OledMoveTo((int) cx, (int) cy);
        OledLineTo((int) x, (int) y);
    }
}

void DrawCircle2(int cx, int cy, int radius, int color) {
    // Draw diameters instead of radii
    float a, x, y, dx, dy;

    OledSetDrawColor(color);

    for (a = 0.0; a < 3.14159; a += 0.03) {
        dx = cos(a) * radius;
        dy = sin(a) * radius;
        // filled circle
        OledMoveTo((int) (cx - dx), (int) (cy - dy));
        OledLineTo((int) (cx + dx), (int) (cy + dy));
    }
}

void DrawCircle3(int cx, int cy, int radius, int color) {
    // Draw horizontal slices
    float a, x, y, dx, dy;

    OledSetDrawColor(color);

    for (a = 0.0; a < 3.14159 / 2; a += 0.03) {
        dx = cos(a) * radius;
        dy = sin(a) * radius;
        // filled circle
        OledMoveTo((int) (cx - dx), (int) (cy - dy));
        OledLineTo((int) (cx + dx), (int) (cy - dy));

        OledMoveTo((int) (cx - dx), (int) (cy + dy));
        OledLineTo((int) (cx + dx), (int) (cy + dy));
    }
}

void DrawCircle4(int cx, int cy, int radius, int color) {
    // Draw vertical slices
    float a, x, y, dx, dy;

    OledSetDrawColor(color);

    for (a = 0.0; a < 3.14159 / 2; a += 0.03) {
        dx = cos(a) * radius;
        dy = sin(a) * radius;
        // filled circle
        OledMoveTo((int) (cx + dx), (int) (cy - dy));
        OledLineTo((int) (cx + dx), (int) (cy + dy));

        OledMoveTo((int) (cx - dx), (int) (cy - dy));
        OledLineTo((int) (cx - dx), (int) (cy + dy));
    }
}

void DrawCircle5(int cx, int cy, int radius, int color) {
    // Draw vertical slices and use less floating point math
    float a, x, y;
    int dx, dy;

    OledSetDrawColor(color);

    for (a = 0.0; a < 3.14159 / 2; a += 0.03) {
        dx = (int) (cos(a) * radius);
        dy = (int) (sin(a) * radius);
        // filled circle
        OledMoveTo(cx + dx, cy - dy);
        OledLineTo(cx + dx, cy + dy);

        OledMoveTo(cx - dx, cy - dy);
        OledLineTo(cx - dx, cy + dy);
    }
}

void DrawCircle6(int cx, int cy, int radius, int color) {
    // Draw vertical slices, use less floating point math
    // and don't draw more lines than needed
    float a, x, y;
    int dx, dy;

    OledSetDrawColor(color);

    for (a = 0.0; a < 3.14159 / 2; a += 0.06242) {
        dx = (int) (cos(a) * radius);
        dy = (int) (sin(a) * radius);
        // filled circle
        OledMoveTo(cx + dx, cy - dy);
        OledLineTo(cx + dx, cy + dy);

        OledMoveTo(cx - dx, cy - dy);
        OledLineTo(cx - dx, cy + dy);
    }
}

void Animate(int steps) {
    int x = 10, y = 10, ox, oy;
    int vx = 1, vy = 1;
    int halfsize = 8;

    OledMoveTo(0, 0);
    OledDrawRect(ccolOledMax - 1, crowOledMax - 1);
    while (steps--) {
        DrawCircle1(x, y, halfsize, 1);
        OledUpdate();
        if ((x <= halfsize + 1) | (x >= ccolOledMax - 2 - halfsize))
            vx *= -1;
        if ((y <= halfsize + 1) | (y >= crowOledMax - 2 - halfsize))
            vy *= -1;
        ox = x;
        oy = y;
        x += vx;
        y += vy;
        // Erase old circle
        DrawCircle1(ox, oy, halfsize, 0);
    }
}