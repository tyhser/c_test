#include <GL/glut.h>
#include <stdlib.h>
#define sign(x) (x == 0)?(0):((x == 0)?(0):(x))
#define UR 0.0
#define UG 1.0
#define UB 0.0

#define MR 1.0
#define MG 0.0
#define MB 0.0

#define DR 0.0
#define DG 0.0
#define DB 1.0

#define LU glVertex3f(-1, 1, 0)
#define RU glVertex3f(1, 1, 0)

#define LD glVertex3f(-1, -1, 0)
#define RD glVertex3f(1, -1, 0)

#define LM glVertex3f(-1, 0, 0)
#define RM glVertex3f(1, 0, 0)

void BresenHam(int x1, int y1, int x2, int y2) 
{
  int x = x1;
  int y = y1;
  int dx = abs(x2 - x1);
  int dy = abs(y2 - y1);
  int s1 = sign(x2 - x1);
  int s2 = sign(y2 - y1);
  int interchange = 0;
  if (dy > dx)
  {
    int temp = dx;
    dx = dy;
    dy = temp;
    interchange = 1;
  } 
  else 
  {
    interchange = 0;
  }
  int e = 2 * dy - dx;
  for (int i = 1; i <= dx; i++) {
    //画点 （x，y）
    while (e > 0) {
      if (interchange == 1)
        x = x + s1;
      else
        y = y + s2;
      e = e - 2 * dx;
    }
    if (interchange == 1)
      y = y + s2;
    else
      x = x + s1;
    e = e + 2 * dy;
  }
}

void init(void) { glClearColor(0.0, 0.0, 0.0, 0.0); }

void display(void) {
  glClear(GL_COLOR_BUFFER_BIT);

  glBegin(GL_QUADS);

  glColor3f(UR, UG, UB);
  RU;
  glColor3f(UR, UG, UB);
  LU;
  glColor3f(MR, MG, MB);
  LM;

  glColor3f(MR, MG, MB);
  RM;
  RM;
  LM;

  glColor3f(DR, DG, DB);
  LD;
  glColor3f(DR, DG, DB);
  RD;
  glEnd();
  glFlush();
}

int main(int argc, char **argv) {
  glutInit(&argc, argv);
  glutInitDisplayMode(GLUT_SINGLE | GLUT_RGB);
  glutInitWindowPosition(500, 300);
  glutInitWindowSize(300, 600);
  glutCreateWindow("SimplePentage");
  init();
  glutDisplayFunc(display);
  glutMainLoop();
  return 0;
}
