#include <GL/glut.h>
#include <stdlib.h>
#define UR 0.5
#define UG 1.0
#define UB 0.1

#define MR 0.8
#define MG 0.0
#define MB 0.0

#define DR 0.1176
#define DG 0.5647
#define DB 1.0



#define LU glVertex3f(-1, 1, 0)
#define RU glVertex3f(1, 1, 0)

#define LD glVertex3f(-1, -1, 0)
#define RD glVertex3f(1, -1, 0)

#define LM glVertex3f(-1, 0, 0)
#define RM glVertex3f(1, 0, 0)


void init(void) 
{
  glClearColor(0.0, 0.0, 0.0, 0.0);
}

void display(void)
{
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


int main(int argc, char **argv)
{
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
