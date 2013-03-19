part of invaders;

class Spaceship {
  Board board;
  int x;
  int y;
  int width;
  int height;
  ImageElement spaceship;

  Spaceship(this.board, this.x, this.y, this.width, this.height) {
    spaceship = document.query('#spaceship');
    document.onMouseMove.listen((MouseEvent e) {
      x = e.offset.x - 35;
      y = e.offset.y - 35;
    });
    draw();
  }

  draw() {
    board.context.drawImage(spaceship, x, y);
  }
}
